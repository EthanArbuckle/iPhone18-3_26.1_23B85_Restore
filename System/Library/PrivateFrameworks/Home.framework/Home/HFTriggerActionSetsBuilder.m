@interface HFTriggerActionSetsBuilder
- (BOOL)areActionsAffectedByEndEvents;
- (BOOL)hasActions;
- (BOOL)isShortcutOwned;
- (HFSetDiff)namedActionSetsDiff;
- (HFTriggerActionSetsBuilder)initWithActionSets:(id)a3 inHome:(id)a4 filterEmptyActionSets:(BOOL)a5;
- (NSArray)allActionBuilders;
- (NSArray)allActionSets;
- (NSArray)anonymousActionBuilder;
- (NSArray)namedActionSets;
- (WFHomeWorkflow)homeWorkflow;
- (id)_generateSummaryInformation;
- (id)_generateSummaryInformationForShortcutOwnedTrigger;
- (id)_generateSummaryInformationForStandardTrigger;
- (id)_removeDuplicateActionSets:(id)a3;
- (id)_uniqueServiceGroupForServices:(id)a3;
- (id)compareToObject:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createActionSetsForShortcuts;
- (id)mediaAccessoriesForPlaybackAction:(id)a3;
- (void)_generateMatterRepresentables:(id)a3;
- (void)_generateStandaloneServices:(id)a3 andMediaAccessories:(id)a4;
- (void)_removeAllNamedActionsSets;
- (void)addActionSetBuilder:(id)a3;
- (void)addActionSetIfNotPresent:(id)a3;
- (void)addAnonymousActionBuilder:(id)a3;
- (void)convertToHomeWorkflowActionSet:(id)a3;
- (void)convertToHomeWorkflowActionSetIfNeeded;
- (void)defaultActionsForShortcut;
- (void)removeActionSetBuilder:(id)a3;
- (void)removeActionSetIfPresent:(id)a3;
- (void)removeAllActionsAndActionSets;
- (void)removeAnonymousActionBuilder:(id)a3;
- (void)resetActionSetBuilders;
- (void)resetAllActionSets;
- (void)setFromTriggerActionSetsBuilder:(id)a3;
- (void)setHomeWorkflow:(id)a3;
- (void)updateActionSetBuilder:(id)a3;
- (void)updateActionSetsInTriggerBuilder:(id)a3;
- (void)updateAnonymousActionBuilder:(id)a3;
- (void)updateFromTriggerActionSetsBuilder:(id)a3;
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
  v3 = [(HFTriggerActionSetsBuilder *)self homeWorkflow];
  if (v3)
  {
    v4 = [HFTriggerActionsSetsUISummary alloc];
    v5 = [v3 summaryString];
    v6 = [v3 summaryIconDescriptors];
    v7 = [(HFTriggerActionsSetsUISummary *)v4 initWithSummaryText:v5 summaryIconDescriptors:v6];
  }

  else
  {
    v7 = [(HFTriggerActionSetsBuilder *)self _generateSummaryInformationForStandardTrigger];
  }

  return v7;
}

