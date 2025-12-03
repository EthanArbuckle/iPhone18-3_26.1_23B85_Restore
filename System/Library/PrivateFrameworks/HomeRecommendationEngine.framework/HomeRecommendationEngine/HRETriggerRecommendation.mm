@interface HRETriggerRecommendation
- (BOOL)containsMeaningfulChanges;
- (BOOL)containsRecommendableContent;
- (BOOL)includesObjects:(id)objects;
- (HFTriggerBuilder)selectedTriggerBuilder;
- (HRETriggerRecommendation)initWithHome:(id)home uniqueIdentifier:(id)identifier;
- (NSSet)actions;
- (NSSet)addedActions;
- (id)changedInvolvedObjects;
- (id)compareForMatchingToTrigger:(id)trigger;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilder;
- (id)existingActionBuilder:(id)builder inSet:(id)set;
- (id)involvedObjects;
- (void)addAction:(id)action allowEditingExistingActions:(BOOL)actions;
- (void)addActions:(id)actions allowEditingExistingActions:(BOOL)existingActions;
- (void)removeAction:(id)action;
- (void)removeActions:(id)actions;
- (void)replaceTriggerBuilder:(id)builder withTriggerBuilder:(id)triggerBuilder allowEditingExistingActions:(BOOL)actions;
- (void)setSelectedTriggerBuilder:(id)builder;
@end

@implementation HRETriggerRecommendation

- (HRETriggerRecommendation)initWithHome:(id)home uniqueIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = HRETriggerRecommendation;
  v4 = [(HRERecommendation *)&v9 initWithHome:home uniqueIdentifier:identifier];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    [(HRETriggerRecommendation *)v4 setMutableTriggerBuilders:v5];

    if (_MergedGlobals_2_0 != -1)
    {
      dispatch_once(&_MergedGlobals_2_0, &__block_literal_global_3_4);
    }

    v6 = qword_27F5F97B0;
    defaultAnalyticsData = [(HRERecommendation *)v4 defaultAnalyticsData];
    [defaultAnalyticsData setObject:v6 forKeyedSubscript:*MEMORY[0x277D134E8]];
  }

  return v4;
}

void __58__HRETriggerRecommendation_initWithHome_uniqueIdentifier___block_invoke_2()
{
  v0 = qword_27F5F97B0;
  qword_27F5F97B0 = @"trigger";
}

- (void)setSelectedTriggerBuilder:(id)builder
{
  builderCopy = builder;
  if (self->_selectedTriggerBuilder != builderCopy)
  {
    v6 = builderCopy;
    objc_storeStrong(&self->_selectedTriggerBuilder, builder);
    builderCopy = v6;
  }
}

- (HFTriggerBuilder)selectedTriggerBuilder
{
  selectedTriggerBuilder = self->_selectedTriggerBuilder;
  if (!selectedTriggerBuilder)
  {
    triggerBuilders = [(HRETriggerRecommendation *)self triggerBuilders];
    v5 = [triggerBuilders count];

    if (v5 == 1)
    {
      triggerBuilders2 = [(HRETriggerRecommendation *)self triggerBuilders];
      anyObject = [triggerBuilders2 anyObject];

      goto LABEL_6;
    }

    selectedTriggerBuilder = self->_selectedTriggerBuilder;
  }

  anyObject = selectedTriggerBuilder;
LABEL_6:

  return anyObject;
}

- (NSSet)actions
{
  selectedTriggerBuilder = [(HRETriggerRecommendation *)self selectedTriggerBuilder];

  if (selectedTriggerBuilder)
  {
    v4 = MEMORY[0x277CBEB98];
    selectedTriggerBuilder2 = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
    triggerActionSets = [selectedTriggerBuilder2 triggerActionSets];
    anonymousActionBuilder = [triggerActionSets anonymousActionBuilder];
    v8 = [v4 setWithArray:anonymousActionBuilder];
  }

  else
  {
    selectedTriggerBuilder2 = [(HRETriggerRecommendation *)self triggerBuilders];
    v8 = [selectedTriggerBuilder2 na_flatMap:&__block_literal_global_8_1];
  }

  return v8;
}

