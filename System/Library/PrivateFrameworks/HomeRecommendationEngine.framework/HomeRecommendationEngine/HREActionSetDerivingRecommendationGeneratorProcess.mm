@interface HREActionSetDerivingRecommendationGeneratorProcess
- (id)_createRecommendationWithActionSet:(id)set trigger:(id)trigger;
- (id)_recommendationForActionSet:(id)set trigger:(id)trigger;
- (id)generateRecommendations;
@end

@implementation HREActionSetDerivingRecommendationGeneratorProcess

- (id)generateRecommendations
{
  v3 = objc_opt_new();
  if (([(HREStandardAsyncRecommendationGenerationProcess *)self options]& 1) != 0)
  {
    home = [(HREStandardAsyncRecommendationGenerationProcess *)self home];
    actionSets = [home actionSets];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __77__HREActionSetDerivingRecommendationGeneratorProcess_generateRecommendations__block_invoke;
    v12[3] = &unk_2797765E0;
    v13 = v3;
    selfCopy = self;
    [actionSets na_each:v12];
  }

  if (([(HREStandardAsyncRecommendationGenerationProcess *)self options]& 2) != 0)
  {
    home2 = [(HREStandardAsyncRecommendationGenerationProcess *)self home];
    triggers = [home2 triggers];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__HREActionSetDerivingRecommendationGeneratorProcess_generateRecommendations__block_invoke_2;
    v9[3] = &unk_279776608;
    v10 = v3;
    selfCopy2 = self;
    [triggers na_each:v9];
  }

  return v3;
}

void __77__HREActionSetDerivingRecommendationGeneratorProcess_generateRecommendations__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _recommendationForActionSet:a2 trigger:0];
  [v2 na_safeAddObject:v3];
}

void __77__HREActionSetDerivingRecommendationGeneratorProcess_generateRecommendations__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _recommendationForActionSet:0 trigger:a2];
  [v2 na_safeAddObject:v3];
}

- (id)_recommendationForActionSet:(id)set trigger:(id)trigger
{
  setCopy = set;
  triggerCopy = trigger;
  v8 = triggerCopy;
  if (triggerCopy && ![triggerCopy hf_triggerType])
  {
    v16 = 0;
  }

  else
  {
    v9 = [(HREActionSetDerivingRecommendationGeneratorProcess *)self _createRecommendationWithActionSet:setCopy trigger:v8];
    v10 = v9;
    if (v9)
    {
      actions = [v9 actions];
      sourceRecommendableObjects = [(HREStandardAsyncRecommendationGenerationProcess *)self sourceRecommendableObjects];
      v13 = [HRERecommendableObjectUtilities filterRecommendableObjects:sourceRecommendableObjects excludingObjectsInActions:actions];

      if ([v13 count])
      {
        v14 = [HREDerivedActionUtilities derivedActionsForActionableObjects:v13 fromActions:actions];
        [v10 addActions:v14];

        if ([v10 containsMeaningfulChanges])
        {
          v15 = v10;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)_createRecommendationWithActionSet:(id)set trigger:(id)trigger
{
  setCopy = set;
  triggerCopy = trigger;
  v8 = [[HREIdentifierBuilder alloc] initWithBaseIdentifier:@"derived"];
  if (!triggerCopy)
  {
    if (!setCopy)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v19 = objc_alloc(MEMORY[0x277D14398]);
    home = [(HREStandardAsyncRecommendationGenerationProcess *)self home];
    v14 = [v19 initWithExistingObject:setCopy inHome:home];

    uniqueIdentifier = [setCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    [(HREIdentifierBuilder *)v8 setObject:uUIDString forKey:@"actionSet"];

    v23 = [HREActionSetRecommendation alloc];
    home2 = [(HREStandardAsyncRecommendationGenerationProcess *)self home];
    v11 = [(HRERecommendation *)v23 initWithHome:home2];

    mutableActionSetBuilders = [(HREActionSetRecommendation *)v11 mutableActionSetBuilders];
    [mutableActionSetBuilders addObject:v14];

    [(HREActionSetRecommendation *)v11 setSelectedActionSetBuilder:v14];
LABEL_6:

LABEL_7:
    defaultAnalyticsData = [(HRERecommendation *)v11 defaultAnalyticsData];
    [defaultAnalyticsData setObject:@"derived" forKeyedSubscript:*MEMORY[0x277D13580]];

    [(HRERecommendation *)v11 setIdentifierBuilder:v8];
    goto LABEL_9;
  }

  v9 = [HRETriggerRecommendation alloc];
  home3 = [(HREStandardAsyncRecommendationGenerationProcess *)self home];
  v11 = [(HRERecommendation *)v9 initWithHome:home3];

  uniqueIdentifier2 = [triggerCopy uniqueIdentifier];
  uUIDString2 = [uniqueIdentifier2 UUIDString];
  [(HREIdentifierBuilder *)v8 setObject:uUIDString2 forKey:@"trigger"];

  v14 = objc_alloc_init(HRERecommendationEmptyTriggerBuilderContext);
  v15 = MEMORY[0x277D14C48];
  home4 = [(HREStandardAsyncRecommendationGenerationProcess *)self home];
  v17 = [v15 triggerBuilderForTrigger:triggerCopy inHome:home4 context:v14 assertsFailure:0];

  if (v17)
  {
    mutableTriggerBuilders = [(HREActionSetRecommendation *)v11 mutableTriggerBuilders];
    [mutableTriggerBuilders addObject:v17];

    goto LABEL_6;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

@end