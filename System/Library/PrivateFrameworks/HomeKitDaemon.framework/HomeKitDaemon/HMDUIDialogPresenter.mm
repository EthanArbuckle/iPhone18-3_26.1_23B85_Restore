@interface HMDUIDialogPresenter
+ (id)sharedUIDialogPresenter;
- (BOOL)_addCurrentNotification:(__CFUserNotification *)notification withContext:(id)context;
- (BOOL)_addToPendingContext:(id)context;
- (BOOL)_addToPendingContextSkippingPlatformChecks:(id)checks;
- (BOOL)_isPendingContext:(id)context;
- (BOOL)_presentDialogWithInfo:(id)info options:(unint64_t)options targetResponse:(unint64_t)response textField:(id *)field withContext:(id)context selectedByPeerDevice:(BOOL *)device timeout:(double)timeout;
- (BOOL)_removeCurrentNotification:(__CFUserNotification *)notification currentSelection:(BOOL)selection selectedByPeerDevice:(BOOL *)device andContext:(id)context;
- (HMDUIDialogPresenter)init;
- (void)_displayInternalTTRErrorWithContext:(id)context message:(id)message completionHandler:(id)handler;
- (void)_displayKeychainSyncForHome:(id)home withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_displayUpgradeNeededWithContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_displayiCloudSwitchWithContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_requestUserPermissionForBridgeAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_requestUserPermissionForDeletionOfHomeWithName:(id)name withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_requestUserPermissionForLegacyWACAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_requestUserPermissionForRemovalOfRouter:(id)router accessoriesRequiringManualReconfiguration:(id)reconfiguration withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_requestUserPermissionForRemovalOfSpecificWiFiCredentialedAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_requestUserPermissionForUnauthenticatedAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_requestUserPermissionForUnauthenticatedAliroLockWithContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_requestUserPermissionWithAccessoryPPIDInfo:(id)info name:(id)name category:(id)category withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)_showUserDialogForIncompatibleAccessory:(id)accessory name:(id)name category:(id)category withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)confirmReportAccessory:(id)accessory context:(id)context completionQueue:(id)queue completionHandler:(id)handler;
- (void)dealloc;
- (void)dismissPendingDialogWithContext:(id)context;
- (void)dismissPendingDialogWithContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)displayExecutionErrorOfTrigger:(id)trigger partialSuccess:(BOOL)success context:(id)context completionQueue:(id)queue completionHandler:(id)handler;
- (void)displayInternalTTRErrorWithContext:(id)context message:(id)message waitForResponse:(BOOL)response completionHandler:(id)handler;
- (void)displayKeychainSyncForHome:(id)home withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)displayRestrictedBluetoothCharacteristicsWarningWithDeviceName:(id)name completionHandler:(id)handler;
- (void)displayUpgradeNeededWithContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)displayiCloudSwitchWithContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)requestUserPermissionForBridgeAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)requestUserPermissionForDeletionOfHomeWithName:(id)name withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)requestUserPermissionForLegacyWACAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)requestUserPermissionForRemovalOfRouter:(id)router accessoriesRequiringManualReconfiguration:(id)reconfiguration withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)requestUserPermissionForRemovalOfSpecificWiFiCredentialedAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)requestUserPermissionForUnauthenticatedAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)requestUserPermissionForUnauthenticatedAliroLockWithContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)requestUserPermissionWithAccessoryPPIDInfo:(id)info name:(id)name category:(id)category withContext:(id)context queue:(id)queue completionHandler:(id)handler;
- (void)setCurrentNotification:(__CFUserNotification *)notification;
- (void)showUserDialogForIncompatibleAccessory:(id)accessory name:(id)name category:(id)category withContext:(id)context queue:(id)queue completionHandler:(id)handler;
@end

@implementation HMDUIDialogPresenter

- (BOOL)_presentDialogWithInfo:(id)info options:(unint64_t)options targetResponse:(unint64_t)response textField:(id *)field withContext:(id)context selectedByPeerDevice:(BOOL *)device timeout:(double)timeout
{
  contextCopy = context;
  error = -1;
  v17 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], timeout, options, &error, info);
  if (error || ![(HMDUIDialogPresenter *)self _addCurrentNotification:v17 withContext:contextCopy]|| (v21 = 0, CFUserNotificationReceiveResponse(v17, 0.0, &v21)) || (v21 & 3) != response)
  {
    v18 = 0;
  }

  else
  {
    if (field)
    {
      *field = CFUserNotificationGetResponseValue(v17, *MEMORY[0x277CBF238], 0);
    }

    v18 = 1;
  }

  v19 = [(HMDUIDialogPresenter *)self _removeCurrentNotification:v17 currentSelection:v18 selectedByPeerDevice:device andContext:contextCopy];
  if (v17)
  {
    CFRelease(v17);
  }

  return v19;
}

- (void)displayRestrictedBluetoothCharacteristicsWarningWithDeviceName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  workQueue = [(HMDUIDialogPresenter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__HMDUIDialogPresenter_displayRestrictedBluetoothCharacteristicsWarningWithDeviceName_completionHandler___block_invoke;
  block[3] = &unk_278689F98;
  v12 = nameCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = nameCopy;
  dispatch_async(workQueue, block);
}

void __105__HMDUIDialogPresenter_displayRestrictedBluetoothCharacteristicsWarningWithDeviceName_completionHandler___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = HMDLocalizedStringForKey(@"RESTRICTED_BT_CHARS_ACCESS_TITLE");
  v3 = MEMORY[0x277CCACA8];
  v4 = HMDLocalizedStringForKey(@"RESTRICTED_BT_CHARS_ACCESS_MESSAGE");
  v16 = *(a1 + 32);
  v17 = 0;
  v5 = [v3 localizedStringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:&v17, v16];
  v6 = v17;

  v7 = v5;
  if (!v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138544130;
      v21 = v10;
      v22 = 2112;
      v23 = @"RESTRICTED_BT_CHARS_ACCESS_MESSAGE";
      v24 = 2112;
      v25 = @"%@";
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v7 = @"RESTRICTED_BT_CHARS_ACCESS_MESSAGE";
  }

  v11 = v7;

  v12 = HMDLocalizedStringForKey(@"OK");
  v13 = *MEMORY[0x277CBF198];
  v18[0] = *MEMORY[0x277CBF188];
  v18[1] = v13;
  v19[0] = v2;
  v19[1] = v11;
  v18[2] = *MEMORY[0x277CBF1E8];
  v19[2] = v12;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  [*(a1 + 40) _presentDialogWithInfo:v14 options:0 textField:0 withContext:0];
  (*(*(a1 + 48) + 16))();

  v15 = *MEMORY[0x277D85DE8];
}