id __35__HRETriggerRecommendation_actions__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 triggerActionSets];
  v4 = [v3 anonymousActionBuilder];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)existingActionBuilder:(id)builder inSet:(id)set
{
  setCopy = set;
  builderCopy = builder;
  selectedTriggerBuilder = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
  triggerActionSets = [selectedTriggerBuilder triggerActionSets];
  anonymousActionSetBuilder = [triggerActionSets anonymousActionSetBuilder];
  v11 = [anonymousActionSetBuilder existingActionBuilder:builderCopy inSet:setCopy];

  return v11;
}

- (void)addAction:(id)action allowEditingExistingActions:(BOOL)actions
{
  actionsCopy = actions;
  actionCopy = action;
  selectedTriggerBuilder = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
  v8 = selectedTriggerBuilder;
  if (selectedTriggerBuilder)
  {
    triggerActionSets = [selectedTriggerBuilder triggerActionSets];
    anonymousActionSetBuilder = [triggerActionSets anonymousActionSetBuilder];

    actionBuilders = [anonymousActionSetBuilder actionBuilders];
    toSet = [actionBuilders toSet];
    composedString = [(HRETriggerRecommendation *)self existingActionBuilder:actionCopy inSet:toSet];

    if (!composedString)
    {
      recommendableObjectsInvolved = [actionCopy recommendableObjectsInvolved];
      actionBuilders2 = [anonymousActionSetBuilder actionBuilders];
      fromSet = [actionBuilders2 fromSet];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __66__HRETriggerRecommendation_addAction_allowEditingExistingActions___block_invoke;
      v25[3] = &unk_2797767E8;
      v26 = recommendableObjectsInvolved;
      v17 = recommendableObjectsInvolved;
      composedString = [fromSet na_firstObjectPassingTest:v25];

      if (!composedString)
      {
        goto LABEL_7;
      }
    }

    if (actionsCopy)
    {
LABEL_7:
      if (composedString)
      {
        triggerActionSets3 = [composedString compareToObject:actionCopy];
        v19 = [triggerActionSets3 hasNoDifferencesHigherThanPriority:0];
        allowedVariance = [(HRETriggerRecommendation *)self allowedVariance];
        v21 = [allowedVariance anyRulePassesForAction:composedString];

        if ((v19 & 1) == 0 && (v21 & 1) == 0 && [composedString updateWithActionBuilder:actionCopy])
        {
          triggerActionSets2 = [v8 triggerActionSets];
          [triggerActionSets2 updateAnonymousActionBuilder:composedString];
        }
      }

      else
      {
        triggerActionSets3 = [v8 triggerActionSets];
        [triggerActionSets3 addAnonymousActionBuilder:actionCopy];
      }

      triggerActionSets4 = [v8 triggerActionSets];
      hre_recommendedActions = [triggerActionSets4 hre_recommendedActions];
      [hre_recommendedActions addObject:actionCopy];
    }
  }

  else
  {
    anonymousActionSetBuilder = [(HRERecommendation *)self identifierBuilder];
    composedString = [anonymousActionSetBuilder composedString];
    NSLog(&cfstr_Recommendation.isa, composedString);
  }
}

uint64_t __66__HRETriggerRecommendation_addAction_allowEditingExistingActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recommendableObjectsInvolved];
  v4 = [v3 intersectsSet:*(a1 + 32)];

  return v4;
}

- (void)removeAction:(id)action
{
  actionCopy = action;
  selectedTriggerBuilder = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
  v5 = selectedTriggerBuilder;
  if (selectedTriggerBuilder)
  {
    triggerActionSets = [selectedTriggerBuilder triggerActionSets];
    [triggerActionSets removeAnonymousActionBuilder:actionCopy];
  }
}

- (void)addActions:(id)actions allowEditingExistingActions:(BOOL)existingActions
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__HRETriggerRecommendation_addActions_allowEditingExistingActions___block_invoke;
  v4[3] = &unk_279776810;
  v4[4] = self;
  existingActionsCopy = existingActions;
  [actions na_each:v4];
}

