@interface HRETemplateRecommendationGeneratorProcess
- (BOOL)shouldGenerateRecommendations;
- (id)_actionsForDerivingForTemplate:(id)template recommendation:(id)recommendation;
- (id)_createInitialRecommendations:(id)recommendations withRecommendation:(id)recommendation;
- (id)_defineActionsWithActionMap:(id)map withActionableObjects:(id)objects;
- (id)_defineProfileActionsForActionableObjects:(id)objects withActionMap:(id)map;
- (id)_existingActionSetForTemplate:(id)template recommendation:(id)recommendation;
- (id)_filterRecommendations:(id)recommendations fromTemplate:(id)template;
- (id)_filterSplitRecommendations:(id)recommendations characteristicTypePriority:(id)priority;
- (id)_filterToAllowedObjects:(id)objects withSourceObjects:(id)sourceObjects withTrigger:(id)trigger template:(id)template;
- (id)_initialRecommendationsForTemplate:(id)template;
- (id)_splitRecommendationsBySplitStrategy:(id)strategy;
- (id)_triggerWithSameConfigurationAsTrigger:(id)trigger;
- (id)additionalIncludedObjectsInObjects:(id)objects withTypes:(id)types;
- (id)characteristicActionsForObject:(id)object actionMap:(id)map;
- (id)definiteActionsForCharacteristicActionMap:(id)map object:(id)object;
- (id)generateRecommendations;
- (id)matterCommandActionsForActionableObjects:(id)objects withActionMap:(id)map;
- (id)recommendationsWithTemplate:(id)template;
- (int64_t)_diffScoreForTriggerComparison:(id)comparison;
@end

@implementation HRETemplateRecommendationGeneratorProcess

- (id)matterCommandActionsForActionableObjects:(id)objects withActionMap:(id)map
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5F8E50, &qword_254409E88);
  v5 = sub_254406B80();
  sub_2543E51AC(0, &qword_27F5F8B08, off_2797759E8);
  v6 = sub_254406B30();
  selfCopy = self;
  HRETemplateRecommendationGeneratorProcess.matterCommandActions(for:with:)(v5, v6);

  sub_2543E51AC(0, &qword_27F5F8E60, 0x277D14380);
  sub_2543E96C4(&qword_27F5F8E68, &qword_27F5F8E60, 0x277D14380);
  v8 = sub_254406BB0();

  return v8;
}

- (id)additionalIncludedObjectsInObjects:(id)objects withTypes:(id)types
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5F8E50, &qword_254409E88);
  v5 = sub_254406B80();
  v6 = sub_254406BC0();
  selfCopy = self;
  HRETemplateRecommendationGeneratorProcess.additionalIncludedObjects(in:with:)(v5, v6);

  v8 = sub_254406B70();

  return v8;
}

- (BOOL)shouldGenerateRecommendations
{
  v6.receiver = self;
  v6.super_class = HRETemplateRecommendationGeneratorProcess;
  if (![(HREStandardAsyncRecommendationGenerationProcess *)&v6 shouldGenerateRecommendations])
  {
    return 0;
  }

  activeTemplates = [(HRETemplateRecommendationGeneratorProcess *)self activeTemplates];
  v4 = [activeTemplates count] != 0;

  return v4;
}

- (id)generateRecommendations
{
  v3 = objc_alloc_init(HRERecommendationEmptyTriggerBuilderContext);
  home = [(HREStandardAsyncRecommendationGenerationProcess *)self home];
  triggers = [home triggers];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__HRETemplateRecommendationGeneratorProcess_generateRecommendations__block_invoke;
  v14[3] = &unk_2797769A8;
  v14[4] = self;
  v15 = v3;
  v6 = v3;
  v7 = [triggers na_map:v14];
  [(HRETemplateRecommendationGeneratorProcess *)self setHomeTriggerBuilders:v7];

  v8 = MEMORY[0x277CBEB98];
  activeTemplates = [(HRETemplateRecommendationGeneratorProcess *)self activeTemplates];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__HRETemplateRecommendationGeneratorProcess_generateRecommendations__block_invoke_2;
  v13[3] = &unk_2797769D0;
  v13[4] = self;
  v10 = [activeTemplates na_flatMap:v13];
  v11 = [v8 setWithArray:v10];

  return v11;
}

id __68__HRETemplateRecommendationGeneratorProcess_generateRecommendations__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D14C48];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 home];
  v7 = [v3 triggerBuilderForTrigger:v5 inHome:v6 context:*(a1 + 40) assertsFailure:0];

  return v7;
}

id __68__HRETemplateRecommendationGeneratorProcess_generateRecommendations__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) recommendationsWithTemplate:a2];
  v3 = [v2 allObjects];

  return v3;
}

