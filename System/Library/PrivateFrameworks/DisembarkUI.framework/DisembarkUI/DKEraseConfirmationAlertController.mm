@interface DKEraseConfirmationAlertController
+ (id)alertControllerWithCellularPlans:(id)plans completion:(id)completion;
+ (id)alertControllerWithCompletion:(id)completion;
@end

@implementation DKEraseConfirmationAlertController

+ (id)alertControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(DKTelephonyProvider);
  v5 = objc_opt_class();
  cellularPlans = [(DKTelephonyProvider *)v4 cellularPlans];
  v7 = [v5 alertControllerWithCellularPlans:cellularPlans completion:completionCopy];

  return v7;
}

+ (id)alertControllerWithCellularPlans:(id)plans completion:(id)completion
{
  v80 = *MEMORY[0x277D85DE8];
  plansCopy = plans;
  completionCopy = completion;
  v64 = plansCopy;
  if ([plansCopy count])
  {
    v63 = completionCopy;
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v8 = plansCopy;
    v9 = [v8 countByEnumeratingWithState:&v75 objects:v79 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v76;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v76 != v11)
          {
            objc_enumerationMutation(v8);
          }

          carrierName = [*(*(&v75 + 1) + 8 * i) carrierName];
          [v7 addObject:carrierName];
        }

        v10 = [v8 countByEnumeratingWithState:&v75 objects:v79 count:16];
      }

      while (v10);
    }

    v14 = [v8 count];
    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = v16;
    if (v14 == 1)
    {
      v18 = @"ERASE_CONFIRMATION_ALERT_MESSAGE_WITH_CELLULAR_SINGULAR";
    }

    else
    {
      v18 = @"ERASE_CONFIRMATION_ALERT_MESSAGE_WITH_CELLULAR_PLURAL";
    }

    v19 = @"ERASE_CONFIRMATION_CELLULAR_KEEP_CELLULAR_PLANS_ALERT_BUTTON";
    if (v14 == 1)
    {
      v19 = @"ERASE_CONFIRMATION_CELLULAR_KEEP_CELLULAR_PLAN_ALERT_BUTTON";
    }

    v60 = v19;
    v20 = @"ERASE_CONFIRMATION_CELLULAR_ERASE_CELLULAR_PLANS_ALERT_BUTTON";
    if (v14 == 1)
    {
      v20 = @"ERASE_CONFIRMATION_CELLULAR_ERASE_CELLULAR_PLAN_ALERT_BUTTON";
    }

    v62 = v20;
    v21 = [v16 localizedStringForKey:v18 value:&stru_285BC2A70 table:@"Localizable"];
    v22 = MEMORY[0x277CCAAF0];
    allObjects = [v7 allObjects];
    v24 = [allObjects mutableCopy];
    v25 = [v22 localizedStringByJoiningStrings:v24];
    v61 = [v15 stringWithFormat:v21, v25];

    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"ERASE_ALL_DATA_CONFIRMATION_ALERT_TITLE" value:&stru_285BC2A70 table:@"Localizable"];
    v28 = [DKEraseConfirmationAlertController alertControllerWithTitle:v27 message:v61 preferredStyle:1];

    v29 = MEMORY[0x277D750F8];
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"CANCEL" value:&stru_285BC2A70 table:@"Localizable"];
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __82__DKEraseConfirmationAlertController_alertControllerWithCellularPlans_completion___block_invoke;
    v73[3] = &unk_278F7D9C0;
    v32 = v63;
    v74 = v32;
    v33 = [v29 actionWithTitle:v31 style:0 handler:v73];
    [v28 addAction:v33];

    v34 = MEMORY[0x277D750F8];
    v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v36 = [v35 localizedStringForKey:v60 value:&stru_285BC2A70 table:@"Localizable"];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __82__DKEraseConfirmationAlertController_alertControllerWithCellularPlans_completion___block_invoke_2;
    v71[3] = &unk_278F7D9C0;
    v37 = v32;
    v72 = v37;
    v38 = [v34 actionWithTitle:v36 style:2 handler:v71];
    [v28 addAction:v38];

    v39 = MEMORY[0x277D750F8];
    v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v41 = [v40 localizedStringForKey:v62 value:&stru_285BC2A70 table:@"Localizable"];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __82__DKEraseConfirmationAlertController_alertControllerWithCellularPlans_completion___block_invoke_3;
    v69[3] = &unk_278F7D9C0;
    v70 = v37;
    v42 = v37;
    v43 = v61;
    v44 = v42;
    v45 = [v39 actionWithTitle:v41 style:2 handler:v69];
    [v28 addAction:v45];
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v47 = [currentDevice userInterfaceIdiom] == 1;

    v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v49 = [v48 localizedStringForKey:@"ERASE_CONFIRMATION_ALERT_TITLE" value:&stru_285BC2A70 table:@"Localizable"];
    v28 = [DKEraseConfirmationAlertController alertControllerWithTitle:v49 message:0 preferredStyle:v47];

    v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v50 localizedStringForKey:@"ERASE_CONFIRMATION_ALERT_BUTTON" value:&stru_285BC2A70 table:@"Localizable"];

    v51 = MEMORY[0x277D750F8];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __82__DKEraseConfirmationAlertController_alertControllerWithCellularPlans_completion___block_invoke_4;
    v67[3] = &unk_278F7D9C0;
    v52 = completionCopy;
    v68 = v52;
    v53 = [v51 actionWithTitle:v7 style:2 handler:v67];
    [v28 addAction:v53];

    v54 = MEMORY[0x277D750F8];
    v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v56 = [v55 localizedStringForKey:@"CANCEL" value:&stru_285BC2A70 table:@"Localizable"];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __82__DKEraseConfirmationAlertController_alertControllerWithCellularPlans_completion___block_invoke_5;
    v65[3] = &unk_278F7D9C0;
    v66 = v52;
    v43 = v52;
    v57 = [v54 actionWithTitle:v56 style:1 handler:v65];
    [v28 addAction:v57];

    v44 = v68;
  }

  v58 = *MEMORY[0x277D85DE8];

  return v28;
}

@end