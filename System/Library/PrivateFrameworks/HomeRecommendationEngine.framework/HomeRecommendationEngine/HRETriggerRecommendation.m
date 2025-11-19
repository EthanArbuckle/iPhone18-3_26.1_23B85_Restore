@interface HRETriggerRecommendation
- (BOOL)containsMeaningfulChanges;
- (BOOL)containsRecommendableContent;
- (BOOL)includesObjects:(id)a3;
- (HFTriggerBuilder)selectedTriggerBuilder;
- (HRETriggerRecommendation)initWithHome:(id)a3 uniqueIdentifier:(id)a4;
- (NSSet)actions;
- (NSSet)addedActions;
- (id)changedInvolvedObjects;
- (id)compareForMatchingToTrigger:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilder;
- (id)existingActionBuilder:(id)a3 inSet:(id)a4;
- (id)involvedObjects;
- (void)addAction:(id)a3 allowEditingExistingActions:(BOOL)a4;
- (void)addActions:(id)a3 allowEditingExistingActions:(BOOL)a4;
- (void)removeAction:(id)a3;
- (void)removeActions:(id)a3;
- (void)replaceTriggerBuilder:(id)a3 withTriggerBuilder:(id)a4 allowEditingExistingActions:(BOOL)a5;
- (void)setSelectedTriggerBuilder:(id)a3;
@end

@implementation HRETriggerRecommendation

- (HRETriggerRecommendation)initWithHome:(id)a3 uniqueIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = HRETriggerRecommendation;
  v4 = [(HRERecommendation *)&v9 initWithHome:a3 uniqueIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    [(HRETriggerRecommendation *)v4 setMutableTriggerBuilders:v5];

    if (_MergedGlobals_2_0 != -1)
    {
      dispatch_once(&_MergedGlobals_2_0, &__block_literal_global_3_4);
    }

    v6 = qword_27F5F97B0;
    v7 = [(HRERecommendation *)v4 defaultAnalyticsData];
    [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277D134E8]];
  }

  return v4;
}

void __58__HRETriggerRecommendation_initWithHome_uniqueIdentifier___block_invoke_2()
{
  v0 = qword_27F5F97B0;
  qword_27F5F97B0 = @"trigger";
}

- (void)setSelectedTriggerBuilder:(id)a3
{
  v5 = a3;
  if (self->_selectedTriggerBuilder != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_selectedTriggerBuilder, a3);
    v5 = v6;
  }
}

- (HFTriggerBuilder)selectedTriggerBuilder
{
  selectedTriggerBuilder = self->_selectedTriggerBuilder;
  if (!selectedTriggerBuilder)
  {
    v4 = [(HRETriggerRecommendation *)self triggerBuilders];
    v5 = [v4 count];

    if (v5 == 1)
    {
      v6 = [(HRETriggerRecommendation *)self triggerBuilders];
      v7 = [v6 anyObject];

      goto LABEL_6;
    }

    selectedTriggerBuilder = self->_selectedTriggerBuilder;
  }

  v7 = selectedTriggerBuilder;
LABEL_6:

  return v7;
}

- (NSSet)actions
{
  v3 = [(HRETriggerRecommendation *)self selectedTriggerBuilder];

  if (v3)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
    v6 = [v5 triggerActionSets];
    v7 = [v6 anonymousActionBuilder];
    v8 = [v4 setWithArray:v7];
  }

  else
  {
    v5 = [(HRETriggerRecommendation *)self triggerBuilders];
    v8 = [v5 na_flatMap:&__block_literal_global_8_1];
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

- (id)existingActionBuilder:(id)a3 inSet:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
  v9 = [v8 triggerActionSets];
  v10 = [v9 anonymousActionSetBuilder];
  v11 = [v10 existingActionBuilder:v7 inSet:v6];

  return v11;
}

