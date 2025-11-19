@interface HFActionNaturalLanguageUtilities
+ (BOOL)_shouldIgnoreActions:(id)a3 withCharacteristicType:(id)a4 execution:(id)a5;
+ (BOOL)actionTypesMissingDescriptionShouldCauseFailure:(id)a3;
+ (id)_actionTypeDescriptionPriority;
+ (id)_actionTypeForAction:(id)a3;
+ (id)_actionValue:(id)a3 forCharacteristicType:(id)a4;
+ (id)_characteristicTypesFailingMismatch;
+ (id)_relativePercentValueInActions:(id)a3 characteristics:(id)a4 characteristicType:(id)a5;
+ (id)_valueForAction:(id)a3 withActionType:(id)a4;
+ (id)actionValuesByTypeForActions:(id)a3 execution:(id)a4;
+ (id)hf_naturalLanguageDescriptionForActions:(id)a3 withOptions:(id)a4;
+ (id)lightbulbStringKeyWithExecution:(id)a3;
+ (id)selectHighestPriorityStringsFromStrings:(id)a3;
+ (id)shortcutsStringKeyWithExecution:(id)a3;
+ (id)stringKeyForCharacteristicType:(id)a3 targetValue:(id)a4 named:(BOOL)a5 options:(id)a6;
+ (id)stringKeyForMediaPlaybackAction:(id)a3 named:(BOOL)a4 options:(id)a5;
+ (id)stringKeyForSpecialCasesWithValuesByType:(id)a3 execution:(id)a4 characteristics:(id)a5;
+ (id)stringKeyWithType:(id)a3 values:(id)a4 execution:(id)a5;
+ (id)stringKeysForActions:(id)a3 withServiceType:(id)a4 execution:(id)a5;
+ (id)temperatureStringKeyForActions:(id)a3 execution:(id)a4 characteristics:(id)a5;
+ (void)characteristicCaseClassification:(id *)a3 valueKey:(id *)a4 argumentKeys:(id *)a5 fromCharacteristicType:(id)a6 targetValue:(id)a7;
@end

@implementation HFActionNaturalLanguageUtilities

+ (id)hf_naturalLanguageDescriptionForActions:(id)a3 withOptions:(id)a4
{
  v87 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [HFActionNaturalLanguageExecution executionWithActions:v6 options:v7];
  v9 = [v8 singularInvolvedObject];
  v10 = [v9 hf_serviceNameComponents];
  v11 = [v10 composedString];

  v12 = [v8 singularInvolvedObject];
  v13 = [v12 hf_serviceNameComponents];
  v14 = [v13 serviceName];

  v15 = [v8 named];
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  [v8 setNamed:v16];
  v17 = [v8 actions];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [v8 allInvolvedObjects];
    v20 = [v19 na_flatMap:&__block_literal_global_135];

    v21 = [v8 actions];
    v22 = [v21 na_map:&__block_literal_global_25_9];
    v23 = [v20 setByAddingObjectsFromSet:v22];

    v74 = a1;
    v75 = v23;
    if ([v8 accessoryCount] > 1)
    {
      goto LABEL_45;
    }

    v24 = [v8 actions];
    v25 = [v24 na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_30_6];

    v26 = [MEMORY[0x277CBEB58] set];
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __88__HFActionNaturalLanguageUtilities_hf_naturalLanguageDescriptionForActions_withOptions___block_invoke_5;
    v81[3] = &unk_277DFD350;
    v84 = a1;
    v27 = v8;
    v82 = v27;
    v28 = a1;
    v29 = v26;
    v83 = v29;
    [v25 enumerateKeysAndObjectsUsingBlock:v81];
    if ([v29 count] != 1)
    {
      goto LABEL_8;
    }

    v30 = [v27 indescribableActionTypes];
    v31 = [v28 actionTypesMissingDescriptionShouldCauseFailure:v30];

    if ((v31 & 1) == 0)
    {
      v32 = [v29 anyObject];
    }

    else
    {
LABEL_8:
      v32 = 0;
    }

    v23 = v75;

    a1 = v74;
    if (!v32)
    {
LABEL_45:
      if ([v23 count] == 1)
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = [v23 containsObject:v37];

        if (v38)
        {
          v39 = [MEMORY[0x277CBEB98] setWithArray:v6];
          v40 = [v8 stringKeysForMatterActions:v39];

          if ([v40 count] == 1)
          {
            v32 = [v40 anyObject];

            if (v32)
            {
              goto LABEL_27;
            }
          }

          else
          {
          }
        }
      }

      if ([v23 count] != 1 || !objc_msgSend(v23, "containsObject:", *MEMORY[0x277CD0EA0]) || (objc_msgSend(a1, "lightbulbStringKeyWithExecution:", v8), (v41 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v42 = [v8 actions];
        v43 = [v42 na_allObjectsPassTest:&__block_literal_global_39_0];

        if (!v43 || ([a1 shortcutsStringKeyWithExecution:v8], (v41 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v44 = [v7 objectsInContext];
          v45 = [v8 allInvolvedObjects];
          v46 = [v44 intersectsSet:v45];

          v41 = [objc_opt_class() genericStringKeyWithNumberOfAccessories:objc_msgSend(v8 named:"accessoryCount") inContext:objc_msgSend(v8 options:{"named"), v46, v7}];
        }
      }

      v32 = v41;
    }

LABEL_27:
    v47 = v11;
    v48 = [v8 singularInvolvedObject];
    if (!v48)
    {
      goto LABEL_35;
    }

    v49 = v48;
    v50 = [v8 named];

    if (!v50)
    {
      goto LABEL_35;
    }

    v51 = [v32 argumentMap];
    [v51 setObject:v11 forKeyedSubscript:@"name"];

    v52 = [v8 involvedServices];
    if ([v52 count] == 1)
    {
      v53 = [v8 singularInvolvedObject];
      v54 = [v8 involvedServices];
      [v54 anyObject];
      v55 = v73 = v6;
      v56 = [v53 isEqual:v55];

      v6 = v73;
      if (!v56)
      {
        goto LABEL_35;
      }

      v57 = [v8 involvedServices];
      v58 = [v57 anyObject];
      v59 = [v58 accessory];
      v72 = [v59 hf_showAsAccessoryTile];

      v60 = [v7 objectsInContext];
      v61 = [v8 involvedServices];
      v62 = [v61 anyObject];
      v63 = [v62 accessory];
      v64 = [v60 containsObject:v63];

      v6 = v73;
      if (!v72 || !v64)
      {
        goto LABEL_35;
      }

      v52 = [v32 argumentMap];
      [v52 setObject:v14 forKeyedSubscript:@"name"];
    }

LABEL_35:
    v65 = [MEMORY[0x277CBEB58] set];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __88__HFActionNaturalLanguageUtilities_hf_naturalLanguageDescriptionForActions_withOptions___block_invoke_8;
    v76[3] = &unk_277DFD378;
    v33 = v32;
    v77 = v33;
    v66 = v65;
    v78 = v66;
    v11 = v47;
    v79 = v47;
    v67 = v8;
    v80 = v67;
    v68 = [v33 localizedStringWithArgumentBlock:v76];
    if ([v66 count] && !+[HFUtilities isInternalInstall](HFUtilities, "isInternalInstall"))
    {
      v69 = [objc_opt_class() genericStringKeyWithNumberOfAccessories:objc_msgSend(v67 named:"accessoryCount") inContext:0 options:{0, v7}];
      v35 = [v69 localizedStringWithArgumentBlock:&__block_literal_global_53_1];

      v11 = v47;
    }

    else
    {
      v35 = v68;
    }

    goto LABEL_40;
  }

  v33 = HFLogForCategory(0x31uLL);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = NSStringFromClass(a1);
    *buf = 138412290;
    v86 = v34;
    _os_log_impl(&dword_20D9BF000, v33, OS_LOG_TYPE_DEFAULT, "%@: natural language requested but no actions were supplied!", buf, 0xCu);
  }

  v35 = 0;
LABEL_40:

  v70 = *MEMORY[0x277D85DE8];

  return v35;
}

id __88__HFActionNaturalLanguageUtilities_hf_naturalLanguageDescriptionForActions_withOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 hf_containedServices];
  v3 = [v2 na_map:&__block_literal_global_22_7];

  return v3;
}