- (void)displayExecutionErrorOfTrigger:(id)trigger partialSuccess:(BOOL)success context:(id)context completionQueue:(id)queue completionHandler:(id)handler
{
  triggerCopy = trigger;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  workQueue = [(HMDUIDialogPresenter *)self workQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __112__HMDUIDialogPresenter_displayExecutionErrorOfTrigger_partialSuccess_context_completionQueue_completionHandler___block_invoke;
  v21[3] = &unk_27867A020;
  v21[4] = self;
  v22 = contextCopy;
  v24 = triggerCopy;
  v25 = handlerCopy;
  successCopy = success;
  v23 = queueCopy;
  v17 = triggerCopy;
  v18 = handlerCopy;
  v19 = queueCopy;
  v20 = contextCopy;
  dispatch_async(workQueue, v21);
}

void __112__HMDUIDialogPresenter_displayExecutionErrorOfTrigger_partialSuccess_context_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _addToPendingContext:*(a1 + 40)])
  {
    if (*(a1 + 72) == 1)
    {
      v2 = HMDLocalizedStringForKey(@"TRIGGER_EXECUTION_ERROR_TITLE_PARTIAL_SUCCESS");
      v3 = MEMORY[0x277CCACA8];
      v4 = HMDLocalizedStringForKey(@"TRIGGER_EXECUTION_ERROR_BODY_PARTIAL_SUCCESS");
      v32 = 0;
      v5 = [v3 localizedStringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:&v32, *(a1 + 56)];
      v6 = v32;

      if (!v5)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = HMFGetOSLogHandle();
        v5 = @"TRIGGER_EXECUTION_ERROR_BODY_PARTIAL_SUCCESS";
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = HMFGetLogIdentifier();
          *buf = 138544130;
          v39 = v9;
          v40 = 2112;
          v41 = @"TRIGGER_EXECUTION_ERROR_BODY_PARTIAL_SUCCESS";
          v42 = 2112;
          v43 = @"%@";
          v44 = 2112;
          v45 = v6;
LABEL_13:
          _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v2 = HMDLocalizedStringForKey(@"TRIGGER_EXECUTION_ERROR_TITLE");
      v12 = MEMORY[0x277CCACA8];
      v13 = HMDLocalizedStringForKey(@"TRIGGER_EXECUTION_ERROR_BODY");
      v31 = 0;
      v5 = [v12 localizedStringWithValidatedFormat:v13 validFormatSpecifiers:@"%@" error:&v31, *(a1 + 56)];
      v6 = v31;

      if (!v5)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = HMFGetOSLogHandle();
        v5 = @"TRIGGER_EXECUTION_ERROR_BODY";
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = HMFGetLogIdentifier();
          *buf = 138544130;
          v39 = v9;
          v40 = 2112;
          v41 = @"TRIGGER_EXECUTION_ERROR_BODY";
          v42 = 2112;
          v43 = @"%@";
          v44 = 2112;
          v45 = v6;
          goto LABEL_13;
        }

LABEL_14:

        objc_autoreleasePoolPop(v7);
        v14 = 0;
LABEL_15:
        v15 = v5;

        v16 = HMDLocalizedStringForKey(@"CLOSE");
        v17 = HMDLocalizedStringForKey(@"OPEN_HOME_APP");
        v18 = *MEMORY[0x277CBF198];
        v36[0] = *MEMORY[0x277CBF188];
        v36[1] = v18;
        v37[0] = v2;
        v37[1] = v15;
        v19 = *MEMORY[0x277CBF1C0];
        v36[2] = *MEMORY[0x277CBF1E8];
        v36[3] = v19;
        v37[2] = v17;
        v37[3] = v16;
        v20 = *MEMORY[0x277D67340];
        v36[4] = *MEMORY[0x277CBF1B0];
        v36[5] = v20;
        v37[4] = MEMORY[0x277CBEC38];
        v37[5] = MEMORY[0x277CBEC38];
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:6];
        v22 = [*(a1 + 32) _presentDialogWithInfo:v21 options:0 textField:0 withContext:*(a1 + 40)];
        v23 = *(a1 + 48);
        if (v23)
        {
          v24 = *(a1 + 64);
          if (v24)
          {
            v25 = v22;
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __112__HMDUIDialogPresenter_displayExecutionErrorOfTrigger_partialSuccess_context_completionQueue_completionHandler___block_invoke_166;
            v27[3] = &unk_278687F18;
            v29 = v24;
            v30 = v25;
            v28 = *(a1 + 40);
            dispatch_async(v23, v27);
          }
        }

        goto LABEL_19;
      }
    }

    v14 = v5;
    goto LABEL_15;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = *(a1 + 64);
    if (v11)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __112__HMDUIDialogPresenter_displayExecutionErrorOfTrigger_partialSuccess_context_completionQueue_completionHandler___block_invoke_2;
      block[3] = &unk_27868A7A0;
      v35 = v11;
      v34 = *(a1 + 40);
      dispatch_async(v10, block);

      v2 = v35;
LABEL_19:
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)confirmReportAccessory:(id)accessory context:(id)context completionQueue:(id)queue completionHandler:(id)handler
{
  accessoryCopy = accessory;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__HMDUIDialogPresenter_confirmReportAccessory_context_completionQueue_completionHandler___block_invoke;
    block[3] = &unk_278688978;
    v15 = v19;
    v19[0] = accessoryCopy;
    v19[1] = self;
    v20 = contextCopy;
    v21 = queueCopy;
    v22 = handlerCopy;
    dispatch_async(workQueue, block);

LABEL_6:
    goto LABEL_7;
  }

  if (queueCopy && handlerCopy)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __89__HMDUIDialogPresenter_confirmReportAccessory_context_completionQueue_completionHandler___block_invoke_2;
    v16[3] = &unk_278688B80;
    v15 = &v17;
    v17 = handlerCopy;
    dispatch_async(queueCopy, v16);
    goto LABEL_6;
  }

LABEL_7:
}