- (id)recommendationsWithTemplate:(id)template
{
  templateCopy = template;
  options = [(HREStandardAsyncRecommendationGenerationProcess *)self options];
  objc_opt_class();
  v6 = templateCopy;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  rules = [v6 rules];
  v10 = [rules hre_filteredToClass:objc_opt_class()];
  allObjects = [v10 allObjects];

  v12 = [allObjects na_filter:&__block_literal_global_50];
  homeRecommendableObjects = [(HREStandardAsyncRecommendationGenerationProcess *)self homeRecommendableObjects];
  LODWORD(v10) = [HRERecommendableObjectUtilities recommendableObjects:homeRecommendableObjects matchAllRules:v12];

  v14 = 0;
  if (v10)
  {
    v32 = options;
    homeRecommendableObjects2 = [(HREStandardAsyncRecommendationGenerationProcess *)self homeRecommendableObjects];
    involvedAccessoryTypes = [v6 involvedAccessoryTypes];
    v17 = [HRERecommendableObjectUtilities filterRecommendableObjects:homeRecommendableObjects2 toMatchTypes:involvedAccessoryTypes];

    homeRecommendableObjects3 = [(HREStandardAsyncRecommendationGenerationProcess *)self homeRecommendableObjects];
    allObjects2 = [homeRecommendableObjects3 allObjects];
    involvedAccessoryTypes2 = [v6 involvedAccessoryTypes];
    v21 = [(HRETemplateRecommendationGeneratorProcess *)self additionalIncludedObjectsInObjects:allObjects2 withTypes:involvedAccessoryTypes2];

    v22 = [v17 setByAddingObjectsFromArray:v21];

    if (![v22 count])
    {
      v14 = 0;
LABEL_16:

      goto LABEL_17;
    }

    sourceRecommendableObjects = [(HREStandardAsyncRecommendationGenerationProcess *)self sourceRecommendableObjects];
    v24 = [sourceRecommendableObjects na_filter:&__block_literal_global_55_0];

    sourceRecommendableObjects2 = [(HREStandardAsyncRecommendationGenerationProcess *)self sourceRecommendableObjects];
    v31 = v24;
    if ([sourceRecommendableObjects2 count])
    {
      v26 = [v24 count];

      if (!v26)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    if (![v24 count] || objc_msgSend(v22, "intersectsSet:", v24))
    {
      v42[0] = 0;
      v42[1] = v42;
      v42[2] = 0x2020000000;
      v42[3] = 0;
      v27 = [(HRETemplateRecommendationGeneratorProcess *)self _initialRecommendationsForTemplate:v6];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __73__HRETemplateRecommendationGeneratorProcess_recommendationsWithTemplate___block_invoke_3;
      v34[3] = &unk_279776A60;
      v35 = v22;
      v36 = allObjects;
      v28 = v6;
      v37 = v28;
      selfCopy = self;
      v41 = v32 < 0;
      v39 = v8;
      v40 = v42;
      v29 = [v27 na_filter:v34];

      v14 = [(HRETemplateRecommendationGeneratorProcess *)self _filterRecommendations:v29 fromTemplate:v28];

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __73__HRETemplateRecommendationGeneratorProcess_recommendationsWithTemplate___block_invoke_7;
      v33[3] = &unk_279776A88;
      v33[4] = v42;
      [v14 na_each:v33];

      _Block_object_dispose(v42, 8);
LABEL_15:

      goto LABEL_16;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

LABEL_17:

  return v14;
}

BOOL __73__HRETemplateRecommendationGeneratorProcess_recommendationsWithTemplate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

uint64_t __73__HRETemplateRecommendationGeneratorProcess_recommendationsWithTemplate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_28666E610])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4 && ([v4 hf_isMatterOnlyAccessory] & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v2 hre_isVisible];
  }

  return v6;
}