id __88__HFActionNaturalLanguageUtilities_hf_naturalLanguageDescriptionForActions_withOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 associatedServiceType];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 serviceType];
  }

  v6 = v5;

  return v6;
}

id __88__HFActionNaturalLanguageUtilities_hf_naturalLanguageDescriptionForActions_withOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = 0x277CD1BD0;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (v3 = 0x277CD1B70, objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = *v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __88__HFActionNaturalLanguageUtilities_hf_naturalLanguageDescriptionForActions_withOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 hf_affectedCharacteristic];

  if (v3)
  {
    v4 = [v2 hf_affectedCharacteristic];

    v5 = [v4 service];
    v6 = [v5 serviceType];
  }

  else
  {
    v7 = objc_opt_class();

    v6 = NSStringFromClass(v7);
  }

  return v6;
}

void __88__HFActionNaturalLanguageUtilities_hf_naturalLanguageDescriptionForActions_withOptions___block_invoke_5(id *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = [a1[6] stringKeysForActions:a3 withServiceType:a2 execution:a1[4]];
  if (v8)
  {
    [a1[5] unionSet:v8];
  }

  v6 = a1[6];
  v7 = [a1[4] indescribableActionTypes];
  *a4 = [v6 actionTypesMissingDescriptionShouldCauseFailure:v7];
}

uint64_t __88__HFActionNaturalLanguageUtilities_hf_naturalLanguageDescriptionForActions_withOptions___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id __88__HFActionNaturalLanguageUtilities_hf_naturalLanguageDescriptionForActions_withOptions___block_invoke_8(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x31uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@ argument key requested for which no value was given for string key: %@", buf, 0x16u);
  }

  [*(a1 + 40) addObject:v3];
  if ([v3 isEqualToString:@"name"])
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __88__HFActionNaturalLanguageUtilities_hf_naturalLanguageDescriptionForActions_withOptions___block_invoke_41;
      v10[3] = &unk_277DF3568;
      v11 = *(a1 + 56);
      v7 = __88__HFActionNaturalLanguageUtilities_hf_naturalLanguageDescriptionForActions_withOptions___block_invoke_41(v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

id __88__HFActionNaturalLanguageUtilities_hf_naturalLanguageDescriptionForActions_withOptions___block_invoke_41(uint64_t a1)
{
  if ([*(a1 + 32) accessoryCount] == 1)
  {
    v1 = @"HFNaturalLanguageFailedAccessoryNamePlaceholder";
  }

  else
  {
    v1 = @"HFNaturalLanguageFailedAccessoryNamePlaceholder_Plural";
  }

  v2 = _HFLocalizedStringWithDefaultValue(v1, v1, 1);

  return v2;
}

+ (id)stringKeysForActions:(id)a3 withServiceType:(id)a4 execution:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 isEqualToString:v12];

  if (v13)
  {
    v14 = [v9 stringKeysForMatterActions:v8];
  }

  else
  {
    v15 = [a1 actionValuesByTypeForActions:v8 execution:v9];
    v16 = [v8 na_map:&__block_literal_global_56_1];
    v17 = [a1 stringKeyForSpecialCasesWithValuesByType:v15 execution:v9 characteristics:v16];
    if (v17)
    {
      v14 = [MEMORY[0x277CBEB98] setWithObject:v17];
    }

    else
    {
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __83__HFActionNaturalLanguageUtilities_stringKeysForActions_withServiceType_execution___block_invoke_2;
      v23 = &unk_277DFD3A0;
      v25 = a1;
      v24 = v9;
      v18 = [v15 na_dictionaryByMappingValues:&v20];
      v14 = [a1 selectHighestPriorityStringsFromStrings:{v18, v20, v21, v22, v23}];
    }
  }

  return v14;
}

id __83__HFActionNaturalLanguageUtilities_stringKeysForActions_withServiceType_execution___block_invoke(uint64_t a1, void *a2)
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

  v6 = [v5 characteristic];

  return v6;
}