void __89__HMDUIDialogPresenter_confirmReportAccessory_context_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDLocalizedStringForKey(@"REPORT_ACCESSORY_TITLE");
  v25 = 0;
  v4 = [v2 localizedStringWithValidatedFormat:v3 validFormatSpecifiers:@"%@" error:&v25, *(a1 + 32)];
  v5 = v25;

  v6 = v4;
  if (!v4)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138544130;
      v29 = v9;
      v30 = 2112;
      v31 = @"REPORT_ACCESSORY_TITLE";
      v32 = 2112;
      v33 = @"%@";
      v34 = 2112;
      v35 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    v6 = @"REPORT_ACCESSORY_TITLE";
  }

  v10 = v6;

  v11 = HMDLocalizedStringForKey(@"REPORT_ACCESSORY_DESCRIPTION");
  v12 = HMDLocalizedStringForKey(@"NOT_NOW");
  v13 = HMDLocalizedStringForKey(@"REPORT_PROBLEM");
  v14 = *MEMORY[0x277CBF198];
  v26[0] = *MEMORY[0x277CBF188];
  v26[1] = v14;
  v27[0] = v10;
  v27[1] = v11;
  v15 = *MEMORY[0x277CBF1C0];
  v26[2] = *MEMORY[0x277CBF218];
  v26[3] = v15;
  v27[2] = v12;
  v27[3] = v13;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v17 = [*(a1 + 40) _presentDialogWithInfo:v16 options:35 targetResponse:1 textField:0 withContext:*(a1 + 48)];
  v18 = *(a1 + 56);
  if (v18)
  {
    v19 = *(a1 + 64);
    if (v19)
    {
      v20 = v17;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __89__HMDUIDialogPresenter_confirmReportAccessory_context_completionQueue_completionHandler___block_invoke_147;
      block[3] = &unk_2786750D0;
      v23 = v19;
      v24 = v20;
      dispatch_async(v18, block);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_displayInternalTTRErrorWithContext:(id)context message:(id)message completionHandler:(id)handler
{
  v19[4] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  contextCopy = context;
  v11 = HMDLocalizedStringForKey(@"REPORT_PROBLEM");
  v12 = HMDLocalizedStringForKey(@"NOT_NOW");
  v13 = *MEMORY[0x277CBF198];
  v18[0] = *MEMORY[0x277CBF188];
  v18[1] = v13;
  v19[0] = v11;
  v19[1] = messageCopy;
  v14 = *MEMORY[0x277CBF1E8];
  v18[2] = *MEMORY[0x277CBF218];
  v18[3] = v14;
  v19[2] = v12;
  v19[3] = @"Tap-to-Radar";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v15 options:0 textField:0 withContext:contextCopy];
  handlerCopy[2](handlerCopy, v16);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)displayInternalTTRErrorWithContext:(id)context message:(id)message waitForResponse:(BOOL)response completionHandler:(id)handler
{
  responseCopy = response;
  contextCopy = context;
  messageCopy = message;
  handlerCopy = handler;
  if (isInternalBuild() && [(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__HMDUIDialogPresenter_displayInternalTTRErrorWithContext_message_waitForResponse_completionHandler___block_invoke;
    block[3] = &unk_278689AB8;
    block[4] = self;
    v20 = contextCopy;
    v21 = messageCopy;
    v22 = handlerCopy;
    dispatch_async(workQueue, block);

    v14 = v20;
  }

  else
  {
    workQueue2 = [(HMDUIDialogPresenter *)self workQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __101__HMDUIDialogPresenter_displayInternalTTRErrorWithContext_message_waitForResponse_completionHandler___block_invoke_2;
    v17[3] = &unk_278688B80;
    v18 = handlerCopy;
    dispatch_async(workQueue2, v17);

    v14 = v18;
  }

  if (responseCopy)
  {
    workQueue3 = [(HMDUIDialogPresenter *)self workQueue];
    dispatch_sync(workQueue3, &__block_literal_global_131);
  }
}

- (void)_displayUpgradeNeededWithContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v21[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queueCopy = queue;
  contextCopy = context;
  v11 = HMDLocalizedStringForKey(@"OS_UPGRADE_NEEDED_TITLE");
  v12 = HMDLocalizedStringForKey(@"OS_UPGRADE_NEEDED_INFO");
  v13 = HMDLocalizedStringForKey(@"OK");
  v14 = *MEMORY[0x277CBF198];
  v20[0] = *MEMORY[0x277CBF188];
  v20[1] = v14;
  v21[0] = v11;
  v21[1] = v12;
  v20[2] = *MEMORY[0x277CBF1E8];
  v21[2] = v13;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v15 options:0 textField:0 withContext:contextCopy];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __81__HMDUIDialogPresenter__displayUpgradeNeededWithContext_queue_completionHandler___block_invoke;
  v18[3] = &unk_278688B80;
  v19 = handlerCopy;
  v16 = handlerCopy;
  dispatch_async(queueCopy, v18);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)displayUpgradeNeededWithContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__HMDUIDialogPresenter_displayUpgradeNeededWithContext_queue_completionHandler___block_invoke;
    block[3] = &unk_278689AB8;
    block[4] = self;
    v18 = contextCopy;
    v19 = queueCopy;
    v20 = handlerCopy;
    v12 = handlerCopy;
    dispatch_async(workQueue, block);

    v13 = v18;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__HMDUIDialogPresenter_displayUpgradeNeededWithContext_queue_completionHandler___block_invoke_2;
    v15[3] = &unk_278688B80;
    v16 = handlerCopy;
    v14 = handlerCopy;
    dispatch_async(queueCopy, v15);
    v13 = v16;
  }
}

- (void)_displayiCloudSwitchWithContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v24[4] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queueCopy = queue;
  contextCopy = context;
  v11 = HMDLocalizedStringForKey(@"ENABLE_ICLOUD_SWITCH_TITLE");
  v12 = HMDLocalizedStringForKey(@"ICLOUD_SWITCH_INFO");
  v13 = HMDLocalizedStringForKey(@"CANCEL");
  v14 = HMDLocalizedStringForKey(@"USE_ICLOUD");
  v15 = *MEMORY[0x277CBF198];
  v23[0] = *MEMORY[0x277CBF188];
  v23[1] = v15;
  v24[0] = v11;
  v24[1] = v12;
  v16 = *MEMORY[0x277CBF1C0];
  v23[2] = *MEMORY[0x277CBF1E8];
  v23[3] = v16;
  v24[2] = v14;
  v24[3] = v13;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
  LOBYTE(self) = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v17 options:0 textField:0 withContext:contextCopy];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMDUIDialogPresenter__displayiCloudSwitchWithContext_queue_completionHandler___block_invoke;
  block[3] = &unk_2786750D0;
  v21 = handlerCopy;
  selfCopy = self;
  v18 = handlerCopy;
  dispatch_async(queueCopy, block);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)displayiCloudSwitchWithContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HMDUIDialogPresenter_displayiCloudSwitchWithContext_queue_completionHandler___block_invoke;
    block[3] = &unk_278689AB8;
    block[4] = self;
    v18 = contextCopy;
    v19 = queueCopy;
    v20 = handlerCopy;
    v12 = handlerCopy;
    dispatch_async(workQueue, block);

    v13 = v18;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __79__HMDUIDialogPresenter_displayiCloudSwitchWithContext_queue_completionHandler___block_invoke_2;
    v15[3] = &unk_278688B80;
    v16 = handlerCopy;
    v14 = handlerCopy;
    dispatch_async(queueCopy, v15);
    v13 = v16;
  }
}

- (void)_displayKeychainSyncForHome:(id)home withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v48 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  v14 = HMDLocalizedStringForKey(@"ENABLE_KEYCHAIN_SYNC_TITLE");
  v15 = MEMORY[0x277CCACA8];
  v16 = HMDLocalizedStringForKey(@"KEYCHAIN_SYNC_INFO");
  v37 = 0;
  v33 = homeCopy;
  homeCopy = [v15 localizedStringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:&v37, homeCopy];
  v18 = v37;

  v19 = homeCopy;
  if (!homeCopy)
  {
    v32 = handlerCopy;
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138544130;
      v41 = v22;
      v42 = 2112;
      v43 = @"KEYCHAIN_SYNC_INFO";
      v44 = 2112;
      v45 = @"%@";
      v46 = 2112;
      v47 = v18;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v20);
    v19 = @"KEYCHAIN_SYNC_INFO";
    handlerCopy = v32;
  }

  v23 = v19;

  v24 = HMDLocalizedStringForKey(@"SETTINGS");
  v25 = HMDLocalizedStringForKey(@"OK");
  v26 = *MEMORY[0x277CBF198];
  v38[0] = *MEMORY[0x277CBF188];
  v38[1] = v26;
  v39[0] = v14;
  v39[1] = v23;
  v27 = *MEMORY[0x277CBF1C0];
  v38[2] = *MEMORY[0x277CBF1E8];
  v38[3] = v27;
  v39[2] = v25;
  v39[3] = v24;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:4];
  v29 = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v28 options:0 textField:0 withContext:contextCopy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__HMDUIDialogPresenter__displayKeychainSyncForHome_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_2786750D0;
  v35 = handlerCopy;
  v36 = v29;
  v30 = handlerCopy;
  dispatch_async(queueCopy, block);

  v31 = *MEMORY[0x277D85DE8];
}

