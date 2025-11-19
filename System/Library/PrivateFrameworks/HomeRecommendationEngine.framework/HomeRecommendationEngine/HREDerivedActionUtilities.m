@interface HREDerivedActionUtilities
+ (id)_derivedActionForActionableObject:(id)a3 actionType:(id)a4 actions:(id)a5;
+ (id)_derivedActionForCharacteristic:(id)a3 withExistingValues:(id)a4;
+ (id)_derivedActionForMediaProfiles:(id)a3 withExistingValues:(id)a4;
+ (id)_filterActions:(id)a3 withAccessoriesPassingTest:(id)a4;
+ (id)_filterActions:(id)a3 withUnmatchedCharacteristicTypes:(id)a4;
+ (id)_serviceTypesExtrapolatingFromWholeHome;
+ (id)_serviceTypesExtrapolatingFromZones;
+ (id)actionType:(id)a3;
+ (id)actionTypeAlias;
+ (id)actionTypeForActionClass:(Class)a3;
+ (id)actionTypeForCharacteristic:(id)a3;
+ (id)actionTypeForServiceType:(id)a3 characteristicType:(id)a4;
+ (id)actionTypesForProfile:(id)a3;
+ (id)characteristicTypeAlias;
+ (id)characteristicTypeForActionType:(id)a3 serviceType:(id)a4;
+ (id)derivedActionsForActionableObjects:(id)a3 fromActions:(id)a4;
+ (id)serviceTypeAlias;
@end

@implementation HREDerivedActionUtilities

+ (id)actionType:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 characteristic];
    v9 = [a1 actionTypeForCharacteristic:v8];
  }

  else
  {
    v9 = [a1 actionTypeForActionClass:objc_opt_class()];
  }

  return v9;
}

+ (id)actionTypeForActionClass:(Class)a3
{
  v4 = NSStringFromClass(a3);
  v5 = [a1 actionTypeAlias];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v8;
}

+ (id)actionTypeForCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [v4 service];
  v6 = [v5 associatedServiceType];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [v4 service];
    v8 = [v9 serviceType];
  }

  v10 = [v4 characteristicType];
  v11 = [a1 actionTypeForServiceType:v8 characteristicType:v10];

  return v11;
}

+ (id)actionTypeForServiceType:(id)a3 characteristicType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 serviceTypeAlias];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  v13 = [a1 characteristicTypeAlias];
  v14 = [v13 objectForKeyedSubscript:v6];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v6;
  }

  v17 = v16;

  if (v12 && v17)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v12, v17];
    v19 = [a1 actionTypeAlias];
    v20 = [v19 objectForKeyedSubscript:v18];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v18;
    }

    v23 = v22;
  }

  else
  {
    if (_MergedGlobals_27 != -1)
    {
      dispatch_once(&_MergedGlobals_27, &__block_literal_global_3_9);
    }

    v23 = qword_27F5F98C0;
  }

  return v23;
}

void __73__HREDerivedActionUtilities_actionTypeForServiceType_characteristicType___block_invoke_2()
{
  v0 = qword_27F5F98C0;
  qword_27F5F98C0 = &stru_286657A08;
}