- (void)addAction:(id)a3 allowEditingExistingActions:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 triggerActionSets];
    v10 = [v9 anonymousActionSetBuilder];

    v11 = [v10 actionBuilders];
    v12 = [v11 toSet];
    v13 = [(HRETriggerRecommendation *)self existingActionBuilder:v6 inSet:v12];

    if (!v13)
    {
      v14 = [v6 recommendableObjectsInvolved];
      v15 = [v10 actionBuilders];
      v16 = [v15 fromSet];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __66__HRETriggerRecommendation_addAction_allowEditingExistingActions___block_invoke;
      v25[3] = &unk_2797767E8;
      v26 = v14;
      v17 = v14;
      v13 = [v16 na_firstObjectPassingTest:v25];

      if (!v13)
      {
        goto LABEL_7;
      }
    }

    if (v4)
    {
LABEL_7:
      if (v13)
      {
        v18 = [v13 compareToObject:v6];
        v19 = [v18 hasNoDifferencesHigherThanPriority:0];
        v20 = [(HRETriggerRecommendation *)self allowedVariance];
        v21 = [v20 anyRulePassesForAction:v13];

        if ((v19 & 1) == 0 && (v21 & 1) == 0 && [v13 updateWithActionBuilder:v6])
        {
          v22 = [v8 triggerActionSets];
          [v22 updateAnonymousActionBuilder:v13];
        }
      }

      else
      {
        v18 = [v8 triggerActionSets];
        [v18 addAnonymousActionBuilder:v6];
      }

      v23 = [v8 triggerActionSets];
      v24 = [v23 hre_recommendedActions];
      [v24 addObject:v6];
    }
  }

  else
  {
    v10 = [(HRERecommendation *)self identifierBuilder];
    v13 = [v10 composedString];
    NSLog(&cfstr_Recommendation.isa, v13);
  }
}

uint64_t __66__HRETriggerRecommendation_addAction_allowEditingExistingActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recommendableObjectsInvolved];
  v4 = [v3 intersectsSet:*(a1 + 32)];

  return v4;
}

- (void)removeAction:(id)a3
{
  v7 = a3;
  v4 = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 triggerActionSets];
    [v6 removeAnonymousActionBuilder:v7];
  }
}

- (void)addActions:(id)a3 allowEditingExistingActions:(BOOL)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__HRETriggerRecommendation_addActions_allowEditingExistingActions___block_invoke;
  v4[3] = &unk_279776810;
  v4[4] = self;
  v5 = a4;
  [a3 na_each:v4];
}

- (void)removeActions:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__HRETriggerRecommendation_removeActions___block_invoke;
  v3[3] = &unk_279776838;
  v3[4] = self;
  [a3 na_each:v3];
}