uint64_t __73__HRETemplateRecommendationGeneratorProcess_recommendationsWithTemplate___block_invoke_3(uint64_t a1, void *a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 roomsToFilterHomeObjects];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v3 roomsToFilterHomeObjects];
    v8 = [HRERecommendableObjectUtilities filterRecommendableObjects:v4 toRooms:v7];

    v4 = v8;
  }

  if ([HRERecommendableObjectUtilities recommendableObjects:v4 matchAllRules:*(a1 + 40)])
  {
    objc_opt_class();
    v9 = *(a1 + 48);
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (!v11)
    {
      v29 = [*(a1 + 56) sourceRecommendableObjects];
      v30 = [v29 count];

      if (!v30)
      {
        v67 = 0;
        goto LABEL_22;
      }

      v14 = [*(a1 + 56) sourceRecommendableObjects];
      v24 = [v4 na_setByIntersectingWithSet:v14];
LABEL_20:
      v67 = v11;

      v4 = v24;
LABEL_22:
      v31 = v3;
      v32 = &unk_286660478;
      if ([v31 conformsToProtocol:v32])
      {
        v33 = v31;
      }

      else
      {
        v33 = 0;
      }

      v34 = v33;

      v68 = v3;
      if (v34)
      {
        v35 = [*(a1 + 56) _existingActionSetForTemplate:*(a1 + 48) recommendation:v34];
        objc_opt_class();
        v36 = v31;
        if (objc_opt_isKindOfClass())
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        v38 = v37;

        if (v38 && v35)
        {
          v39 = [v38 mutableActionSetBuilders];
          [v39 removeAllObjects];

          v40 = [v38 mutableActionSetBuilders];
          [v40 addObject:v35];

          [v38 setSelectedActionSetBuilder:v35];
        }

        v41 = [*(a1 + 64) actionMap];
        if (v41)
        {
          v42 = [*(a1 + 56) _defineActionsWithActionMap:v41 withActionableObjects:v4];
          [v34 addActions:v42 allowEditingExistingActions:*(a1 + 80)];
        }

        [*(a1 + 56) _actionsForDerivingForTemplate:*(a1 + 48) recommendation:v34];
        v44 = v43 = v34;
        if ([v44 count])
        {
          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v77[2] = __73__HRETemplateRecommendationGeneratorProcess_recommendationsWithTemplate___block_invoke_5;
          v77[3] = &unk_279776918;
          v78 = *(a1 + 48);
          v45 = [v4 na_filter:v77];
          v46 = [HREDerivedActionUtilities derivedActionsForActionableObjects:v45 fromActions:v44];
          v73[0] = MEMORY[0x277D85DD0];
          v73[1] = 3221225472;
          v73[2] = __73__HRETemplateRecommendationGeneratorProcess_recommendationsWithTemplate___block_invoke_6;
          v73[3] = &unk_279776A38;
          v74 = *(a1 + 64);
          v75 = v43;
          v76 = *(a1 + 80);
          [v46 na_each:v73];
        }

        v3 = v68;
        v34 = v43;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v66 = v34;
        v47 = v31;
        v48 = [v47 triggerBuilders];
        v49 = [v48 copy];

        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v50 = v49;
        v51 = [v50 countByEnumeratingWithState:&v69 objects:v79 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = *v70;
          do
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v70 != v53)
              {
                objc_enumerationMutation(v50);
              }

              v55 = *(*(&v69 + 1) + 8 * i);
              v56 = [*(a1 + 56) _triggerWithSameConfigurationAsTrigger:v55];
              v57 = v56;
              if (v56)
              {
                [v56 setEnabled:1];
                [v47 replaceTriggerBuilder:v55 withTriggerBuilder:v57 allowEditingExistingActions:*(a1 + 80)];
              }
            }

            v52 = [v50 countByEnumeratingWithState:&v69 objects:v79 count:16];
          }

          while (v52);
        }

        v3 = v68;
        v34 = v66;
      }

      v58 = [v31 containsRecommendableContent];
      v59 = [v31 containsMeaningfulChanges];
      if (([*(a1 + 56) options] & 0x40) != 0)
      {
        v60 = v58;
      }

      else
      {
        v60 = v58 & v59;
      }

      v11 = v67;
      if (v58 && (v59 & 1) == 0)
      {
        ++*(*(*(a1 + 72) + 8) + 24);
      }

      v61 = [*(a1 + 56) sourceRecommendableObjects];
      if ([v61 count])
      {
        v62 = [*(a1 + 56) sourceRecommendableObjects];
        v63 = [v31 includesObjects:v62];
      }

      else
      {
        v63 = 1;
      }

      v28 = v60 & v63;
      goto LABEL_60;
    }

    objc_opt_class();
    v12 = v3;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v15 = [v11 triggerBuilderForRecommendation:v14 withObjects:v4];
    if (v15)
    {
      v16 = [*(a1 + 56) sourceRecommendableObjects];
      v17 = [v16 count];

      if (!v17)
      {
LABEL_16:
        v24 = v4;
        [v15 setEnabled:1];
        v25 = [v14 mutableTriggerBuilders];
        [v25 addObject:v15];

        v26 = [v14 mutableTriggerBuilders];
        [v26 na_each:&__block_literal_global_180];

        v27 = [v11 iconDescriptorForRecommendation:v14 withObjects:v24];
        [v14 setIconDescriptor:v27];

        v4 = v15;
        goto LABEL_20;
      }

      v18 = [*(a1 + 56) sourceRecommendableObjects];
      v19 = [v4 intersectsSet:v18];

      if (v19)
      {
        v20 = *(a1 + 56);
        v21 = [v20 sourceRecommendableObjects];
        v22 = [v20 _filterToAllowedObjects:v4 withSourceObjects:v21 withTrigger:v15 template:v11];

        v23 = [v11 triggerBuilderForRecommendation:v14 withObjects:v22];

        if (v23)
        {
          v4 = v22;
          v15 = v23;
          goto LABEL_16;
        }

        v15 = 0;
        v4 = v22;
      }
    }

    v28 = 0;
LABEL_60:

    goto LABEL_61;
  }

  v28 = 0;
LABEL_61:

  v64 = *MEMORY[0x277D85DE8];
  return v28;
}

void __73__HRETemplateRecommendationGeneratorProcess_recommendationsWithTemplate___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 name];

  if (!v2)
  {
    v3 = [v4 naturalLanguageNameOfType:0];
    [v4 setName:v3];
  }
}

uint64_t __73__HRETemplateRecommendationGeneratorProcess_recommendationsWithTemplate___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 involvedAccessoryTypes];
  v5 = [v3 hre_matchingTypes];

  v6 = [v4 intersectsSet:v5];
  return v6;
}

void __73__HRETemplateRecommendationGeneratorProcess_recommendationsWithTemplate___block_invoke_6(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) allowedVariance];
  v4 = [v3 anyRulePassesForAction:v5];

  if (v4)
  {
    [*(a1 + 40) addAction:v5 allowEditingExistingActions:*(a1 + 48)];
  }
}

