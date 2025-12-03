@interface BPSApplePayLocallyStoredValueManager
+ (id)remoteLocallyStoredValuePassNames;
+ (void)_attemptToMarkAllAppletsForDeletionWithCompletion:(id)completion;
+ (void)_presentApplePayLocallyStoredValueWarningInController:(id)controller unableToConnect:(BOOL)connect legacyDevice:(BOOL)device withCompletion:(id)completion;
+ (void)presentApplePayLocallyStoredValueOfflineWarningIfNeededInController:(id)controller forPairedDevice:(id)device withCompletion:(id)completion;
@end

@implementation BPSApplePayLocallyStoredValueManager

+ (id)remoteLocallyStoredValuePassNames
{
  v34 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v3 = getPKPassLibraryClass_softClass;
  v32 = getPKPassLibraryClass_softClass;
  if (!getPKPassLibraryClass_softClass)
  {
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __getPKPassLibraryClass_block_invoke;
    v27 = &unk_278D232F0;
    v28 = &v29;
    __getPKPassLibraryClass_block_invoke(&v24);
    v3 = v30[3];
  }

  v4 = v3;
  _Block_object_dispose(&v29, 8);
  if ([v3 isPassLibraryAvailable])
  {
    v5 = [v3 alloc];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v6 = getPKCompanionWatchPassLibraryMachServiceNameSymbolLoc_ptr;
    v32 = getPKCompanionWatchPassLibraryMachServiceNameSymbolLoc_ptr;
    if (!getPKCompanionWatchPassLibraryMachServiceNameSymbolLoc_ptr)
    {
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __getPKCompanionWatchPassLibraryMachServiceNameSymbolLoc_block_invoke;
      v27 = &unk_278D232F0;
      v28 = &v29;
      v7 = PassKitCoreLibrary();
      v8 = dlsym(v7, "PKCompanionWatchPassLibraryMachServiceName");
      *(v28[1] + 24) = v8;
      getPKCompanionWatchPassLibraryMachServiceNameSymbolLoc_ptr = *(v28[1] + 24);
      v6 = v30[3];
    }

    _Block_object_dispose(&v29, 8);
    if (!v6)
    {
      goto LABEL_23;
    }

    v9 = *v6;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v10 = getPKCompanionAgentServiceListenerResumedNotificationSymbolLoc_ptr;
    v32 = getPKCompanionAgentServiceListenerResumedNotificationSymbolLoc_ptr;
    if (!getPKCompanionAgentServiceListenerResumedNotificationSymbolLoc_ptr)
    {
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __getPKCompanionAgentServiceListenerResumedNotificationSymbolLoc_block_invoke;
      v27 = &unk_278D232F0;
      v28 = &v29;
      v11 = PassKitCoreLibrary();
      v12 = dlsym(v11, "PKCompanionAgentServiceListenerResumedNotification");
      *(v28[1] + 24) = v12;
      getPKCompanionAgentServiceListenerResumedNotificationSymbolLoc_ptr = *(v28[1] + 24);
      v10 = v30[3];
    }

    _Block_object_dispose(&v29, 8);
    if (!v10)
    {
LABEL_23:
      __63__BPSTinkerSupport_getActiveTinkerFamilyDetailsWithCompletion___block_invoke_63_cold_1();
      __break(1u);
    }

    v13 = [v5 initWithMachServiceName:v9 resumeNotificationName:*v10 interfaceType:0];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    paymentPassesWithLocallyStoredValue = [v13 paymentPassesWithLocallyStoredValue];
    v15 = [paymentPassesWithLocallyStoredValue countByEnumeratingWithState:&v20 objects:v33 count:16];
    if (v15)
    {
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(paymentPassesWithLocallyStoredValue);
          }

          localizedDescription = [*(*(&v20 + 1) + 8 * i) localizedDescription];
          if (localizedDescription)
          {
            [array addObject:localizedDescription];
          }
        }

        v15 = [paymentPassesWithLocallyStoredValue countByEnumeratingWithState:&v20 objects:v33 count:16];
      }

      while (v15);
    }
  }

  return array;
}