+ (id)characteristicTypeForActionType:(id)a3 serviceType:(id)a4
{
  v5 = a3;
  if ([v5 containsString:a4])
  {
    v6 = [v5 componentsSeparatedByString:@":"];
    if ([v6 count] == 2)
    {
      v7 = [v6 objectAtIndexedSubscript:1];
      if ([v7 length])
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)actionTypesForProfile:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v4 set];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v17[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v12 = [v8 setWithArray:v11];

    v6 = v12;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__HREDerivedActionUtilities_actionTypesForProfile___block_invoke;
  v16[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v16[4] = a1;
  v13 = [v6 na_map:v16];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void *__51__HREDerivedActionUtilities_actionTypesForProfile___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 actionTypeAlias];
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v7;
}

+ (id)derivedActionsForActionableObjects:(id)a3 fromActions:(id)a4
{
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__HREDerivedActionUtilities_derivedActionsForActionableObjects_fromActions___block_invoke;
  v20[3] = &__block_descriptor_40_e38____NSCopying__16__0__HFActionBuilder_8l;
  v20[4] = a1;
  v6 = a3;
  v7 = [a4 na_dictionaryByBucketingObjectsUsingKeyGenerator:v20];
  v8 = [MEMORY[0x277CBEB58] set];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __76__HREDerivedActionUtilities_derivedActionsForActionableObjects_fromActions___block_invoke_2;
  v16 = &unk_2797774E0;
  v18 = v8;
  v19 = a1;
  v17 = v7;
  v9 = v8;
  v10 = v7;
  [v6 na_each:&v13];

  v11 = [v9 copy];

  return v11;
}

void __76__HREDerivedActionUtilities_derivedActionsForActionableObjects_fromActions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [v3 hre_actionTypes];
  v7 = MEMORY[0x277CBEB98];
  v8 = [*(a1 + 32) allKeys];
  v9 = [v7 setWithArray:v8];
  v10 = [v6 na_setByIntersectingWithSet:v9];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__HREDerivedActionUtilities_derivedActionsForActionableObjects_fromActions___block_invoke_3;
  v18[3] = &unk_2797774B8;
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v22 = v5;
  v23 = v12;
  v19 = v11;
  v20 = v3;
  v21 = v4;
  v13 = v5;
  v14 = v4;
  v15 = v3;
  [v10 na_each:v18];
  v16 = *(a1 + 40);
  v17 = [*(a1 + 48) _filterActions:v14 withUnmatchedCharacteristicTypes:v13];
  [v16 unionSet:v17];
}

void __76__HREDerivedActionUtilities_derivedActionsForActionableObjects_fromActions___block_invoke_3(id *a1, void *a2)
{
  v7 = a2;
  v3 = [a1[4] objectForKeyedSubscript:v7];
  v4 = [a1[8] _derivedActionForActionableObject:a1[5] actionType:v7 actions:v3];
  if (v4)
  {
    [a1[6] addObject:v4];
  }

  else
  {
    v5 = [a1[5] hre_characteristicTypeForActionType:v7];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v7;
    }

    [a1[7] addObject:v6];
  }
}

+ (id)_derivedActionForActionableObject:(id)a3 actionType:(id)a4 actions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CBEB98];
  v12 = [v8 hre_parentRoom];
  v13 = [v12 hf_allZones];
  v14 = [v11 setWithArray:v13];

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __82__HREDerivedActionUtilities__derivedActionForActionableObject_actionType_actions___block_invoke;
  v43[3] = &unk_279777508;
  v15 = v8;
  v44 = v15;
  v16 = [a1 _filterActions:v10 withAccessoriesPassingTest:v43];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __82__HREDerivedActionUtilities__derivedActionForActionableObject_actionType_actions___block_invoke_2;
  v41[3] = &unk_279777508;
  v17 = v14;
  v42 = v17;
  v18 = [a1 _filterActions:v10 withAccessoriesPassingTest:v41];
  v19 = v16;
  v20 = [a1 _serviceTypesExtrapolatingFromZones];
  v21 = [v15 hre_matchingTypes];
  if ([v20 intersectsSet:v21])
  {
    v22 = [v19 count];

    v23 = v19;
    if (v22)
    {
      goto LABEL_6;
    }

    v23 = v18;
    v20 = v19;
  }

  else
  {

    v23 = v19;
  }

LABEL_6:
  v24 = [a1 _serviceTypesExtrapolatingFromWholeHome];
  v25 = [v15 hre_matchingTypes];
  if ([v24 intersectsSet:v25])
  {
    v26 = [v23 count];

    if (v26)
    {
      goto LABEL_11;
    }

    v24 = v23;
    v23 = v10;
  }

  else
  {
  }