- (id)_initialRecommendationsForTemplate:(id)template
{
  templateCopy = template;
  sourceRecommendableObjects = [(HREStandardAsyncRecommendationGenerationProcess *)self sourceRecommendableObjects];
  v6 = [sourceRecommendableObjects na_map:&__block_literal_global_210];

  home = [(HREStandardAsyncRecommendationGenerationProcess *)self home];
  v8 = [templateCopy createStarterRecommendationInHome:home];

  splitStrategy = [templateCopy splitStrategy];
  home2 = [(HREStandardAsyncRecommendationGenerationProcess *)self home];
  v11 = [v8 splitUsingSplitStrategy:splitStrategy inHome:home2];

  if ([v6 count])
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__HRETemplateRecommendationGeneratorProcess__initialRecommendationsForTemplate___block_invoke_2;
    v18[3] = &unk_279776AD0;
    v19 = v6;
    v12 = [v11 na_filter:v18];

    v11 = v12;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__HRETemplateRecommendationGeneratorProcess__initialRecommendationsForTemplate___block_invoke_3;
  v16[3] = &unk_279776AF8;
  v16[4] = self;
  v17 = templateCopy;
  v13 = templateCopy;
  v14 = [v11 na_flatMap:v16];

  return v14;
}

uint64_t __80__HRETemplateRecommendationGeneratorProcess__initialRecommendationsForTemplate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 room];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 room];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v8 = [v3 zone];

    if (!v8)
    {
      v7 = 1;
      goto LABEL_6;
    }

    v9 = *(a1 + 32);
    v10 = MEMORY[0x277CBEB98];
    v6 = [v3 zone];
    v11 = [v6 rooms];
    v12 = [v10 setWithArray:v11];
    v7 = [v9 intersectsSet:v12];
  }

LABEL_6:
  return v7;
}

- (id)_createInitialRecommendations:(id)recommendations withRecommendation:(id)recommendation
{
  v39[1] = *MEMORY[0x277D85DE8];
  recommendationsCopy = recommendations;
  recommendationCopy = recommendation;
  objc_opt_class();
  v8 = recommendationsCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    if (![v10 allowMultipleEventsFeature])
    {
      triggerCharacteristicValues = [v10 triggerCharacteristicValues];
      v16 = [MEMORY[0x277CBEB98] setWithArray:triggerCharacteristicValues];
      v17 = [v16 na_map:&__block_literal_global_215];

      if ([v17 count])
      {
        room = [recommendationCopy room];
        v19 = [recommendationCopy zone];
        homeRecommendableObjects = [(HREStandardAsyncRecommendationGenerationProcess *)self homeRecommendableObjects];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __94__HRETemplateRecommendationGeneratorProcess__createInitialRecommendations_withRecommendation___block_invoke_2;
        v34[3] = &unk_279776460;
        v35 = room;
        v36 = v19;
        v21 = v19;
        v22 = room;
        v23 = [homeRecommendableObjects na_filter:v34];

        v28 = MEMORY[0x277D85DD0];
        v29 = 3221225472;
        v30 = __94__HRETemplateRecommendationGeneratorProcess__createInitialRecommendations_withRecommendation___block_invoke_3;
        v31 = &unk_279776B40;
        v32 = v8;
        v33 = v17;
        v24 = [v23 na_flatMap:&v28];
        v15 = [recommendationCopy splitUsingSplitCharacteristics:{v24, v28, v29, v30, v31}];
      }

      else
      {
        v25 = MEMORY[0x277CBEB98];
        v37 = recommendationCopy;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
        v15 = [v25 setWithArray:v22];
      }

      goto LABEL_13;
    }

    v11 = MEMORY[0x277CBEB98];
    v38 = recommendationCopy;
    v12 = MEMORY[0x277CBEA60];
    v13 = &v38;
  }

  else
  {
    v11 = MEMORY[0x277CBEB98];
    v39[0] = recommendationCopy;
    v12 = MEMORY[0x277CBEA60];
    v13 = v39;
  }

  triggerCharacteristicValues = [v12 arrayWithObjects:v13 count:1];
  v15 = [v11 setWithArray:triggerCharacteristicValues];
LABEL_13:

  v26 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __94__HRETemplateRecommendationGeneratorProcess__createInitialRecommendations_withRecommendation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 hre_parentRoom];
    v6 = [v5 isEqual:*(a1 + 32)];
  }

  else
  {
    v7 = *(a1 + 40);
    if (!v7)
    {
      v6 = v4 != 0;
      goto LABEL_6;
    }

    v5 = [v7 rooms];
    v8 = [v4 hre_parentRoom];
    v6 = [v5 containsObject:v8];
  }

LABEL_6:
  return v6;
}

id __94__HRETemplateRecommendationGeneratorProcess__createInitialRecommendations_withRecommendation___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hre_matchingTypes];
  v5 = [*(a1 + 32) involvedAccessoryTypes];
  v6 = [v4 intersectsSet:v5];

  if (v6)
  {
    v7 = [v3 hre_characteristics];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __94__HRETemplateRecommendationGeneratorProcess__createInitialRecommendations_withRecommendation___block_invoke_4;
    v10[3] = &unk_279776320;
    v11 = *(a1 + 40);
    v8 = [v7 na_filter:v10];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] set];
  }

  return v8;
}