- (void)displayKeychainSyncForHome:(id)home withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  homeCopy = home;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__HMDUIDialogPresenter_displayKeychainSyncForHome_withContext_queue_completionHandler___block_invoke;
    block[3] = &unk_278688978;
    block[4] = self;
    v21 = homeCopy;
    v22 = contextCopy;
    v23 = queueCopy;
    v24 = handlerCopy;
    v15 = handlerCopy;
    dispatch_async(workQueue, block);

    v16 = v21;
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __87__HMDUIDialogPresenter_displayKeychainSyncForHome_withContext_queue_completionHandler___block_invoke_2;
    v18[3] = &unk_278688B80;
    v19 = handlerCopy;
    v17 = handlerCopy;
    dispatch_async(queueCopy, v18);
    v16 = v19;
  }
}

- (void)_requestUserPermissionForLegacyWACAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v50 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  v13 = HMDLocalizedStringForKey(@"ACCESSORY_LEGACYWAC_TITLE");
  v14 = MEMORY[0x277CCACA8];
  v15 = localizedWiFiStringKey();
  v16 = HMDLocalizedStringForKey(v15);
  v39 = 0;
  v35 = accessoryCopy;
  accessoryCopy = [v14 localizedStringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:&v39, accessoryCopy];
  v18 = v39;

  if (accessoryCopy)
  {
    v19 = accessoryCopy;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v22 = v33 = v20;
      v23 = localizedWiFiStringKey();
      *buf = 138544130;
      v43 = v22;
      v44 = 2112;
      v45 = v23;
      v46 = 2112;
      v47 = @"%@";
      v48 = 2112;
      v49 = v18;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

      v20 = v33;
    }

    objc_autoreleasePoolPop(v20);
    v19 = localizedWiFiStringKey();
  }

  v24 = v19;

  v25 = HMDLocalizedStringForKey(@"DONT_ALLOW");
  v26 = HMDLocalizedStringForKey(@"ALLOW");
  v27 = *MEMORY[0x277CBF198];
  v40[0] = *MEMORY[0x277CBF188];
  v40[1] = v27;
  v41[0] = v13;
  v41[1] = v24;
  v28 = *MEMORY[0x277CBF1E8];
  v40[2] = *MEMORY[0x277CBF1C0];
  v40[3] = v28;
  v41[2] = v25;
  v41[3] = v26;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:4];
  v30 = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v29 options:0 textField:0 withContext:contextCopy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__HMDUIDialogPresenter__requestUserPermissionForLegacyWACAccessory_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_2786750D0;
  v37 = handlerCopy;
  v38 = v30;
  v31 = handlerCopy;
  dispatch_async(queueCopy, block);

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_showUserDialogForIncompatibleAccessory:(id)accessory name:(id)name category:(id)category withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v24[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queueCopy = queue;
  contextCopy = context;
  v14 = HMDLocalizedStringForKey(@"ACCESSORY_INCOMPATIBLE_HEADER");
  v15 = HMDLocalizedStringForKey(@"ACCESSORY_INCOMPATIBLE_DETAIL");
  v16 = HMDLocalizedStringForKey(@"OK");
  v17 = *MEMORY[0x277CBF198];
  v23[0] = *MEMORY[0x277CBF188];
  v23[1] = v17;
  v24[0] = v14;
  v24[1] = v15;
  v23[2] = *MEMORY[0x277CBF1E8];
  v24[2] = v16;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v18 options:0 textField:0 withContext:contextCopy];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __114__HMDUIDialogPresenter__showUserDialogForIncompatibleAccessory_name_category_withContext_queue_completionHandler___block_invoke;
  v21[3] = &unk_278688B80;
  v22 = handlerCopy;
  v19 = handlerCopy;
  dispatch_async(queueCopy, v21);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)showUserDialogForIncompatibleAccessory:(id)accessory name:(id)name category:(id)category withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  accessoryCopy = accessory;
  nameCopy = name;
  categoryCopy = category;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __113__HMDUIDialogPresenter_showUserDialogForIncompatibleAccessory_name_category_withContext_queue_completionHandler___block_invoke;
    block[3] = &unk_2786873D8;
    block[4] = self;
    v27 = accessoryCopy;
    v28 = nameCopy;
    v29 = categoryCopy;
    v30 = contextCopy;
    v31 = queueCopy;
    v32 = handlerCopy;
    v21 = handlerCopy;
    dispatch_async(workQueue, block);

    v22 = v27;
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __113__HMDUIDialogPresenter_showUserDialogForIncompatibleAccessory_name_category_withContext_queue_completionHandler___block_invoke_2;
    v24[3] = &unk_278688B80;
    v25 = handlerCopy;
    v23 = handlerCopy;
    dispatch_async(queueCopy, v24);
    v22 = v25;
  }
}

- (void)_requestUserPermissionForRemovalOfSpecificWiFiCredentialedAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v45[5] = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  v44[0] = *MEMORY[0x277CBF188];
  v14 = MEMORY[0x277CCACA8];
  v15 = HMDLocalizedStringForKey(@"ACCESSORY_WITH_SPECIFIC_WIFI_CREDENTIAL_REMOVAL_CONFIRM_TITLE");
  v35 = 0;
  v31 = accessoryCopy;
  accessoryCopy = [v14 localizedStringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:&v35, accessoryCopy];
  v17 = v35;

  v18 = accessoryCopy;
  if (!accessoryCopy)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v21 = v30 = v19;
      *buf = 138544130;
      v37 = v21;
      v38 = 2112;
      v39 = @"ACCESSORY_WITH_SPECIFIC_WIFI_CREDENTIAL_REMOVAL_CONFIRM_TITLE";
      v40 = 2112;
      v41 = @"%@";
      v42 = 2112;
      v43 = v17;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

      v19 = v30;
    }

    objc_autoreleasePoolPop(v19);
    v18 = @"ACCESSORY_WITH_SPECIFIC_WIFI_CREDENTIAL_REMOVAL_CONFIRM_TITLE";
  }

  v22 = v18;

  v45[0] = v22;
  v44[1] = *MEMORY[0x277CBF198];
  v23 = HMDLocalizedStringForKey(@"ACCESSORY_WITH_SPECIFIC_WIFI_CREDENTIAL_REMOVAL_CONFIRM_DETAIL");
  v45[1] = v23;
  v44[2] = *MEMORY[0x277CBF1C0];
  v24 = HMDLocalizedStringForKey(@"CANCEL");
  v45[2] = v24;
  v44[3] = *MEMORY[0x277CBF1E8];
  v25 = HMDLocalizedStringForKey(@"REMOVE");
  v44[4] = *MEMORY[0x277D672F8];
  v45[3] = v25;
  v45[4] = &unk_283E72368;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:5];

  v27 = [(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy];
  if (v27)
  {
    LOBYTE(v27) = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v26 options:0 textField:0 withContext:contextCopy];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__HMDUIDialogPresenter__requestUserPermissionForRemovalOfSpecificWiFiCredentialedAccessory_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_2786750D0;
  v33 = handlerCopy;
  v34 = v27;
  v28 = handlerCopy;
  dispatch_async(queueCopy, block);

  v29 = *MEMORY[0x277D85DE8];
}

