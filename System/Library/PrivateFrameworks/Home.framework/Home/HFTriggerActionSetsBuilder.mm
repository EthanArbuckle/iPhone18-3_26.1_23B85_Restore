@interface HFTriggerActionSetsBuilder
- (BOOL)areActionsAffectedByEndEvents;
- (BOOL)hasActions;
- (BOOL)isShortcutOwned;
- (HFSetDiff)namedActionSetsDiff;
- (HFTriggerActionSetsBuilder)initWithActionSets:(id)sets inHome:(id)home filterEmptyActionSets:(BOOL)actionSets;
- (NSArray)allActionBuilders;
- (NSArray)allActionSets;
- (NSArray)anonymousActionBuilder;
- (NSArray)namedActionSets;
- (WFHomeWorkflow)homeWorkflow;
- (id)_generateSummaryInformation;
- (id)_generateSummaryInformationForShortcutOwnedTrigger;
- (id)_generateSummaryInformationForStandardTrigger;
- (id)_removeDuplicateActionSets:(id)sets;
- (id)_uniqueServiceGroupForServices:(id)services;
- (id)compareToObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createActionSetsForShortcuts;
- (id)mediaAccessoriesForPlaybackAction:(id)action;
- (void)_generateMatterRepresentables:(id)representables;
- (void)_generateStandaloneServices:(id)services andMediaAccessories:(id)accessories;
- (void)_removeAllNamedActionsSets;
- (void)addActionSetBuilder:(id)builder;
- (void)addActionSetIfNotPresent:(id)present;
- (void)addAnonymousActionBuilder:(id)builder;
- (void)convertToHomeWorkflowActionSet:(id)set;
- (void)convertToHomeWorkflowActionSetIfNeeded;
- (void)defaultActionsForShortcut;
- (void)removeActionSetBuilder:(id)builder;
- (void)removeActionSetIfPresent:(id)present;
- (void)removeAllActionsAndActionSets;
- (void)removeAnonymousActionBuilder:(id)builder;
- (void)resetActionSetBuilders;
- (void)resetAllActionSets;
- (void)setFromTriggerActionSetsBuilder:(id)builder;
- (void)setHomeWorkflow:(id)workflow;
- (void)updateActionSetBuilder:(id)builder;
- (void)updateActionSetsInTriggerBuilder:(id)builder;
- (void)updateAnonymousActionBuilder:(id)builder;
- (void)updateFromTriggerActionSetsBuilder:(id)builder;
@end

@implementation HFTriggerActionSetsBuilder

- (id)_generateSummaryInformation
{
  if ([(HFTriggerActionSetsBuilder *)self isShortcutOwned])
  {
    [(HFTriggerActionSetsBuilder *)self _generateSummaryInformationForShortcutOwnedTrigger];
  }

  else
  {
    [(HFTriggerActionSetsBuilder *)self _generateSummaryInformationForStandardTrigger];
  }
  v3 = ;

  return v3;
}

- (id)_generateSummaryInformationForShortcutOwnedTrigger
{
  homeWorkflow = [(HFTriggerActionSetsBuilder *)self homeWorkflow];
  if (homeWorkflow)
  {
    v4 = [HFTriggerActionsSetsUISummary alloc];
    summaryString = [homeWorkflow summaryString];
    summaryIconDescriptors = [homeWorkflow summaryIconDescriptors];
    _generateSummaryInformationForStandardTrigger = [(HFTriggerActionsSetsUISummary *)v4 initWithSummaryText:summaryString summaryIconDescriptors:summaryIconDescriptors];
  }

  else
  {
    _generateSummaryInformationForStandardTrigger = [(HFTriggerActionSetsBuilder *)self _generateSummaryInformationForStandardTrigger];
  }

  return _generateSummaryInformationForStandardTrigger;
}