uint64_t __94__HRETemplateRecommendationGeneratorProcess__createInitialRecommendations_withRecommendation___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 characteristicType];
  if ([v4 containsObject:v5])
  {
    v6 = [v3 service];
    v7 = [v6 hf_isVisible];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_defineActionsWithActionMap:(id)map withActionableObjects:(id)objects
{
  v25[3] = *MEMORY[0x277D85DE8];
  mapCopy = map;
  objectsCopy = objects;
  v8 = [mapCopy objectForKeyedSubscript:@"HREServiceTypeAll"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __95__HRETemplateRecommendationGeneratorProcess__defineActionsWithActionMap_withActionableObjects___block_invoke;
  v21[3] = &unk_279776B68;
  v22 = mapCopy;
  v23 = v8;
  selfCopy = self;
  v9 = v8;
  v10 = mapCopy;
  v11 = [objectsCopy na_flatMap:v21];
  v12 = [(HRETemplateRecommendationGeneratorProcess *)self _defineProfileActionsForActionableObjects:objectsCopy withActionMap:v10];
  allObjects = [objectsCopy allObjects];

  v14 = [(HRETemplateRecommendationGeneratorProcess *)self matterCommandActionsForActionableObjects:allObjects withActionMap:v10];

  v15 = MEMORY[0x277CBEB98];
  v25[0] = v11;
  v25[1] = v12;
  v25[2] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  v17 = [v15 setWithArray:v16];
  na_setByFlattening = [v17 na_setByFlattening];

  v19 = *MEMORY[0x277D85DE8];

  return na_setByFlattening;
}

id __95__HRETemplateRecommendationGeneratorProcess__defineActionsWithActionMap_withActionableObjects___block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 hre_primaryType];
  if (v4)
  {
    v5 = [HRERecommendableObjectUtilities actionMapFromActionMap:*(a1 + 32) forRecommendableObject:v3];
    objc_opt_class();
    v6 = v5;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      v9 = v6;
    }

    else
    {
      v9 = +[HRECharacteristicActionMap emptyMap];
    }

    if (*(a1 + 40))
    {
      v15[0] = *(a1 + 40);
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      v12 = [v9 mergeWithActionMaps:v11];

      v9 = v12;
    }

    v10 = [*(a1 + 48) characteristicActionsForObject:v3 actionMap:v9];
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_defineProfileActionsForActionableObjects:(id)objects withActionMap:(id)map
{
  objectsCopy = objects;
  v7 = MEMORY[0x277CBEB58];
  mapCopy = map;
  v9 = [v7 set];
  objc_opt_class();
  v10 = NSStringFromProtocol(&unk_28666EF10);
  v11 = [mapCopy objectForKeyedSubscript:v10];

  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = [objectsCopy na_flatMap:&__block_literal_global_222];
    if ([v14 count])
    {
      anyObject = [v14 anyObject];
      v11 = [v13 flattenedMapEvaluatedForObject:anyObject];

      v16 = objc_alloc(MEMORY[0x277D14818]);
      home = [(HREStandardAsyncRecommendationGenerationProcess *)self home];
      v18 = [v16 initWithHome:home];

      [v18 setMediaProfiles:v14];
      [v18 setTargetPlayState:{objc_msgSend(v11, "targetPlaybackState")}];
      targetVolume = [v11 targetVolume];
      [v18 setTargetVolume:targetVolume];

      playbackArchive = [v11 playbackArchive];
      [v18 setPlaybackArchive:playbackArchive];

      [v9 addObject:v18];
    }
  }

  return v9;
}

id __101__HRETemplateRecommendationGeneratorProcess__defineProfileActionsForActionableObjects_withActionMap___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_containedProfiles];
  v3 = [v2 na_map:&__block_literal_global_225];

  return v3;
}

void *__101__HRETemplateRecommendationGeneratorProcess__defineProfileActionsForActionableObjects_withActionMap___block_invoke_2(uint64_t a1, void *a2)
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

  return v4;
}

- (id)_actionsForDerivingForTemplate:(id)template recommendation:(id)recommendation
{
  recommendationCopy = recommendation;
  v7 = [(HRETemplateRecommendationGeneratorProcess *)self _existingActionSetForTemplate:template recommendation:recommendationCopy];
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x277CBEB98];
    actions = [v7 actions];
    v11 = [v9 setWithArray:actions];
  }

  else
  {
    objc_opt_class();
    actions = recommendationCopy;
    if (objc_opt_isKindOfClass())
    {
      v12 = actions;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      triggerBuilders = [v13 triggerBuilders];
      v11 = [triggerBuilders na_flatMap:&__block_literal_global_230];
    }

    else
    {
      v11 = [MEMORY[0x277CBEB98] set];
      actions = 0;
    }
  }

  return v11;
}

id __91__HRETemplateRecommendationGeneratorProcess__actionsForDerivingForTemplate_recommendation___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 triggerActionSets];
  v3 = [v2 anonymousActionSetBuilder];
  v4 = [v3 actionBuilders];
  v5 = [v4 fromSet];

  return v5;
}

