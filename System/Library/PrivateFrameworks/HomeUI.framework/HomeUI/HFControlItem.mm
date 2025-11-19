@interface HFControlItem
@end

@implementation HFControlItem

void __79__HFControlItem_HUQuickControlsAdditions___hu_prioritizedViewControllerClasses__block_invoke_2()
{
  v2[15] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v2[4] = objc_opt_class();
  v2[5] = objc_opt_class();
  v2[6] = objc_opt_class();
  v2[7] = objc_opt_class();
  v2[8] = objc_opt_class();
  v2[9] = objc_opt_class();
  v2[10] = objc_opt_class();
  v2[11] = objc_opt_class();
  v2[12] = objc_opt_class();
  v2[13] = objc_opt_class();
  v2[14] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:15];
  v1 = qword_281122228;
  qword_281122228 = v0;
}

id __101__HFControlItem_HUQuickControlsAdditions___hu_quickControlContextOfClass_controlItems_configuration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) copyItems])
  {
    v4 = [*(a1 + 32) valueSource];

    if (v4)
    {
      v5 = [v3 valueSource];
      v6 = [*(a1 + 32) valueSource];
      v7 = [v5 copyWithValueSource:v6];

      v8 = [v3 copyWithValueSource:v7];
      goto LABEL_7;
    }

    v9 = [v3 copy];
  }

  else
  {
    v9 = v3;
  }

  v8 = v9;
LABEL_7:

  return v8;
}

BOOL __131__HFControlItem_HUQuickControlsAdditions___hu_quickControlContextForControlItemWithPreferredPurposes_inControlItems_configuration___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 latestResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D137F8]];

  if (v4)
  {
    v5 = (*(a1 + 32) & ~[v4 integerValue]) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __122__HFControlItem_HUQuickControlsAdditions__hu_preferredQuickControlGroupContextForControlItems_configuration_ignoringGrid___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D137F8]];
  v4 = v3;
  if (!v3)
  {
    v3 = &unk_282492660;
  }

  v5 = [v3 unsignedIntegerValue];

  return (v5 & 0x10) == 0;
}

void __122__HFControlItem_HUQuickControlsAdditions__hu_preferredQuickControlGroupContextForControlItems_configuration_ignoringGrid___block_invoke_66(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 affectedCharacteristics];
    v6 = [v5 na_map:&__block_literal_global_69_0];

    v7 = *(a1 + 32);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __122__HFControlItem_HUQuickControlsAdditions__hu_preferredQuickControlGroupContextForControlItems_configuration_ignoringGrid___block_invoke_3;
    v13 = &unk_277DC48D0;
    v14 = v4;
    v15 = v6;
    v8 = v6;
    v9 = [v7 na_filter:&v10];
    [*(a1 + 32) setArray:{v9, v10, v11, v12, v13}];
  }
}

BOOL __122__HFControlItem_HUQuickControlsAdditions__hu_preferredQuickControlGroupContextForControlItems_configuration_ignoringGrid___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) controlItems];
  v5 = [v4 containsObject:v3];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 characteristicOptions];
    v8 = [v7 objectForKeyedSubscript:&unk_282492678];

    v6 = ![v8 count] || (objc_msgSend(v8, "isSubsetOfSet:", *(a1 + 40)) & 1) == 0;
  }

  return v6;
}

uint64_t __122__HFControlItem_HUQuickControlsAdditions__hu_preferredQuickControlGroupContextForControlItems_configuration_ignoringGrid___block_invoke_75(uint64_t a1)
{
  for (i = *(a1 + 32); ; i = *(a1 + 32))
  {
    result = [i count];
    if (!result)
    {
      break;
    }

    result = [objc_opt_class() _hu_quickControlContextForControlItemWithPreferredPurposes:4 inControlItems:*(a1 + 32) configuration:*(a1 + 40)];
    if (!result)
    {
      break;
    }

    v4 = result;
    (*(*(a1 + 56) + 16))();
    [*(a1 + 48) addObject:v4];
  }

  return result;
}

uint64_t __91__HFControlItem_HUQuickControlsAdditions__hu_preferredToggleableControlItemInControlItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 latestResults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D137F8]];

  if (v4 && ([v4 integerValue] & 8) != 0)
  {
    v5 = [v2 conformsToProtocol:&unk_28259F850];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __91__HFControlItem_HUQuickControlsAdditions__hu_preferredToggleableControlItemInControlItems___block_invoke_2(uint64_t a1, void *a2)
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
    v6 = [v5 allowsToggle];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __67__HFControlItem_HUQuickControlsAdditions__hf_controlItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "sortPriority")}];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "sortPriority")}];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = [v4 characteristicOptions];
    v11 = [v10 allCharacteristicTypes];
    v12 = [v9 numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
    v13 = MEMORY[0x277CCABB0];
    v14 = [v5 characteristicOptions];
    v15 = [v14 allCharacteristicTypes];
    v16 = [v13 numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
    v8 = [v12 compare:v16];

    if (!v8)
    {
      if (qword_281122230 != -1)
      {
        dispatch_once(&qword_281122230, &__block_literal_global_136_0);
      }

      v17 = qword_281122238;
      v18 = [v4 latestResults];
      v19 = *MEMORY[0x277D137F8];
      v20 = [v18 objectForKeyedSubscript:*MEMORY[0x277D137F8]];
      v21 = [v20 unsignedIntegerValue];

      v22 = [v5 latestResults];
      v23 = [v22 objectForKeyedSubscript:v19];
      v24 = [v23 unsignedIntegerValue];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v25 = v17;
      v26 = [v25 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v26)
      {
        v27 = v26;
        v34 = v5;
        v35 = v4;
        v28 = *v37;
LABEL_7:
        v29 = 0;
        while (1)
        {
          if (*v37 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v36 + 1) + 8 * v29);
          v31 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v30, "unsignedIntegerValue", v34, v35, v36) & ~v21) == 0}];
          v32 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v30, "unsignedIntegerValue") & ~v24) == 0}];
          v8 = [v31 compare:v32];

          if (v8)
          {
            break;
          }

          if (v27 == ++v29)
          {
            v27 = [v25 countByEnumeratingWithState:&v36 objects:v40 count:16];
            if (v27)
            {
              goto LABEL_7;
            }

            v8 = 0;
            break;
          }
        }

        v5 = v34;
        v4 = v35;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

void __67__HFControlItem_HUQuickControlsAdditions__hf_controlItemComparator__block_invoke_3()
{
  v0 = qword_281122238;
  qword_281122238 = &unk_282492D20;
}

@end