- (id)_generateSummaryInformationForStandardTrigger
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(HFTriggerActionsSetsUISummary);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v5 = [namedActionSets countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v64;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v64 != v7)
        {
          objc_enumerationMutation(namedActionSets);
        }

        v9 = *(*(&v63 + 1) + 8 * i);
        name = [v9 name];
        [(HFTriggerActionsSetsUISummary *)v3 addSceneNamed:name];

        actionSet = [v9 actionSet];
        hf_iconDescriptor = [actionSet hf_iconDescriptor];

        if (hf_iconDescriptor)
        {
          [(HFTriggerActionsSetsUISummary *)v3 addIconDescriptor:hf_iconDescriptor];
        }
      }

      v6 = [namedActionSets countByEnumeratingWithState:&v63 objects:v70 count:16];
    }

    while (v6);
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [(HFTriggerActionSetsBuilder *)self _generateStandaloneServices:v13 andMediaAccessories:v14];
  v15 = [(HFTriggerActionSetsBuilder *)self _uniqueServiceGroupForServices:v13];
  v16 = v15;
  if (v15)
  {
    name2 = [v15 name];
    [(HFTriggerActionsSetsUISummary *)v3 setUniqueServiceGroupName:name2];
  }

  v50 = v16;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v18 = v13;
  v19 = [v18 countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v60;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v60 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v59 + 1) + 8 * j);
        name3 = [v23 name];
        [(HFTriggerActionsSetsUISummary *)v3 addServiceNamed:name3];

        hf_iconDescriptor2 = [v23 hf_iconDescriptor];
        [(HFTriggerActionsSetsUISummary *)v3 addIconDescriptor:hf_iconDescriptor2];
      }

      v20 = [v18 countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v20);
  }

  v49 = v18;

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v26 = v14;
  v27 = [v26 countByEnumeratingWithState:&v55 objects:v68 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v56;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v56 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v55 + 1) + 8 * k);
        hf_serviceNameComponents = [v31 hf_serviceNameComponents];
        composedString = [hf_serviceNameComponents composedString];
        [(HFTriggerActionsSetsUISummary *)v3 addMediaAccessoryNamed:composedString];

        v34 = [HFMediaHelper mediaIconDescriptorForMediaContainer:v31];
        [(HFTriggerActionsSetsUISummary *)v3 addIconDescriptor:v34];
      }

      v28 = [v26 countByEnumeratingWithState:&v55 objects:v68 count:16];
    }

    while (v28);
  }

  v35 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [(HFTriggerActionSetsBuilder *)self _generateMatterRepresentables:v35];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v36 = v35;
  v37 = [v36 countByEnumeratingWithState:&v51 objects:v67 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v52;
    do
    {
      for (m = 0; m != v38; ++m)
      {
        if (*v52 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v51 + 1) + 8 * m);
        hf_serviceNameComponents2 = [v41 hf_serviceNameComponents];
        serviceName = [hf_serviceNameComponents2 serviceName];
        [(HFTriggerActionsSetsUISummary *)v3 addMatterRepresentableNamed:serviceName];

        v44 = [HFImageIconDescriptor alloc];
        hf_iconIdentifier = [v41 hf_iconIdentifier];
        v46 = [(HFImageIconDescriptor *)v44 initWithImageIdentifier:hf_iconIdentifier];

        [(HFTriggerActionsSetsUISummary *)v3 addIconDescriptor:v46];
      }

      v38 = [v36 countByEnumeratingWithState:&v51 objects:v67 count:16];
    }

    while (v38);
  }

  v47 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_generateStandaloneServices:(id)services andMediaAccessories:(id)accessories
{
  v31 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  accessoriesCopy = accessories;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  actions = [anonymousActionSetBuilder actions];

  v9 = [actions countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(actions);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        getOrCreateAction = [v13 getOrCreateAction];
        if (getOrCreateAction)
        {
          objc_opt_class();
          v15 = getOrCreateAction;
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
            characteristic = [v17 characteristic];
            service = [characteristic service];

            if (!service)
            {
              characteristic2 = [v17 characteristic];
              NSLog(&cfstr_UnexpectedlyGo.isa, v17, characteristic2);
            }

            [servicesCopy na_safeAddObject:service];
          }

          else
          {
            objc_opt_class();
            service = [v13 action];
            if (objc_opt_isKindOfClass())
            {
              v21 = service;
            }

            else
            {
              v21 = 0;
            }

            v22 = v21;

            if (v22)
            {
              v23 = [(HFTriggerActionSetsBuilder *)self mediaAccessoriesForPlaybackAction:v22];
              [accessoriesCopy unionSet:v23];
            }

            else
            {
              service = 0;
            }
          }
        }
      }

      v10 = [actions countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_generateMatterRepresentables:(id)representables
{
  v23 = *MEMORY[0x277D85DE8];
  representablesCopy = representables;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  actions = [anonymousActionSetBuilder actions];

  v7 = [actions countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(actions);
        }

        getOrCreateAction = [*(*(&v18 + 1) + 8 * i) getOrCreateAction];
        if (getOrCreateAction)
        {
          objc_opt_class();
          v12 = getOrCreateAction;
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;

          if (v14)
          {
            representedAccessory = [v14 representedAccessory];
            if (representedAccessory)
            {
              v16 = [[HFMatterAccessoryRepresentable alloc] initWithAccessory:representedAccessory];
              [representablesCopy na_safeAddObject:v16];
            }

            else
            {
              NSLog(&cfstr_UnexpectedlyGo_0.isa, v14);
            }
          }
        }
      }

      v8 = [actions countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_uniqueServiceGroupForServices:(id)services
{
  v25 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  home = [anonymousActionSetBuilder home];
  serviceGroups = [home serviceGroups];

  v8 = [serviceGroups countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(serviceGroups);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 hf_isSupported])
        {
          v14 = objc_alloc(MEMORY[0x277CBEB98]);
          services = [v13 services];
          v16 = [v14 initWithArray:services];

          if ([v16 intersectsSet:servicesCopy])
          {
            if (v10 || ![v16 isEqualToSet:servicesCopy])
            {

              v17 = 0;
              goto LABEL_18;
            }

            v10 = v13;
          }
        }
      }

      v9 = [serviceGroups countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

  v10 = v10;
  v17 = v10;
LABEL_18:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)mediaAccessoriesForPlaybackAction:(id)action
{
  mediaProfiles = [action mediaProfiles];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HFTriggerActionSetsBuilder_UI__mediaAccessoriesForPlaybackAction___block_invoke;
  v7[3] = &unk_277DF7DD0;
  v7[4] = self;
  v5 = [mediaProfiles na_map:v7];

  return v5;
}

void *__68__HFTriggerActionSetsBuilder_UI__mediaAccessoriesForPlaybackAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) anonymousActionSetBuilder];
  v5 = [v4 home];
  v6 = [v5 mediaSystems];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__HFTriggerActionSetsBuilder_UI__mediaAccessoriesForPlaybackAction___block_invoke_2;
  v12[3] = &unk_277DF7250;
  v13 = v3;
  v7 = v3;
  v8 = [v6 na_firstObjectPassingTest:v12];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  return v9;
}