- (void)removeActions:(id)actions
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__HRETriggerRecommendation_removeActions___block_invoke;
  v3[3] = &unk_279776838;
  v3[4] = self;
  [actions na_each:v3];
}

- (BOOL)containsMeaningfulChanges
{
  if ([(HRETriggerRecommendation *)self containsRecommendableContent])
  {
    triggerBuilders = [(HRETriggerRecommendation *)self triggerBuilders];
    v4 = [triggerBuilders na_any:&__block_literal_global_16];

    triggerBuilders2 = [(HRETriggerRecommendation *)self triggerBuilders];
    LOBYTE(triggerBuilders) = [triggerBuilders2 na_any:&__block_literal_global_18];

    v6 = v4 | triggerBuilders;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __53__HRETriggerRecommendation_containsMeaningfulChanges__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 triggerActionSets];
  v4 = [v3 namedActionSetsDiff];
  v5 = [v4 additions];
  if ([v5 count])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v2 triggerActionSets];
    v8 = [v7 namedActionSetsDiff];
    v9 = [v8 deletions];
    if ([v9 count])
    {
      v6 = 1;
    }

    else
    {
      v16 = [v2 triggerActionSets];
      v10 = [v16 namedActionSetsDiff];
      v11 = [v10 updates];
      if ([v11 count])
      {
        v6 = 1;
      }

      else
      {
        v15 = [v2 triggerActionSets];
        v14 = [v15 anonymousActionSetBuilder];
        v13 = [v14 actionBuilders];
        v6 = [v13 hasChanges];
      }
    }
  }

  return v6;
}

uint64_t __53__HRETriggerRecommendation_containsMeaningfulChanges__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 enabled];
  v4 = [v2 trigger];

  LODWORD(v2) = [v4 isEnabled];
  return v3 ^ v2;
}

- (BOOL)containsRecommendableContent
{
  triggerBuilders = [(HRETriggerRecommendation *)self triggerBuilders];
  v4 = [triggerBuilders na_any:&__block_literal_global_20];

  triggerBuilders2 = [(HRETriggerRecommendation *)self triggerBuilders];
  v6 = [triggerBuilders2 na_all:&__block_literal_global_22];

  triggerBuilders3 = [(HRETriggerRecommendation *)self triggerBuilders];
  v8 = [triggerBuilders3 na_any:&__block_literal_global_24];

  triggerBuilders4 = [(HRETriggerRecommendation *)self triggerBuilders];
  LOBYTE(triggerBuilders3) = ([triggerBuilders4 count] != 0) & (v4 | v8);

  return triggerBuilders3 & v6;
}

uint64_t __56__HRETriggerRecommendation_containsRecommendableContent__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 triggerActionSets];
  v3 = [v2 hre_recommendedActions];
  v4 = [v3 hasChanges];

  return v4;
}

BOOL __56__HRETriggerRecommendation_containsRecommendableContent__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 triggerActionSets];
  v3 = [v2 allActionBuilders];
  v4 = [v3 count] != 0;

  return v4;
}

uint64_t __56__HRETriggerRecommendation_containsRecommendableContent__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 enabled];
  v4 = [v2 trigger];

  LODWORD(v2) = [v4 isEnabled];
  return v3 ^ v2;
}

- (id)changedInvolvedObjects
{
  selectedTriggerBuilder = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
  trigger = [selectedTriggerBuilder trigger];

  if (trigger)
  {
    mutableTriggerBuilders = [(HRETriggerRecommendation *)self mutableTriggerBuilders];
    involvedObjects = [mutableTriggerBuilders na_flatMap:&__block_literal_global_26];
  }

  else
  {
    involvedObjects = [(HRETriggerRecommendation *)self involvedObjects];
  }

  return involvedObjects;
}

id __50__HRETriggerRecommendation_changedInvolvedObjects__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 triggerActionSets];
  v3 = [v2 anonymousActionSetBuilder];
  v4 = [v3 actionBuilders];

  v5 = [v4 additions];
  v6 = [v4 updates];
  v7 = [v5 setByAddingObjectsFromSet:v6];
  v8 = [v7 na_flatMap:&__block_literal_global_29];

  return v8;
}

