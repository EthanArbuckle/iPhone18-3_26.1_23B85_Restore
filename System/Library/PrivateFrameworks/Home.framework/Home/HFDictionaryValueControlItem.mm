@interface HFDictionaryValueControlItem
+ (id)defaultMainTextColorForCharacteristicType:(id)a3;
- (BOOL)canCopyWithCharacteristicOptions:(id)a3;
- (HFDictionaryValueControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5;
- (HFDictionaryValueControlItem)initWithValueSource:(id)a3 characteristicType:(id)a4 displayResults:(id)a5;
- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)resultsForBatchReadResponse:(id)a3;
- (void)getStatus:(id *)a3 mainTextColor:(id *)a4 supplementaryDescription:(id *)a5 withBatchReadResponse:(id)a6;
@end

@implementation HFDictionaryValueControlItem

- (HFDictionaryValueControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_characteristicType_displayResults_);
  [v7 handleFailureInMethod:a2 object:self file:@"HFDictionaryValueControlItem.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HFDictionaryValueControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (HFDictionaryValueControlItem)initWithValueSource:(id)a3 characteristicType:(id)a4 displayResults:(id)a5
{
  v30[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CBEB58];
  v11 = a5;
  v12 = objc_alloc_init(v10);
  [v12 addObject:v9];
  v13 = *MEMORY[0x277CCFAB0];
  v30[0] = *MEMORY[0x277CCFAA8];
  v30[1] = v13;
  v30[2] = *MEMORY[0x277CCFA98];
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  [v12 addObjectsFromArray:v14];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __86__HFDictionaryValueControlItem_initWithValueSource_characteristicType_displayResults___block_invoke;
  v26[3] = &unk_277DF3130;
  v27 = v8;
  v15 = v8;
  v16 = [v12 na_filter:v26];
  v17 = [HFControlItemCharacteristicOptions alloc];
  v28 = &unk_2825240F0;
  v29 = v16;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v19 = [(HFControlItemCharacteristicOptions *)v17 initWithCharacteristicTypesByUsage:v18];

  v25.receiver = self;
  v25.super_class = HFDictionaryValueControlItem;
  v20 = [(HFControlItem *)&v25 initWithValueSource:v15 characteristicOptions:v19 displayResults:v11];

  characteristicType = v20->_characteristicType;
  v20->_characteristicType = v9;
  v22 = v9;

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

BOOL __86__HFDictionaryValueControlItem_initWithValueSource_characteristicType_displayResults___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) allCharacteristicsForCharacteristicType:a2];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)canCopyWithCharacteristicOptions:(id)a3
{
  v4 = a3;
  v5 = [(HFControlItem *)self characteristicOptions];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HFControlItem *)self valueSource];
  v6 = [(HFDictionaryValueControlItem *)self characteristicType];
  v7 = [(HFControlItem *)self displayResults];
  v8 = [v4 initWithValueSource:v5 characteristicType:v6 displayResults:v7];

  return v8;
}

- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4
{
  v6 = a4;
  if ([(HFDictionaryValueControlItem *)self canCopyWithCharacteristicOptions:a3])
  {
    v7 = [HFDictionaryValueControlItem alloc];
    v8 = [(HFDictionaryValueControlItem *)self characteristicType];
    v9 = [(HFControlItem *)self displayResults];
    v10 = [(HFDictionaryValueControlItem *)v7 initWithValueSource:v6 characteristicType:v8 displayResults:v9];

    [(HFItem *)v10 copyLatestResultsFromItem:self];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)resultsForBatchReadResponse:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = HFDictionaryValueControlItem;
  v5 = [(HFControlItem *)&v40 resultsForBatchReadResponse:v4];
  v6 = [v5 mutableCopy];

  v38 = 0;
  v39 = 0;
  v37 = 0;
  [(HFDictionaryValueControlItem *)self getStatus:&v39 mainTextColor:&v38 supplementaryDescription:&v37 withBatchReadResponse:v4];
  v7 = v39;
  v8 = v38;
  v9 = v37;
  if (v7)
  {
    [v6 setObject:v7 forKeyedSubscript:@"controlStatus"];
  }

  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:@"controlDescriptionMainTextColor"];
  }

  v36 = v7;
  if (v9)
  {
    [v6 setObject:v9 forKeyedSubscript:@"supplementaryControlDescription"];
  }

  v33 = v9;
  objc_opt_class();
  v10 = [(HFControlItem *)self valueSource];
  v11 = [v10 allServices];
  v12 = [v11 anyObject];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v14 hf_iconDescriptor];
  v16 = [HFCharacteristicValueDisplayMetadata displayMetadataForService:v14 characteristicReadResponse:v4];
  objc_opt_class();
  v35 = v8;
  if (objc_opt_isKindOfClass())
  {
    v17 = [v16 primaryState];
    v18 = &HFCAPackageStateOn;
    if (v17 != 2)
    {
      v18 = &HFCAPackageStateOff;
    }

    v19 = *v18;
    v20 = [HFServiceIconFactory iconModifiersForService:v14];
    v21 = [HFCAPackageIconDescriptor alloc];
    v22 = [v15 identifier];
    v23 = [(HFCAPackageIconDescriptor *)v21 initWithPackageIdentifier:v22 state:v19 modifiers:v20];

    v15 = v20;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v15 iconDescriptorForPrimaryState:{objc_msgSend(v16, "primaryState", v9, v8, v7)}];
      if (!v24)
      {
        v19 = 0;
        goto LABEL_21;
      }

      v25 = v24;
      v19 = v25;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_22;
      }

      v26 = [HFPrimaryStateIconDescriptor alloc];
      v19 = [v15 identifier];
      v25 = -[HFPrimaryStateIconDescriptor initWithIdentifier:primaryState:](v26, "initWithIdentifier:primaryState:", v19, [v16 primaryState]);
    }

    v23 = v25;
  }

  v15 = v23;