uint64_t __68__HFTriggerActionSetsBuilder_UI__mediaAccessoriesForPlaybackAction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 accessories];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__HFTriggerActionSetsBuilder_UI__mediaAccessoriesForPlaybackAction___block_invoke_3;
  v6[3] = &unk_277DF3888;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __68__HFTriggerActionSetsBuilder_UI__mediaAccessoriesForPlaybackAction___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 mediaProfile];
  v4 = [v3 hf_mediaRouteIdentifier];
  v5 = [*(a1 + 32) hf_mediaRouteIdentifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (void)updateActionSetsInTriggerBuilder:(id)builder
{
  builderCopy = builder;
  namedActionSetsDiff = [(HFTriggerActionSetsBuilder *)self namedActionSetsDiff];
  toSet = [namedActionSetsDiff toSet];
  allObjects = [toSet allObjects];
  v10 = [allObjects na_map:&__block_literal_global_81];

  [builderCopy setActionSets:v10];
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  triggerOwnedActionSet = [builderCopy triggerOwnedActionSet];

  [anonymousActionSetBuilder updateActionsInBuilder:triggerOwnedActionSet];
}

- (HFTriggerActionSetsBuilder)initWithActionSets:(id)sets inHome:(id)home filterEmptyActionSets:(BOOL)actionSets
{
  actionSetsCopy = actionSets;
  v41 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  homeCopy = home;
  v39.receiver = self;
  v39.super_class = HFTriggerActionSetsBuilder;
  v10 = [(HFTriggerActionSetsBuilder *)&v39 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_home, home);
    v12 = [(HFTriggerActionSetsBuilder *)v11 _removeDuplicateActionSets:setsCopy];
    if (actionSetsCopy)
    {
      v13 = [(HFTriggerActionSetsBuilder *)v11 _removeEmptyActionSets:v12];

      v12 = v13;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
LABEL_6:
      v18 = 0;
      while (1)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v14);
        }

        hf_shortcutAction = [*(*(&v35 + 1) + 8 * v18) hf_shortcutAction];
        [(HFTriggerActionSetsBuilder *)v11 setShortcutAction:hf_shortcutAction];

        shortcutAction = [(HFTriggerActionSetsBuilder *)v11 shortcutAction];

        if (shortcutAction)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
          if (v16)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __78__HFTriggerActionSetsBuilder_initWithActionSets_inHome_filterEmptyActionSets___block_invoke;
    v33[3] = &unk_277DFA398;
    v21 = homeCopy;
    v34 = v21;
    v22 = [v14 na_map:v33];
    v23 = [v22 mutableCopy];

    v24 = [v14 na_firstObjectPassingTest:&__block_literal_global_88];
    v25 = [HFMutableSetDiff alloc];
    v26 = [MEMORY[0x277CBEB98] setWithArray:v23];
    v27 = [(HFMutableSetDiff *)v25 initWithFromSet:v26];
    [(HFTriggerActionSetsBuilder *)v11 setActionSetBuilders:v27];

    v28 = [HFTriggerAnonymousActionSetBuilder alloc];
    if (v24)
    {
      v29 = [(HFTriggerAnonymousActionSetBuilder *)v28 initWithExistingObject:v24 inHome:v21];
    }

    else
    {
      v29 = [(HFItemBuilder *)v28 initWithHome:v21];
    }

    v30 = v29;
    [(HFTriggerActionSetsBuilder *)v11 setAnonymousActionSetBuilder:v29];
  }

  v31 = *MEMORY[0x277D85DE8];
  return v11;
}