- (id)involvedObjects
{
  actions = [(HRETriggerRecommendation *)self actions];
  v4 = [actions na_flatMap:&__block_literal_global_31];

  triggerBuilders = [(HRETriggerRecommendation *)self triggerBuilders];
  v6 = [triggerBuilders na_flatMap:&__block_literal_global_33];

  v7 = [v4 setByAddingObjectsFromSet:v6];

  return v7;
}

id __43__HRETriggerRecommendation_involvedObjects__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = [v5 eventBuilders];
    v8 = [v6 setWithArray:v7];

    v9 = [v8 na_flatMap:&__block_literal_global_37];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)includesObjects:(id)objects
{
  v4 = [objects na_flatMap:&__block_literal_global_40];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__HRETriggerRecommendation_includesObjects___block_invoke_2;
  v13[3] = &unk_2797768F0;
  v13[4] = self;
  v5 = v4;
  v14 = v5;
  v6 = MEMORY[0x259C0B570](v13);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__HRETriggerRecommendation_includesObjects___block_invoke_5;
  v11[3] = &unk_2797768F0;
  v11[4] = self;
  v12 = v5;
  v7 = v5;
  v8 = MEMORY[0x259C0B570](v11);
  if (v6[2](v6))
  {
    v9 = 1;
  }

  else
  {
    v9 = v8[2](v8);
  }

  return v9;
}

id __44__HRETriggerRecommendation_includesObjects___block_invoke(uint64_t a1, void *a2)
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

uint64_t __44__HRETriggerRecommendation_includesObjects___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) triggerBuilders];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__HRETriggerRecommendation_includesObjects___block_invoke_3;
  v5[3] = &unk_2797768C8;
  v6 = *(a1 + 40);
  v3 = [v2 na_any:v5];

  return v3;
}

uint64_t __44__HRETriggerRecommendation_includesObjects___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 eventBuilders];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__HRETriggerRecommendation_includesObjects___block_invoke_4;
    v10[3] = &unk_2797768A0;
    v11 = *(a1 + 32);
    v8 = [v7 na_any:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __44__HRETriggerRecommendation_includesObjects___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 recommendableObjectsInvolved];
  v4 = [v3 intersectsSet:*(a1 + 32)];

  return v4;
}

uint64_t __44__HRETriggerRecommendation_includesObjects___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) actions];
  v3 = [v2 na_flatMap:&__block_literal_global_45];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HRETriggerRecommendation_includesObjects___block_invoke_7;
  v6[3] = &unk_279776918;
  v7 = *(a1 + 40);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __44__HRETriggerRecommendation_includesObjects___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__HRETriggerRecommendation_includesObjects___block_invoke_8;
  v8[3] = &unk_279776918;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __44__HRETriggerRecommendation_includesObjects___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [HRERecommendableObjectUtilities recommendableObject:v4 isEffectivelyEqualToObject:v3];
  LODWORD(v2) = [HRERecommendableObjectUtilities recommendableObject:v4 containsObject:*(v2 + 32)];

  return (v5 | v2) & 1;
}

- (id)compareForMatchingToTrigger:(id)trigger
{
  triggerCopy = trigger;
  selectedTriggerBuilder = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
  trigger = [selectedTriggerBuilder trigger];
  trigger2 = [triggerCopy trigger];
  if ([trigger isEqual:trigger2])
  {
    containsMeaningfulChanges = [(HRETriggerRecommendation *)self containsMeaningfulChanges];

    if (!containsMeaningfulChanges)
    {
      v9 = objc_alloc(MEMORY[0x277D14590]);
      selectedTriggerBuilder2 = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
      v11 = [v9 initWithObjectA:selectedTriggerBuilder2 objectB:triggerCopy];
LABEL_18:
      v25 = v11;
      goto LABEL_21;
    }
  }

  else
  {
  }

  selectedTriggerBuilder3 = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
  selectedTriggerBuilder2 = [selectedTriggerBuilder3 compareToObject:triggerCopy];

  highestPriorityDifference = [selectedTriggerBuilder2 highestPriorityDifference];

  if (!highestPriorityDifference)
  {
    v11 = selectedTriggerBuilder2;
    selectedTriggerBuilder2 = v11;
    goto LABEL_18;
  }

  objc_opt_class();
  differences = [selectedTriggerBuilder2 differences];
  v15 = [differences objectForKeyedSubscript:*MEMORY[0x277D137D8]];
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    containedObjectResult = [v17 containedObjectResult];
    objc_opt_class();
    differences2 = [containedObjectResult differences];
    v20 = [differences2 objectForKeyedSubscript:*MEMORY[0x277D137C8]];
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    if (v22 && [v22 isASubsetOfB])
    {
      v23 = [v22 withPriority:0];
      [containedObjectResult add:v23];
    }

    v24 = selectedTriggerBuilder2;
  }

  else
  {
    v26 = selectedTriggerBuilder2;
  }

  v25 = selectedTriggerBuilder2;