- (id)_existingActionSetForTemplate:(id)template recommendation:(id)recommendation
{
  templateCopy = template;
  objc_opt_class();
  v6 = templateCopy;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    actionSetType = [v8 actionSetType];
    actionSetName = [v8 actionSetName];
    home = [(HREStandardAsyncRecommendationGenerationProcess *)self home];
    actionSets = [home actionSets];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __90__HRETemplateRecommendationGeneratorProcess__existingActionSetForTemplate_recommendation___block_invoke;
    v23 = &unk_279776B90;
    v13 = actionSetName;
    v24 = v13;
    v14 = actionSetType;
    v25 = v14;
    v15 = [actionSets na_firstObjectPassingTest:&v20];

    if (v15)
    {
      v16 = objc_alloc(MEMORY[0x277D14398]);
      v17 = [(HREStandardAsyncRecommendationGenerationProcess *)self home:v20];
      v18 = [v16 initWithExistingObject:v15 inHome:v17];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __90__HRETemplateRecommendationGeneratorProcess__existingActionSetForTemplate_recommendation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = 1;
  }

  else if (*(a1 + 40))
  {
    v6 = [v3 actionSetType];
    v5 = [v6 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_filterToAllowedObjects:(id)objects withSourceObjects:(id)sourceObjects withTrigger:(id)trigger template:(id)template
{
  sourceObjectsCopy = sourceObjects;
  triggerCopy = trigger;
  templateCopy = template;
  objectsCopy = objects;
  actionMap = [templateCopy actionMap];
  rules = [templateCopy rules];

  v16 = [rules hre_filteredToClass:objc_opt_class()];
  v17 = [v16 mutableCopy];

  objc_opt_class();
  v18 = triggerCopy;
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __108__HRETemplateRecommendationGeneratorProcess__filterToAllowedObjects_withSourceObjects_withTrigger_template___block_invoke;
  v45[3] = &unk_279776918;
  v21 = v20;
  v46 = v21;
  v22 = [sourceObjectsCopy na_any:v45];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __108__HRETemplateRecommendationGeneratorProcess__filterToAllowedObjects_withSourceObjects_withTrigger_template___block_invoke_2;
  v42[3] = &unk_279776460;
  v23 = actionMap;
  v43 = v23;
  selfCopy = self;
  v24 = [sourceObjectsCopy na_any:v42];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __108__HRETemplateRecommendationGeneratorProcess__filterToAllowedObjects_withSourceObjects_withTrigger_template___block_invoke_3;
  v40[3] = &unk_2797765B8;
  v25 = v17;
  v41 = v25;
  [sourceObjectsCopy na_each:v40];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __108__HRETemplateRecommendationGeneratorProcess__filterToAllowedObjects_withSourceObjects_withTrigger_template___block_invoke_5;
  v32[3] = &unk_279776BE0;
  v33 = v25;
  v34 = v23;
  v38 = v24;
  selfCopy2 = self;
  v36 = v21;
  v39 = v22;
  v37 = sourceObjectsCopy;
  v26 = sourceObjectsCopy;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  v30 = [objectsCopy na_filter:v32];

  return v30;
}

uint64_t __108__HRETemplateRecommendationGeneratorProcess__filterToAllowedObjects_withSourceObjects_withTrigger_template___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 characteristics];
  v5 = [v3 hre_characteristics];

  v6 = [v4 intersectsSet:v5];
  return v6;
}

BOOL __108__HRETemplateRecommendationGeneratorProcess__filterToAllowedObjects_withSourceObjects_withTrigger_template___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hf_isMatterOnlyAccessory];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [*(a1 + 40) snapshotContainer];
    v7 = [HRERecommendableObjectUtilities recommendableObject:v3 involvedInActionMap:v5 snapshotContainer:v6];
  }

  else
  {
    v7 = [HRERecommendableObjectUtilities recommendableObject:v3 involvedInActionMap:*(a1 + 32)];
  }

  return v7;
}

void __108__HRETemplateRecommendationGeneratorProcess__filterToAllowedObjects_withSourceObjects_withTrigger_template___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __108__HRETemplateRecommendationGeneratorProcess__filterToAllowedObjects_withSourceObjects_withTrigger_template___block_invoke_4;
  v7[3] = &unk_279776BB8;
  v8 = v3;
  v5 = v3;
  v6 = [v4 na_filter:v7];
  [*(a1 + 32) minusSet:v6];
}

uint64_t __108__HRETemplateRecommendationGeneratorProcess__filterToAllowedObjects_withSourceObjects_withTrigger_template___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __108__HRETemplateRecommendationGeneratorProcess__filterToAllowedObjects_withSourceObjects_withTrigger_template___block_invoke_6;
  v19[3] = &unk_279776BB8;
  v5 = v3;
  v20 = v5;
  v6 = [v4 na_filter:v19];
  [*(a1 + 32) minusSet:v6];
  v7 = [v6 count];
  v8 = [v5 hf_isMatterOnlyAccessory];
  v9 = *(a1 + 40);
  if (v8)
  {
    v10 = [*(a1 + 48) snapshotContainer];
    v11 = [HRERecommendableObjectUtilities recommendableObject:v5 involvedInActionMap:v9 snapshotContainer:v10];

    if (!v11)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_6;
    }
  }

  else if (![HRERecommendableObjectUtilities recommendableObject:v5 involvedInActionMap:*(a1 + 40)])
  {
    goto LABEL_3;
  }

  v12 = *(a1 + 72) ^ 1;
LABEL_6:
  v13 = [*(a1 + 56) characteristics];
  v14 = [v5 hre_characteristics];
  if ([v13 intersectsSet:v14])
  {
    v15 = *(a1 + 73) ^ 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = [*(a1 + 64) containsObject:v5];
  v17 = 1;
  if (!v7 && (v16 & 1) == 0)
  {
    v17 = v12 | v15;
  }

  return v17 & 1;
}