HFActionSetBuilder *__78__HFTriggerActionSetsBuilder_initWithActionSets_inHome_filterEmptyActionSets___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_isAnonymous])
  {
    v4 = 0;
  }

  else
  {
    v4 = [[HFActionSetBuilder alloc] initWithExistingObject:v3 inHome:*(a1 + 32)];
  }

  return v4;
}

- (id)_removeDuplicateActionSets:(id)sets
{
  v33 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  v4 = [MEMORY[0x277CBEB58] set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = setsCopy;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        uniqueIdentifier = [*(*(&v27 + 1) + 8 * i) uniqueIdentifier];
        [v4 addObject:uniqueIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  array = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * j);
        uniqueIdentifier2 = [v17 uniqueIdentifier];
        v19 = [v4 containsObject:uniqueIdentifier2];

        if (v19)
        {
          uniqueIdentifier3 = [v17 uniqueIdentifier];
          [v4 removeObject:uniqueIdentifier3];

          [array addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v14);
  }

  v21 = *MEMORY[0x277D85DE8];

  return array;
}

BOOL __53__HFTriggerActionSetsBuilder__removeEmptyActionSets___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 actions];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)setFromTriggerActionSetsBuilder:(id)builder
{
  builderCopy = builder;
  v5 = [HFMutableSetDiff alloc];
  namedActionSetsDiff = [builderCopy namedActionSetsDiff];
  toSet = [namedActionSetsDiff toSet];
  v8 = [(HFMutableSetDiff *)v5 initWithFromSet:toSet];
  [(HFTriggerActionSetsBuilder *)self setActionSetBuilders:v8];

  v9 = [HFTriggerAnonymousActionSetBuilder alloc];
  home = [(HFTriggerActionSetsBuilder *)self home];
  v11 = [(HFItemBuilder *)v9 initWithHome:home];
  [(HFTriggerActionSetsBuilder *)self setAnonymousActionSetBuilder:v11];

  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  anonymousActionSetBuilder2 = [builderCopy anonymousActionSetBuilder];

  actionBuilders = [anonymousActionSetBuilder2 actionBuilders];
  [anonymousActionSetBuilder updateActionBuildersDiff:actionBuilders];
}

