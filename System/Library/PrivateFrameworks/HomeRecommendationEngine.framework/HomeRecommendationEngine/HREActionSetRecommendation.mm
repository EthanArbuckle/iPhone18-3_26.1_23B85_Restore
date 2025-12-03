@interface HREActionSetRecommendation
- (BOOL)containsMeaningfulChanges;
- (BOOL)containsRecommendableContent;
- (BOOL)includesObjects:(id)objects;
- (HFActionSetBuilder)selectedActionSetBuilder;
- (HREActionSetRecommendation)initWithHome:(id)home uniqueIdentifier:(id)identifier;
- (NSSet)actionSetBuilders;
- (NSSet)actions;
- (NSSet)addedActions;
- (id)changedInvolvedObjects;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilder;
- (id)existingActionBuilder:(id)builder inSet:(id)set;
- (id)involvedObjects;
- (void)addAction:(id)action allowEditingExistingActions:(BOOL)actions;
- (void)addActions:(id)actions allowEditingExistingActions:(BOOL)existingActions;
- (void)removeAction:(id)action;
- (void)removeActions:(id)actions;
- (void)setSelectedActionSetBuilder:(id)builder;
@end

@implementation HREActionSetRecommendation

- (HREActionSetRecommendation)initWithHome:(id)home uniqueIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = HREActionSetRecommendation;
  v4 = [(HRERecommendation *)&v11 initWithHome:home uniqueIdentifier:identifier];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    mutableActionSetBuilders = v4->_mutableActionSetBuilders;
    v4->_mutableActionSetBuilders = v5;

    selectedActionSetBuilder = v4->_selectedActionSetBuilder;
    v4->_selectedActionSetBuilder = 0;

    if (_MergedGlobals_2_1 != -1)
    {
      dispatch_once(&_MergedGlobals_2_1, &__block_literal_global_3_8);
    }

    v8 = qword_27F5F98B0;
    defaultAnalyticsData = [(HRERecommendation *)v4 defaultAnalyticsData];
    [defaultAnalyticsData setObject:v8 forKeyedSubscript:*MEMORY[0x277D134E8]];
  }

  return v4;
}

void __60__HREActionSetRecommendation_initWithHome_uniqueIdentifier___block_invoke_2()
{
  v0 = qword_27F5F98B0;
  qword_27F5F98B0 = @"action-set";
}

- (void)setSelectedActionSetBuilder:(id)builder
{
  builderCopy = builder;
  if (self->_selectedActionSetBuilder != builderCopy)
  {
    v6 = builderCopy;
    objc_storeStrong(&self->_selectedActionSetBuilder, builder);
    builderCopy = v6;
  }
}

- (HFActionSetBuilder)selectedActionSetBuilder
{
  selectedActionSetBuilder = self->_selectedActionSetBuilder;
  if (!selectedActionSetBuilder)
  {
    actionSetBuilders = [(HREActionSetRecommendation *)self actionSetBuilders];
    v5 = [actionSetBuilders count];

    if (v5 == 1)
    {
      mutableActionSetBuilders = [(HREActionSetRecommendation *)self mutableActionSetBuilders];
      anyObject = [mutableActionSetBuilders anyObject];

      goto LABEL_6;
    }

    selectedActionSetBuilder = self->_selectedActionSetBuilder;
  }

  anyObject = selectedActionSetBuilder;
LABEL_6:

  return anyObject;
}

- (NSSet)actionSetBuilders
{
  mutableActionSetBuilders = [(HREActionSetRecommendation *)self mutableActionSetBuilders];
  v3 = [mutableActionSetBuilders copy];

  return v3;
}

- (NSSet)actions
{
  selectedActionSetBuilder = [(HREActionSetRecommendation *)self selectedActionSetBuilder];

  if (selectedActionSetBuilder)
  {
    v4 = MEMORY[0x277CBEB98];
    selectedActionSetBuilder2 = [(HREActionSetRecommendation *)self selectedActionSetBuilder];
    actions = [selectedActionSetBuilder2 actions];
    v7 = [v4 setWithArray:actions];
  }

  else
  {
    selectedActionSetBuilder2 = [(HREActionSetRecommendation *)self mutableActionSetBuilders];
    v7 = [selectedActionSetBuilder2 na_flatMap:&__block_literal_global_8_2];
  }

  return v7;
}