id __83__HFActionNaturalLanguageUtilities_stringKeysForActions_withServiceType_execution___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 40) stringKeyWithType:v5 values:a3 execution:*(a1 + 32)];
  if (!v6)
  {
    v7 = [*(a1 + 32) indescribableActionTypes];
    [v7 addObject:v5];
  }

  return v6;
}

+ (id)actionValuesByTypeForActions:(id)a3 execution:(id)a4
{
  v6 = a4;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __75__HFActionNaturalLanguageUtilities_actionValuesByTypeForActions_execution___block_invoke;
  v23[3] = &__block_descriptor_40_e31____NSCopying__16__0__HMAction_8l;
  v23[4] = a1;
  v7 = [a3 na_dictionaryByBucketingObjectsUsingKeyGenerator:v23];
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __75__HFActionNaturalLanguageUtilities_actionValuesByTypeForActions_execution___block_invoke_2;
  v20[3] = &unk_277DFD3E8;
  v21 = v6;
  v22 = a1;
  v11 = v6;
  v12 = [v7 na_filter:v20];

  v13 = MEMORY[0x277CBEB98];
  v14 = [v12 allKeys];
  v15 = [v13 setWithArray:v14];
  [v10 minusSet:v15];

  v16 = [v11 indescribableActionTypes];
  [v16 unionSet:v10];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __75__HFActionNaturalLanguageUtilities_actionValuesByTypeForActions_execution___block_invoke_3;
  v19[3] = &__block_descriptor_40_e35___NSSet_24__0__NSString_8__NSSet_16l;
  v19[4] = a1;
  v17 = [v12 na_dictionaryByMappingValues:v19];

  return v17;
}

id __75__HFActionNaturalLanguageUtilities_actionValuesByTypeForActions_execution___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__HFActionNaturalLanguageUtilities_actionValuesByTypeForActions_execution___block_invoke_4;
  v10[3] = &unk_277DFD410;
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v5;
  v8 = [a3 na_map:v10];

  return v8;
}

+ (id)stringKeyForSpecialCasesWithValuesByType:(id)a3 execution:(id)a4 characteristics:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_MergedGlobals_274 != -1)
  {
    dispatch_once(&_MergedGlobals_274, &__block_literal_global_67_2);
  }

  v11 = qword_280E031D8;
  v12 = MEMORY[0x277CBEB98];
  v13 = [v8 allKeys];
  v14 = [v12 setWithArray:v13];
  v15 = [v11 intersectsSet:v14];

  if (v15)
  {
    v16 = [a1 temperatureStringKeyForActions:v8 execution:v9 characteristics:v10];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __103__HFActionNaturalLanguageUtilities_stringKeyForSpecialCasesWithValuesByType_execution_characteristics___block_invoke_2()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCFB18];
  v6[0] = *MEMORY[0x277CCFB20];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = qword_280E031D8;
  qword_280E031D8 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)stringKeyWithType:(id)a3 values:(id)a4 execution:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 count] != 1)
  {
    v18 = 0;
    goto LABEL_12;
  }

  v11 = [v9 anyObject];
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
    v15 = [v10 named];
    v16 = [v10 options];
    v17 = [a1 stringKeyForMediaPlaybackAction:v14 named:v15 options:v16];
  }

  else
  {
    if (![v12 conformsToProtocol:&unk_28252AC90])
    {
      v18 = 0;
      goto LABEL_11;
    }

    v19 = [v10 named];
    v16 = [v10 options];
    v17 = [a1 stringKeyForCharacteristicType:v8 targetValue:v12 named:v19 options:v16];
  }

  v18 = v17;

LABEL_11:
LABEL_12:

  return v18;
}