- (void)requestUserPermissionForRemovalOfSpecificWiFiCredentialedAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  accessoryCopy = accessory;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  workQueue = [(HMDUIDialogPresenter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __127__HMDUIDialogPresenter_requestUserPermissionForRemovalOfSpecificWiFiCredentialedAccessory_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_278688978;
  block[4] = self;
  v20 = accessoryCopy;
  v21 = contextCopy;
  v22 = queueCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = queueCopy;
  v17 = contextCopy;
  v18 = accessoryCopy;
  dispatch_async(workQueue, block);
}

- (void)_requestUserPermissionForRemovalOfRouter:(id)router accessoriesRequiringManualReconfiguration:(id)reconfiguration withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v72[5] = *MEMORY[0x277D85DE8];
  routerCopy = router;
  reconfigurationCopy = reconfiguration;
  contextCopy = context;
  queue = queue;
  handlerCopy = handler;
  v54 = reconfigurationCopy;
  v13 = [reconfigurationCopy count];
  v47 = *MEMORY[0x277CBF188];
  v71[0] = *MEMORY[0x277CBF188];
  v14 = localizedWiFiStringKey();
  v15 = HMDLocalizedStringForKey(v14);
  v72[0] = v15;
  v16 = *MEMORY[0x277CBF198];
  v71[1] = *MEMORY[0x277CBF198];
  v17 = localizedWiFiStringKey();
  v18 = HMDLocalizedStringForKey(v17);
  v72[1] = v18;
  v51 = *MEMORY[0x277CBF1C0];
  v71[2] = *MEMORY[0x277CBF1C0];
  v19 = HMDLocalizedStringForKey(@"CANCEL");
  v72[2] = v19;
  v50 = *MEMORY[0x277CBF1E8];
  v71[3] = *MEMORY[0x277CBF1E8];
  if (v13)
  {
    v20 = @"CONTINUE";
  }

  else
  {
    v20 = @"REMOVE";
  }

  if (v13)
  {
    v21 = &unk_283E72380;
  }

  else
  {
    v21 = &unk_283E72368;
  }

  v22 = HMDLocalizedStringForKey(v20);
  v49 = *MEMORY[0x277D672F8];
  v71[4] = *MEMORY[0x277D672F8];
  v72[3] = v22;
  v72[4] = v21;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:5];

  v24 = contextCopy;
  if (![(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    v25 = v23;
    v27 = 0;
    goto LABEL_17;
  }

  v25 = v23;
  v26 = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v23 options:0 textField:0 withContext:v24];
  v27 = v26;
  if (!v26)
  {
LABEL_17:
    v28 = v54;
    goto LABEL_20;
  }

  v28 = v54;
  if (v13)
  {
    v46 = v24;
    v29 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v54];
    v69[0] = v47;
    v30 = HMDLocalizedStringForKey(@"ROUTER_REMOVAL_CONFIRM_MANUAL_RECONFIGURATION_TITLE");
    v70[0] = v30;
    v69[1] = v16;
    v31 = v29;
    v32 = MEMORY[0x277CCACA8];
    v33 = HMDLocalizedStringForKey(@"ROUTER_REMOVAL_CONFIRM_MANUAL_RECONFIGURATION_DETAIL");
    v60 = 0;
    v34 = [v32 localizedStringWithValidatedFormat:v33 validFormatSpecifiers:@"%@" error:&v60, v29];
    v35 = v60;

    v36 = v34;
    if (!v34)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v39 = v48 = v37;
        *buf = 138544130;
        v62 = v39;
        v63 = 2112;
        v64 = @"ROUTER_REMOVAL_CONFIRM_MANUAL_RECONFIGURATION_DETAIL";
        v65 = 2112;
        v66 = @"%@";
        v67 = 2112;
        v68 = v35;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

        v37 = v48;
      }

      objc_autoreleasePoolPop(v37);
      v36 = @"ROUTER_REMOVAL_CONFIRM_MANUAL_RECONFIGURATION_DETAIL";
    }

    v40 = v36;

    v70[1] = v40;
    v69[2] = v51;
    v41 = HMDLocalizedStringForKey(@"CANCEL");
    v70[2] = v41;
    v69[3] = v50;
    v42 = HMDLocalizedStringForKey(@"REMOVE");
    v69[4] = v49;
    v70[3] = v42;
    v70[4] = &unk_283E72368;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:5];

    v24 = v46;
    if ([(HMDUIDialogPresenter *)self _addToPendingContext:v46])
    {
      v27 = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v43 options:0 textField:0 withContext:v46];
    }

    else
    {
      v27 = 0;
    }
  }

LABEL_20:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __143__HMDUIDialogPresenter__requestUserPermissionForRemovalOfRouter_accessoriesRequiringManualReconfiguration_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_2786750D0;
  v58 = handlerCopy;
  v59 = v27;
  v44 = handlerCopy;
  dispatch_async(queue, block);

  v45 = *MEMORY[0x277D85DE8];
}

- (void)requestUserPermissionForRemovalOfRouter:(id)router accessoriesRequiringManualReconfiguration:(id)reconfiguration withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  routerCopy = router;
  reconfigurationCopy = reconfiguration;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  workQueue = [(HMDUIDialogPresenter *)self workQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __142__HMDUIDialogPresenter_requestUserPermissionForRemovalOfRouter_accessoriesRequiringManualReconfiguration_withContext_queue_completionHandler___block_invoke;
  v23[3] = &unk_278688B58;
  v23[4] = self;
  v24 = routerCopy;
  v25 = reconfigurationCopy;
  v26 = contextCopy;
  v27 = queueCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = queueCopy;
  v20 = contextCopy;
  v21 = reconfigurationCopy;
  v22 = routerCopy;
  dispatch_async(workQueue, v23);
}