LABEL_21:

LABEL_22:
  [v6 na_safeSetObject:v15 forKey:{@"controlIcon", v33}];
  v27 = [MEMORY[0x277CD1D90] hf_sensorServiceTypes];
  v28 = [(HFControlItem *)self valueSource];
  v29 = [v28 primaryServiceDescriptor];
  v30 = [v29 serviceType];
  v31 = [v27 containsObject:v30];

  if (v31)
  {
    [v6 na_safeSetObject:MEMORY[0x277CBEC38] forKey:@"readValueOnly"];
  }

  return v6;
}

- (void)getStatus:(id *)a3 mainTextColor:(id *)a4 supplementaryDescription:(id *)a5 withBatchReadResponse:(id)a6
{
  v112 = *MEMORY[0x277D85DE8];
  v73 = a6;
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = __Block_byref_object_copy__13;
  v100 = __Block_byref_object_dispose__13;
  v101 = 0;
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__13;
  v94 = __Block_byref_object_dispose__13;
  v95 = 0;
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = __Block_byref_object_copy__13;
  v88 = __Block_byref_object_dispose__13;
  v89 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__HFDictionaryValueControlItem_getStatus_mainTextColor_supplementaryDescription_withBatchReadResponse___block_invoke;
  aBlock[3] = &unk_277DFBEE0;
  aBlock[4] = &v96;
  aBlock[5] = &v90;
  aBlock[8] = a4;
  aBlock[9] = a5;
  aBlock[6] = &v84;
  aBlock[7] = a3;
  v72 = _Block_copy(aBlock);
  v78 = [(HFControlItem *)self characteristicValuesByTypeForBatchReadResponse:v73];
  v10 = *MEMORY[0x277CCFAB0];
  v110[0] = *MEMORY[0x277CCFAA8];
  v9 = v110[0];
  v110[1] = v10;
  v111 = *MEMORY[0x277CCFA98];
  v11 = v111;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:3];
  v108[0] = v9;
  v108[1] = v10;
  v109[0] = &unk_282524108;
  v109[1] = &unk_282524108;
  v108[2] = v11;
  v109[2] = &unk_282524108;
  v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:3];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v79 objects:v107 count:16];
  v70 = v10;
  v71 = v9;
  v69 = v11;
  if (v13)
  {
    v76 = 0;
    v14 = *v80;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v80 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v79 + 1) + 8 * v15);
      v17 = [v77 objectForKey:v16];
      objc_opt_class();
      v18 = v17;
      v19 = (objc_opt_isKindOfClass() & 1) != 0 ? v18 : 0;
      v20 = v19;

      v21 = [v78 objectForKey:v16];
      objc_opt_class();
      v22 = v21;
      v23 = (objc_opt_isKindOfClass() & 1) != 0 ? v22 : 0;
      v24 = v23;

      v25 = !v20 || v24 == 0;
      if (v25 || ![v20 isEqualToNumber:v24])
      {
        v27 = 1;
      }

      else
      {
        v26 = v16;

        v27 = 0;
        v76 = v26;
      }

      if (!v27)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [obj countByEnumeratingWithState:&v79 objects:v107 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v76 = 0;
  }

  v28 = [(HFControlItem *)self valueSource];
  v29 = [v28 primaryServiceDescriptor];
  v30 = [v29 serviceType];

  v31 = MEMORY[0x277CCF938];
  v32 = MEMORY[0x277CCF978];
  v33 = MEMORY[0x277CCF9A8];
  if (v76)
  {
    v105[0] = v71;
    v34 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicStateGroupedTitleStatusLowBattery", @"HFCharacteristicStateGroupedTitleStatusLowBattery", 1);
    v106[0] = v34;
    v105[1] = v70;
    v35 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicStateGroupedTitleStatusTampered", @"HFCharacteristicStateGroupedTitleStatusTampered", 1);
    v106[1] = v35;
    v105[2] = v69;
    v36 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicStateGroupedTitleStatusFault", @"HFCharacteristicStateGroupedTitleStatusFault", 1);
    v106[2] = v36;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:3];

    v38 = [v37 objectForKey:v76];
    v39 = v97[5];
    v97[5] = v38;

    v40 = [MEMORY[0x277D75348] systemRedColor];
    v41 = v91[5];
    v91[5] = v40;
  }

  else
  {
    v76 = [MEMORY[0x277CD1D90] hf_sensorCharacteristicTypeForServiceType:v30];
    v42 = [v78 objectForKey:v76];
    objc_opt_class();
    v37 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = v37;
    }

    else
    {
      v43 = 0;
    }

    v41 = v43;

    if (v41)
    {
      v44 = [(HFControlItem *)self valueSource];
      v45 = [v44 metadataForCharacteristicType:v76];

      v46 = *MEMORY[0x277CCF7A0];
      v104[0] = *MEMORY[0x277CCFA80];
      v104[1] = v46;
      v47 = *v31;
      v104[2] = *MEMORY[0x277CCF7B8];
      v104[3] = v47;
      v48 = *v33;
      v104[4] = *v32;
      v104[5] = v48;
      v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:6];
      v50 = [v49 containsObject:v76];

      if (v50)
      {
        [MEMORY[0x277CCAA28] hf_controlDescriptionFormatterForCharacteristicType:v76 withMetadata:v45 options:0 form:1];
      }

      else
      {
        [MEMORY[0x277CCAA28] hf_valueFormatterForCharacteristicType:v76 withMetadata:v45 options:0];
      }
      v51 = ;
      v52 = [v51 stringForObjectValue:v41];
      v53 = v97[5];
      v97[5] = v52;
    }

    v54 = [objc_opt_class() defaultMainTextColorForCharacteristicType:v76];
    v55 = v91[5];
    v91[5] = v54;
  }

  v56 = *MEMORY[0x277CCF7E8];
  v102[0] = *MEMORY[0x277CCF770];
  v102[1] = v56;
  v103[0] = @"AirQuality";
  v103[1] = @"ContactSensor";
  v57 = *MEMORY[0x277CCF868];
  v102[2] = *MEMORY[0x277CCF830];
  v102[3] = v57;
  v103[2] = @"LightSensor";
  v103[3] = @"TemperatureSensor";
  v58 = *MEMORY[0x277CCF7A0];
  v102[4] = *MEMORY[0x277CCFA80];
  v102[5] = v58;
  v103[4] = @"SmokeSensor";
  v103[5] = @"CarbonDioxideSensor";
  v59 = *v31;
  v102[6] = *MEMORY[0x277CCF7B8];
  v102[7] = v59;
  v103[6] = @"CarbonMonoxideSensor";
  v103[7] = @"LeakSensor";
  v60 = *v33;
  v102[8] = *v32;
  v102[9] = v60;
  v103[8] = @"MotionSensor";
  v103[9] = @"OccupancySensor";
  v102[10] = *MEMORY[0x277CCF850];
  v103[10] = @"HumiditySensor";
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:11];
  v62 = [MEMORY[0x277CD1D90] hf_sensorCharacteristicTypeForServiceType:v30];
  v63 = MEMORY[0x277CCACA8];
  v64 = [v61 objectForKey:v62];
  v65 = [v63 stringWithFormat:@"HFServiceType%@", v64];

  v66 = _HFLocalizedStringWithDefaultValue(v65, v65, 1);
  v67 = v85[5];
  v85[5] = v66;

  if (v72)
  {
    v72[2](v72);
  }

  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(&v90, 8);

  _Block_object_dispose(&v96, 8);
  v68 = *MEMORY[0x277D85DE8];
}

void *__103__HFDictionaryValueControlItem_getStatus_mainTextColor_supplementaryDescription_withBatchReadResponse___block_invoke(void *result)
{
  v1 = result;
  if (result[7])
  {
    result = *(*(result[4] + 8) + 40);
    *v1[7] = result;
  }

  if (v1[8])
  {
    result = *(*(v1[5] + 8) + 40);
    *v1[8] = result;
  }

  if (v1[9])
  {
    result = *(*(v1[6] + 8) + 40);
    *v1[9] = result;
  }

  return result;
}

+ (id)defaultMainTextColorForCharacteristicType:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = *MEMORY[0x277CCF770];
  v3 = MEMORY[0x277D75348];
  v4 = a3;
  v5 = [v3 labelColor];
  v12[0] = v5;
  v11[1] = *MEMORY[0x277CCF830];
  v6 = [MEMORY[0x277D75348] systemYellowColor];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v8 = [v7 objectForKey:v4];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end