LABEL_11:
  v27 = [v23 na_map:&__block_literal_global_25_0];
  v28 = [a1 actionTypeForActionClass:objc_opt_class()];
  v29 = [v9 isEqualToString:v28];

  if (v29)
  {
    v30 = [v15 hf_containedProfiles];
    v31 = [v30 na_map:&__block_literal_global_28];

    v32 = [a1 _derivedActionForMediaProfiles:v31 withExistingValues:v27];
  }

  else
  {
    v33 = [v15 hre_characteristics];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __82__HREDerivedActionUtilities__derivedActionForActionableObject_actionType_actions___block_invoke_5;
    v38[3] = &unk_279777530;
    v39 = v9;
    v40 = a1;
    v34 = [v33 na_filter:v38];

    v35 = [v34 anyObject];
    v32 = [a1 _derivedActionForCharacteristic:v35 withExistingValues:v27];

    v31 = v39;
  }

  return v32;
}

uint64_t __82__HREDerivedActionUtilities__derivedActionForActionableObject_actionType_actions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 room];
  v4 = [*(a1 + 32) hre_parentRoom];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __82__HREDerivedActionUtilities__derivedActionForActionableObject_actionType_actions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CBEB98];
  v4 = [a2 room];
  v5 = [v4 hf_allZones];
  v6 = [v3 setWithArray:v5];
  v7 = [v2 intersectsSet:v6];

  return v7;
}

id __82__HREDerivedActionUtilities__derivedActionForActionableObject_actionType_actions___block_invoke_3(uint64_t a1, void *a2)
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

  if (v5)
  {
    v6 = [v5 targetValue];
  }

  else
  {
    objc_opt_class();
    v6 = v3;
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
      v9 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void *__82__HREDerivedActionUtilities__derivedActionForActionableObject_actionType_actions___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
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

uint64_t __82__HREDerivedActionUtilities__derivedActionForActionableObject_actionType_actions___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) actionTypeForCharacteristic:a2];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

+ (id)_derivedActionForMediaProfiles:(id)a3 withExistingValues:(id)a4
{
  v5 = a3;
  v6 = [a4 na_firstObjectPassingTest:&__block_literal_global_282];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D14818]);
    v8 = [v5 anyObject];
    v9 = [v8 hf_home];
    v10 = [v7 initWithHome:v9];

    [v10 setMediaProfiles:v5];
    [v10 setTargetPlayState:{objc_msgSend(v6, "targetPlayState")}];
    v11 = [v6 targetVolume];
    [v10 setTargetVolume:v11];

    v12 = [v6 playbackArchive];
    [v10 setPlaybackArchive:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL __79__HREDerivedActionUtilities__derivedActionForMediaProfiles_withExistingValues___block_invoke(uint64_t a1, void *a2)
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

  return v5 != 0;
}

+ (id)_derivedActionForCharacteristic:(id)a3 withExistingValues:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5 || ![v6 count])
  {
    v11 = 0;
    goto LABEL_25;
  }

  if ([v7 count] == 1)
  {
    v8 = [v7 anyObject];
    goto LABEL_5;
  }

  if ([v7 count] < 2)
  {
LABEL_22:
    v8 = 0;
    goto LABEL_23;
  }

  v12 = [v7 na_map:&__block_literal_global_285_0];
  v13 = [v12 count];
  if (v13 != [v7 count])
  {

    goto LABEL_22;
  }

  v14 = [v5 metadata];
  v15 = [v14 minimumValue];
  v16 = [v14 maximumValue];
  v17 = v16;
  v18 = 0;
  v8 = 0;
  if (v15 && v16)
  {
    v19 = [v14 format];
    v20 = *MEMORY[0x277CCF6B0];

    if (v19 == v20)
    {
      v8 = 0;
      v18 = 0;
    }

    else
    {
      [v15 doubleValue];
      v22 = v21;
      [v17 doubleValue];
      v24 = v23;
      [v15 doubleValue];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __80__HREDerivedActionUtilities__derivedActionForCharacteristic_withExistingValues___block_invoke_2;
      v42[3] = &__block_descriptor_48_e18__16__0__NSNumber_8l;
      v35 = (v24 - v25);
      v36 = v22;
      v42[4] = v22;
      v42[5] = v35;
      v26 = [v12 na_map:v42];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v27 = [v26 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v39;
        v30 = 0.0;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v39 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [*(*(&v38 + 1) + 8 * i) doubleValue];
            v30 = v30 + v32 / [v26 count];
          }

          v28 = [v26 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v28);
      }

      else
      {
        v30 = 0.0;
      }

      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __80__HREDerivedActionUtilities__derivedActionForCharacteristic_withExistingValues___block_invoke_3;
      v37[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
      *&v37[4] = v30;
      if ([v26 na_all:v37])
      {
        v8 = [MEMORY[0x277CCABB0] numberWithInt:(v36 + v30 * v35)];
      }

      else
      {
        v8 = 0;
      }

      v18 = 1;
    }
  }

  if (!v18)
  {
    goto LABEL_23;
  }