id __37__HREActionSetRecommendation_actions__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 actions];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)existingActionBuilder:(id)builder inSet:(id)set
{
  setCopy = set;
  builderCopy = builder;
  selectedActionSetBuilder = [(HREActionSetRecommendation *)self selectedActionSetBuilder];
  v9 = [selectedActionSetBuilder existingActionBuilder:builderCopy inSet:setCopy];

  return v9;
}

- (void)addAction:(id)action allowEditingExistingActions:(BOOL)actions
{
  actionsCopy = actions;
  actionCopy = action;
  selectedActionSetBuilder = [(HREActionSetRecommendation *)self selectedActionSetBuilder];
  v8 = selectedActionSetBuilder;
  if (selectedActionSetBuilder)
  {
    actionBuilders = [selectedActionSetBuilder actionBuilders];
    toSet = [actionBuilders toSet];
    v11 = [(HREActionSetRecommendation *)self existingActionBuilder:actionCopy inSet:toSet];

    if (v11)
    {
      v12 = [v11 compareToObject:actionCopy];
      v13 = [v12 hasNoDifferencesHigherThanPriority:0];

      if (v13)
      {
        v14 = 1;
      }

      else
      {
        allowedVariance = [(HREActionSetRecommendation *)self allowedVariance];
        v14 = [allowedVariance anyRulePassesForAction:v11];
      }
    }

    else
    {
      recommendableObjectsInvolved = [actionCopy recommendableObjectsInvolved];
      actionBuilders2 = [v8 actionBuilders];
      fromSet = [actionBuilders2 fromSet];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __68__HREActionSetRecommendation_addAction_allowEditingExistingActions___block_invoke;
      v21[3] = &unk_2797767E8;
      v22 = recommendableObjectsInvolved;
      v18 = recommendableObjectsInvolved;
      v11 = [fromSet na_firstObjectPassingTest:v21];

      v14 = 0;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    if (!actionsCopy)
    {
LABEL_14:

      goto LABEL_15;
    }

LABEL_9:
    if (v11)
    {
      if ([v11 updateWithActionBuilder:actionCopy])
      {
        actionBuilders3 = [v8 actionBuilders];
        [actionBuilders3 updateObject:v11];
      }
    }

    else if ((v14 & 1) == 0)
    {
      [v8 addAction:actionCopy];
    }

    goto LABEL_14;
  }

LABEL_15:
}

uint64_t __68__HREActionSetRecommendation_addAction_allowEditingExistingActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recommendableObjectsInvolved];
  v4 = [v3 intersectsSet:*(a1 + 32)];

  return v4;
}

- (void)removeAction:(id)action
{
  actionCopy = action;
  selectedActionSetBuilder = [(HREActionSetRecommendation *)self selectedActionSetBuilder];
  [selectedActionSetBuilder removeAction:actionCopy];
}

- (void)addActions:(id)actions allowEditingExistingActions:(BOOL)existingActions
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__HREActionSetRecommendation_addActions_allowEditingExistingActions___block_invoke;
  v4[3] = &unk_279776810;
  v4[4] = self;
  existingActionsCopy = existingActions;
  [actions na_each:v4];
}

- (void)removeActions:(id)actions
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__HREActionSetRecommendation_removeActions___block_invoke;
  v3[3] = &unk_279776838;
  v3[4] = self;
  [actions na_each:v3];
}

void __44__HREActionSetRecommendation_removeActions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 selectedActionSetBuilder];
  [v4 removeAction:v3];
}

- (BOOL)containsRecommendableContent
{
  mutableActionSetBuilders = [(HREActionSetRecommendation *)self mutableActionSetBuilders];
  v4 = [mutableActionSetBuilders na_all:&__block_literal_global_13_0];

  mutableActionSetBuilders2 = [(HREActionSetRecommendation *)self mutableActionSetBuilders];
  LOBYTE(mutableActionSetBuilders) = [mutableActionSetBuilders2 count] != 0;

  return mutableActionSetBuilders & v4;
}

BOOL __58__HREActionSetRecommendation_containsRecommendableContent__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 actions];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)containsMeaningfulChanges
{
  actionSetBuilders = [(HREActionSetRecommendation *)self actionSetBuilders];
  v3 = [actionSetBuilders na_any:&__block_literal_global_15_1];

  return v3;
}

