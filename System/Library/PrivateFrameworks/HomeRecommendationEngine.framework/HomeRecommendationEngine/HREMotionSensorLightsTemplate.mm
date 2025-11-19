@interface HREMotionSensorLightsTemplate
- (HREMotionSensorLightsTemplate)init;
- (id)_lazy_actionMap;
- (id)_lazy_allowedVariance;
@end

@implementation HREMotionSensorLightsTemplate

- (HREMotionSensorLightsTemplate)init
{
  v39[2] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = HREMotionSensorLightsTemplate;
  v2 = [(HRECharacteristicTriggerTemplate *)&v32 init];
  if (v2)
  {
    v3 = [HRETypeValueTuple alloc];
    v4 = *MEMORY[0x277CCF9A8];
    v5 = [(HRETypeValueTuple *)v3 initWithType:*MEMORY[0x277CCF9A8] value:&unk_28665D910];
    v39[0] = v5;
    v6 = [HRETypeValueTuple alloc];
    v7 = *MEMORY[0x277CCF978];
    v8 = [(HRETypeValueTuple *)v6 initWithType:*MEMORY[0x277CCF978] value:MEMORY[0x277CBEC38]];
    v39[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    [(HRECharacteristicTriggerTemplate *)v2 setTriggerCharacteristicValues:v9];

    v38[0] = v4;
    v38[1] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    [(HRECharacteristicTriggerTemplate *)v2 setCharacteristicTypePriority:v10];

    v11 = MEMORY[0x277CBEB98];
    v12 = [HRERecommendableObjectTypeRule ruleWithRequiredType:*MEMORY[0x277CD0EA0]];
    v37[0] = v12;
    v13 = MEMORY[0x277CBEB98];
    v14 = *MEMORY[0x277CD0EC0];
    v36[0] = *MEMORY[0x277CD0EC8];
    v31 = v36[0];
    v36[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
    v16 = [v13 setWithArray:v15];
    v17 = [HRERecommendableObjectTypeListRule ruleRequiringOneOfTypes:v16];
    v37[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v19 = [v11 setWithArray:v18];
    [(HRETemplate *)v2 setRules:v19];

    [(HRETemplate *)v2 setIdentifier:@"motionSensorLights"];
    [(HRECharacteristicTriggerTemplate *)v2 setEnforcePriority:1];
    [(HRECharacteristicTriggerTemplate *)v2 setAllowMultipleEventsFeature:_os_feature_enabled_impl()];
    [(HRETemplate *)v2 setSplitStrategy:1];
    [(HRECharacteristicTriggerTemplate *)v2 setSingleRecommendationPerSplit:1];
    [(HRETemplate *)v2 setSortingPriority:2.0];
    [(HRETemplate *)v2 setStarterRank:0.4];
    v20 = objc_alloc(MEMORY[0x277D14440]);
    v21 = MEMORY[0x277D13780];
    v22 = [v20 initWithPackageIdentifier:*MEMORY[0x277D13718] state:*MEMORY[0x277D13780]];
    v23 = objc_alloc(MEMORY[0x277D14440]);
    v24 = [v23 initWithPackageIdentifier:*MEMORY[0x277D13720] state:*v21];
    [(HRETriggerTemplate *)v2 setDefaultIconDescriptor:v22];
    v34[0] = v7;
    v34[1] = v4;
    v35[0] = v22;
    v35[1] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    [(HRETriggerTemplate *)v2 setIconDescriptorsByTriggerCharacteristic:v25];

    v26 = MEMORY[0x277CBEB98];
    v33[0] = v31;
    v33[1] = v14;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    v28 = [v26 setWithArray:v27];
    [(HREActionTemplate *)v2 setExtraInvolvedTypes:v28];
  }

  v29 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)_lazy_actionMap
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CD0EA0];
  v2 = *MEMORY[0x277CCF788];
  v9[0] = *MEMORY[0x277CCF9F0];
  v9[1] = v2;
  v10[0] = MEMORY[0x277CBEC38];
  v10[1] = &unk_28665D928;
  v3 = *MEMORY[0x277CCFA30];
  v9[2] = *MEMORY[0x277CCF8D8];
  v9[3] = v3;
  v10[2] = &unk_28665D940;
  v10[3] = &unk_28665D940;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v5 = [HRECharacteristicActionMap characteristicActionMap:v4];
  v12[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_lazy_allowedVariance
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = [HREActionRangeVarianceRule rangeVarianceWithType:*MEMORY[0x277CCF788] min:1];
  v3 = [HRECharacteristicActionVarianceRule anyVarianceRuleForCharacteristicType:*MEMORY[0x277CCF8D8], v2];
  v9[1] = v3;
  v4 = [HRECharacteristicActionVarianceRule anyVarianceRuleForCharacteristicType:*MEMORY[0x277CCFA30]];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  v6 = [HREActionVarianceCollection varianceRuleCollectionWithRules:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end