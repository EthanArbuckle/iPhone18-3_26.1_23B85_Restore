@interface HREMovieTimeTemplate
- (HREMovieTimeTemplate)init;
- (id)_lazy_actionMap;
- (id)_lazy_allowedVariance;
@end

@implementation HREMovieTimeTemplate

- (HREMovieTimeTemplate)init
{
  v19[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HREMovieTimeTemplate;
  v2 = [(HREActionSetTemplate *)&v17 init];
  if (v2)
  {
    v3 = _HRELocalizedStringWithDefaultValue(@"HRETemplateTitleMovieTime", @"HRETemplateTitleMovieTime", 1);
    [(HREActionSetTemplate *)v2 setActionSetName:v3];

    v4 = objc_alloc(MEMORY[0x277D14728]);
    v5 = [v4 initWithImageIdentifier:*MEMORY[0x277D13AA0]];
    [(HREActionSetTemplate *)v2 setIconDescriptor:v5];

    [(HRETemplate *)v2 setSplitStrategy:1];
    v6 = MEMORY[0x277CBEB98];
    v7 = HRETelevisionProfileType();
    v8 = *MEMORY[0x277CD0F20];
    v18[0] = v7;
    v18[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v10 = [v6 setWithArray:v9];
    v11 = [HRERecommendableObjectTypeListRule ruleRequiringOneOfTypes:v10];
    v19[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v13 = [v6 setWithArray:v12];
    [(HRETemplate *)v2 setRules:v13];

    if (_MergedGlobals_18 != -1)
    {
      dispatch_once(&_MergedGlobals_18, &__block_literal_global_7);
    }

    v14 = qword_27F5F9760;
    [(HRETemplate *)v2 setIdentifier:v14];

    [(HRETemplate *)v2 setSortingPriority:3.0];
    [(HRETemplate *)v2 setStarterRank:0.2];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

void __28__HREMovieTimeTemplate_init__block_invoke_2()
{
  v0 = qword_27F5F9760;
  qword_27F5F9760 = @"movieTime";
}

- (id)_lazy_actionMap
{
  v33[4] = *MEMORY[0x277D85DE8];
  v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_14];
  v20 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v17];
  v22 = NSStringFromProtocol(&unk_28666EF10);
  v32[0] = v22;
  v21 = [HREMediaPlaybackActionMap actionMapWithState:2 volume:0 playbackArchive:0];
  v33[0] = v21;
  v32[1] = *MEMORY[0x277CD0EA0];
  v29 = *MEMORY[0x277CCF9F0];
  v2 = v29;
  v30 = MEMORY[0x277CBEC28];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v18 = [HRECharacteristicActionMap conditonalCharacteristicActionMap:v19 condition:v20];
  v31[0] = v18;
  v3 = *MEMORY[0x277CCF788];
  v27[0] = v2;
  v27[1] = v3;
  v28[0] = MEMORY[0x277CBEC38];
  v28[1] = &unk_28665D7F0;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v4 = [HRECharacteristicActionMap conditonalCharacteristicActionMap:v16 condition:v17];
  v31[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v6 = [(HREActionMap *)HRECharacteristicActionMap actionMapWithChildMaps:v5];
  v33[1] = v6;
  v32[2] = *MEMORY[0x277CD0F20];
  v25 = *MEMORY[0x277CCF748];
  v7 = v25;
  v26 = &unk_28665D808;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v9 = [HRECharacteristicActionMap characteristicActionMap:v8];
  v33[2] = v9;
  v10 = HRETelevisionProfileType();
  v32[3] = v10;
  v23 = v7;
  v24 = &unk_28665D808;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v12 = [HRECharacteristicActionMap characteristicActionMap:v11];
  v33[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __39__HREMovieTimeTemplate__lazy_actionMap__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_2866642D0])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 hre_characteristics];

  v6 = [v5 na_any:&__block_literal_global_87];
  return v6;
}

uint64_t __39__HREMovieTimeTemplate__lazy_actionMap__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 characteristicType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCF788]];

  return v3;
}

- (id)_lazy_allowedVariance
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [HREActionRangeVarianceRule rangeVarianceWithType:*MEMORY[0x277CCF788] min:1];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [HREActionVarianceCollection varianceRuleCollectionWithRules:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end