- (void)updateFromTriggerActionSetsBuilder:(id)builder
{
  builderCopy = builder;
  actionSetBuilders = [builderCopy actionSetBuilders];
  v6 = [actionSetBuilders mutableCopy];
  [(HFTriggerActionSetsBuilder *)self setActionSetBuilders:v6];

  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  anonymousActionSetBuilder2 = [builderCopy anonymousActionSetBuilder];
  actionBuilders = [anonymousActionSetBuilder2 actionBuilders];
  [anonymousActionSetBuilder updateActionBuildersDiff:actionBuilders];

  shortcutAction = [builderCopy shortcutAction];

  [(HFTriggerActionSetsBuilder *)self setShortcutAction:shortcutAction];
}

- (HFSetDiff)namedActionSetsDiff
{
  actionSetBuilders = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  v3 = [actionSetBuilders copy];

  return v3;
}

- (BOOL)isShortcutOwned
{
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  if ([anonymousActionSetBuilder actionSetType] == 1)
  {
    v4 = 1;
  }

  else
  {
    shortcutAction = [(HFTriggerActionSetsBuilder *)self shortcutAction];
    v4 = shortcutAction != 0;
  }

  return v4;
}

- (WFHomeWorkflow)homeWorkflow
{
  shortcutAction = [(HFTriggerActionSetsBuilder *)self shortcutAction];
  shortcut = [shortcutAction shortcut];

  return shortcut;
}

- (void)setHomeWorkflow:(id)workflow
{
  workflowCopy = workflow;
  if (workflowCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277CD1DF8]) initWithShortcut:workflowCopy];
    [(HFTriggerActionSetsBuilder *)self setShortcutAction:v4];
  }

  else
  {
    [(HFTriggerActionSetsBuilder *)self setShortcutAction:0];
  }
}

- (BOOL)hasActions
{
  namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  if ([namedActionSets count])
  {
    v4 = 1;
  }

  else
  {
    anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
    actions = [anonymousActionSetBuilder actions];
    if ([actions count])
    {
      v4 = 1;
    }

    else
    {
      shortcutAction = [(HFTriggerActionSetsBuilder *)self shortcutAction];
      v4 = shortcutAction != 0;
    }
  }

  return v4;
}

- (NSArray)namedActionSets
{
  actionSetBuilders = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  toSet = [actionSetBuilders toSet];
  allObjects = [toSet allObjects];

  return allObjects;
}

- (NSArray)anonymousActionBuilder
{
  v11[1] = *MEMORY[0x277D85DE8];
  shortcutAction = [(HFTriggerActionSetsBuilder *)self shortcutAction];

  if (shortcutAction)
  {
    shortcutAction2 = [(HFTriggerActionSetsBuilder *)self shortcutAction];
    home = [(HFTriggerActionSetsBuilder *)self home];
    anonymousActionSetBuilder = [HFActionBuilder actionBuilderForAction:shortcutAction2 inHome:home];

    v11[0] = anonymousActionSetBuilder;
    actions = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
    actions = [anonymousActionSetBuilder actions];
  }

  v8 = actions;

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)addActionSetBuilder:(id)builder
{
  builderCopy = builder;
  actionSetBuilders = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  [actionSetBuilders addObject:builderCopy];
}

- (void)updateActionSetBuilder:(id)builder
{
  builderCopy = builder;
  actionSetBuilders = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  [actionSetBuilders updateObject:builderCopy];
}

- (void)removeActionSetBuilder:(id)builder
{
  builderCopy = builder;
  actionSetBuilders = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  [actionSetBuilders deleteObject:builderCopy];
}

- (void)addAnonymousActionBuilder:(id)builder
{
  builderCopy = builder;
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  [anonymousActionSetBuilder addAction:builderCopy];
}

- (void)updateAnonymousActionBuilder:(id)builder
{
  builderCopy = builder;
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  [anonymousActionSetBuilder updateAction:builderCopy];
}

- (void)removeAnonymousActionBuilder:(id)builder
{
  builderCopy = builder;
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  [anonymousActionSetBuilder removeAction:builderCopy];
}