- (void)_requestUserPermissionForDeletionOfHomeWithName:(id)name withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v54 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  contextCopy = context;
  queue = queue;
  handlerCopy = handler;
  v11 = MEMORY[0x277CCACA8];
  v12 = HMDLocalizedStringForKey(@"HOME_DELETION_CONFIRM_TITLE");
  v43 = 0;
  nameCopy = [v11 localizedStringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:&v43, nameCopy];
  v14 = v43;

  v15 = nameCopy;
  if (!nameCopy)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138544130;
      v47 = v18;
      v48 = 2112;
      v49 = @"HOME_DELETION_CONFIRM_TITLE";
      v50 = 2112;
      v51 = @"%@";
      v52 = 2112;
      v53 = v14;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v16);
    v15 = @"HOME_DELETION_CONFIRM_TITLE";
  }

  v19 = v15;

  v20 = MEMORY[0x277CCACA8];
  v21 = HMDLocalizedStringForKey(@"HOME_DELETION_CONFIRM_BUTTON");
  v42 = 0;
  nameCopy2 = [v20 localizedStringWithValidatedFormat:v21 validFormatSpecifiers:@"%@" error:&v42, nameCopy];
  v23 = v42;

  v24 = nameCopy2;
  if (!nameCopy2)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138544130;
      v47 = v27;
      v48 = 2112;
      v49 = @"HOME_DELETION_CONFIRM_BUTTON";
      v50 = 2112;
      v51 = @"%@";
      v52 = 2112;
      v53 = v23;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v25);
    v24 = @"HOME_DELETION_CONFIRM_BUTTON";
  }

  v28 = v24;

  v29 = HMDLocalizedStringForKey(@"DONT_ALLOW");
  v30 = *MEMORY[0x277CBF1C0];
  v44[0] = *MEMORY[0x277CBF188];
  v44[1] = v30;
  v45[0] = v19;
  v45[1] = v28;
  v31 = *MEMORY[0x277CBF1E8];
  v44[2] = *MEMORY[0x277D672B0];
  v44[3] = v31;
  v45[2] = &unk_283E72368;
  v45[3] = v29;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:4];
  v33 = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v32 options:0 textField:0 withContext:contextCopy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__HMDUIDialogPresenter__requestUserPermissionForDeletionOfHomeWithName_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_2786750D0;
  v40 = handlerCopy;
  v41 = v33;
  v34 = handlerCopy;
  dispatch_async(queue, block);

  v35 = *MEMORY[0x277D85DE8];
}

- (void)requestUserPermissionForDeletionOfHomeWithName:(id)name withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  nameCopy = name;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __107__HMDUIDialogPresenter_requestUserPermissionForDeletionOfHomeWithName_withContext_queue_completionHandler___block_invoke;
    block[3] = &unk_278688978;
    block[4] = self;
    v21 = nameCopy;
    v22 = contextCopy;
    v23 = queueCopy;
    v24 = handlerCopy;
    v15 = handlerCopy;
    dispatch_async(workQueue, block);

    v16 = v21;
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __107__HMDUIDialogPresenter_requestUserPermissionForDeletionOfHomeWithName_withContext_queue_completionHandler___block_invoke_2;
    v18[3] = &unk_278688B80;
    v19 = handlerCopy;
    v17 = handlerCopy;
    dispatch_async(queueCopy, v18);
    v16 = v19;
  }
}

- (void)_requestUserPermissionWithAccessoryPPIDInfo:(id)info name:(id)name category:(id)category withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v79 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  nameCopy = name;
  categoryCopy = category;
  contextCopy = context;
  queue = queue;
  handlerCopy = handler;
  if ([infoCopy isDenylisted])
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v72 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Accessory is Blacklisted - Rejecting", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __118__HMDUIDialogPresenter__requestUserPermissionWithAccessoryPPIDInfo_name_category_withContext_queue_completionHandler___block_invoke;
    block[3] = &unk_278688B80;
    v68 = handlerCopy;
    v23 = handlerCopy;
    queueCopy2 = queue;
    dispatch_async(queue, block);
    v25 = v68;
  }

  else
  {
    selfCopy2 = self;
    v23 = HMDLocalizedStringForKey(@"ACCESSORY_CONFIRM_PPID_INFO_TITLE");
    v60 = categoryCopy;
    v58 = contextCopy;
    if (([infoCopy isCertified] & 1) == 0)
    {
      v26 = HMDLocalizedStringForKey(@"ACCESSORY_CONFIRM_UNCERTIFIED_PPID_INFO_TITLE");

      v23 = v26;
    }

    v27 = MEMORY[0x277CCACA8];
    v28 = HMDLocalizedStringForKey(@"ACCESSORY_CONFIRM_UNKNOWN_DETAIL");
    v66 = 0;
    nameCopy = [v27 localizedStringWithValidatedFormat:v28 validFormatSpecifiers:@"%@" error:&v66, nameCopy];
    v30 = v66;

    v31 = nameCopy;
    if (!nameCopy)
    {
      v57 = nameCopy;
      v32 = objc_autoreleasePoolPush();
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138544130;
        v72 = v34;
        v73 = 2112;
        v74 = @"ACCESSORY_CONFIRM_UNKNOWN_DETAIL";
        v75 = 2112;
        v76 = @"%@";
        v77 = 2112;
        v78 = v30;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v32);
      v31 = @"ACCESSORY_CONFIRM_UNKNOWN_DETAIL";
      nameCopy = v57;
    }

    v25 = v31;

    category = [infoCopy category];
    if (category)
    {
      v36 = category;
      manufacturer = [infoCopy manufacturer];

      if (manufacturer)
      {
        v38 = MEMORY[0x277CCACA8];
        v39 = HMDLocalizedStringForKey(@"ACCESSORY_CONFIRM_PPID_DETAIL");
        v65 = 0;
        [infoCopy manufacturer];
        v41 = v40 = nameCopy;
        v42 = [v38 localizedStringWithValidatedFormat:v39 validFormatSpecifiers:@"%@ %@" error:&v65, v60, v41];
        v43 = v65;

        nameCopy = v40;
        v44 = v42;
        if (!v42)
        {
          v45 = objc_autoreleasePoolPush();
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138544130;
            v72 = v47;
            v73 = 2112;
            v74 = @"ACCESSORY_CONFIRM_PPID_DETAIL";
            v75 = 2112;
            v76 = @"%@ %@";
            v77 = 2112;
            v78 = v43;
            _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

            nameCopy = v40;
          }

          objc_autoreleasePoolPop(v45);
          v44 = @"ACCESSORY_CONFIRM_PPID_DETAIL";
        }

        v48 = v44;

        v25 = v48;
      }
    }

    v49 = HMDLocalizedStringForKey(@"DONT_ALLOW");
    v50 = HMDLocalizedStringForKey(@"ALLOW");
    v51 = *MEMORY[0x277CBF198];
    v69[0] = *MEMORY[0x277CBF188];
    v69[1] = v51;
    v70[0] = v23;
    v70[1] = v25;
    v52 = *MEMORY[0x277CBF1E8];
    v69[2] = *MEMORY[0x277CBF1C0];
    v69[3] = v52;
    v70[2] = v49;
    v70[3] = v50;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:4];
    contextCopy = v58;
    v54 = [(HMDUIDialogPresenter *)selfCopy2 _presentDialogWithInfo:v53 options:0 textField:0 withContext:v58];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __118__HMDUIDialogPresenter__requestUserPermissionWithAccessoryPPIDInfo_name_category_withContext_queue_completionHandler___block_invoke_62;
    v62[3] = &unk_2786750D0;
    v63 = handlerCopy;
    v64 = v54;
    v55 = handlerCopy;
    queueCopy2 = queue;
    dispatch_async(queue, v62);

    categoryCopy = v60;
  }

  v56 = *MEMORY[0x277D85DE8];
}