+ (id)selectHighestPriorityStringsFromStrings:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  memset(v15, 0, sizeof(v15));
  v5 = [a1 _actionTypeDescriptionPriority];
  if ([v5 countByEnumeratingWithState:v15 objects:v16 count:16])
  {
    v6 = **(&v15[0] + 1);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__HFActionNaturalLanguageUtilities_selectHighestPriorityStringsFromStrings___block_invoke;
    v13[3] = &unk_277DF5170;
    v14 = v4;
    v7 = [v6 na_map:v13];
  }

  else
  {
    v7 = 0;
  }

  if ([v7 count])
  {
    v8 = v7;
  }

  else
  {
    v9 = MEMORY[0x277CBEB98];
    v10 = [v4 allValues];
    v8 = [v9 setWithArray:v10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)stringKeyForCharacteristicType:(id)a3 targetValue:(id)a4 named:(BOOL)a5 options:(id)a6
{
  v6 = a5;
  v53[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (qword_280E031E0 != -1)
  {
    dispatch_once(&qword_280E031E0, &__block_literal_global_74_0);
  }

  v11 = qword_280E031E8;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  [a1 characteristicCaseClassification:&v44 valueKey:&v43 argumentKeys:&v42 fromCharacteristicType:v9 targetValue:v10];
  v12 = v44;
  v13 = v43;
  v14 = v42;
  if (v12)
  {
    if (v6)
    {
      if (qword_280E031F0 != -1)
      {
        dispatch_once(&qword_280E031F0, &__block_literal_global_83_1);
      }

      v15 = qword_280E031F8;
      v16 = [v11 stringByAppendingString:v15];

      v17 = MEMORY[0x277CBEBF8];
      if (v14)
      {
        v17 = v14;
      }

      v53[0] = @"name";
      v53[1] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
      v19 = [v18 na_arrayByFlattening];

      v14 = v19;
      v11 = v16;
    }

    v39 = v9;
    if (v13)
    {
      v41 = 0;
      v20 = &v41;
      [MEMORY[0x277CCACA8] stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@%@" error:&v41, v12, v13];
    }

    else
    {
      v40 = 0;
      v20 = &v40;
      [MEMORY[0x277CCACA8] stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:&v40, v12, v35];
    }
    v21 = ;
    v36 = a1;
    v37 = v13;
    v24 = *v20;
    v25 = v24;
    if (!v21)
    {
      NSLog(&cfstr_CouldnTLocaliz_0.isa, v11, v24);
    }

    v26 = v10;
    v23 = [HFLocalizableStringKey stringKeyWithKey:v21 argumentKeys:v14];
    if ([v14 containsObject:@"targetValuePercent"])
    {
      v27 = +[HFFormatterManager sharedInstance];
      v28 = [v27 percentFormatter];

      v29 = [v28 stringForObjectValue:v26];
      v30 = [v23 argumentMap];
      [v30 setObject:v29 forKeyedSubscript:@"targetValuePercent"];
    }

    v31 = HFLogForCategory(0x31uLL);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = NSStringFromSelector(a2);
      *buf = 138413058;
      v46 = v36;
      v47 = 2112;
      v48 = v32;
      v49 = 2112;
      v50 = v23;
      v51 = 2112;
      v52 = v39;
      _os_log_impl(&dword_20D9BF000, v31, OS_LOG_TYPE_DEFAULT, "%@:%@ Produced string key %@ for characteristic type %@", buf, 0x2Au);
    }

    v9 = v39;
    v10 = v26;
    v13 = v37;
  }

  else
  {
    v21 = HFLogForCategory(0x31uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = NSStringFromSelector(a2);
      *buf = 138412802;
      v46 = a1;
      v47 = 2112;
      v48 = v22;
      v49 = 2112;
      v50 = v9;
      _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "%@:%@ Failed to produce classification for characteristic type %@", buf, 0x20u);
    }

    v23 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v23;
}

void __93__HFActionNaturalLanguageUtilities_stringKeyForCharacteristicType_targetValue_named_options___block_invoke_2()
{
  v0 = qword_280E031E8;
  qword_280E031E8 = @"HFNaturalLanguage_Action_%@_%@";
}

void __93__HFActionNaturalLanguageUtilities_stringKeyForCharacteristicType_targetValue_named_options___block_invoke_2_81()
{
  v0 = qword_280E031F8;
  qword_280E031F8 = @"_Named";
}

+ (void)characteristicCaseClassification:(id *)a3 valueKey:(id *)a4 argumentKeys:(id *)a5 fromCharacteristicType:(id)a6 targetValue:(id)a7
{
  v61 = *MEMORY[0x277D85DE8];
  v11 = a6;
  v12 = a7;
  objc_opt_class();
  v13 = v12;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (qword_280E03200 != -1)
  {
    dispatch_once(&qword_280E03200, &__block_literal_global_103_0);
  }

  v16 = qword_280E03208;
  v17 = [v16 objectForKeyedSubscript:v11];

  if (v17)
  {
    objc_opt_class();
    v18 = [v16 objectForKeyedSubscript:v11];
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (v20)
    {
      *a3 = [v20 first];
      v21 = [v20 second];
      *a4 = [v21 objectForKeyedSubscript:v13];
    }

    else
    {
      objc_opt_class();
      v22 = [v16 objectForKeyedSubscript:v11];
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      *a3 = v23;

      if (v15)
      {
        v24 = v15;
      }

      else
      {
        v24 = v13;
      }

      *a4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v24];
    }
  }

  if (!*a3)
  {
    v53 = a4;
    if (qword_280E03210 != -1)
    {
      dispatch_once(&qword_280E03210, &__block_literal_global_142_1);
    }

    v25 = qword_280E03218;
    v26 = [v25 objectForKeyedSubscript:v11];

    if (v26)
    {
      v48 = v16;
      v49 = v13;
      v51 = v11;
      v52 = a3;
      v50 = a5;
      v47 = v25;
      [v25 objectForKeyedSubscript:v11];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      obj = v59 = 0u;
      v27 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v57;
        v55 = v15;
        while (2)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v57 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v56 + 1) + 8 * i);
            v32 = [v31 first];
            v33 = [v31 second];
            v34 = v33;
            if (v15)
            {
              v35 = [v33 maxValue];
              if (v35)
              {
                v36 = [v34 maxValue];
                v37 = [v36 compare:v15] == -1;
              }

              else
              {
                v37 = 0;
              }

              v38 = [v34 minValue];
              if (v38)
              {
                v39 = [v34 minValue];
                v40 = [v39 compare:v15] == 1;
              }

              else
              {
                v40 = 0;
              }

              v41 = v37 || v40;
              v15 = v55;
              if (!v41)
              {
                v42 = v32;
                *v52 = v32;
                *v53 = [v31 third];

                goto LABEL_41;
              }
            }
          }

          v28 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }

