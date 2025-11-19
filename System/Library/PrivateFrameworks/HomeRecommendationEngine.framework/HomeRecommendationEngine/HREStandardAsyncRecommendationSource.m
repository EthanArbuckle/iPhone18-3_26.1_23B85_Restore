@interface HREStandardAsyncRecommendationSource
- (HREStandardAsyncRecommendationSource)init;
- (id)asyncSetupProcess:(id)a3;
- (id)dispatchProcess:(id)a3 options:(unint64_t)a4 actionBlock:(id)a5;
- (id)recommendationsForHome:(id)a3 withServiceLikeItems:(id)a4 accessoryTypeGroup:(id)a5 options:(unint64_t)a6;
- (void)setupProcess:(id)a3;
@end

@implementation HREStandardAsyncRecommendationSource

- (HREStandardAsyncRecommendationSource)init
{
  v6.receiver = self;
  v6.super_class = HREStandardAsyncRecommendationSource;
  v2 = [(HREStandardAsyncRecommendationSource *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_class();
    generationProcessClass = v2->_generationProcessClass;
    v2->_generationProcessClass = v3;
  }

  return v2;
}

- (id)recommendationsForHome:(id)a3 withServiceLikeItems:(id)a4 accessoryTypeGroup:(id)a5 options:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init([(HREStandardAsyncRecommendationSource *)self generationProcessClass]);
  [v13 setHome:v12];

  v14 = [MEMORY[0x277CBEB98] setWithArray:v11];

  [v13 setSourceItems:v14];
  [v13 setTypeGroup:v10];

  [v13 setOptions:a6];
  [(HREStandardAsyncRecommendationSource *)self setupProcess:v13];
  if ([v13 shouldGenerateRecommendations])
  {
    v15 = [(HREStandardAsyncRecommendationSource *)self asyncSetupProcess:v13];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __111__HREStandardAsyncRecommendationSource_recommendationsForHome_withServiceLikeItems_accessoryTypeGroup_options___block_invoke;
    v20[3] = &unk_279776EA0;
    v20[4] = self;
    v21 = v13;
    v22 = a6;
    v16 = [v15 flatMap:v20];
  }

  else
  {
    v17 = MEMORY[0x277D2C900];
    v18 = objc_opt_new();
    v16 = [v17 futureWithResult:v18];
  }

  return v16;
}

- (id)dispatchProcess:(id)a3 options:(unint64_t)a4 actionBlock:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  if ((v6 & 0x20) != 0)
  {
    v10 = MEMORY[0x277D2C900];
  }

  else
  {
    v9 = [MEMORY[0x277D14CE8] isInternalTest];
    v10 = MEMORY[0x277D2C900];
    if (!v9)
    {
      v15 = MEMORY[0x277D85DD0];
      v17 = v8;
      v16 = v7;
      v11 = [MEMORY[0x277D2C938] globalAsyncScheduler];
      v12 = [v10 lazyFutureWithBlock:&v15 scheduler:v11];

      goto LABEL_6;
    }
  }

  v13 = (*(v8 + 2))(v8, v7);
  v12 = [v10 futureWithResult:v13];

LABEL_6:

  return v12;
}

void __76__HREStandardAsyncRecommendationSource_dispatchProcess_options_actionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v2 + 16);
  v5 = a2;
  v6 = v4(v2, v3);
  [v5 finishWithResult:v6];
}

- (id)asyncSetupProcess:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D14CE8] isInternalTest];
  v5 = MEMORY[0x277D2C900];
  if (v4)
  {
    v6 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__HREStandardAsyncRecommendationSource_asyncSetupProcess___block_invoke;
    v8[3] = &unk_279776F18;
    v9 = v3;
    v6 = [v5 futureWithBlock:v8];
  }

  return v6;
}

void __58__HREStandardAsyncRecommendationSource_asyncSetupProcess___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D147D0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HREStandardAsyncRecommendationSource_asyncSetupProcess___block_invoke_2;
  v6[3] = &unk_279776EF0;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  [v4 fetchCurrentWithCompletionHandler:v6];
}

uint64_t __58__HREStandardAsyncRecommendationSource_asyncSetupProcess___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setSnapshotContainer:a2];
  v3 = *(a1 + 40);

  return [v3 finishWithNoResult];
}

