@interface HDHealthAppEmergencySOSManager
- (HDHealthAppEmergencySOSManager)initWithProfile:(id)profile;
- (HDProfile)profile;
- (id)actionIdentifierForOnboardingStatus:(id)status;
- (id)followUpItemDescription;
- (id)getEmergencyOnboardingStatus;
- (id)makeFollowUpItemWithActionIdentifier:(id)identifier;
- (void)clearPendingFollowUpItems;
- (void)getEmergencyOnboardingStatus;
- (void)profileDidBecomeReady:(id)ready;
- (void)submitFollowUpItem:(id)item;
- (void)submitSatelliteFollowUpItemIfNeeded;
@end

@implementation HDHealthAppEmergencySOSManager

- (HDHealthAppEmergencySOSManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v14.receiver = self;
  v14.super_class = HDHealthAppEmergencySOSManager;
  v5 = [(HDHealthAppEmergencySOSManager *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc(MEMORY[0x277CFE500]);
    v10 = [v9 initWithClientIdentifier:*MEMORY[0x277CCE318]];
    followUpController = v6->_followUpController;
    v6->_followUpController = v10;

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    [WeakRetained registerProfileReadyObserver:v6 queue:v6->_queue];
  }

  return v6;
}

- (void)profileDidBecomeReady:(id)ready
{
  v4 = [objc_alloc(MEMORY[0x277CCD238]) initWithDelegate:self queue:self->_queue];
  satelliteStatusClient = self->_satelliteStatusClient;
  self->_satelliteStatusClient = v4;

  [(HDHealthAppEmergencySOSManager *)self submitSatelliteFollowUpItemIfNeeded];
}

- (void)submitSatelliteFollowUpItemIfNeeded
{
  v21 = *MEMORY[0x277D85DE8];
  if (([(HKCoreTelephonySatelliteClient *)self->_satelliteStatusClient isSatelliteSupportedForEmergencyDemo]& 1) != 0)
  {
    getEmergencyOnboardingStatus = [(HDHealthAppEmergencySOSManager *)self getEmergencyOnboardingStatus];
    _HKInitializeLogging();
    v4 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = objc_opt_class();
      v19 = 2112;
      v20 = getEmergencyOnboardingStatus;
      v5 = v18;
      _os_log_impl(&dword_22939E000, v4, OS_LOG_TYPE_DEFAULT, "[%@][FollowUp] Fetched emergency onboarding status: %@", buf, 0x16u);
    }

    if (getEmergencyOnboardingStatus)
    {
      if ([getEmergencyOnboardingStatus intValue] == 3)
      {
        _HKInitializeLogging();
        v6 = HKLogWellnessDashboard();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = objc_opt_class();
          *buf = 138412290;
          v18 = v7;
          v8 = v7;
          _os_log_impl(&dword_22939E000, v6, OS_LOG_TYPE_DEFAULT, "[%@][FollowUp] We received a status that onboarding was completed with satellite, so we want to clear the follow up item.", buf, 0xCu);
        }

        [(HDHealthAppEmergencySOSManager *)self clearPendingFollowUpItems];
      }

      else
      {
        followUpController = [(HDHealthAppEmergencySOSManager *)self followUpController];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __69__HDHealthAppEmergencySOSManager_submitSatelliteFollowUpItemIfNeeded__block_invoke;
        v15[3] = &unk_2786586A0;
        v15[4] = self;
        v16 = getEmergencyOnboardingStatus;
        [followUpController pendingFollowUpItemsWithCompletion:v15];
      }
    }

    else
    {
      _HKInitializeLogging();
      v10 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        *buf = 138412290;
        v18 = v11;
        v12 = v11;
        _os_log_impl(&dword_22939E000, v10, OS_LOG_TYPE_DEFAULT, "[%@][FollowUp] We have a nil emergency onboaridng status, so we do nothing here.", buf, 0xCu);
      }
    }

    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *MEMORY[0x277D85DE8];

    [(HDHealthAppEmergencySOSManager *)self clearPendingFollowUpItems];
  }
}