LABEL_41:

      a5 = v50;
      v11 = v51;
      v16 = v48;
      v13 = v49;
      a3 = v52;
      v25 = v47;
    }

    if (!*a3)
    {
      v43 = v25;
      if (qword_280E03220 != -1)
      {
        dispatch_once(&qword_280E03220, &__block_literal_global_160_0);
      }

      v44 = qword_280E03228;
      v45 = [v44 objectForKeyedSubscript:v11];

      if (v45)
      {
        *a3 = [v44 objectForKeyedSubscript:v11];
        if (qword_280E03230 != -1)
        {
          dispatch_once(&qword_280E03230, &__block_literal_global_173_0);
        }

        *v53 = qword_280E03238;
        if (qword_280E03240 != -1)
        {
          dispatch_once(&qword_280E03240, &__block_literal_global_177_1);
        }

        *a5 = qword_280E03248;
      }

      v25 = v43;
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __126__HFActionNaturalLanguageUtilities_characteristicCaseClassification_valueKey_argumentKeys_fromCharacteristicType_targetValue___block_invoke_2()
{
  v10[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCF748];
  v9[0] = *MEMORY[0x277CCFB08];
  v9[1] = v0;
  v10[0] = @"Open";
  v10[1] = @"Power";
  v1 = *MEMORY[0x277CCFB40];
  v9[2] = *MEMORY[0x277CCF9F0];
  v9[3] = v1;
  v10[2] = @"Power";
  v10[3] = @"Lock";
  v9[4] = *MEMORY[0x277CCFB60];
  v7[0] = &unk_282524318;
  v7[1] = &unk_282524330;
  v8[0] = @"Home";
  v8[1] = @"Away";
  v7[2] = &unk_282524348;
  v7[3] = &unk_282524360;
  v8[2] = @"Night";
  v8[3] = @"Off";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v3 = [HFActionNaturalLanguageExecutionTuple tuple:@"Security" second:v2];
  v10[4] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:5];
  v5 = qword_280E03208;
  qword_280E03208 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void __126__HFActionNaturalLanguageUtilities_characteristicCaseClassification_valueKey_argumentKeys_fromCharacteristicType_targetValue___block_invoke_2_140()
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277CCF788];
  v13 = [MEMORY[0x277CD1CB0] numberRangeWithMaxValue:&unk_282524378];
  v12 = [HFActionNaturalLanguageExecutionTuple tuple:@"Power" second:v13 third:@"0"];
  v16 = v12;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v18[0] = v11;
  v17[1] = *MEMORY[0x277CCFA20];
  v0 = [MEMORY[0x277CD1CB0] numberRangeWithMaxValue:&unk_282524378];
  v1 = [HFActionNaturalLanguageExecutionTuple tuple:@"Power" second:v0 third:@"0"];
  v15 = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v18[1] = v2;
  v17[2] = *MEMORY[0x277CCFB50];
  v3 = [MEMORY[0x277CD1CB0] numberRangeWithMaxValue:&unk_282524378];
  v4 = [HFActionNaturalLanguageExecutionTuple tuple:@"Open" second:v3 third:@"1"];
  v14[0] = v4;
  v5 = [MEMORY[0x277CD1CB0] numberRangeWithMinValue:&unk_282524390];
  v6 = [HFActionNaturalLanguageExecutionTuple tuple:@"Open" second:v5 third:@"0"];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v18[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v9 = qword_280E03218;
  qword_280E03218 = v8;

  v10 = *MEMORY[0x277D85DE8];
}

void __126__HFActionNaturalLanguageUtilities_characteristicCaseClassification_valueKey_argumentKeys_fromCharacteristicType_targetValue___block_invoke_2_158()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCFA20];
  v4[0] = *MEMORY[0x277CCF788];
  v4[1] = v0;
  v5[0] = @"Brightness";
  v5[1] = @"FanSpeed";
  v4[2] = *MEMORY[0x277CCFB50];
  v5[2] = @"Position";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v2 = qword_280E03228;
  qword_280E03228 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

void __126__HFActionNaturalLanguageUtilities_characteristicCaseClassification_valueKey_argumentKeys_fromCharacteristicType_targetValue___block_invoke_4()
{
  v0 = qword_280E03238;
  qword_280E03238 = @"0";
}

void __126__HFActionNaturalLanguageUtilities_characteristicCaseClassification_valueKey_argumentKeys_fromCharacteristicType_targetValue___block_invoke_6()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = @"targetValuePercent";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = qword_280E03248;
  qword_280E03248 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)shortcutsStringKeyWithExecution:(id)a3
{
  v3 = [[HFLocalizableStringKey alloc] initWithKey:@"HFNaturalLanguage_Action_Shortcut" argumentKeys:0];

  return v3;
}

+ (id)lightbulbStringKeyWithExecution:(id)a3
{
  v3 = a3;
  v4 = [v3 actions];
  v5 = [v4 na_map:&__block_literal_global_182_0];

  if ([v5 count] == 1)
  {
    v6 = [v5 anyObject];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFNaturalLanguage_Action_MultiLightbulb_%@", v6];
    v8 = [[HFNumberDependentLocalizableStringKey alloc] initWithKey:v7];
    -[HFNumberDependentLocalizableStringKey setIntegerArgument:](v8, "setIntegerArgument:", [v3 accessoryCount]);
    v9 = [v3 allInvolvedObjects];
    v10 = [v9 na_map:&__block_literal_global_189_1];

    if ([v10 count] == 1)
    {
      v11 = [v10 anyObject];
      v12 = [v11 hf_allVisibleServices];
      v13 = [v12 na_filter:&__block_literal_global_192];

      v33 = v13;
      v14 = [v13 mutableCopy];
      v15 = [v3 allInvolvedObjects];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __68__HFActionNaturalLanguageUtilities_lightbulbStringKeyWithExecution___block_invoke_4;
      v35[3] = &unk_277DF69F8;
      v16 = v14;
      v36 = v16;
      [v15 na_each:v35];

      v34 = v6;
      if ([v16 count])
      {
        v17 = [v7 stringByAppendingString:@"_WithRoom"];

        v18 = [(HFNumberDependentLocalizableStringKey *)v8 integerArgument];
        v32 = [v11 hf_displayName];
        v25 = HFLocalizedStringWithFormat(v17, @"%lu %@", v19, v20, v21, v22, v23, v24, v18);

        v26 = [[HFLiteralLocalizableStringKey alloc] initWithLocalizedString:v25];
      }

      else
      {
        v17 = [v7 stringByAppendingString:@"_AllInRoom"];

        v28 = [HFLocalizableStringKey alloc];
        if (qword_280E03250 != -1)
        {
          dispatch_once(&qword_280E03250, &__block_literal_global_200);
        }

        v25 = qword_280E03258;
        v26 = [(HFLocalizableStringKey *)v28 initWithKey:v17 argumentKeys:v25];
      }

      v27 = v26;

      v29 = [v11 hf_displayName];
      v30 = [(HFLocalizableStringKey *)v27 argumentMap];
      [v30 setObject:v29 forKeyedSubscript:@"room"];

      v7 = v17;
      v6 = v34;
    }

    else
    {
      v27 = v8;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

id __68__HFActionNaturalLanguageUtilities_lightbulbStringKeyWithExecution___block_invoke(uint64_t a1, void *a2)
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

  if (v5 && ([v5 characteristic], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "characteristicType"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CCF9F0]), v7, v6, v8))
  {
    v9 = [v5 targetValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __68__HFActionNaturalLanguageUtilities_lightbulbStringKeyWithExecution___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 hf_associatedAccessories];
  v3 = [v2 anyObject];
  v4 = [v3 room];

  return v4;
}

uint64_t __68__HFActionNaturalLanguageUtilities_lightbulbStringKeyWithExecution___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 serviceType];
  v4 = *MEMORY[0x277CD0EA0];
  if ([v3 isEqualToString:*MEMORY[0x277CD0EA0]])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v2 associatedServiceType];
    v5 = [v6 isEqualToString:v4];
  }

  return v5;
}