- (id)_triggerWithSameConfigurationAsTrigger:(id)trigger
{
  v32 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  if (qword_27F5F97D8 != -1)
  {
    dispatch_once(&qword_27F5F97D8, &__block_literal_global_242);
  }

  v5 = qword_27F5F97E0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  homeTriggerBuilders = [(HRETemplateRecommendationGeneratorProcess *)self homeTriggerBuilders];
  v7 = [homeTriggerBuilders countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(homeTriggerBuilders);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        if (([v10 isShortcutOwned] & 1) == 0)
        {
          v11 = [triggerCopy compareToObject:v10];
          v12 = [v11 filteredIgnoringKeys:v5];
          if ([v12 hasNoDifferencesHigherThanPriority:0])
          {
            [array addObject:v10];
            [array2 addObject:v11];
          }
        }
      }

      v7 = [homeTriggerBuilders countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0x7FFFFFFFFFFFFFFFLL;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__HRETemplateRecommendationGeneratorProcess__triggerWithSameConfigurationAsTrigger___block_invoke_3;
  v20[3] = &unk_279776C08;
  v22 = &v23;
  v20[4] = self;
  v13 = array2;
  v21 = v13;
  [v13 enumerateObjectsUsingBlock:v20];
  v14 = v24[3];
  if (v14 >= [array count] || v24[3] < 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = [array objectAtIndexedSubscript:?];
  }

  _Block_object_dispose(&v23, 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __84__HRETemplateRecommendationGeneratorProcess__triggerWithSameConfigurationAsTrigger___block_invoke_2()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277D137D0];
  v6[0] = *MEMORY[0x277D137D8];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = qword_27F5F97E0;
  qword_27F5F97E0 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

void __84__HRETemplateRecommendationGeneratorProcess__triggerWithSameConfigurationAsTrigger___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(*(a1 + 48) + 8);
  if (*(v8 + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_2;
  }

  v13 = v7;
  if ([v7 hasNoDifferencesHigherThanPriority:0])
  {
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *a4 = 1;
    v7 = v13;
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
    v11 = [v9 _diffScoreForTriggerComparison:v10];

    v12 = [*(a1 + 32) _diffScoreForTriggerComparison:v13] < v11;
    v7 = v13;
    if (v12)
    {
      v8 = *(*(a1 + 48) + 8);
LABEL_2:
      *(v8 + 24) = a3;
    }
  }
}

- (id)_filterRecommendations:(id)recommendations fromTemplate:(id)template
{
  templateCopy = template;
  v7 = [recommendations copy];
  objc_opt_class();
  v8 = templateCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = MEMORY[0x277CBEB70];
    characteristicTypePriority = [v10 characteristicTypePriority];
    v13 = [v11 orderedSetWithArray:characteristicTypePriority];

    if ([v10 characteristicPerServiceRule])
    {
      v14 = [v7 na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_247];
      v15 = MEMORY[0x277CBEB98];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __81__HRETemplateRecommendationGeneratorProcess__filterRecommendations_fromTemplate___block_invoke_2;
      v29[3] = &unk_279776C50;
      v29[4] = self;
      v30 = v13;
      v16 = [v14 na_flatMap:v29];
      v17 = [v15 setWithArray:v16];

      v7 = v17;
    }

    if ([v10 enforcePriority])
    {
      v18 = [(HRETemplateRecommendationGeneratorProcess *)self _splitRecommendationsBySplitStrategy:v7];
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __81__HRETemplateRecommendationGeneratorProcess__filterRecommendations_fromTemplate___block_invoke_3;
      v26 = &unk_279776C78;
      selfCopy = self;
      v28 = v13;
      v19 = [v18 na_flatMap:&v23];

      v7 = v19;
    }

    if ([v10 singleRecommendationPerSplit])
    {
      v20 = [(HRETemplateRecommendationGeneratorProcess *)self _splitRecommendationsBySplitStrategy:v7];
      v21 = [v20 na_map:&__block_literal_global_253];

      v7 = v21;
    }
  }

  return v7;
}

id __81__HRETemplateRecommendationGeneratorProcess__filterRecommendations_fromTemplate___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 splitCharacteristic];
  v3 = [v2 service];
  v4 = [v3 uniqueIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CCAD78] hmf_zeroUUID];
  }

  v7 = v6;

  return v7;
}

id __81__HRETemplateRecommendationGeneratorProcess__filterRecommendations_fromTemplate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCAD78];
  v6 = a3;
  v7 = a2;
  v8 = [v5 hmf_zeroUUID];
  v9 = [v7 hmf_isEqualToUUID:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [*(a1 + 32) _filterSplitRecommendations:v6 characteristicTypePriority:*(a1 + 40)];

    v6 = v10;
  }

  v11 = [v6 allObjects];

  return v11;
}

id __81__HRETemplateRecommendationGeneratorProcess__filterRecommendations_fromTemplate___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 na_firstObjectPassingTest:&__block_literal_global_255];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 anyObject];
  }

  v6 = v5;

  return v6;
}

- (id)_splitRecommendationsBySplitStrategy:(id)strategy
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [strategy na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_257];
  allValues = [v4 allValues];
  v6 = [v3 setWithArray:allValues];

  return v6;
}

id __82__HRETemplateRecommendationGeneratorProcess__splitRecommendationsBySplitStrategy___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 room];
  v4 = [v3 uniqueIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [v2 zone];
    v6 = [v7 uniqueIdentifier];
  }

  return v6;
}