void __69__HDHealthAppEmergencySOSManager_submitSatelliteFollowUpItemIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    [*(a1 + 32) actionIdentifierForOnboardingStatus:*(a1 + 40)];
    v28 = v27 = a1;
    v9 = [*(a1 + 32) makeFollowUpItemWithActionIdentifier:?];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      v14 = *MEMORY[0x277CCE330];
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          v17 = [v16 uniqueIdentifier];
          if ([v17 isEqualToString:v14])
          {
            v18 = [v16 informativeText];
            v19 = [v9 informativeText];
            v20 = [v18 isEqualToString:v19];

            if (v20)
            {
              _HKInitializeLogging();
              v21 = HKLogWellnessDashboard();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v23 = *(v27 + 32);
                v24 = objc_opt_class();
                *buf = 138412290;
                v36 = v24;
                v25 = v24;
                _os_log_impl(&dword_22939E000, v21, OS_LOG_TYPE_DEFAULT, "[%@][FollowUp] Found a pending satellite item that was previously submitted. We do not need to submit the item.", buf, 0xCu);
              }

              goto LABEL_19;
            }
          }

          else
          {
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    [*(v27 + 32) submitFollowUpItem:v9];
LABEL_19:
    v6 = 0;
    v5 = v29;
    v7 = v28;
    goto LABEL_20;
  }

  _HKInitializeLogging();
  v7 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412546;
    v36 = objc_opt_class();
    v37 = 2112;
    v38 = v6;
    v9 = v36;
    _os_log_impl(&dword_22939E000, v7, OS_LOG_TYPE_DEFAULT, "[%@][FollowUp] Error when fetching pending items: %@", buf, 0x16u);
LABEL_20:
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)actionIdentifierForOnboardingStatus:(id)status
{
  intValue = [status intValue];
  v4 = MEMORY[0x277CCE328];
  if (intValue != 1)
  {
    v4 = MEMORY[0x277CCE320];
  }

  v5 = *v4;

  return v5;
}

- (id)makeFollowUpItemWithActionIdentifier:(id)identifier
{
  v30[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_alloc_init(MEMORY[0x277CFE508]);
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x277CCE330];
    [v5 setUniqueIdentifier:*MEMORY[0x277CCE330]];
    [v6 setActions:0];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"STEWIE_FOLLOW_UP_ITEM_TITLE" value:&stru_283CB5B18 table:@"Localizable"];
    [v6 setTitle:v9];

    followUpItemDescription = [(HDHealthAppEmergencySOSManager *)self followUpItemDescription];
    [v6 setInformativeText:followUpItemDescription];

    [v6 setExtensionIdentifier:*MEMORY[0x277CCE318]];
    [v6 setGroupIdentifier:*MEMORY[0x277CFE440]];
    [v6 setCategoryIdentifier:v7];
    [v6 setDisplayStyle:0];
    v29 = *MEMORY[0x277CFE4C0];
    v30[0] = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    [v6 setUserInfo:v11];

    v12 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v14 = [currentCalendar hk_dateByAddingDays:30 toDate:v12];
    [v6 setExpirationDate:v14];

    v15 = objc_alloc_init(MEMORY[0x277CFE4F8]);
    v16 = v15;
    if (v15)
    {
      [v15 setIdentifier:identifierCopy];
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"STEWIE_FOLLOW_UP_ITEM_BUTTON" value:&stru_283CB5B18 table:@"Localizable"];
      [v16 setLabel:v18];

      v28 = v16;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
      [v6 setActions:v19];
    }
  }

  _HKInitializeLogging();
  v20 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412546;
    v25 = objc_opt_class();
    v26 = 2112;
    v27 = v6;
    v21 = v25;
    _os_log_impl(&dword_22939E000, v20, OS_LOG_TYPE_DEFAULT, "[%@][FollowUp] Created follow-up item: %@", &v24, 0x16u);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)followUpItemDescription
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  medicalIDDataManager = [WeakRetained medicalIDDataManager];

  v15 = 0;
  v4 = [medicalIDDataManager medicalIDSetupStatusWithError:&v15];
  v5 = v15;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v5;
      v8 = v7;
      _os_log_impl(&dword_22939E000, v6, OS_LOG_TYPE_DEFAULT, "[%@][FollowUp] Could not fetch user's Medical ID status: %@", buf, 0x16u);
    }

    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = v9;
    v11 = @"STEWIE_FOLLOW_UP_ITEM_REVIEW_DESCRIPTION";
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = v9;
    if (v4 == 2)
    {
      v11 = @"STEWIE_FOLLOW_UP_ITEM_REVIEW_DESCRIPTION";
    }

    else
    {
      v11 = @"STEWIE_FOLLOW_UP_ITEM_SET_UP_DESCRIPTION";
    }
  }

  v12 = [v9 localizedStringForKey:v11 value:&stru_283CB5B18 table:@"Localizable"];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)submitFollowUpItem:(id)item
{
  followUpController = self->_followUpController;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__HDHealthAppEmergencySOSManager_submitFollowUpItem___block_invoke;
  v4[3] = &unk_2786586C8;
  v4[4] = self;
  [(FLFollowUpController *)followUpController postFollowUpItem:item completion:v4];
}