+ (void)presentApplePayLocallyStoredValueOfflineWarningIfNeededInController:(id)controller forPairedDevice:(id)device withCompletion:(id)completion
{
  controllerCopy = controller;
  deviceCopy = device;
  completionCopy = completion;
  if (!controllerCopy)
  {
    NSLog(&cfstr_Presentingcont.isa);
  }

  remoteLocallyStoredValuePassNames = [self remoteLocallyStoredValuePassNames];
  if ([remoteLocallyStoredValuePassNames count])
  {
    NRWatchOSVersionForRemoteDevice();
    [self _presentApplePayLocallyStoredValueWarningInController:controllerCopy unableToConnect:0 legacyDevice:NRVersionIsGreaterThanOrEqual() ^ 1 withCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

+ (void)_presentApplePayLocallyStoredValueWarningInController:(id)controller unableToConnect:(BOOL)connect legacyDevice:(BOOL)device withCompletion:(id)completion
{
  deviceCopy = device;
  connectCopy = connect;
  controllerCopy = controller;
  completionCopy = completion;
  remoteLocallyStoredValuePassNames = [self remoteLocallyStoredValuePassNames];
  v11 = [remoteLocallyStoredValuePassNames count];
  v12 = 0x277CCA000uLL;
  v43 = remoteLocallyStoredValuePassNames;
  if (v11 == 1)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
    v15 = [v14 localizedStringForKey:@"REMAINING_BALANCE_TITLE_%@" value:&stru_285406330 table:@"Localizable"];
    firstObject = [remoteLocallyStoredValuePassNames firstObject];
    v17 = v13;
    v12 = 0x277CCA000;
    v18 = [v17 stringWithFormat:v15, firstObject];
  }

  else
  {
    v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
    v18 = [v14 localizedStringForKey:@"REMAINING_BALANCE_TITLE_MULTIPLE" value:&stru_285406330 table:@"Localizable"];
  }

  if (connectCopy)
  {
    v19 = [*(v12 + 2264) bundleWithIdentifier:@"com.apple.BridgePreferences"];
    v20 = [v19 localizedStringForKey:@"REMAINING_BALANCE_MESSAGE_ERROR" value:&stru_285406330 table:@"Localizable"];
  }

  else
  {
    v21 = @"REMAINING_BALANCE_MESSAGE_MULTIPLE";
    if (v11 == 1)
    {
      v21 = @"REMAINING_BALANCE_MESSAGE";
    }

    v22 = v21;
    v19 = v22;
    if (deviceCopy)
    {
      v23 = [(__CFString *)v22 stringByAppendingString:@"_LEGACY"];

      v19 = v23;
    }

    v24 = [*(v12 + 2264) bundleWithIdentifier:@"com.apple.BridgePreferences"];
    v20 = [v24 localizedStringForKey:v19 value:&stru_285406330 table:@"Localizable"];
  }

  v25 = [MEMORY[0x277D75110] alertControllerWithTitle:v18 message:v20 preferredStyle:1];
  if (deviceCopy)
  {
    v26 = 0;
    v27 = completionCopy;
  }

  else
  {
    v28 = MEMORY[0x277D750F8];
    v29 = [*(v12 + 2264) bundleWithIdentifier:@"com.apple.BridgePreferences"];
    v30 = [v29 localizedStringForKey:@"CONNECT_TO_APPLE_PAY" value:&stru_285406330 table:@"Localizable"];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __138__BPSApplePayLocallyStoredValueManager__presentApplePayLocallyStoredValueWarningInController_unableToConnect_legacyDevice_withCompletion___block_invoke;
    v49[3] = &unk_278D233B8;
    v50 = controllerCopy;
    selfCopy = self;
    v27 = completionCopy;
    v51 = completionCopy;
    v53 = deviceCopy;
    v31 = [v28 actionWithTitle:v30 style:0 handler:v49];

    [v25 addAction:v31];
    [v25 setPreferredAction:v31];

    v26 = 2;
  }

  v32 = MEMORY[0x277D750F8];
  v33 = [*(v12 + 2264) bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v34 = [v33 localizedStringForKey:@"RESET" value:&stru_285406330 table:@"Localizable"];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __138__BPSApplePayLocallyStoredValueManager__presentApplePayLocallyStoredValueWarningInController_unableToConnect_legacyDevice_withCompletion___block_invoke_3;
  v47[3] = &unk_278D233E0;
  v35 = v27;
  v48 = v35;
  v36 = [v32 actionWithTitle:v34 style:v26 handler:v47];

  [v25 addAction:v36];
  if (deviceCopy)
  {
    [v25 setPreferredAction:v36];
  }

  v37 = MEMORY[0x277D750F8];
  v38 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v39 = [v38 localizedStringForKey:@"CANCEL" value:&stru_285406330 table:@"Localizable"];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __138__BPSApplePayLocallyStoredValueManager__presentApplePayLocallyStoredValueWarningInController_unableToConnect_legacyDevice_withCompletion___block_invoke_4;
  v45[3] = &unk_278D233E0;
  v46 = v35;
  v40 = v35;
  v41 = [v37 actionWithTitle:v39 style:1 handler:v45];
  [v25 addAction:v41];

  [controllerCopy presentViewController:v25 animated:1 completion:0];
}

void __138__BPSApplePayLocallyStoredValueManager__presentApplePayLocallyStoredValueWarningInController_unableToConnect_legacyDevice_withCompletion___block_invoke(uint64_t a1)
{
  NSLog(&cfstr_UserSelectedCo.isa);
  v2 = objc_alloc_init(MEMORY[0x277D758E8]);
  [v2 setAutoresizingMask:45];
  [v2 setFontSize:16];
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BridgePreferences"];
  v4 = [v3 localizedStringForKey:@"CONNECTING_TO_APPLE_PAY" value:&stru_285406330 table:@"Localizable"];
  [v2 setText:v4];

  v5 = [*(a1 + 32) view];
  v6 = [v5 window];

  v7 = [v6 rootViewController];
  v8 = [v7 view];
  [v2 showInView:v8];

  [v6 setUserInteractionEnabled:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __138__BPSApplePayLocallyStoredValueManager__presentApplePayLocallyStoredValueWarningInController_unableToConnect_legacyDevice_withCompletion___block_invoke_2;
  v14[3] = &unk_278D23390;
  v15 = v2;
  v16 = v6;
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v18 = v10;
  v19 = v11;
  v17 = *(a1 + 32);
  v20 = *(a1 + 56);
  v12 = v6;
  v13 = v2;
  [v9 _attemptToMarkAllAppletsForDeletionWithCompletion:v14];
}

uint64_t __138__BPSApplePayLocallyStoredValueManager__presentApplePayLocallyStoredValueWarningInController_unableToConnect_legacyDevice_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  NSLog(&cfstr_MarkAppletsFor.isa, a2, a3);
  [*(a1 + 32) hide];
  [*(a1 + 40) setUserInteractionEnabled:1];
  if (v3)
  {
    result = *(a1 + 56);
    if (result)
    {
      v6 = *(result + 16);

      return v6();
    }
  }

  else
  {
    v8 = *(a1 + 56);
    v7 = *(a1 + 64);
    v9 = *(a1 + 72);
    v10 = *(a1 + 48);

    return [v7 _presentApplePayLocallyStoredValueWarningInController:v10 unableToConnect:1 legacyDevice:v9 withCompletion:v8];
  }

  return result;
}

uint64_t __138__BPSApplePayLocallyStoredValueManager__presentApplePayLocallyStoredValueWarningInController_unableToConnect_legacyDevice_withCompletion___block_invoke_3(uint64_t a1)
{
  NSLog(&cfstr_UserContinuedF.isa);
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __138__BPSApplePayLocallyStoredValueManager__presentApplePayLocallyStoredValueWarningInController_unableToConnect_legacyDevice_withCompletion___block_invoke_4(uint64_t a1)
{
  NSLog(&cfstr_UserCancelledF.isa);
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

+ (void)_attemptToMarkAllAppletsForDeletionWithCompletion:(id)completion
{
  completionCopy = completion;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getNPKCompanionAgentConnectionClass_softClass;
  v14 = getNPKCompanionAgentConnectionClass_softClass;
  if (!getNPKCompanionAgentConnectionClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getNPKCompanionAgentConnectionClass_block_invoke;
    v10[3] = &unk_278D232F0;
    v10[4] = &v11;
    __getNPKCompanionAgentConnectionClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = objc_alloc_init(v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__BPSApplePayLocallyStoredValueManager__attemptToMarkAllAppletsForDeletionWithCompletion___block_invoke;
  v8[3] = &unk_278D23430;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 markAllAppletsForDeletionWithCompletion:v8];
}

void __90__BPSApplePayLocallyStoredValueManager__attemptToMarkAllAppletsForDeletionWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__BPSApplePayLocallyStoredValueManager__attemptToMarkAllAppletsForDeletionWithCompletion___block_invoke_2;
  block[3] = &unk_278D23408;
  v6 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __90__BPSApplePayLocallyStoredValueManager__attemptToMarkAllAppletsForDeletionWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

@end