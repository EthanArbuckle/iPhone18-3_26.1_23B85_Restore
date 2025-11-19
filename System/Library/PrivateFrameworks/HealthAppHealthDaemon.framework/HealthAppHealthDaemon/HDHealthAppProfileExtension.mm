@interface HDHealthAppProfileExtension
- (HDHealthAppProfileExtension)initWithProfile:(id)a3;
- (HDProfile)profile;
- (void)_handleDismissInstruction;
- (void)_handleHoldInstruction;
- (void)_handleSendInstruction;
- (void)_healthAppWasUninstalled:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)daemonReady:(id)a3;
- (void)dealloc;
- (void)notificationSyncClient:(id)a3 didReceiveInstructionWithAction:(int64_t)a4;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation HDHealthAppProfileExtension

- (HDHealthAppProfileExtension)initWithProfile:(id)a3
{
  v4 = a3;
  v51.receiver = self;
  v51.super_class = HDHealthAppProfileExtension;
  v5 = [(HDHealthAppProfileExtension *)&v51 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = [HDHealthAppDataObserver alloc];
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v9 = [(HDHealthAppDataObserver *)v7 initWithProfile:WeakRetained];
    dataObserver = v6->_dataObserver;
    v6->_dataObserver = v9;

    v11 = [HDHealthAppSharingEntryObserver alloc];
    v12 = objc_loadWeakRetained(&v6->_profile);
    v13 = [(HDHealthAppSharingEntryObserver *)v11 initWithProfile:v12];
    sharingEntryObserver = v6->_sharingEntryObserver;
    v6->_sharingEntryObserver = v13;

    v15 = [HDHealthAppLabConceptObserver alloc];
    v16 = objc_loadWeakRetained(&v6->_profile);
    v17 = [(HDHealthAppLabConceptObserver *)v15 initWithProfile:v16];
    labConceptObserver = v6->_labConceptObserver;
    v6->_labConceptObserver = v17;

    v19 = [HDHAHealthAppApplicationInstallationManager alloc];
    v20 = objc_loadWeakRetained(&v6->_profile);
    v21 = [(HDHAHealthAppApplicationInstallationManager *)v19 initWithProfile:v20];
    appInstallationManager = v6->_appInstallationManager;
    v6->_appInstallationManager = v21;

    v23 = [HDHealthAppEmergencySOSManager alloc];
    v24 = objc_loadWeakRetained(&v6->_profile);
    v25 = [(HDHealthAppEmergencySOSManager *)v23 initWithProfile:v24];
    emergencySOSManager = v6->_emergencySOSManager;
    v6->_emergencySOSManager = v25;

    _HKInitializeLogging();
    v27 = HKLogWellnessDashboard();
    v28 = objc_alloc(MEMORY[0x277CCCFE8]);
    v29 = objc_loadWeakRetained(&v6->_profile);
    v30 = [v28 initWithLoggingCategory:v27 healthDataSource:v29];

    v31 = objc_alloc(MEMORY[0x277D105B0]);
    v32 = objc_loadWeakRetained(&v6->_profile);
    v33 = [v31 initWithProfile:v32 eventSubmissionManager:v30 logCategory:v27 eventConstructor:&__block_literal_global];
    dailyAnalyticsManager = v6->_dailyAnalyticsManager;
    v6->_dailyAnalyticsManager = v33;

    v35 = objc_alloc(MEMORY[0x277D107B8]);
    v36 = *MEMORY[0x277CCC1D0];
    v37 = HKCreateSerialDispatchQueue();
    v38 = [v35 initWithProfile:v4 clientIdentifier:v36 queue:v37];
    healthSharingNotificationSyncClient = v6->_healthSharingNotificationSyncClient;
    v6->_healthSharingNotificationSyncClient = v38;

    [(HDNotificationSyncClient *)v6->_healthSharingNotificationSyncClient setDelegate:v6];
    v40 = objc_alloc(MEMORY[0x277D107B8]);
    v41 = objc_loadWeakRetained(&v6->_profile);
    v42 = HKCreateSerialDispatchQueue();
    v43 = [v40 initWithProfile:v41 clientIdentifier:@"NewDeviceSetup" queue:v42];
    healthAppNewDeviceNotificationSyncClient = v6->_healthAppNewDeviceNotificationSyncClient;
    v6->_healthAppNewDeviceNotificationSyncClient = v43;

    [(HDNotificationSyncClient *)v6->_healthAppNewDeviceNotificationSyncClient setDelegate:v6];
    v45 = [[HDAppAnalyticsUpdateManager alloc] initWithProfile:v4];
    appAnalyticsUpdateManager = v6->_appAnalyticsUpdateManager;
    v6->_appAnalyticsUpdateManager = v45;

    v47 = objc_loadWeakRetained(&v6->_profile);
    v48 = [v47 healthDaemon];
    [v48 registerDaemonReadyObserver:v6 queue:0];

    v49 = objc_loadWeakRetained(&v6->_profile);
    [v49 registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

HDHealthAppDailyAnalyticsEvent *__47__HDHealthAppProfileExtension_initWithProfile___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDHealthAppDailyAnalyticsEvent alloc] initWithProfile:v2];

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HDHealthAppProfileExtension;
  [(HDHealthAppProfileExtension *)&v4 dealloc];
}