- (void)removeAllActionsAndActionSets
{
  v17 = *MEMORY[0x277D85DE8];
  namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v4 = [namedActionSets copy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HFTriggerActionSetsBuilder *)self removeActionSetBuilder:*(*(&v12 + 1) + 8 * v9++), v12];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  [anonymousActionSetBuilder removeAllActions];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)areActionsAffectedByEndEvents
{
  namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  v5 = [namedActionSets arrayByAddingObject:anonymousActionSetBuilder];

  LOBYTE(anonymousActionSetBuilder) = [v5 na_any:&__block_literal_global_14_4];
  return anonymousActionSetBuilder;
}

- (void)resetAllActionSets
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB98] set];
  actionSetBuilders = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  toSet = [actionSetBuilders toSet];
  v6 = [HFSetDiff diffFromSet:v3 toSet:toSet];
  v7 = [v6 mutableCopy];
  [(HFTriggerActionSetsBuilder *)self setActionSetBuilders:v7];

  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  v9 = [HFTriggerAnonymousActionSetBuilder alloc];
  home = [(HFTriggerActionSetsBuilder *)self home];
  v11 = [(HFItemBuilder *)v9 initWithHome:home];
  [(HFTriggerActionSetsBuilder *)self setAnonymousActionSetBuilder:v11];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  actions = [anonymousActionSetBuilder actions];
  v13 = [actions countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(actions);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        anonymousActionSetBuilder2 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
        copyForCreatingNewAction = [v17 copyForCreatingNewAction];
        [anonymousActionSetBuilder2 addAction:copyForCreatingNewAction];

        ++v16;
      }

      while (v14 != v16);
      v14 = [actions countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)resetActionSetBuilders
{
  v3 = [HFMutableSetDiff alloc];
  actionSetBuilders = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  toSet = [actionSetBuilders toSet];
  v5 = [(HFMutableSetDiff *)v3 initWithFromSet:toSet];
  [(HFTriggerActionSetsBuilder *)self setActionSetBuilders:v5];
}

- (void)addActionSetIfNotPresent:(id)present
{
  presentCopy = present;
  namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HFTriggerActionSetsBuilder_addActionSetIfNotPresent___block_invoke;
  v11[3] = &unk_277DFA3C0;
  v6 = presentCopy;
  v12 = v6;
  v7 = [namedActionSets na_any:v11];

  if (v6 && (v7 & 1) == 0)
  {
    v8 = [HFActionSetBuilder alloc];
    home = [(HFTriggerActionSetsBuilder *)self home];
    v10 = [(HFActionSetBuilder *)v8 initWithExistingObject:v6 inHome:home];

    [(HFTriggerActionSetsBuilder *)self addActionSetBuilder:v10];
  }
}

uint64_t __55__HFTriggerActionSetsBuilder_addActionSetIfNotPresent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 actionSet];
  v4 = [v3 uniqueIdentifier];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (void)removeActionSetIfPresent:(id)present
{
  presentCopy = present;
  namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __55__HFTriggerActionSetsBuilder_removeActionSetIfPresent___block_invoke;
  v11 = &unk_277DFA3C0;
  v6 = presentCopy;
  v12 = v6;
  v7 = [namedActionSets na_firstObjectPassingTest:&v8];

  if (v7)
  {
    [(HFTriggerActionSetsBuilder *)self removeActionSetBuilder:v7];
  }

  else
  {
    NSLog(&cfstr_CouldNotFindEx.isa, v6, v8, v9, v10, v11);
  }
}

uint64_t __55__HFTriggerActionSetsBuilder_removeActionSetIfPresent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 actionSet];
  v4 = [v3 uniqueIdentifier];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (id)createActionSetsForShortcuts
{
  namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v4 = [namedActionSets na_map:&__block_literal_global_20_5];
  v5 = [v4 mutableCopy];

  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  LODWORD(v4) = [anonymousActionSetBuilder hasActions];

  if (v4)
  {
    anonymousActionSetBuilder2 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
    shortcutsComponentActionSet = [anonymousActionSetBuilder2 shortcutsComponentActionSet];
    [v5 na_safeAddObject:shortcutsComponentActionSet];
  }

  return v5;
}

