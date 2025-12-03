@interface HFCharacteristicGroup
+ (id)_currentTargetStateCharacteristicTypeMap;
+ (id)_targetCurrentStateCharacteristicGroups;
+ (id)_targetCurrentStateCharacteristicTypeMap;
+ (id)allCharacteristicGroups;
+ (id)characteristicGroupForCharacteristicType:(id)type;
+ (id)characteristicGroupForIdentifier:(id)identifier;
+ (id)groupedTitleForCharacteristicType:(id)type;
- (HFCharacteristicGroup)init;
- (HFCharacteristicGroup)initWithID:(id)d title:(id)title characteristicTypes:(id)types;
- (int64_t)groupSortPriority;
@end

@implementation HFCharacteristicGroup

+ (id)_targetCurrentStateCharacteristicTypeMap
{
  if (qword_280E03B20 != -1)
  {
    dispatch_once(&qword_280E03B20, &__block_literal_global_205);
  }

  v3 = _MergedGlobals_308;

  return v3;
}

void __65__HFCharacteristicGroup__targetCurrentStateCharacteristicTypeMap__block_invoke()
{
  v16[9] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCF868];
  v1 = *MEMORY[0x277CCFB20];
  v15[0] = *MEMORY[0x277CCFB68];
  v15[1] = v1;
  v2 = *MEMORY[0x277CCF818];
  v16[0] = v0;
  v16[1] = v2;
  v3 = *MEMORY[0x277CCF850];
  v4 = *MEMORY[0x277CCFB08];
  v15[2] = *MEMORY[0x277CCFB58];
  v15[3] = v4;
  v5 = *MEMORY[0x277CCF800];
  v16[2] = v3;
  v16[3] = v5;
  v6 = *MEMORY[0x277CCF838];
  v7 = *MEMORY[0x277CCFB28];
  v15[4] = *MEMORY[0x277CCFB40];
  v15[5] = v7;
  v8 = *MEMORY[0x277CCF820];
  v16[4] = v6;
  v16[5] = v8;
  v9 = *MEMORY[0x277CCF848];
  v10 = *MEMORY[0x277CCFB60];
  v15[6] = *MEMORY[0x277CCFB50];
  v15[7] = v10;
  v11 = *MEMORY[0x277CCF858];
  v16[6] = v9;
  v16[7] = v11;
  v15[8] = *MEMORY[0x277CCFB78];
  v16[8] = *MEMORY[0x277CCF878];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:9];
  v13 = _MergedGlobals_308;
  _MergedGlobals_308 = v12;

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)_currentTargetStateCharacteristicTypeMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HFCharacteristicGroup__currentTargetStateCharacteristicTypeMap__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_280E03B30 != -1)
  {
    dispatch_once(&qword_280E03B30, block);
  }

  v2 = qword_280E03B28;

  return v2;
}

void __65__HFCharacteristicGroup__currentTargetStateCharacteristicTypeMap__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) _targetCurrentStateCharacteristicTypeMap];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HFCharacteristicGroup__currentTargetStateCharacteristicTypeMap__block_invoke_2;
  v7[3] = &unk_277E00AC0;
  v4 = v2;
  v8 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  v5 = qword_280E03B28;
  qword_280E03B28 = v4;
  v6 = v4;
}

+ (id)_targetCurrentStateCharacteristicGroups
{
  if (qword_280E03B40 != -1)
  {
    dispatch_once(&qword_280E03B40, &__block_literal_global_4_14);
  }

  v3 = qword_280E03B38;

  return v3;
}