- (id)_filterSplitRecommendations:(id)recommendations characteristicTypePriority:(id)priority
{
  recommendationsCopy = recommendations;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __100__HRETemplateRecommendationGeneratorProcess__filterSplitRecommendations_characteristicTypePriority___block_invoke;
  v21[3] = &unk_279776AD0;
  v21[4] = self;
  priorityCopy = priority;
  v8 = [recommendationsCopy na_filter:v21];
  v9 = [recommendationsCopy na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_259];
  array = [priorityCopy array];

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __100__HRETemplateRecommendationGeneratorProcess__filterSplitRecommendations_characteristicTypePriority___block_invoke_3;
  v19 = &unk_279776CE0;
  v11 = v9;
  v20 = v11;
  v12 = [array na_firstObjectPassingTest:&v16];

  if (v12)
  {
    v13 = [v11 objectForKeyedSubscript:{v12, v16, v17, v18, v19}];
    v14 = [v13 setByAddingObjectsFromSet:v8];
  }

  else
  {
    v14 = recommendationsCopy;
  }

  return v14;
}

void *__100__HRETemplateRecommendationGeneratorProcess__filterSplitRecommendations_characteristicTypePriority___block_invoke(uint64_t a1, void *a2)
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

  v7 = [v6 selectedTriggerBuilder];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 trigger];

    if (v9)
    {
      v10 = MEMORY[0x277D14C48];
      v11 = [v8 trigger];
      v12 = [*(a1 + 32) home];
      v13 = [v8 context];
      v14 = [v10 triggerBuilderForTrigger:v11 inHome:v12 context:v13 assertsFailure:0];

      if (v14)
      {
        v15 = [v6 compareForMatchingToTrigger:v14];
        v9 = [v15 hasNoDifferencesHigherThanPriority:0];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __100__HRETemplateRecommendationGeneratorProcess__filterSplitRecommendations_characteristicTypePriority___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 splitCharacteristic];
  v3 = [v2 characteristicType];

  return v3;
}

BOOL __100__HRETemplateRecommendationGeneratorProcess__filterSplitRecommendations_characteristicTypePriority___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = v2 != 0;

  return v3;
}

- (int64_t)_diffScoreForTriggerComparison:(id)comparison
{
  v38 = *MEMORY[0x277D85DE8];
  comparisonCopy = comparison;
  objc_opt_class();
  differences = [comparisonCopy differences];
  v5 = [differences objectForKeyedSubscript:*MEMORY[0x277D137D8]];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  containedObjectResult = [v7 containedObjectResult];
  differences2 = [containedObjectResult differences];
  v10 = [differences2 objectForKeyedSubscript:*MEMORY[0x277D137C0]];

  differences3 = [containedObjectResult differences];
  v12 = [differences3 objectForKeyedSubscript:*MEMORY[0x277D137C8]];

  differences4 = [comparisonCopy differences];
  v14 = [differences4 objectForKeyedSubscript:*MEMORY[0x277D137D0]];

  v15 = v14 != 0;
  if (v10)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    containedObjectResults = [v10 containedObjectResults];
    v17 = [containedObjectResults countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        v20 = 0;
        do
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(containedObjectResults);
          }

          v15 += [*(*(&v32 + 1) + 8 * v20++) hasNoDifferencesHigherThanPriority:0] ^ 1;
        }

        while (v18 != v20);
        v18 = [containedObjectResults countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v18);
    }
  }

  if (v12)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    containedObjectResults2 = [v12 containedObjectResults];
    v22 = [containedObjectResults2 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v29;
      do
      {
        v25 = 0;
        do
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(containedObjectResults2);
          }

          v15 += [*(*(&v28 + 1) + 8 * v25++) hasNoDifferencesHigherThanPriority:0] ^ 1;
        }

        while (v23 != v25);
        v23 = [containedObjectResults2 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v23);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)characteristicActionsForObject:(id)object actionMap:(id)map
{
  objectCopy = object;
  mapCopy = map;
  v8 = +[HRECharacteristicActionMap emptyMap];
  v9 = [mapCopy isEqual:v8];

  if (v9 & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && ([mapCopy characteristicTypeValues], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11))
  {
    v12 = [mapCopy flattenedMapEvaluatedForObject:objectCopy];
    v13 = [(HRETemplateRecommendationGeneratorProcess *)self definiteActionsForCharacteristicActionMap:v12 object:objectCopy];
  }

  else
  {
    v13 = [MEMORY[0x277CBEB98] setWithArray:MEMORY[0x277CBEBF8]];
  }

  return v13;
}

- (id)definiteActionsForCharacteristicActionMap:(id)map object:(id)object
{
  mapCopy = map;
  hre_characteristics = [object hre_characteristics];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__HRETemplateRecommendationGeneratorProcess_definiteActionsForCharacteristicActionMap_object___block_invoke;
  v11[3] = &unk_279776D08;
  v12 = mapCopy;
  selfCopy = self;
  v8 = mapCopy;
  v9 = [hre_characteristics na_map:v11];

  return v9;
}

id __94__HRETemplateRecommendationGeneratorProcess_definiteActionsForCharacteristicActionMap_object___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) characteristicTypeValues];
  v5 = [v3 characteristicType];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D14568]);
    v8 = [*(a1 + 40) home];
    v9 = [v7 initWithHome:v8];

    [v9 setCharacteristic:v3];
    [v9 setTargetValue:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end