- (void)setupProcess:(id)a3
{
  v3 = a3;
  v4 = [v3 sourceItems];
  if (v4)
  {
    v5 = [v3 sourceItems];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  v7 = [v6 na_map:&__block_literal_global_11];
  v8 = [v6 copy];
  v9 = [v6 na_map:&__block_literal_global_65];
  v72 = v8;
  v10 = [v8 na_flatMap:&__block_literal_global_272];
  v73 = v7;
  v11 = [v7 na_flatMap:&__block_literal_global_275];
  v12 = [v6 na_map:&__block_literal_global_277];
  v71 = v9;
  v13 = [v9 na_flatMap:&__block_literal_global_280];
  v14 = MEMORY[0x277CBEB98];
  v15 = [v3 home];
  v16 = [v15 serviceGroups];
  v17 = [v14 setWithArray:v16];
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __53__HREStandardAsyncRecommendationSource_setupProcess___block_invoke_7;
  v78[3] = &unk_279776FC0;
  v79 = v10;
  v18 = v10;
  v19 = [v17 na_filter:v78];

  v20 = [v19 na_flatMap:&__block_literal_global_284];
  v21 = [v18 na_setByRemovingObjectsFromSet:v20];

  v74 = v6;
  v22 = [v6 na_flatMap:&__block_literal_global_287];
  v23 = objc_opt_new();
  v66 = v21;
  v24 = [HRERecommendableObjectUtilities recommendableObjectsFromHomeKitObjects:v21];
  [v23 unionSet:v24];

  v67 = v19;
  v25 = [HRERecommendableObjectUtilities recommendableObjectsFromHomeKitObjects:v19];
  [v23 unionSet:v25];

  v70 = v11;
  v26 = [HRERecommendableObjectUtilities recommendableObjectsFromHomeKitObjects:v11];
  [v23 unionSet:v26];

  v69 = v12;
  v27 = [HRERecommendableObjectUtilities recommendableObjectsFromHomeKitObjects:v12];
  [v23 unionSet:v27];

  v68 = v13;
  v28 = [HRERecommendableObjectUtilities recommendableObjectsFromHomeKitObjects:v13];
  [v23 unionSet:v28];

  v65 = v22;
  v29 = [HRERecommendableObjectUtilities recommendableObjectsFromHomeKitObjects:v22];
  [v23 unionSet:v29];

  v30 = [v23 copy];
  [v3 setSourceRecommendableObjects:v30];

  v31 = MEMORY[0x277CBEB98];
  v32 = [v3 home];
  v33 = [v32 hf_allServices];
  v34 = [v31 setWithArray:v33];

  v35 = MEMORY[0x277CBEB98];
  v36 = [v3 home];
  v37 = [v36 hf_allAccessoryProfiles];
  v38 = [v35 setWithArray:v37];

  v39 = MEMORY[0x277CBEB98];
  v40 = [v3 home];
  v41 = [v40 serviceGroups];
  v42 = [v39 setWithArray:v41];

  v43 = [v42 na_flatMap:&__block_literal_global_302];
  v44 = [v34 na_setByRemovingObjectsFromSet:v43];

  v45 = MEMORY[0x277CBEB98];
  v46 = [v3 home];
  v47 = [v46 accessories];
  v48 = [v47 na_filter:&__block_literal_global_304];
  v49 = [v45 setWithArray:v48];

  v50 = objc_opt_new();
  v64 = v44;
  v51 = [HRERecommendableObjectUtilities recommendableObjectsFromHomeKitObjects:v44];
  [v50 unionSet:v51];

  v52 = [HRERecommendableObjectUtilities recommendableObjectsFromHomeKitObjects:v42];
  [v50 unionSet:v52];

  v53 = v38;
  v54 = [HRERecommendableObjectUtilities recommendableObjectsFromHomeKitObjects:v38];
  [v50 unionSet:v54];

  v55 = [HRERecommendableObjectUtilities recommendableObjectsFromHomeKitObjects:v49];
  [v50 unionSet:v55];

  [v3 setHomeRecommendableObjects:v50];
  v56 = [v3 typeGroup];

  if (v56)
  {
    if ([v23 count])
    {
      v57 = v23;
    }

    else
    {
      v57 = v50;
    }

    v58 = v57;
    v59 = [v3 typeGroup];
    v60 = [MEMORY[0x277D14378] mediaAccessoryTypeGroup];
    v61 = [v59 intersectsGroup:v60];

    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __53__HREStandardAsyncRecommendationSource_setupProcess___block_invoke_13;
    v75[3] = &unk_279777028;
    v77 = v61;
    v62 = v3;
    v76 = v62;
    v63 = [v58 na_filter:v75];

    [v62 setSourceRecommendableObjects:v63];
  }
}

void *__53__HREStandardAsyncRecommendationSource_setupProcess___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_28666E778])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void *__53__HREStandardAsyncRecommendationSource_setupProcess___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 homeKitObject];
  if ([v2 conformsToProtocol:&unk_28666EF10])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

BOOL __53__HREStandardAsyncRecommendationSource_setupProcess___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hf_containedServices];
  if ([v4 count])
  {
    v5 = [*(a1 + 32) count];

    if (!v5)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v4 = [v3 hf_containedServices];
    v6 = [v4 na_setByRemovingObjectsFromSet:*(a1 + 32)];
    v7 = [v6 count] == 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_7:
  return v7;
}

id __53__HREStandardAsyncRecommendationSource_setupProcess___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_28666F040])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 accessoryRepresentableObject];
    v7 = [v6 hf_associatedAccessories];
    v8 = [v7 na_filter:&__block_literal_global_298];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] set];
  }

  return v8;
}

uint64_t __53__HREStandardAsyncRecommendationSource_setupProcess___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hre_isMediaObject] && *(a1 + 40) != 1)
  {
    v6 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) typeGroup];
    v5 = [v3 hf_accessoryType];
    v6 = [v4 containsType:v5];
  }

  return v6;
}

@end