void __64__HFCharacteristicGroup__targetCurrentStateCharacteristicGroups__block_invoke()
{
  v14[9] = *MEMORY[0x277D85DE8];
  v13 = MEMORY[0x277CBEB98];
  v0 = HFNewTargetCurrentGroup(@"DoorState", @"HFCharacteristicGroupTitleDoorState", *MEMORY[0x277CCFB08]);
  v14[0] = v0;
  v1 = HFNewTargetCurrentGroup(@"HeatingCooling", @"HFCharacteristicGroupTitleHeatingCooling", *MEMORY[0x277CCFB20]);
  v14[1] = v1;
  v2 = HFNewTargetCurrentGroup(@"LockMechanismState", @"HFCharacteristicGroupTitleLockMechanismState", *MEMORY[0x277CCFB40]);
  v14[2] = v2;
  v3 = HFNewTargetCurrentGroup(@"HorizontalTilt", @"HFCharacteristicGroupTitleHorizontalTilt", *MEMORY[0x277CCFB28]);
  v14[3] = v3;
  v4 = HFNewTargetCurrentGroup(@"Position", @"HFCharacteristicGroupTitlePosition", *MEMORY[0x277CCFB50]);
  v14[4] = v4;
  v5 = HFNewTargetCurrentGroup(@"RelativeHumidity", @"HFCharacteristicGroupTitleRelativeHumidity", *MEMORY[0x277CCFB58]);
  v14[5] = v5;
  v6 = HFNewTargetCurrentGroup(@"SecuritySystemState", @"HFCharacteristicGroupTitleSecuritySystemState", *MEMORY[0x277CCFB60]);
  v14[6] = v6;
  v7 = HFNewTargetCurrentGroup(@"Temperature", @"HFCharacteristicGroupTitleTemperature", *MEMORY[0x277CCFB68]);
  v14[7] = v7;
  v8 = HFNewTargetCurrentGroup(@"VerticalTilt", @"HFCharacteristicGroupTitleVerticalTilt", *MEMORY[0x277CCFB78]);
  v14[8] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:9];
  v10 = [v13 setWithArray:v9];
  v11 = qword_280E03B38;
  qword_280E03B38 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)allCharacteristicGroups
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HFCharacteristicGroup_allCharacteristicGroups__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_280E03B50 != -1)
  {
    dispatch_once(&qword_280E03B50, block);
  }

  v2 = qword_280E03B48;

  return v2;
}