- (id)_generateSummaryInformationForStandardTrigger
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(HFTriggerActionsSetsUISummary);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v4 = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v5 = [v4 countByEnumeratingWithState:&v63 objects:v70 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v63 + 1) + 8 * i);
        v10 = [v9 name];
        [(HFTriggerActionsSetsUISummary *)v3 addSceneNamed:v10];

        v11 = [v9 actionSet];
        v12 = [v11 hf_iconDescriptor];

        if (v12)
        {
          [(HFTriggerActionsSetsUISummary *)v3 addIconDescriptor:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v63 objects:v70 count:16];
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
    v17 = [v15 name];
    [(HFTriggerActionsSetsUISummary *)v3 setUniqueServiceGroupName:v17];
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
        v24 = [v23 name];
        [(HFTriggerActionsSetsUISummary *)v3 addServiceNamed:v24];

        v25 = [v23 hf_iconDescriptor];
        [(HFTriggerActionsSetsUISummary *)v3 addIconDescriptor:v25];
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
        v32 = [v31 hf_serviceNameComponents];
        v33 = [v32 composedString];
        [(HFTriggerActionsSetsUISummary *)v3 addMediaAccessoryNamed:v33];

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
        v42 = [v41 hf_serviceNameComponents];
        v43 = [v42 serviceName];
        [(HFTriggerActionsSetsUISummary *)v3 addMatterRepresentableNamed:v43];

        v44 = [HFImageIconDescriptor alloc];
        v45 = [v41 hf_iconIdentifier];
        v46 = [(HFImageIconDescriptor *)v44 initWithImageIdentifier:v45];

        [(HFTriggerActionsSetsUISummary *)v3 addIconDescriptor:v46];
      }

      v38 = [v36 countByEnumeratingWithState:&v51 objects:v67 count:16];
    }

    while (v38);
  }

  v47 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_generateStandaloneServices:(id)a3 andMediaAccessories:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v25 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  v8 = [v7 actions];

  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [v13 getOrCreateAction];
        if (v14)
        {
          objc_opt_class();
          v15 = v14;
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
            v18 = [v17 characteristic];
            v19 = [v18 service];

            if (!v19)
            {
              v20 = [v17 characteristic];
              NSLog(&cfstr_UnexpectedlyGo.isa, v17, v20);
            }

            [v6 na_safeAddObject:v19];
          }

          else
          {
            objc_opt_class();
            v19 = [v13 action];
            if (objc_opt_isKindOfClass())
            {
              v21 = v19;
            }

            else
            {
              v21 = 0;
            }

            v22 = v21;

            if (v22)
            {
              v23 = [(HFTriggerActionSetsBuilder *)self mediaAccessoriesForPlaybackAction:v22];
              [v25 unionSet:v23];
            }

            else
            {
              v19 = 0;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_generateMatterRepresentables:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  v6 = [v5 actions];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) getOrCreateAction];
        if (v11)
        {
          objc_opt_class();
          v12 = v11;
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
            v15 = [v14 representedAccessory];
            if (v15)
            {
              v16 = [[HFMatterAccessoryRepresentable alloc] initWithAccessory:v15];
              [v4 na_safeAddObject:v16];
            }

            else
            {
              NSLog(&cfstr_UnexpectedlyGo_0.isa, v14);
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_uniqueServiceGroupForServices:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  v6 = [v5 home];
  v7 = [v6 serviceGroups];

  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 hf_isSupported])
        {
          v14 = objc_alloc(MEMORY[0x277CBEB98]);
          v15 = [v13 services];
          v16 = [v14 initWithArray:v15];

          if ([v16 intersectsSet:v4])
          {
            if (v10 || ![v16 isEqualToSet:v4])
            {

              v17 = 0;
              goto LABEL_18;
            }

            v10 = v13;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (id)mediaAccessoriesForPlaybackAction:(id)a3
{
  v4 = [a3 mediaProfiles];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HFTriggerActionSetsBuilder_UI__mediaAccessoriesForPlaybackAction___block_invoke;
  v7[3] = &unk_277DF7DD0;
  v7[4] = self;
  v5 = [v4 na_map:v7];

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

- (void)updateActionSetsInTriggerBuilder:(id)a3
{
  v4 = a3;
  v5 = [(HFTriggerActionSetsBuilder *)self namedActionSetsDiff];
  v6 = [v5 toSet];
  v7 = [v6 allObjects];
  v10 = [v7 na_map:&__block_literal_global_81];

  [v4 setActionSets:v10];
  v8 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  v9 = [v4 triggerOwnedActionSet];

  [v8 updateActionsInBuilder:v9];
}

- (HFTriggerActionSetsBuilder)initWithActionSets:(id)a3 inHome:(id)a4 filterEmptyActionSets:(BOOL)a5
{
  v5 = a5;
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v39.receiver = self;
  v39.super_class = HFTriggerActionSetsBuilder;
  v10 = [(HFTriggerActionSetsBuilder *)&v39 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_home, a4);
    v12 = [(HFTriggerActionSetsBuilder *)v11 _removeDuplicateActionSets:v8];
    if (v5)
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

        v19 = [*(*(&v35 + 1) + 8 * v18) hf_shortcutAction];
        [(HFTriggerActionSetsBuilder *)v11 setShortcutAction:v19];

        v20 = [(HFTriggerActionSetsBuilder *)v11 shortcutAction];

        if (v20)
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
    v21 = v9;
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

- (id)_removeDuplicateActionSets:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v27 + 1) + 8 * i) uniqueIdentifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x277CBEB18] array];
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
        v18 = [v17 uniqueIdentifier];
        v19 = [v4 containsObject:v18];

        if (v19)
        {
          v20 = [v17 uniqueIdentifier];
          [v4 removeObject:v20];

          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v14);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

BOOL __53__HFTriggerActionSetsBuilder__removeEmptyActionSets___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 actions];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)setFromTriggerActionSetsBuilder:(id)a3
{
  v4 = a3;
  v5 = [HFMutableSetDiff alloc];
  v6 = [v4 namedActionSetsDiff];
  v7 = [v6 toSet];
  v8 = [(HFMutableSetDiff *)v5 initWithFromSet:v7];
  [(HFTriggerActionSetsBuilder *)self setActionSetBuilders:v8];

  v9 = [HFTriggerAnonymousActionSetBuilder alloc];
  v10 = [(HFTriggerActionSetsBuilder *)self home];
  v11 = [(HFItemBuilder *)v9 initWithHome:v10];
  [(HFTriggerActionSetsBuilder *)self setAnonymousActionSetBuilder:v11];

  v14 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  v12 = [v4 anonymousActionSetBuilder];

  v13 = [v12 actionBuilders];
  [v14 updateActionBuildersDiff:v13];
}