LABEL_5:
  if (!v8)
  {
LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  v9 = objc_alloc(MEMORY[0x277D14568]);
  v10 = [v5 hf_home];
  v11 = [v9 initWithHome:v10];

  [v11 setCharacteristic:v5];
  [v11 setTargetValue:v8];
LABEL_24:

LABEL_25:
  v33 = *MEMORY[0x277D85DE8];

  return v11;
}

void *__80__HREDerivedActionUtilities__derivedActionForCharacteristic_withExistingValues___block_invoke(uint64_t a1, void *a2)
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

id __80__HREDerivedActionUtilities__derivedActionForCharacteristic_withExistingValues___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 doubleValue];
  v5 = *(a1 + 32);
  if (v4 < v5 || v4 - v5 >= *(a1 + 40))
  {
    v9 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCABB0];
    [v3 doubleValue];
    v9 = [v7 numberWithDouble:(v8 - *(a1 + 32)) / *(a1 + 40)];
  }

  return v9;
}

BOOL __80__HREDerivedActionUtilities__derivedActionForCharacteristic_withExistingValues___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 doubleValue];
  if (v4 >= *(a1 + 32) + -0.1)
  {
    [v3 doubleValue];
    v5 = v6 <= *(a1 + 32) + 0.1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_filterActions:(id)a3 withUnmatchedCharacteristicTypes:(id)a4
{
  v23[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CBEB98];
  v8 = *MEMORY[0x277CCF748];
  v23[0] = *MEMORY[0x277CCF9F0];
  v23[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v10 = [v7 setWithArray:v9];

  if ([v6 intersectsSet:v10])
  {
    v11 = [MEMORY[0x277CBEB98] setWithArray:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v12 = objc_opt_new();
    v13 = MEMORY[0x277CBEB98];
    v14 = *MEMORY[0x277CCFA30];
    v22[0] = *MEMORY[0x277CCF8D8];
    v22[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v16 = [v13 setWithArray:v15];

    if ([v6 intersectsSet:v16])
    {
      [v12 unionSet:v16];
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __77__HREDerivedActionUtilities__filterActions_withUnmatchedCharacteristicTypes___block_invoke;
    v20[3] = &unk_2797767E8;
    v21 = v12;
    v17 = v12;
    v11 = [v5 na_filter:v20];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __77__HREDerivedActionUtilities__filterActions_withUnmatchedCharacteristicTypes___block_invoke(uint64_t a1, void *a2)
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

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v6 characteristic];
    v9 = [v8 characteristicType];
    v10 = [v7 containsObject:v9] ^ 1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (id)_filterActions:(id)a3 withAccessoriesPassingTest:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__HREDerivedActionUtilities__filterActions_withAccessoriesPassingTest___block_invoke;
  v9[3] = &unk_279777628;
  v10 = v5;
  v6 = v5;
  v7 = [a3 na_map:v9];

  return v7;
}

id __71__HREDerivedActionUtilities__filterActions_withAccessoriesPassingTest___block_invoke(uint64_t a1, void *a2)
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

  if (!v6)
  {
LABEL_9:
    objc_opt_class();
    v13 = v4;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v8 = v14;

    if (v8)
    {
      v15 = [v8 mediaProfiles];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __71__HREDerivedActionUtilities__filterActions_withAccessoriesPassingTest___block_invoke_2;
      v22[3] = &unk_279777600;
      v23 = *(a1 + 32);
      v16 = [v15 na_filter:v22];

      if ([v16 count])
      {
        v17 = objc_alloc(MEMORY[0x277D14818]);
        v18 = [v8 home];
        v12 = [v17 initWithHome:v18];

        [v12 setMediaProfiles:v16];
        [v12 setTargetPlayState:{objc_msgSend(v8, "targetPlayState")}];
        v19 = [v8 targetVolume];
        [v12 setTargetVolume:v19];

        v20 = [v8 playbackArchive];
        [v12 setPlaybackArchive:v20];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_18;
  }

  v7 = [v6 characteristic];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = *(a1 + 32);
  v10 = [v7 service];
  v11 = [v10 accessory];
  LODWORD(v9) = (*(v9 + 16))(v9, v11);

  if (!v9)
  {
LABEL_8:

    goto LABEL_9;
  }

  v12 = v4;
LABEL_18:

  return v12;
}

uint64_t __71__HREDerivedActionUtilities__filterActions_withAccessoriesPassingTest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 accessories];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__HREDerivedActionUtilities__filterActions_withAccessoriesPassingTest___block_invoke_3;
  v6[3] = &unk_2797775D8;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

+ (id)serviceTypeAlias
{
  if (qword_27F5F98D0 != -1)
  {
    dispatch_once(&qword_27F5F98D0, &__block_literal_global_295);
  }

  v3 = qword_27F5F98C8;

  return v3;
}

void __45__HREDerivedActionUtilities_serviceTypeAlias__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CD0F40];
  v4[0] = *MEMORY[0x277CD0E40];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = qword_27F5F98C8;
  qword_27F5F98C8 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)characteristicTypeAlias
{
  if (qword_27F5F98E0 != -1)
  {
    dispatch_once(&qword_27F5F98E0, &__block_literal_global_298_0);
  }

  v3 = qword_27F5F98D8;

  return v3;
}

void __52__HREDerivedActionUtilities_characteristicTypeAlias__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCF748];
  v4[0] = *MEMORY[0x277CCF9F0];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = qword_27F5F98D8;
  qword_27F5F98D8 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)actionTypeAlias
{
  if (qword_27F5F98F0 != -1)
  {
    dispatch_once(&qword_27F5F98F0, &__block_literal_global_300);
  }

  v3 = qword_27F5F98E8;

  return v3;
}

void __44__HREDerivedActionUtilities_actionTypeAlias__block_invoke()
{
  v0 = qword_27F5F98E8;
  qword_27F5F98E8 = MEMORY[0x277CBEC10];
}

+ (id)_serviceTypesExtrapolatingFromWholeHome
{
  if (qword_27F5F9900 != -1)
  {
    dispatch_once(&qword_27F5F9900, &__block_literal_global_302_0);
  }

  v3 = qword_27F5F98F8;

  return v3;
}

void __68__HREDerivedActionUtilities__serviceTypesExtrapolatingFromWholeHome__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0EB0];
  v7[0] = *MEMORY[0x277CD0E30];
  v7[1] = v1;
  v2 = *MEMORY[0x277CD0E80];
  v7[2] = *MEMORY[0x277CD0F58];
  v7[3] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v0 setWithArray:v3];
  v5 = qword_27F5F98F8;
  qword_27F5F98F8 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)_serviceTypesExtrapolatingFromZones
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HREDerivedActionUtilities__serviceTypesExtrapolatingFromZones__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_27F5F9910 != -1)
  {
    dispatch_once(&qword_27F5F9910, block);
  }

  v2 = qword_27F5F9908;

  return v2;
}

void __64__HREDerivedActionUtilities__serviceTypesExtrapolatingFromZones__block_invoke(uint64_t a1)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = *MEMORY[0x277CD0F40];
  v13[0] = *MEMORY[0x277CD0E40];
  v13[1] = v3;
  v4 = *MEMORY[0x277CD0F20];
  v13[2] = *MEMORY[0x277CD0F60];
  v13[3] = v4;
  v5 = NSStringFromProtocol(&unk_28666EF10);
  v13[4] = v5;
  v6 = HRETelevisionProfileType();
  v13[5] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:6];
  v8 = [v2 setWithArray:v7];

  v9 = [*(a1 + 32) _serviceTypesExtrapolatingFromWholeHome];
  v10 = [v9 setByAddingObjectsFromSet:v8];
  v11 = qword_27F5F9908;
  qword_27F5F9908 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

@end