- (void)requestUserPermissionWithAccessoryPPIDInfo:(id)info name:(id)name category:(id)category withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  infoCopy = info;
  nameCopy = name;
  categoryCopy = category;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __117__HMDUIDialogPresenter_requestUserPermissionWithAccessoryPPIDInfo_name_category_withContext_queue_completionHandler___block_invoke;
    block[3] = &unk_2786873D8;
    block[4] = self;
    v27 = infoCopy;
    v28 = nameCopy;
    v29 = categoryCopy;
    v30 = contextCopy;
    v31 = queueCopy;
    v32 = handlerCopy;
    v21 = handlerCopy;
    dispatch_async(workQueue, block);

    v22 = v27;
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __117__HMDUIDialogPresenter_requestUserPermissionWithAccessoryPPIDInfo_name_category_withContext_queue_completionHandler___block_invoke_2;
    v24[3] = &unk_278688B80;
    v25 = handlerCopy;
    v23 = handlerCopy;
    dispatch_async(queueCopy, v24);
    v22 = v25;
  }
}

- (void)requestUserPermissionForLegacyWACAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  accessoryCopy = accessory;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__HMDUIDialogPresenter_requestUserPermissionForLegacyWACAccessory_withContext_queue_completionHandler___block_invoke;
    block[3] = &unk_278688978;
    block[4] = self;
    v21 = accessoryCopy;
    v22 = contextCopy;
    v23 = queueCopy;
    v24 = handlerCopy;
    v15 = handlerCopy;
    dispatch_async(workQueue, block);

    v16 = v21;
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __103__HMDUIDialogPresenter_requestUserPermissionForLegacyWACAccessory_withContext_queue_completionHandler___block_invoke_2;
    v18[3] = &unk_278688B80;
    v19 = handlerCopy;
    v17 = handlerCopy;
    dispatch_async(queueCopy, v18);
    v16 = v19;
  }
}

- (void)_requestUserPermissionForBridgeAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v25[4] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queueCopy = queue;
  contextCopy = context;
  v12 = HMDLocalizedStringForKey(@"BRIDGE_ACCESSORIES_HOME_BEHAVIOR_TITLE");
  v13 = HMDLocalizedStringForKey(@"BRIDGE_ACCESSORIES_HOME_BEHAVIOR_DETAIL");
  v14 = HMDLocalizedStringForKey(@"OK");
  v15 = HMDLocalizedStringForKey(@"CANCEL");
  v16 = *MEMORY[0x277CBF198];
  v24[0] = *MEMORY[0x277CBF188];
  v24[1] = v16;
  v25[0] = v12;
  v25[1] = v13;
  v17 = *MEMORY[0x277CBF1E8];
  v24[2] = *MEMORY[0x277CBF1C0];
  v24[3] = v17;
  v25[2] = v14;
  v25[3] = v15;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  LOBYTE(self) = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v18 options:0 textField:0 withContext:contextCopy];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__HMDUIDialogPresenter__requestUserPermissionForBridgeAccessory_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_2786750D0;
  v22 = handlerCopy;
  selfCopy = self;
  v19 = handlerCopy;
  dispatch_async(queueCopy, block);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)requestUserPermissionForBridgeAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  accessoryCopy = accessory;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__HMDUIDialogPresenter_requestUserPermissionForBridgeAccessory_withContext_queue_completionHandler___block_invoke;
    block[3] = &unk_278688978;
    block[4] = self;
    v21 = accessoryCopy;
    v22 = contextCopy;
    v23 = queueCopy;
    v24 = handlerCopy;
    v15 = handlerCopy;
    dispatch_async(workQueue, block);

    v16 = v21;
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __100__HMDUIDialogPresenter_requestUserPermissionForBridgeAccessory_withContext_queue_completionHandler___block_invoke_2;
    v18[3] = &unk_278688B80;
    v19 = handlerCopy;
    v17 = handlerCopy;
    dispatch_async(queueCopy, v18);
    v16 = v19;
  }
}

- (void)_requestUserPermissionForUnauthenticatedAliroLockWithContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v25[4] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queueCopy = queue;
  contextCopy = context;
  workQueue = [(HMDUIDialogPresenter *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = HMDLocalizedStringForKey(@"NOAUTH_ALIRO_LOCK_TITLE");
  v13 = HMDLocalizedStringForKey(@"NOAUTH_ALIRO_LOCK_BODY");
  v14 = HMDLocalizedStringForKey(@"CONTINUE");
  v15 = HMDLocalizedStringForKey(@"EXIT_SETUP");
  v16 = *MEMORY[0x277CBF198];
  v24[0] = *MEMORY[0x277CBF188];
  v24[1] = v16;
  v25[0] = v12;
  v25[1] = v13;
  v17 = *MEMORY[0x277CBF1E8];
  v24[2] = *MEMORY[0x277CBF1C0];
  v24[3] = v17;
  v25[2] = v14;
  v25[3] = v15;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  LOBYTE(self) = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v18 options:0 textField:0 withContext:contextCopy];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__HMDUIDialogPresenter__requestUserPermissionForUnauthenticatedAliroLockWithContext_queue_completionHandler___block_invoke;
  block[3] = &unk_2786750D0;
  v22 = handlerCopy;
  selfCopy = self;
  v19 = handlerCopy;
  dispatch_async(queueCopy, block);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)requestUserPermissionForUnauthenticatedAliroLockWithContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __108__HMDUIDialogPresenter_requestUserPermissionForUnauthenticatedAliroLockWithContext_queue_completionHandler___block_invoke;
    block[3] = &unk_278689AB8;
    block[4] = self;
    v18 = contextCopy;
    v19 = queueCopy;
    v20 = handlerCopy;
    v12 = handlerCopy;
    dispatch_async(workQueue, block);

    v13 = v18;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __108__HMDUIDialogPresenter_requestUserPermissionForUnauthenticatedAliroLockWithContext_queue_completionHandler___block_invoke_2;
    v15[3] = &unk_278688B80;
    v16 = handlerCopy;
    v14 = handlerCopy;
    dispatch_async(queueCopy, v15);
    v13 = v16;
  }
}

