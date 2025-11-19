@interface HREActionSetDerivingRecommendationGenerator
- (void)setupProcess:(id)a3;
@end

@implementation HREActionSetDerivingRecommendationGenerator

- (void)setupProcess:(id)a3
{
  v4 = a3;
  v5 = [v4 sourceItems];
  if ([v5 count])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 typeGroup];
    v6 = v7 == 0;
  }

  v8 = [v4 sourceItems];
  v9 = [v8 na_filter:&__block_literal_global_0];
  [v4 setSourceItems:v9];

  v21.receiver = self;
  v21.super_class = HREActionSetDerivingRecommendationGenerator;
  [(HREStandardAsyncRecommendationSource *)&v21 setupProcess:v4];
  objc_opt_class();
  v10 = v4;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v6)
  {
    v13 = [v10 homeRecommendableObjects];
    [v10 setSourceRecommendableObjects:v13];
  }

  v14 = [v10 sourceRecommendableObjects];
  v15 = [v14 na_filter:&__block_literal_global_49];
  [v10 setSourceRecommendableObjects:v15];

  v16 = objc_opt_new();
  v17 = [v10 sourceRecommendableObjects];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__HREActionSetDerivingRecommendationGenerator_setupProcess___block_invoke_5;
  v19[3] = &unk_2797765B8;
  v20 = v16;
  v18 = v16;
  [v17 na_each:v19];

  [v12 setSourceCharacteristics:v18];
}

uint64_t __60__HREActionSetDerivingRecommendationGenerator_setupProcess___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_28666E6C8])
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
    v6 = [v4 containsActions];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __60__HREActionSetDerivingRecommendationGenerator_setupProcess___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 hf_containedServices];
  if ([v3 count])
  {
    v4 = [v2 hf_containedServices];
    v5 = [v4 na_any:&__block_literal_global_52];
  }

  else
  {
    v5 = 1;
  }

  v6 = [v2 hf_containedProfiles];
  if (![v6 count])
  {

    goto LABEL_8;
  }

  v7 = [v2 hf_containedProfiles];
  v8 = [v7 na_any:&__block_literal_global_55];

  if ((v5 | v8))
  {
LABEL_8:
    v9 = [v2 hre_isActionable];
    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

uint64_t __60__HREActionSetDerivingRecommendationGenerator_setupProcess___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 accessory];
  v3 = [v2 hf_isVisibleAccessory];

  return v3;
}

void __60__HREActionSetDerivingRecommendationGenerator_setupProcess___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 hre_characteristics];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__HREActionSetDerivingRecommendationGenerator_setupProcess___block_invoke_6;
  v4[3] = &unk_279776590;
  v5 = *(a1 + 32);
  [v3 na_each:v4];
}

void __60__HREActionSetDerivingRecommendationGenerator_setupProcess___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 characteristicType];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = objc_opt_new();
    v7 = *(a1 + 32);
    v8 = [v9 characteristicType];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  [v6 addObject:v9];
}

@end