LABEL_21:

  return v25;
}

- (NSSet)addedActions
{
  triggerBuilders = [(HRETriggerRecommendation *)self triggerBuilders];
  v3 = [triggerBuilders na_flatMap:&__block_literal_global_52_0];

  return v3;
}

id __40__HRETriggerRecommendation_addedActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 triggerActionSets];
  v3 = [v2 anonymousActionSetBuilder];
  v4 = [v3 actionBuilders];
  v5 = [v4 additions];

  return v5;
}

- (void)replaceTriggerBuilder:(id)builder withTriggerBuilder:(id)triggerBuilder allowEditingExistingActions:(BOOL)actions
{
  triggerBuilderCopy = triggerBuilder;
  builderCopy = builder;
  mutableTriggerBuilders = [(HRETriggerRecommendation *)self mutableTriggerBuilders];
  [mutableTriggerBuilders removeObject:builderCopy];

  mutableTriggerBuilders2 = [(HRETriggerRecommendation *)self mutableTriggerBuilders];
  [mutableTriggerBuilders2 addObject:triggerBuilderCopy];

  v12 = self->_selectedTriggerBuilder;
  selectedTriggerBuilder = self->_selectedTriggerBuilder;
  self->_selectedTriggerBuilder = triggerBuilderCopy;
  v14 = triggerBuilderCopy;

  triggerActionSets = [builderCopy triggerActionSets];

  hre_recommendedActions = [triggerActionSets hre_recommendedActions];
  additions = [hre_recommendedActions additions];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __97__HRETriggerRecommendation_replaceTriggerBuilder_withTriggerBuilder_allowEditingExistingActions___block_invoke;
  v20[3] = &unk_279776810;
  v20[4] = self;
  actionsCopy = actions;
  [additions na_each:v20];

  v18 = self->_selectedTriggerBuilder;
  self->_selectedTriggerBuilder = v12;
  v19 = v12;
}

- (id)descriptionBuilder
{
  v15.receiver = self;
  v15.super_class = HRETriggerRecommendation;
  descriptionBuilder = [(HRERecommendation *)&v15 descriptionBuilder];
  selectedTriggerBuilder = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
  v5 = [selectedTriggerBuilder naturalLanguageNameOfType:2];
  [descriptionBuilder appendString:v5 withName:@"name"];

  selectedTriggerBuilder2 = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
  trigger = [selectedTriggerBuilder2 trigger];
  uniqueIdentifier = [trigger uniqueIdentifier];
  v9 = [descriptionBuilder appendObject:uniqueIdentifier withName:@"trigger" skipIfNil:1];

  addedActions = [(HRETriggerRecommendation *)self addedActions];
  v11 = MEMORY[0x277D14380];
  allObjects = [addedActions allObjects];
  v13 = [v11 hre_sortActionBuilders:allObjects];

  [descriptionBuilder appendArraySection:v13 withName:@"+actions" skipIfEmpty:1];

  return descriptionBuilder;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = HRETriggerRecommendation;
  v4 = [(HRERecommendation *)&v7 copyWithZone:zone];
  iconDescriptor = [(HRETriggerRecommendation *)self iconDescriptor];
  [v4 setIconDescriptor:iconDescriptor];

  return v4;
}

@end