- (BOOL)containsMeaningfulChanges
{
  if ([(HRETriggerRecommendation *)self containsRecommendableContent])
  {
    v3 = [(HRETriggerRecommendation *)self triggerBuilders];
    v4 = [v3 na_any:&__block_literal_global_16];

    v5 = [(HRETriggerRecommendation *)self triggerBuilders];
    LOBYTE(v3) = [v5 na_any:&__block_literal_global_18];

    v6 = v4 | v3;
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
  v3 = [(HRETriggerRecommendation *)self triggerBuilders];
  v4 = [v3 na_any:&__block_literal_global_20];

  v5 = [(HRETriggerRecommendation *)self triggerBuilders];
  v6 = [v5 na_all:&__block_literal_global_22];

  v7 = [(HRETriggerRecommendation *)self triggerBuilders];
  v8 = [v7 na_any:&__block_literal_global_24];

  v9 = [(HRETriggerRecommendation *)self triggerBuilders];
  LOBYTE(v7) = ([v9 count] != 0) & (v4 | v8);

  return v7 & v6;
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
  v3 = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
  v4 = [v3 trigger];

  if (v4)
  {
    v5 = [(HRETriggerRecommendation *)self mutableTriggerBuilders];
    v6 = [v5 na_flatMap:&__block_literal_global_26];
  }

  else
  {
    v6 = [(HRETriggerRecommendation *)self involvedObjects];
  }

  return v6;
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
  v3 = [(HRETriggerRecommendation *)self actions];
  v4 = [v3 na_flatMap:&__block_literal_global_31];

  v5 = [(HRETriggerRecommendation *)self triggerBuilders];
  v6 = [v5 na_flatMap:&__block_literal_global_33];

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

- (BOOL)includesObjects:(id)a3
{
  v4 = [a3 na_flatMap:&__block_literal_global_40];
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

- (id)compareForMatchingToTrigger:(id)a3
{
  v4 = a3;
  v5 = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
  v6 = [v5 trigger];
  v7 = [v4 trigger];
  if ([v6 isEqual:v7])
  {
    v8 = [(HRETriggerRecommendation *)self containsMeaningfulChanges];

    if (!v8)
    {
      v9 = objc_alloc(MEMORY[0x277D14590]);
      v10 = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
      v11 = [v9 initWithObjectA:v10 objectB:v4];
LABEL_18:
      v25 = v11;
      goto LABEL_21;
    }
  }

  else
  {
  }

  v12 = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
  v10 = [v12 compareToObject:v4];

  v13 = [v10 highestPriorityDifference];

  if (!v13)
  {
    v11 = v10;
    v10 = v11;
    goto LABEL_18;
  }

  objc_opt_class();
  v14 = [v10 differences];
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277D137D8]];
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
    v18 = [v17 containedObjectResult];
    objc_opt_class();
    v19 = [v18 differences];
    v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277D137C8]];
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
      [v18 add:v23];
    }

    v24 = v10;
  }

  else
  {
    v26 = v10;
  }

  v25 = v10;
LABEL_21:

  return v25;
}

- (NSSet)addedActions
{
  v2 = [(HRETriggerRecommendation *)self triggerBuilders];
  v3 = [v2 na_flatMap:&__block_literal_global_52_0];

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

- (void)replaceTriggerBuilder:(id)a3 withTriggerBuilder:(id)a4 allowEditingExistingActions:(BOOL)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(HRETriggerRecommendation *)self mutableTriggerBuilders];
  [v10 removeObject:v9];

  v11 = [(HRETriggerRecommendation *)self mutableTriggerBuilders];
  [v11 addObject:v8];

  v12 = self->_selectedTriggerBuilder;
  selectedTriggerBuilder = self->_selectedTriggerBuilder;
  self->_selectedTriggerBuilder = v8;
  v14 = v8;

  v15 = [v9 triggerActionSets];

  v16 = [v15 hre_recommendedActions];
  v17 = [v16 additions];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __97__HRETriggerRecommendation_replaceTriggerBuilder_withTriggerBuilder_allowEditingExistingActions___block_invoke;
  v20[3] = &unk_279776810;
  v20[4] = self;
  v21 = a5;
  [v17 na_each:v20];

  v18 = self->_selectedTriggerBuilder;
  self->_selectedTriggerBuilder = v12;
  v19 = v12;
}

- (id)descriptionBuilder
{
  v15.receiver = self;
  v15.super_class = HRETriggerRecommendation;
  v3 = [(HRERecommendation *)&v15 descriptionBuilder];
  v4 = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
  v5 = [v4 naturalLanguageNameOfType:2];
  [v3 appendString:v5 withName:@"name"];

  v6 = [(HRETriggerRecommendation *)self selectedTriggerBuilder];
  v7 = [v6 trigger];
  v8 = [v7 uniqueIdentifier];
  v9 = [v3 appendObject:v8 withName:@"trigger" skipIfNil:1];

  v10 = [(HRETriggerRecommendation *)self addedActions];
  v11 = MEMORY[0x277D14380];
  v12 = [v10 allObjects];
  v13 = [v11 hre_sortActionBuilders:v12];

  [v3 appendArraySection:v13 withName:@"+actions" skipIfEmpty:1];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = HRETriggerRecommendation;
  v4 = [(HRERecommendation *)&v7 copyWithZone:a3];
  v5 = [(HRETriggerRecommendation *)self iconDescriptor];
  [v4 setIconDescriptor:v5];

  return v4;
}

@end