void __68__HFActionNaturalLanguageUtilities_lightbulbStringKeyWithExecution___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 hf_containedServices];
  [v2 minusSet:v3];
}

void __68__HFActionNaturalLanguageUtilities_lightbulbStringKeyWithExecution___block_invoke_6()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = @"room";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = qword_280E03258;
  qword_280E03258 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __100__HFActionNaturalLanguageUtilities_genericStringKeyWithNumberOfAccessories_named_inContext_options___block_invoke_2()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = @"name";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = qword_280E03268;
  qword_280E03268 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)stringKeyForMediaPlaybackAction:(id)a3 named:(BOOL)a4 options:(id)a5
{
  v5 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (qword_280E03270 != -1)
  {
    dispatch_once(&qword_280E03270, &__block_literal_global_225_0);
  }

  v9 = qword_280E03278;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __82__HFActionNaturalLanguageUtilities_stringKeyForMediaPlaybackAction_named_options___block_invoke_3;
  v26[3] = &unk_277DF3568;
  v10 = v8;
  v27 = v10;
  v11 = __82__HFActionNaturalLanguageUtilities_stringKeyForMediaPlaybackAction_named_options___block_invoke_3(v26);
  if (v11)
  {
    if (v5)
    {
      if (qword_280E03280 != -1)
      {
        dispatch_once(&qword_280E03280, &__block_literal_global_243);
      }

      v12 = qword_280E03288;
      v13 = [v9 stringByAppendingString:v12];

      if (qword_280E03290 != -1)
      {
        dispatch_once(&qword_280E03290, &__block_literal_global_248_0);
      }

      v14 = qword_280E03298;
      v9 = v13;
    }

    else
    {
      v14 = 0;
    }

    v25 = 0;
    v18 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:&v25, v11];
    v19 = v25;
    v20 = v19;
    if (!v18)
    {
      NSLog(&cfstr_CouldnTLocaliz_0.isa, v9, v19);
    }

    v17 = [HFLocalizableStringKey stringKeyWithKey:v18 argumentKeys:v14];
    v21 = HFLogForCategory(0x31uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = NSStringFromSelector(a2);
      *buf = 138412802;
      v29 = a1;
      v30 = 2112;
      v31 = v22;
      v32 = 2112;
      v33 = v17;
      _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "%@:%@ Produced string key %@", buf, 0x20u);
    }
  }

  else
  {
    v14 = HFLogForCategory(0x31uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(a2);
      v16 = NSStringFromHMMediaPlaybackState([v10 state]);
      *buf = 138412802;
      v29 = a1;
      v30 = 2112;
      v31 = v15;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@ Failed to produce classification for playback state %@", buf, 0x20u);
    }

    v17 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v17;
}

void __82__HFActionNaturalLanguageUtilities_stringKeyForMediaPlaybackAction_named_options___block_invoke_2()
{
  v0 = qword_280E03278;
  qword_280E03278 = @"HFNaturalLanguage_Action_%@";
}

__CFString *__82__HFActionNaturalLanguageUtilities_stringKeyForMediaPlaybackAction_named_options___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) state] - 1;
  if (v2 < 5)
  {
    return off_277DFD548[v2];
  }

  result = [*(a1 + 32) volume];
  if (result)
  {
    v4 = result;
    v5 = [*(a1 + 32) playbackArchive];

    if (v5)
    {
      return 0;
    }

    else
    {
      return @"ChangeVolume";
    }
  }

  return result;
}

void __82__HFActionNaturalLanguageUtilities_stringKeyForMediaPlaybackAction_named_options___block_invoke_2_241()
{
  v0 = qword_280E03288;
  qword_280E03288 = @"_Named";
}