- (void)updateFromTriggerActionSetsBuilder:(id)a3
{
  v4 = a3;
  v5 = [v4 actionSetBuilders];
  v6 = [v5 mutableCopy];
  [(HFTriggerActionSetsBuilder *)self setActionSetBuilders:v6];

  v7 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  v8 = [v4 anonymousActionSetBuilder];
  v9 = [v8 actionBuilders];
  [v7 updateActionBuildersDiff:v9];

  v10 = [v4 shortcutAction];

  [(HFTriggerActionSetsBuilder *)self setShortcutAction:v10];
}

- (HFSetDiff)namedActionSetsDiff
{
  v2 = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)isShortcutOwned
{
  v3 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  if ([v3 actionSetType] == 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HFTriggerActionSetsBuilder *)self shortcutAction];
    v4 = v5 != 0;
  }

  return v4;
}

- (WFHomeWorkflow)homeWorkflow
{
  v2 = [(HFTriggerActionSetsBuilder *)self shortcutAction];
  v3 = [v2 shortcut];

  return v3;
}

- (void)setHomeWorkflow:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v4 = [objc_alloc(MEMORY[0x277CD1DF8]) initWithShortcut:v5];
    [(HFTriggerActionSetsBuilder *)self setShortcutAction:v4];
  }

  else
  {
    [(HFTriggerActionSetsBuilder *)self setShortcutAction:0];
  }
}

- (BOOL)hasActions
{
  v3 = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
    v6 = [v5 actions];
    if ([v6 count])
    {
      v4 = 1;
    }

    else
    {
      v7 = [(HFTriggerActionSetsBuilder *)self shortcutAction];
      v4 = v7 != 0;
    }
  }

  return v4;
}

- (NSArray)namedActionSets
{
  v2 = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  v3 = [v2 toSet];
  v4 = [v3 allObjects];

  return v4;
}

- (NSArray)anonymousActionBuilder
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(HFTriggerActionSetsBuilder *)self shortcutAction];

  if (v3)
  {
    v4 = [(HFTriggerActionSetsBuilder *)self shortcutAction];
    v5 = [(HFTriggerActionSetsBuilder *)self home];
    v6 = [HFActionBuilder actionBuilderForAction:v4 inHome:v5];

    v11[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v6 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
    v7 = [v6 actions];
  }

  v8 = v7;

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)addActionSetBuilder:(id)a3
{
  v4 = a3;
  v5 = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  [v5 addObject:v4];
}

- (void)updateActionSetBuilder:(id)a3
{
  v4 = a3;
  v5 = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  [v5 updateObject:v4];
}

- (void)removeActionSetBuilder:(id)a3
{
  v4 = a3;
  v5 = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  [v5 deleteObject:v4];
}

- (void)addAnonymousActionBuilder:(id)a3
{
  v4 = a3;
  v5 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  [v5 addAction:v4];
}

- (void)updateAnonymousActionBuilder:(id)a3
{
  v4 = a3;
  v5 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  [v5 updateAction:v4];
}

- (void)removeAnonymousActionBuilder:(id)a3
{
  v4 = a3;
  v5 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  [v5 removeAction:v4];
}

- (void)removeAllActionsAndActionSets
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v4 = [v3 copy];

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

  v10 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  [v10 removeAllActions];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)areActionsAffectedByEndEvents
{
  v3 = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v4 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  v5 = [v3 arrayByAddingObject:v4];

  LOBYTE(v4) = [v5 na_any:&__block_literal_global_14_4];
  return v4;
}

- (void)resetAllActionSets
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  v5 = [v4 toSet];
  v6 = [HFSetDiff diffFromSet:v3 toSet:v5];
  v7 = [v6 mutableCopy];
  [(HFTriggerActionSetsBuilder *)self setActionSetBuilders:v7];

  v8 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  v9 = [HFTriggerAnonymousActionSetBuilder alloc];
  v10 = [(HFTriggerActionSetsBuilder *)self home];
  v11 = [(HFItemBuilder *)v9 initWithHome:v10];
  [(HFTriggerActionSetsBuilder *)self setAnonymousActionSetBuilder:v11];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [v8 actions];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        v18 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
        v19 = [v17 copyForCreatingNewAction];
        [v18 addAction:v19];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)resetActionSetBuilders
{
  v3 = [HFMutableSetDiff alloc];
  v6 = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  v4 = [v6 toSet];
  v5 = [(HFMutableSetDiff *)v3 initWithFromSet:v4];
  [(HFTriggerActionSetsBuilder *)self setActionSetBuilders:v5];
}