void __48__HFCharacteristicGroup_allCharacteristicGroups__block_invoke(uint64_t a1)
{
  v64[7] = *MEMORY[0x277D85DE8];
  v55 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCF760];
  v63[0] = *MEMORY[0x277CCF770];
  v63[1] = v1;
  v2 = *MEMORY[0x277CCF9C8];
  v63[2] = *MEMORY[0x277CCF768];
  v63[3] = v2;
  v3 = *MEMORY[0x277CCFAC0];
  v63[4] = *MEMORY[0x277CCF998];
  v63[5] = v3;
  v4 = *MEMORY[0x277CCF9D0];
  v63[6] = *MEMORY[0x277CCF9D8];
  v63[7] = v4;
  v63[8] = *MEMORY[0x277CCFBA0];
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:9];
  v5 = [HFCharacteristicGroup alloc];
  v6 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicGroupTitleAirQuality", @"HFCharacteristicGroupTitleAirQuality", 1);
  v7 = [MEMORY[0x277CBEB98] setWithArray:v54];

  v53 = [(HFCharacteristicGroup *)v5 initWithID:@"AirQuality" title:v6 characteristicTypes:v7];
  v64[0] = v53;
  v8 = *MEMORY[0x277CCF7C0];
  v62[0] = *MEMORY[0x277CCF7B8];
  v62[1] = v8;
  v62[2] = *MEMORY[0x277CCF7C8];
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:3];
  v9 = [HFCharacteristicGroup alloc];
  v10 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicGroupTitleCarbonMonoxide", @"HFCharacteristicGroupTitleCarbonMonoxide", 1);
  v11 = [MEMORY[0x277CBEB98] setWithArray:v52];

  v51 = [(HFCharacteristicGroup *)v9 initWithID:@"CarbonMonoxide" title:v10 characteristicTypes:v11];
  v64[1] = v51;
  v12 = *MEMORY[0x277CCF7A8];
  v61[0] = *MEMORY[0x277CCF7A0];
  v61[1] = v12;
  v61[2] = *MEMORY[0x277CCF7B0];
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
  v13 = [HFCharacteristicGroup alloc];
  v14 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicGroupTitleCarbonDioxide", @"HFCharacteristicGroupTitleCarbonDioxide", 1);
  v15 = [MEMORY[0x277CBEB98] setWithArray:v50];

  v49 = [(HFCharacteristicGroup *)v13 initWithID:@"CarbonDioxide" title:v14 characteristicTypes:v15];
  v64[2] = v49;
  v16 = *MEMORY[0x277CCF780];
  v60[0] = *MEMORY[0x277CCFAA8];
  v60[1] = v16;
  v17 = *MEMORY[0x277CCFA90];
  v60[2] = *MEMORY[0x277CCF7D0];
  v60[3] = v17;
  v18 = *MEMORY[0x277CCFAB0];
  v60[4] = *MEMORY[0x277CCFA98];
  v60[5] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:6];
  v20 = [HFCharacteristicGroup alloc];
  v21 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicGroupTitleSensorStatus", @"HFCharacteristicGroupTitleSensorStatus", 1);
  v22 = [MEMORY[0x277CBEB98] setWithArray:v19];

  v48 = [(HFCharacteristicGroup *)v20 initWithID:@"SensorStatus" title:v21 characteristicTypes:v22];
  v64[3] = v48;
  v23 = *MEMORY[0x277CCF8A8];
  v59[0] = *MEMORY[0x277CCF8A0];
  v59[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  v25 = [HFCharacteristicGroup alloc];
  v26 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicGroupTitleFilterStatus", @"HFCharacteristicGroupTitleFilterStatus", 1);
  v27 = [MEMORY[0x277CBEB98] setWithArray:v24];

  v28 = [(HFCharacteristicGroup *)v25 initWithID:@"FilterStatus" title:v26 characteristicTypes:v27];
  v64[4] = v28;
  v58 = *MEMORY[0x277CCF920];
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
  v30 = [HFCharacteristicGroup alloc];
  v31 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicGroupTitleIsConfigured", @"HFCharacteristicGroupTitleIsConfigured", 1);
  v32 = [MEMORY[0x277CBEB98] setWithArray:v29];

  v33 = [(HFCharacteristicGroup *)v30 initWithID:@"ConfiguredValve" title:v31 characteristicTypes:v32];
  v64[5] = v33;
  v34 = *MEMORY[0x277CCFA08];
  v57[0] = *MEMORY[0x277CCFA60];
  v57[1] = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v36 = [HFCharacteristicGroup alloc];
  v37 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicGroupTitleSetDuration", @"HFCharacteristicGroupTitleSetDuration", 1);
  v38 = [MEMORY[0x277CBEB98] setWithArray:v35];

  v39 = [(HFCharacteristicGroup *)v36 initWithID:@"Duration" title:v37 characteristicTypes:v38];
  v64[6] = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:7];
  v41 = [v55 setWithArray:v40];
  v42 = qword_280E03B48;
  qword_280E03B48 = v41;

  v43 = qword_280E03B48;
  v44 = [*(a1 + 32) _targetCurrentStateCharacteristicGroups];
  v45 = [v43 setByAddingObjectsFromSet:v44];
  v46 = qword_280E03B48;
  qword_280E03B48 = v45;

  v47 = *MEMORY[0x277D85DE8];
}