uint64_t __55__HREActionSetRecommendation_containsMeaningfulChanges__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 actionBuilders];
  v3 = [v2 hasChanges];

  return v3;
}

- (id)changedInvolvedObjects
{
  addedActions = [(HREActionSetRecommendation *)self addedActions];
  v3 = [addedActions na_flatMap:&__block_literal_global_18_0];

  return v3;
}

- (id)involvedObjects
{
  actions = [(HREActionSetRecommendation *)self actions];
  v3 = [actions na_flatMap:&__block_literal_global_20_0];

  return v3;
}

- (BOOL)includesObjects:(id)objects
{
  v4 = [objects na_flatMap:&__block_literal_global_23];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__HREActionSetRecommendation_includesObjects___block_invoke_2;
  v13[3] = &unk_2797768F0;
  v13[4] = self;
  v14 = v4;
  v5 = v4;
  v6 = MEMORY[0x259C0B570](v13);
  v11 = v6[2](v6, v7, v8, v9, v10);

  return v11;
}

id __46__HREActionSetRecommendation_includesObjects___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 hf_containedServices];
  }

  else
  {
    [MEMORY[0x277CBEB98] setWithObject:v2];
  }
  v3 = ;

  return v3;
}

uint64_t __46__HREActionSetRecommendation_includesObjects___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) actions];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__HREActionSetRecommendation_includesObjects___block_invoke_3;
  v5[3] = &unk_2797767E8;
  v6 = *(a1 + 40);
  v3 = [v2 na_any:v5];

  return v3;
}

uint64_t __46__HREActionSetRecommendation_includesObjects___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 recommendableObjectsInvolved];
  v4 = [v3 intersectsSet:*(a1 + 32)];

  return v4;
}

- (NSSet)addedActions
{
  mutableActionSetBuilders = [(HREActionSetRecommendation *)self mutableActionSetBuilders];
  v3 = [mutableActionSetBuilders na_flatMap:&__block_literal_global_27];

  return v3;
}

id __42__HREActionSetRecommendation_addedActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 actionBuilders];
  v3 = [v2 additions];

  return v3;
}

- (id)descriptionBuilder
{
  v12.receiver = self;
  v12.super_class = HREActionSetRecommendation;
  descriptionBuilder = [(HRERecommendation *)&v12 descriptionBuilder];
  actionSetBuilders = [(HREActionSetRecommendation *)self actionSetBuilders];
  v5 = [actionSetBuilders na_map:&__block_literal_global_32];
  v6 = [descriptionBuilder appendObject:v5 withName:@"actionSetNames"];

  addedActions = [(HREActionSetRecommendation *)self addedActions];
  v8 = MEMORY[0x277D14380];
  allObjects = [addedActions allObjects];
  v10 = [v8 hre_sortActionBuilders:allObjects];

  [descriptionBuilder appendArraySection:v10 withName:@"actions" skipIfEmpty:1];

  return descriptionBuilder;
}

id __48__HREActionSetRecommendation_descriptionBuilder__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 actionSet];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [v2 name];
    v6 = [v2 actionSet];
    v7 = [v6 uniqueIdentifier];
    v8 = [v4 stringWithFormat:@"%@:%@", v5, v7];
  }

  else
  {
    v8 = [v2 name];
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22.receiver = self;
  v22.super_class = HREActionSetRecommendation;
  v5 = [(HRERecommendation *)&v22 copyWithZone:?];
  v6 = self->_selectedActionSetBuilder;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  mutableActionSetBuilders = [(HREActionSetRecommendation *)self mutableActionSetBuilders];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__HREActionSetRecommendation_copyWithZone___block_invoke;
  v12[3] = &unk_279777390;
  zoneCopy = zone;
  v8 = v6;
  v13 = v8;
  v14 = &v16;
  v9 = [mutableActionSetBuilders na_map:v12];
  v10 = [v9 mutableCopy];
  [v5 setMutableActionSetBuilders:v10];

  objc_storeStrong(v5 + 10, v17[5]);
  _Block_object_dispose(&v16, 8);

  return v5;
}

id __43__HREActionSetRecommendation_copyWithZone___block_invoke(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a2;
  v5 = [v4 copyWithZone:v3];
  v6 = [v4 isEqual:a1[4]];

  if (v6)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), v5);
  }

  return v5;
}

@end