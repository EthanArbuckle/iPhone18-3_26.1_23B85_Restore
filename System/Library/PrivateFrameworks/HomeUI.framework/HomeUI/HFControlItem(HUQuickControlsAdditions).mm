@interface HFControlItem(HUQuickControlsAdditions)
+ (HUQuickControlContext)_hu_quickControlContextOfClass:()HUQuickControlsAdditions controlItems:configuration:;
+ (HUQuickControlGroupContext)hu_preferredQuickControlGroupContextForControlItems:()HUQuickControlsAdditions configuration:ignoringGrid:;
+ (id)_hu_prioritizedViewControllerClasses;
+ (id)_hu_quickControlContextForControlItemWithPreferredPurposes:()HUQuickControlsAdditions inControlItems:configuration:;
+ (id)hf_controlItemComparator;
+ (id)hu_preferredToggleableControlItemInControlItems:()HUQuickControlsAdditions;
@end

@implementation HFControlItem(HUQuickControlsAdditions)

+ (id)_hu_prioritizedViewControllerClasses
{
  if (_MergedGlobals_641 != -1)
  {
    dispatch_once(&_MergedGlobals_641, &__block_literal_global_39_4);
  }

  v1 = qword_281122228;

  return v1;
}

+ (HUQuickControlContext)_hu_quickControlContextOfClass:()HUQuickControlsAdditions controlItems:configuration:
{
  v7 = a5;
  v8 = [MEMORY[0x277CBEB98] setWithArray:a4];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __101__HFControlItem_HUQuickControlsAdditions___hu_quickControlContextOfClass_controlItems_configuration___block_invoke;
  v16[3] = &unk_277DC4888;
  v17 = v7;
  v9 = v7;
  v10 = [v8 na_map:v16];

  v11 = [HUQuickControlContext alloc];
  v12 = [v9 home];
  v13 = [v9 itemUpdater];
  v14 = [(HUQuickControlContext *)v11 initWithQuickControlClass:a3 controlItems:v10 home:v12 itemUpdater:v13];

  return v14;
}

+ (id)_hu_quickControlContextForControlItemWithPreferredPurposes:()HUQuickControlsAdditions inControlItems:configuration:
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __131__HFControlItem_HUQuickControlsAdditions___hu_quickControlContextForControlItemWithPreferredPurposes_inControlItems_configuration___block_invoke;
  v24[3] = &__block_descriptor_40_e23_B16__0__HFControlItem_8l;
  v24[4] = a3;
  v9 = [a4 na_filter:v24];
  if ([v9 count])
  {
    if ([v9 count] != 1)
    {
      NSLog(&cfstr_MultipleContro_0.isa, a3, v9);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [a1 _hu_prioritizedViewControllerClasses];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [v15 controlItemPredicate];
          v17 = [v16 matchingControlItemsForControlItems:v9];

          if ([v17 count])
          {
            v18 = [a1 _hu_quickControlContextOfClass:v15 controlItems:v17 configuration:v8];

            goto LABEL_14;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
LABEL_14:
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (HUQuickControlGroupContext)hu_preferredQuickControlGroupContextForControlItems:()HUQuickControlsAdditions configuration:ignoringGrid:
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 na_filter:&__block_literal_global_64_2];
  v11 = [v10 allObjects];
  v12 = [a1 hf_controlItemComparator];
  v13 = [v11 sortedArrayUsingComparator:v12];

  v38 = v13;
  v14 = [v13 mutableCopy];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __122__HFControlItem_HUQuickControlsAdditions__hu_preferredQuickControlGroupContextForControlItems_configuration_ignoringGrid___block_invoke_66;
  aBlock[3] = &unk_277DC40A8;
  v15 = v14;
  v54 = v15;
  v16 = _Block_copy(aBlock);
  v17 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v15, "count")}];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __122__HFControlItem_HUQuickControlsAdditions__hu_preferredQuickControlGroupContextForControlItems_configuration_ignoringGrid___block_invoke_75;
  v47[3] = &unk_277DC48F8;
  v18 = v15;
  v48 = v18;
  v52 = a1;
  v19 = v9;
  v49 = v19;
  v20 = v16;
  v51 = v20;
  v21 = v17;
  v50 = v21;
  v22 = _Block_copy(v47);
  v41 = v19;
  v42 = v18;
  v23 = [objc_opt_class() _hu_quickControlContextForControlItemWithPreferredPurposes:2 inControlItems:v18 configuration:v19];
  (*(v20 + 2))(v20, v23);
  if (!v23 || (v22[2](v22), ![v21 count]))
  {
    v40 = v21;
    v36 = v10;
    v37 = v8;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v24 = [objc_opt_class() _hu_prioritizedViewControllerClasses];
    v25 = [v24 countByEnumeratingWithState:&v43 objects:v55 count:16];
    v39 = v22;
    if (v25)
    {
      v26 = v25;
      v27 = *v44;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v44 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v43 + 1) + 8 * i);
          if (!a5 || ([v29 isEqual:objc_opt_class()] & 1) == 0)
          {
            v30 = [v29 controlItemPredicate];
            v31 = [v30 matchingControlItemsForControlItems:v42];

            if ([v31 count])
            {
              v32 = [objc_opt_class() _hu_quickControlContextOfClass:v29 controlItems:v31 configuration:v41];
              (*(v20 + 2))(v20, v32);
              if (v23)
              {
                if (v32)
                {
                  v33 = v32 == v23;
                }

                else
                {
                  v33 = 1;
                }

                if (v33)
                {

                  goto LABEL_24;
                }

                [v40 addObject:v32];
              }

              else
              {
                v23 = v32;
                (v39[2])();
              }
            }
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v43 objects:v55 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

LABEL_24:

    v10 = v36;
    v8 = v37;
    v22 = v39;
    v21 = v40;
  }

  v34 = [[HUQuickControlGroupContext alloc] initWithPrimaryQuickControlContext:v23 alternateQuickControlContexts:v21];

  return v34;
}

+ (id)hu_preferredToggleableControlItemInControlItems:()HUQuickControlsAdditions
{
  v3 = a3;
  v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_79_2];
  if (!v4)
  {
    v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_125_2];
    if (!v4)
    {
      v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_128_1];
    }
  }

  v5 = v4;

  return v5;
}

+ (id)hf_controlItemComparator
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __HFReversedComparator_block_invoke;
  v2[3] = &unk_277DBE9F0;
  v3 = &__block_literal_global_131_4;
  v0 = [v2 copy];

  return v0;
}

@end