void __53__HDHealthAppEmergencySOSManager_submitFollowUpItem___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2E0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v11 = 138412802;
    v12 = objc_opt_class();
    v13 = 1024;
    v14 = a2;
    v15 = 2112;
    v16 = v5;
    v9 = v12;
    _os_log_impl(&dword_22939E000, v8, OS_LOG_TYPE_DEFAULT, "[%@][FollowUp] Posted follow-up item with success %d and error %@", &v11, 0x1Cu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)clearPendingFollowUpItems
{
  followUpController = self->_followUpController;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__HDHealthAppEmergencySOSManager_clearPendingFollowUpItems__block_invoke;
  v3[3] = &unk_2786586C8;
  v3[4] = self;
  [(FLFollowUpController *)followUpController clearPendingFollowUpItemsWithCompletion:v3];
}

void __59__HDHealthAppEmergencySOSManager_clearPendingFollowUpItems__block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2E0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v11 = 138412802;
    v12 = objc_opt_class();
    v13 = 1024;
    v14 = a2;
    v15 = 2112;
    v16 = v5;
    v9 = v12;
    _os_log_impl(&dword_22939E000, v8, OS_LOG_TYPE_DEFAULT, "[%@][FollowUp] Cleared follow-up items with success %d and error %@", &v11, 0x1Cu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)getEmergencyOnboardingStatus
{
  v3 = objc_alloc(MEMORY[0x277D10718]);
  v4 = *MEMORY[0x277CCE310];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [v3 initWithCategory:102 domainName:v4 profile:WeakRetained];

  v7 = *MEMORY[0x277CCE338];
  v14 = 0;
  v8 = [v6 numberForKey:v7 error:&v14];
  v9 = v14;
  if (v9)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2E0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
    {
      [(HDHealthAppEmergencySOSManager *)v10 getEmergencyOnboardingStatus];
    }

    v11 = 0;
  }

  else
  {
    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = [MEMORY[0x277CCABB0] numberWithInt:0];
    }

    v11 = v12;
  }

  return v11;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)getEmergencyOnboardingStatus
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7 = 138412546;
  v8 = objc_opt_class();
  v9 = 2112;
  v10 = a3;
  v5 = v8;
  _os_log_error_impl(&dword_22939E000, selfCopy, OS_LOG_TYPE_ERROR, "[%@][FollowUp] Failed to get emergency onboarding status: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end