- (void)addActionSetIfNotPresent:(id)a3
{
  v4 = a3;
  v5 = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HFTriggerActionSetsBuilder_addActionSetIfNotPresent___block_invoke;
  v11[3] = &unk_277DFA3C0;
  v6 = v4;
  v12 = v6;
  v7 = [v5 na_any:v11];

  if (v6 && (v7 & 1) == 0)
  {
    v8 = [HFActionSetBuilder alloc];
    v9 = [(HFTriggerActionSetsBuilder *)self home];
    v10 = [(HFActionSetBuilder *)v8 initWithExistingObject:v6 inHome:v9];

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

- (void)removeActionSetIfPresent:(id)a3
{
  v4 = a3;
  v5 = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __55__HFTriggerActionSetsBuilder_removeActionSetIfPresent___block_invoke;
  v11 = &unk_277DFA3C0;
  v6 = v4;
  v12 = v6;
  v7 = [v5 na_firstObjectPassingTest:&v8];

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
  v3 = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v4 = [v3 na_map:&__block_literal_global_20_5];
  v5 = [v4 mutableCopy];

  v6 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  LODWORD(v4) = [v6 hasActions];

  if (v4)
  {
    v7 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
    v8 = [v7 shortcutsComponentActionSet];
    [v5 na_safeAddObject:v8];
  }

  return v5;
}

- (NSArray)allActionSets
{
  v3 = MEMORY[0x277CBEB18];
  v4 = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v5 = [v4 na_map:&__block_literal_global_22_4];
  v6 = [v3 arrayWithArray:v5];

  v7 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  LODWORD(v5) = [v7 hasActions];

  if (v5)
  {
    v8 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
    v9 = [v8 actionSet];

    if (v9)
    {
      v10 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
      v11 = [v10 copy];

      [v11 setActionSet:0];
      v8 = v11;
    }

    v12 = [v8 getOrCreateActionSet];
    [v6 addObject:v12];
  }

  return v6;
}

- (NSArray)allActionBuilders
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [(HFTriggerActionSetsBuilder *)self anonymousActionBuilder];
  v5 = [v3 initWithArray:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) actions];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)convertToHomeWorkflowActionSet:(id)a3
{
  [(HFTriggerActionSetsBuilder *)self setHomeWorkflow:a3];

  [(HFTriggerActionSetsBuilder *)self convertToHomeWorkflowActionSetIfNeeded];
}

- (void)convertToHomeWorkflowActionSetIfNeeded
{
  v3 = [(HFTriggerActionSetsBuilder *)self shortcutAction];

  if (v3)
  {
    v4 = [(HFTriggerActionSetsBuilder *)self shortcutAction];
    v5 = [(HFTriggerActionSetsBuilder *)self home];
    v7 = [HFActionBuilder actionBuilderForAction:v4 inHome:v5];

    v6 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
    [v6 addAction:v7 actionSetType:1];

    [(HFTriggerActionSetsBuilder *)self _removeAllNamedActionsSets];
  }
}

- (void)_removeAllNamedActionsSets
{
  v2 = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  [v2 deleteAllObjects];
}

- (void)defaultActionsForShortcut
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  v3 = [v2 actionBuilders];
  v4 = [v3 toSet];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
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
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  v6 = [v5 fromSet];
  v7 = [v6 allObjects];
  v8 = [v7 na_map:&__block_literal_global_26_0];

  v9 = [objc_opt_class() allocWithZone:a3];
  v10 = [(HFTriggerActionSetsBuilder *)self home];
  v11 = [v9 initWithActionSets:v8 inHome:v10];

  v12 = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  v13 = [v12 mutableCopyWithZone:a3];
  [v11 setActionSetBuilders:v13];

  v14 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  v15 = [v14 copyWithZone:a3];
  [v11 setAnonymousActionSetBuilder:v15];

  v16 = [(HFTriggerActionSetsBuilder *)self shortcutAction];
  [v11 setShortcutAction:v16];

  return v11;
}

- (id)compareToObject:(id)a3
{
  v4 = a3;
  v5 = [[HFComparisonResult alloc] initWithObjectA:self objectB:v4];
  if (![(HFComparisonResult *)v5 containsCriticalDifference])
  {
    v6 = [(HFTriggerActionSetsBuilder *)self namedActionSets];
    v7 = [v4 namedActionSets];
    v8 = [HFContainedObjectListDifference containedObjectDifferenceWithKey:@"actionSets" objectsA:v6 objectsB:v7];
    [(HFComparisonResult *)v5 add:v8];

    v9 = [(HFTriggerActionSetsBuilder *)self anonymousActionBuilder];
    v10 = [v4 anonymousActionBuilder];
    v11 = [HFContainedObjectListDifference containedObjectDifferenceWithKey:@"actions" objectsA:v9 objectsB:v10];
    [(HFComparisonResult *)v5 add:v11];
  }

  return v5;
}

@end