+ (id)groupedTitleForCharacteristicType:(id)type
{
  typeCopy = type;
  _currentTargetStateCharacteristicTypeMap = [self _currentTargetStateCharacteristicTypeMap];
  allKeys = [_currentTargetStateCharacteristicTypeMap allKeys];
  v7 = [allKeys containsObject:typeCopy];

  if (v7)
  {
    v8 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicStateGroupedCurrentTitle", @"HFCharacteristicStateGroupedCurrentTitle", 1);
  }

  else
  {
    if (qword_280E03B60 != -1)
    {
      dispatch_once(&qword_280E03B60, &__block_literal_global_105_2);
    }

    v9 = [qword_280E03B58 objectForKeyedSubscript:typeCopy];
    v10 = v9;
    if (v9)
    {
      v8 = _HFLocalizedStringWithDefaultValue(v9, v9, 1);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void __59__HFCharacteristicGroup_groupedTitleForCharacteristicType___block_invoke()
{
  v11[14] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCF7A0];
  v10[0] = *MEMORY[0x277CCF780];
  v10[1] = v0;
  v11[0] = @"HFCharacteristicStateGroupedTitleBatteryLevel";
  v11[1] = @"HFCharacteristicStateGroupedTitleCarbonDioxideDetected";
  v1 = *MEMORY[0x277CCF7B0];
  v10[2] = *MEMORY[0x277CCF7A8];
  v10[3] = v1;
  v11[2] = @"HFCharacteristicStateGroupedTitleCarbonDioxideLevel";
  v11[3] = @"HFCharacteristicStateGroupedTitleCarbonDioxidePeakLevel";
  v2 = *MEMORY[0x277CCF7C0];
  v10[4] = *MEMORY[0x277CCF7B8];
  v10[5] = v2;
  v11[4] = @"HFCharacteristicStateGroupedTitleCarbonMonoxideDetected";
  v11[5] = @"HFCharacteristicStateGroupedTitleCarbonMonoxideLevel";
  v3 = *MEMORY[0x277CCF7D0];
  v10[6] = *MEMORY[0x277CCF7C8];
  v10[7] = v3;
  v11[6] = @"HFCharacteristicStateGroupedTitleCarbonMonoxidePeakLevel";
  v11[7] = @"HFCharacteristicStateGroupedTitleBatteryCharging";
  v4 = *MEMORY[0x277CCFA98];
  v10[8] = *MEMORY[0x277CCFA90];
  v10[9] = v4;
  v11[8] = @"HFCharacteristicStateGroupedTitleStatusActive";
  v11[9] = @"HFCharacteristicStateGroupedTitleStatusFault";
  v5 = *MEMORY[0x277CCFAB0];
  v10[10] = *MEMORY[0x277CCFAA8];
  v10[11] = v5;
  v11[10] = @"HFCharacteristicStateGroupedTitleStatusLowBattery";
  v11[11] = @"HFCharacteristicStateGroupedTitleStatusTampered";
  v6 = *MEMORY[0x277CCF8A8];
  v10[12] = *MEMORY[0x277CCF8A0];
  v10[13] = v6;
  v11[12] = @"HFCharacteristicStateGroupedTitleFilterCondition";
  v11[13] = @"HFCharacteristicStateGroupedTitleFilterLife";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:14];
  v8 = qword_280E03B58;
  qword_280E03B58 = v7;

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)characteristicGroupForCharacteristicType:(id)type
{
  typeCopy = type;
  allCharacteristicGroups = [self allCharacteristicGroups];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HFCharacteristicGroup_characteristicGroupForCharacteristicType___block_invoke;
  v9[3] = &unk_277E00AE8;
  v10 = typeCopy;
  v6 = typeCopy;
  v7 = [allCharacteristicGroups na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __66__HFCharacteristicGroup_characteristicGroupForCharacteristicType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristicTypes];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

+ (id)characteristicGroupForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  allCharacteristicGroups = [self allCharacteristicGroups];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HFCharacteristicGroup_characteristicGroupForIdentifier___block_invoke;
  v9[3] = &unk_277E00AE8;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [allCharacteristicGroups na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __58__HFCharacteristicGroup_characteristicGroupForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (HFCharacteristicGroup)initWithID:(id)d title:(id)title characteristicTypes:(id)types
{
  dCopy = d;
  titleCopy = title;
  typesCopy = types;
  v15.receiver = self;
  v15.super_class = HFCharacteristicGroup;
  v12 = [(HFCharacteristicGroup *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, d);
    objc_storeStrong(&v13->_title, title);
    objc_storeStrong(&v13->_characteristicTypes, types);
  }

  return v13;
}

- (HFCharacteristicGroup)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithID_title_characteristicTypes_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicGroup.m" lineNumber:221 description:{@"%s is unavailable; use %@ instead", "-[HFCharacteristicGroup init]", v5}];

  return 0;
}

- (int64_t)groupSortPriority
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  characteristicTypes = [(HFCharacteristicGroup *)self characteristicTypes];
  v3 = [characteristicTypes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = -1000;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(characteristicTypes);
        }

        v8 = [MEMORY[0x277CD1970] hf_sortPriorityForCharacteristicType:*(*(&v11 + 1) + 8 * i)];
        if (v6 <= v8)
        {
          v6 = v8;
        }
      }

      v4 = [characteristicTypes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = -1000;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

@end