- (NSArray)allActionSets
{
  v3 = MEMORY[0x277CBEB18];
  namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v5 = [namedActionSets na_map:&__block_literal_global_22_4];
  v6 = [v3 arrayWithArray:v5];

  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  LODWORD(v5) = [anonymousActionSetBuilder hasActions];

  if (v5)
  {
    anonymousActionSetBuilder2 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
    actionSet = [anonymousActionSetBuilder2 actionSet];

    if (actionSet)
    {
      anonymousActionSetBuilder3 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
      v11 = [anonymousActionSetBuilder3 copy];

      [v11 setActionSet:0];
      anonymousActionSetBuilder2 = v11;
    }

    getOrCreateActionSet = [anonymousActionSetBuilder2 getOrCreateActionSet];
    [v6 addObject:getOrCreateActionSet];
  }

  return v6;
}

- (NSArray)allActionBuilders
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  anonymousActionBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionBuilder];
  v5 = [v3 initWithArray:anonymousActionBuilder];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v7 = [namedActionSets countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(namedActionSets);
        }

        actions = [*(*(&v14 + 1) + 8 * i) actions];
        [v5 addObjectsFromArray:actions];
      }

      v8 = [namedActionSets countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)convertToHomeWorkflowActionSet:(id)set
{
  [(HFTriggerActionSetsBuilder *)self setHomeWorkflow:set];

  [(HFTriggerActionSetsBuilder *)self convertToHomeWorkflowActionSetIfNeeded];
}

- (void)convertToHomeWorkflowActionSetIfNeeded
{
  shortcutAction = [(HFTriggerActionSetsBuilder *)self shortcutAction];

  if (shortcutAction)
  {
    shortcutAction2 = [(HFTriggerActionSetsBuilder *)self shortcutAction];
    home = [(HFTriggerActionSetsBuilder *)self home];
    v7 = [HFActionBuilder actionBuilderForAction:shortcutAction2 inHome:home];

    anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
    [anonymousActionSetBuilder addAction:v7 actionSetType:1];

    [(HFTriggerActionSetsBuilder *)self _removeAllNamedActionsSets];
  }
}

- (void)_removeAllNamedActionsSets
{
  actionSetBuilders = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  [actionSetBuilders deleteAllObjects];
}

- (void)defaultActionsForShortcut
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  actionBuilders = [anonymousActionSetBuilder actionBuilders];
  toSet = [actionBuilders toSet];

  v5 = [toSet countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(toSet);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        objc_opt_class();
        v10 = v9;
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        if (v12)
        {
          [v12 defaultActionIfMediaActionInvalid];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [toSet countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  actionSetBuilders = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  fromSet = [actionSetBuilders fromSet];
  allObjects = [fromSet allObjects];
  v8 = [allObjects na_map:&__block_literal_global_26_0];

  v9 = [objc_opt_class() allocWithZone:zone];
  home = [(HFTriggerActionSetsBuilder *)self home];
  v11 = [v9 initWithActionSets:v8 inHome:home];

  actionSetBuilders2 = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  v13 = [actionSetBuilders2 mutableCopyWithZone:zone];
  [v11 setActionSetBuilders:v13];

  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  v15 = [anonymousActionSetBuilder copyWithZone:zone];
  [v11 setAnonymousActionSetBuilder:v15];

  shortcutAction = [(HFTriggerActionSetsBuilder *)self shortcutAction];
  [v11 setShortcutAction:shortcutAction];

  return v11;
}

- (id)compareToObject:(id)object
{
  objectCopy = object;
  v5 = [[HFComparisonResult alloc] initWithObjectA:self objectB:objectCopy];
  if (![(HFComparisonResult *)v5 containsCriticalDifference])
  {
    namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
    namedActionSets2 = [objectCopy namedActionSets];
    v8 = [HFContainedObjectListDifference containedObjectDifferenceWithKey:@"actionSets" objectsA:namedActionSets objectsB:namedActionSets2];
    [(HFComparisonResult *)v5 add:v8];

    anonymousActionBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionBuilder];
    anonymousActionBuilder2 = [objectCopy anonymousActionBuilder];
    v11 = [HFContainedObjectListDifference containedObjectDifferenceWithKey:@"actions" objectsA:anonymousActionBuilder objectsB:anonymousActionBuilder2];
    [(HFComparisonResult *)v5 add:v11];
  }

  return v5;
}

@end