void __82__HFActionNaturalLanguageUtilities_stringKeyForMediaPlaybackAction_named_options___block_invoke_4()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = @"name";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = qword_280E03298;
  qword_280E03298 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)temperatureStringKeyForActions:(id)a3 execution:(id)a4 characteristics:(id)a5
{
  v87[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_280E032A0 != -1)
  {
    dispatch_once(&qword_280E032A0, &__block_literal_global_255_0);
  }

  v11 = qword_280E032A8;
  v12 = [MEMORY[0x277CBEB58] set];
  v13 = [MEMORY[0x277CBEB58] set];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __93__HFActionNaturalLanguageUtilities_temperatureStringKeyForActions_execution_characteristics___block_invoke_3;
  v77[3] = &unk_277DFD478;
  v14 = v8;
  v78 = v14;
  v15 = v13;
  v79 = v15;
  v16 = v12;
  v80 = v16;
  [v11 na_each:v77];
  if (qword_280E032B0 != -1)
  {
    dispatch_once(&qword_280E032B0, &__block_literal_global_260_0);
  }

  v17 = qword_280E032B8;
  if ([v17 isSubsetOfSet:v16])
  {
    v18 = 0;
    v19 = @"HFNaturalLanguage_Action_Thermostat_%@";
    goto LABEL_58;
  }

  v64 = v17;
  v65 = v16;
  v20 = [v9 indescribableActionTypes];
  [v20 unionSet:v15];

  v72 = [a1 _actionValue:v14 forCharacteristicType:*MEMORY[0x277CCF748]];
  v21 = [a1 _actionValue:v14 forCharacteristicType:*MEMORY[0x277CCFB20]];
  v22 = [a1 _actionValue:v14 forCharacteristicType:*MEMORY[0x277CCFB18]];
  v68 = v11;
  v66 = v15;
  v63 = v21;
  v71 = v22;
  if (v21)
  {
    v23 = +[HFTargetRangeUtilities rangeModeForHeatingCoolingMode:](HFTargetRangeUtilities, "rangeModeForHeatingCoolingMode:", [v21 integerValue]);
  }

  else
  {
    if (!v22 || ![v72 BOOLValue])
    {
      goto LABEL_18;
    }

    v23 = +[HFTargetRangeUtilities rangeModeForTargetHeaterCoolerState:](HFTargetRangeUtilities, "rangeModeForTargetHeaterCoolerState:", [v71 integerValue]);
  }

  v24 = v23;
  v25 = 0;
  if (v23 <= 1)
  {
    if (v23)
    {
      v26 = 0;
      if (v23 == 1)
      {
        if (qword_280E032E0 != -1)
        {
          dispatch_once(&qword_280E032E0, &__block_literal_global_282);
        }

        v26 = qword_280E032E8;
        v25 = @"Heat";
        v24 = 1;
      }

      goto LABEL_27;
    }

LABEL_18:
    v24 = 0;
    v26 = 0;
    v25 = @"Off";
    goto LABEL_27;
  }

  if (v23 == 2)
  {
    if (qword_280E032D0 != -1)
    {
      dispatch_once(&qword_280E032D0, &__block_literal_global_275_0);
    }

    v26 = qword_280E032D8;
    v25 = @"Cool";
    v24 = 2;
  }

  else
  {
    v26 = 0;
    if (v23 == 3)
    {
      if (qword_280E032C0 != -1)
      {
        dispatch_once(&qword_280E032C0, &__block_literal_global_268_0);
      }

      v26 = qword_280E032C8;
      v25 = @"Auto";
      v24 = 3;
    }
  }

LABEL_27:
  v27 = [a1 _relativePercentValueInActions:v14 characteristics:v10 characteristicType:*MEMORY[0x277CCFB68]];
  v28 = [a1 _relativePercentValueInActions:v14 characteristics:v10 characteristicType:*MEMORY[0x277CCF8C8]];
  [a1 _relativePercentValueInActions:v14 characteristics:v10 characteristicType:*MEMORY[0x277CCF7F0]];
  v75 = v62 = v27;
  v29 = [HFTargetRangeUtilities targetRelativePercentValueWithTargetMode:v24 currentMode:0 rawTargetRelativePercentValue:v27 minimumThresholdRelativePercentValue:v28 maximumThresholdRelativePercentValue:?];
  if (v28)
  {
    v30 = 0;
  }

  else
  {
    v30 = [v26 containsObject:@"targetTemperatureHeat"];
  }

  if (v75)
  {
    v31 = 0;
    if (v29)
    {
LABEL_32:
      v32 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    v31 = [v26 containsObject:@"targetTemperatureCool"];
    if (v29)
    {
      goto LABEL_32;
    }
  }

  v32 = [v26 containsObject:@"targetTemperatureTarget"];
LABEL_35:
  v74 = v29;
  if (((v30 | v31) & 1) != 0 || v32)
  {
    v19 = [@"HFNaturalLanguage_Action_Thermostat_%@" stringByAppendingString:@"_NoTemp"];
    v33 = [v26 mutableCopy];
    [v33 removeObject:@"targetTemperatureHeat"];
    [v33 removeObject:@"targetTemperatureCool"];
    [v33 removeObject:@"targetTemperatureTarget"];
    v34 = [v33 copy];

    v26 = v34;
  }

  else
  {
    v19 = @"HFNaturalLanguage_Action_Thermostat_%@";
  }

  v70 = v9;
  if ([v9 named])
  {
    v35 = [(__CFString *)v19 stringByAppendingString:@"_Named"];

    v87[0] = @"name";
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:1];
    v37 = v36;
    if (v26)
    {
      v38 = v26;
    }

    else
    {
      v38 = MEMORY[0x277CBEBF8];
    }

    v39 = [v36 arrayByAddingObjectsFromArray:v38];

    v26 = v39;
    v19 = v35;
  }

  v59 = a1;
  v69 = v10;
  v76 = 0;
  v40 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@" error:&v76, v25];
  v41 = v76;
  v42 = v41;
  if (!v40)
  {
    NSLog(&cfstr_CouldnTLocaliz_0.isa, v19, v41);
  }

  v60 = v42;
  v18 = [HFLocalizableStringKey stringKeyWithKey:v40 argumentKeys:v26];
  v43 = +[HFFormatterManager sharedInstance];
  v44 = [v43 temperatureFormatter];

  [v44 setInputIsCelsius:1];
  v45 = v75;
  if (v28)
  {
    v46 = [v28 value];
    v47 = [v44 stringForObjectValue:v46];
  }

  else
  {
    v47 = 0;
  }

  v61 = v28;
  if (v75)
  {
    v48 = [v75 value];
    v49 = [v44 stringForObjectValue:v48];
  }

  else
  {
    v49 = 0;
  }

  v67 = v14;
  if (v74)
  {
    v50 = [v74 value];
    v51 = [v44 stringForObjectValue:v50];
  }

  else
  {
    v51 = 0;
  }

  v52 = [v18 argumentMap];
  [v52 na_safeSetObject:v47 forKey:@"targetTemperatureHeat"];

  v53 = [v18 argumentMap];
  [v53 na_safeSetObject:v49 forKey:@"targetTemperatureCool"];

  v54 = [v18 argumentMap];
  [v54 na_safeSetObject:v51 forKey:@"targetTemperatureTarget"];

  v55 = HFLogForCategory(0x31uLL);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = NSStringFromSelector(a2);
    *buf = 138412802;
    v82 = v59;
    v83 = 2112;
    v84 = v56;
    v85 = 2112;
    v86 = v18;
    _os_log_impl(&dword_20D9BF000, v55, OS_LOG_TYPE_DEFAULT, "%@:%@ Produced string key %@", buf, 0x20u);

    v45 = v75;
  }

  v10 = v69;
  v9 = v70;
  v14 = v67;
  v11 = v68;
  v16 = v65;
  v15 = v66;
  v17 = v64;
LABEL_58:

  v57 = *MEMORY[0x277D85DE8];

  return v18;
}