- (void)daemonReady:(id)a3
{
  _HKInitializeLogging();
  v4 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22939E000, v4, OS_LOG_TYPE_DEFAULT, "Health app profile extension reported daemon ready, starting observing for alert sample types", v6, 2u);
  }

  v5 = [(HDHealthAppProfileExtension *)self dataObserver];
  [v5 start];
}

- (void)profileDidBecomeReady:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_22939E000, v5, OS_LOG_TYPE_DEFAULT, "Health app profile extension reported profile ready, starting observing for Health app install status, and pausing sharing if necessary", buf, 2u);
  }

  v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v6 addObserver:self];

  objc_initWeak(buf, self);
  objc_copyWeak(&v7, buf);
  MobileInstallationWaitForSystemAppMigrationWithCompletion();
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __53__HDHealthAppProfileExtension_profileDidBecomeReady___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    _HKInitializeLogging();
    v4 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__HDHealthAppProfileExtension_profileDidBecomeReady___block_invoke_cold_1(v3, v4);
    }
  }

  else
  {
    v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v7 = [v6 applicationIsInstalled:*MEMORY[0x277CCE3A8]];

    if (v7)
    {
      goto LABEL_5;
    }

    _HKInitializeLogging();
    v8 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22939E000, v8, OS_LOG_TYPE_DEFAULT, "Health App is not installed on this device. Updating pause state for sharing entries.", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = [WeakRetained profile];
    v11 = [v10 sharingEntryManager];
    v14 = 0;
    v12 = [v11 pauseActiveEntriesWithError:&v14];
    v4 = v14;

    if ((v12 & 1) == 0)
    {
      _HKInitializeLogging();
      v13 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v16 = v4;
        _os_log_impl(&dword_22939E000, v13, OS_LOG_TYPE_DEFAULT, "Failed to update pause state for sharing entries %{public}@", buf, 0xCu);
      }
    }
  }

LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidUninstall:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = *MEMORY[0x277CCE3A8];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 bundleIdentifier];
        v12 = v11;
        if (v11 == v8)
        {

LABEL_15:
          _HKInitializeLogging();
          v15 = HKLogWellnessDashboard();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v17 = 0;
            _os_log_impl(&dword_22939E000, v15, OS_LOG_TYPE_DEFAULT, "Health App has been uninstalled", v17, 2u);
          }

          [(HDHealthAppProfileExtension *)self _healthAppWasUninstalled:v10];
          goto LABEL_18;
        }

        if (v8)
        {
          v13 = [v10 bundleIdentifier];
          v14 = [v13 isEqualToString:v8];

          if (v14)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_healthAppWasUninstalled:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CCDD30] resetBuddy];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained sharingEntryManager];
  v10 = 0;
  v6 = [v5 pauseActiveEntriesWithError:&v10];
  v7 = v10;

  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    v8 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_22939E000, v8, OS_LOG_TYPE_DEFAULT, "Failed to update pause state for sharing entries %{public}@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notificationSyncClient:(id)a3 didReceiveInstructionWithAction:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = v8;
    v10 = NSStringFromHKNotificationInstructionAction();
    v14 = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_22939E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received instruction with action: %@", &v14, 0x16u);
  }

  switch(a4)
  {
    case 1:
      [(HDHealthAppProfileExtension *)self _handleDismissInstruction];
      break;
    case 2:
      [(HDHealthAppProfileExtension *)self _handleHoldInstruction];
      break;
    case 3:
      [(HDHealthAppProfileExtension *)self _handleSendInstruction];
      break;
    default:
      _HKInitializeLogging();
      v11 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(HDHealthAppProfileExtension *)self notificationSyncClient:a4 didReceiveInstructionWithAction:v11];
      }

      break;
  }

  unitTest_didProcessNotificationInstruction = self->_unitTest_didProcessNotificationInstruction;
  if (unitTest_didProcessNotificationInstruction)
  {
    unitTest_didProcessNotificationInstruction[2]();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleSendInstruction
{
  OUTLINED_FUNCTION_2();
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0;
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  OUTLINED_FUNCTION_3(&dword_22939E000, v4, v5, "[%{public}@] Error retrieving send instructions: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __53__HDHealthAppProfileExtension__handleSendInstruction__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC300];
  v5 = *MEMORY[0x277CCC300];
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __53__HDHealthAppProfileExtension__handleSendInstruction__block_invoke_cold_1(a1, v4);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = v4;
    v10 = 138543362;
    v11 = objc_opt_class();
    v8 = v11;
    _os_log_impl(&dword_22939E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Posted AAAccountNotification", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleHoldInstruction
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  v1 = v0;
  OUTLINED_FUNCTION_1_0(&dword_22939E000, v2, v3, "[%{public}@] notification hold instructions returned nil with error = [%{public}@]", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleDismissInstruction
{
  OUTLINED_FUNCTION_2();
  v10 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  v1 = v0;
  OUTLINED_FUNCTION_1_0(&dword_22939E000, v2, v3, "[%{public}@] Pending notification dismiss instructions returned nil with error = [%{public}@]", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

void __53__HDHealthAppProfileExtension_profileDidBecomeReady___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_22939E000, a2, OS_LOG_TYPE_ERROR, "Error migrating system applications %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)notificationSyncClient:(os_log_t)log didReceiveInstructionWithAction:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_22939E000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpected notification instruction received: %ld", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __53__HDHealthAppProfileExtension__handleSendInstruction__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_3(&dword_22939E000, v6, v7, "[%{public}@] Failed to post notifications %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end