- (void)_requestUserPermissionForUnauthenticatedAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  v25[4] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  queueCopy = queue;
  contextCopy = context;
  v12 = HMDLocalizedStringForKey(@"ACCESSORY_NOAUTH_TITLE");
  v13 = HMDLocalizedStringForKey(@"ACCESSORY_NOAUTH_DETAIL");
  v14 = HMDLocalizedStringForKey(@"ADD_ANYWAY");
  v15 = HMDLocalizedStringForKey(@"CANCEL");
  v16 = *MEMORY[0x277CBF198];
  v24[0] = *MEMORY[0x277CBF188];
  v24[1] = v16;
  v25[0] = v12;
  v25[1] = v13;
  v17 = *MEMORY[0x277CBF1E8];
  v24[2] = *MEMORY[0x277CBF1C0];
  v24[3] = v17;
  v25[2] = v14;
  v25[3] = v15;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
  LOBYTE(self) = [(HMDUIDialogPresenter *)self _presentDialogWithInfo:v18 options:0 textField:0 withContext:contextCopy];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__HMDUIDialogPresenter__requestUserPermissionForUnauthenticatedAccessory_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_2786750D0;
  v22 = handlerCopy;
  selfCopy = self;
  v19 = handlerCopy;
  dispatch_async(queueCopy, block);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)requestUserPermissionForUnauthenticatedAccessory:(id)accessory withContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  accessoryCopy = accessory;
  contextCopy = context;
  queueCopy = queue;
  handlerCopy = handler;
  if ([(HMDUIDialogPresenter *)self _addToPendingContext:contextCopy])
  {
    workQueue = [(HMDUIDialogPresenter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __109__HMDUIDialogPresenter_requestUserPermissionForUnauthenticatedAccessory_withContext_queue_completionHandler___block_invoke;
    block[3] = &unk_278688978;
    block[4] = self;
    v21 = accessoryCopy;
    v22 = contextCopy;
    v23 = queueCopy;
    v24 = handlerCopy;
    v15 = handlerCopy;
    dispatch_async(workQueue, block);

    v16 = v21;
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __109__HMDUIDialogPresenter_requestUserPermissionForUnauthenticatedAccessory_withContext_queue_completionHandler___block_invoke_2;
    v18[3] = &unk_278688B80;
    v19 = handlerCopy;
    v17 = handlerCopy;
    dispatch_async(queueCopy, v18);
    v16 = v19;
  }
}

- (BOOL)_removeCurrentNotification:(__CFUserNotification *)notification currentSelection:(BOOL)selection selectedByPeerDevice:(BOOL *)device andContext:(id)context
{
  contextCopy = context;
  if (device)
  {
    *device = 0;
  }

  os_unfair_lock_lock_with_options();
  pendingContexts = [(HMDUIDialogPresenter *)self pendingContexts];
  [pendingContexts removeObject:contextCopy];

  if ([(HMDUIDialogPresenter *)self currentNotification]&& [(HMDUIDialogPresenter *)self currentNotification]== notification)
  {
    if ([(HMDUIDialogPresenter *)self selectedByPeerDevice])
    {
      selection = [(HMDUIDialogPresenter *)self peerDeviceAcceptedSelection];
      if (device)
      {
        *device = 1;
      }
    }

    [(HMDUIDialogPresenter *)self setCurrentNotification:0];
    [(HMDUIDialogPresenter *)self setCurrentContext:0];
  }

  [(HMDUIDialogPresenter *)self setSelectedByPeerDevice:0];
  [(HMDUIDialogPresenter *)self setPeerDeviceAcceptedSelection:0];
  os_unfair_lock_unlock(&self->_lock);

  return selection;
}

- (BOOL)_addCurrentNotification:(__CFUserNotification *)notification withContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock_with_options();
  pendingContexts = [(HMDUIDialogPresenter *)self pendingContexts];
  v8 = [pendingContexts containsObject:contextCopy];

  if (v8)
  {
    [(HMDUIDialogPresenter *)self setCurrentNotification:notification];
    [(HMDUIDialogPresenter *)self setCurrentContext:contextCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)_addToPendingContextSkippingPlatformChecks:(id)checks
{
  checksCopy = checks;
  if (checksCopy)
  {
    os_unfair_lock_lock_with_options();
    pendingContexts = [(HMDUIDialogPresenter *)self pendingContexts];
    v6 = [pendingContexts containsObject:checksCopy];

    if ((v6 & 1) == 0)
    {
      pendingContexts2 = [(HMDUIDialogPresenter *)self pendingContexts];
      [pendingContexts2 addObject:checksCopy];
    }

    v8 = v6 ^ 1;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_addToPendingContext:(id)context
{
  contextCopy = context;
  v5 = !isAppleTV() && [(HMDUIDialogPresenter *)self _addToPendingContextSkippingPlatformChecks:contextCopy];

  return v5;
}

- (BOOL)_isPendingContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock_with_options();
  pendingContexts = [(HMDUIDialogPresenter *)self pendingContexts];
  v6 = [pendingContexts containsObject:contextCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v6;
}

- (void)dismissPendingDialogWithContext:(id)context queue:(id)queue completionHandler:(id)handler
{
  handlerCopy = handler;
  queue = queue;
  [(HMDUIDialogPresenter *)self dismissPendingDialogWithContext:context];
  dispatch_async(queue, handlerCopy);
}

- (void)dismissPendingDialogWithContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock_with_options();
  currentContext = [(HMDUIDialogPresenter *)self currentContext];
  v5 = [currentContext isEqual:contextCopy];

  if (v5)
  {
    CFUserNotificationCancel([(HMDUIDialogPresenter *)self currentNotification]);
  }

  else
  {
    pendingContexts = [(HMDUIDialogPresenter *)self pendingContexts];
    [pendingContexts removeObject:contextCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setCurrentNotification:(__CFUserNotification *)notification
{
  currentNotification = self->_currentNotification;
  if (currentNotification != notification)
  {
    if (notification)
    {
      CFRetain(notification);
      currentNotification = self->_currentNotification;
    }

    if (currentNotification)
    {
      CFRelease(currentNotification);
    }

    self->_currentNotification = notification;
  }
}

- (void)dealloc
{
  currentNotification = self->_currentNotification;
  if (currentNotification)
  {
    CFRelease(currentNotification);
  }

  v4.receiver = self;
  v4.super_class = HMDUIDialogPresenter;
  [(HMDUIDialogPresenter *)&v4 dealloc];
}

- (HMDUIDialogPresenter)init
{
  v9.receiver = self;
  v9.super_class = HMDUIDialogPresenter;
  v2 = [(HMDUIDialogPresenter *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.dialog", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;

    array = [MEMORY[0x277CBEB18] array];
    pendingContexts = v2->_pendingContexts;
    v2->_pendingContexts = array;
  }

  return v2;
}

+ (id)sharedUIDialogPresenter
{
  if (sharedUIDialogPresenter_onceToken != -1)
  {
    dispatch_once(&sharedUIDialogPresenter_onceToken, &__block_literal_global_62646);
  }

  v3 = sharedUIDialogPresenter_singleton;

  return v3;
}

void __47__HMDUIDialogPresenter_sharedUIDialogPresenter__block_invoke()
{
  v0 = objc_alloc_init(HMDUIDialogPresenter);
  v1 = sharedUIDialogPresenter_singleton;
  sharedUIDialogPresenter_singleton = v0;
}

@end