void __93__HFActionNaturalLanguageUtilities_temperatureStringKeyForActions_execution_characteristics___block_invoke_2()
{
  v8[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCFB18];
  v8[0] = *MEMORY[0x277CCFB20];
  v8[1] = v1;
  v2 = *MEMORY[0x277CCFB68];
  v8[2] = *MEMORY[0x277CCF748];
  v8[3] = v2;
  v3 = *MEMORY[0x277CCF7F0];
  v8[4] = *MEMORY[0x277CCF8C8];
  v8[5] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:6];
  v5 = [v0 setWithArray:v4];
  v6 = qword_280E032A8;
  qword_280E032A8 = v5;

  v7 = *MEMORY[0x277D85DE8];
}

void __93__HFActionNaturalLanguageUtilities_temperatureStringKeyForActions_execution_characteristics___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  v4 = v3;
  if (v3 && [v3 count] != 1)
  {
    v5 = 40;
  }

  else
  {
    if ([v4 count])
    {
      goto LABEL_7;
    }

    v5 = 48;
  }

  [*(a1 + v5) addObject:v6];
LABEL_7:
}

void __93__HFActionNaturalLanguageUtilities_temperatureStringKeyForActions_execution_characteristics___block_invoke_5()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCFB18];
  v6[0] = *MEMORY[0x277CCFB20];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = qword_280E032B8;
  qword_280E032B8 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

void __93__HFActionNaturalLanguageUtilities_temperatureStringKeyForActions_execution_characteristics___block_invoke_7()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"targetTemperatureHeat";
  v3[1] = @"targetTemperatureCool";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v1 = qword_280E032C8;
  qword_280E032C8 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __93__HFActionNaturalLanguageUtilities_temperatureStringKeyForActions_execution_characteristics___block_invoke_9()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = @"targetTemperatureTarget";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = qword_280E032D8;
  qword_280E032D8 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __93__HFActionNaturalLanguageUtilities_temperatureStringKeyForActions_execution_characteristics___block_invoke_11()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = @"targetTemperatureTarget";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = qword_280E032E8;
  qword_280E032E8 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)_actionTypeForAction:(id)a3
{
  v3 = a3;
  v4 = [v3 hf_affectedCharacteristic];

  if (v4)
  {
    v5 = [v3 hf_affectedCharacteristic];

    v6 = [v5 characteristicType];
  }

  else
  {
    v7 = objc_opt_class();

    v6 = NSStringFromClass(v7);
  }

  return v6;
}

+ (id)_valueForAction:(id)a3 withActionType:(id)a4
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
    v8 = [v7 targetValue];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

+ (BOOL)_shouldIgnoreActions:(id)a3 withCharacteristicType:(id)a4 execution:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 na_map:&__block_literal_global_287_0];
  if ([v9 count])
  {
    v10 = [v8 allInvolvedObjects];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __90__HFActionNaturalLanguageUtilities__shouldIgnoreActions_withCharacteristicType_execution___block_invoke_2;
    v18 = &unk_277DFD4A0;
    v19 = v7;
    v11 = v9;
    v20 = v11;
    v12 = [v10 na_all:&v15] ^ 1;

    v13 = [v11 count];
  }

  else
  {
    v13 = [v9 count];
    LOBYTE(v12) = 1;
  }

  return (v13 != 0) & v12;
}

uint64_t __90__HFActionNaturalLanguageUtilities__shouldIgnoreActions_withCharacteristicType_execution___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 hf_containedServices];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__HFActionNaturalLanguageUtilities__shouldIgnoreActions_withCharacteristicType_execution___block_invoke_3;
  v7[3] = &unk_277DF7AF8;
  v8 = *(a1 + 32);
  v4 = [v3 na_map:v7];

  if ([v4 intersectsSet:*(a1 + 40)])
  {
    v5 = [v4 isEqualToSet:*(a1 + 40)];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (id)_relativePercentValueInActions:(id)a3 characteristics:(id)a4 characteristicType:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 _actionValue:a3 forCharacteristicType:v8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __102__HFActionNaturalLanguageUtilities__relativePercentValueInActions_characteristics_characteristicType___block_invoke;
  v15[3] = &unk_277DF6218;
  v11 = v8;
  v16 = v11;
  v12 = [v9 na_firstObjectPassingTest:v15];

  if (v10)
  {
    v13 = [[HFRelativePercentValue alloc] initWithValue:v10 forCharacteristic:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __102__HFActionNaturalLanguageUtilities__relativePercentValueInActions_characteristics_characteristicType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristicType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (id)_actionValue:(id)a3 forCharacteristicType:(id)a4
{
  v4 = [a3 objectForKeyedSubscript:a4];
  objc_opt_class();
  v5 = [v4 count];
  if (v5 == 1)
  {
    v6 = [v4 anyObject];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v5 == 1)
  {
  }

  return v8;
}

+ (BOOL)actionTypesMissingDescriptionShouldCauseFailure:(id)a3
{
  v4 = a3;
  v5 = [a1 _characteristicTypesFailingMismatch];
  v6 = [v5 intersectsSet:v4];

  return v6;
}

+ (id)_characteristicTypesFailingMismatch
{
  if (qword_280E032F0 != -1)
  {
    dispatch_once(&qword_280E032F0, &__block_literal_global_295_0);
  }

  v3 = qword_280E032F8;

  return v3;
}

void __71__HFActionNaturalLanguageUtilities__characteristicTypesFailingMismatch__block_invoke_2()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCF748];
  v9 = *MEMORY[0x277CCF9F0];
  v10 = v1;
  v2 = *MEMORY[0x277CCFB20];
  v11 = *MEMORY[0x277CCFB18];
  v12 = v2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v13 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:5];
  v6 = [v0 setWithArray:{v5, v9, v10, v11, v12}];
  v7 = qword_280E032F8;
  qword_280E032F8 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)_actionTypeDescriptionPriority
{
  if (qword_280E03300 != -1)
  {
    dispatch_once(&qword_280E03300, &__block_literal_global_299_0);
  }

  v3 = qword_280E03308;

  return v3;
}

void __66__HFActionNaturalLanguageUtilities__actionTypeDescriptionPriority__block_invoke_2()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCF788], *MEMORY[0x277CCFA20], 0}];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCF9F0], *MEMORY[0x277CCF748], 0}];
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = qword_280E03308;
  qword_280E03308 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end