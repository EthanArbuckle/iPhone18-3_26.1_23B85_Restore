@interface HKHealthSettingsController
- (HKHealthSettingsController)init;
- (HKHealthSettingsController)initWithPrimaryProfile:(BOOL)a3 healthSettingsProfile:(id)a4;
- (id)_getLastDataSourceInSpecifiers:(id)a3;
- (id)createSharedHealthDataSpecifiersWithProfileIdentifiers:(id)a3;
- (id)makePopToHealthControllerHandler;
- (id)sourcesViewControllerForPrimaryProfile:(BOOL)a3 restorationSourceBundleIdentifier:(id)a4;
- (id)specifiers;
- (void)_submitScribeAnalyticEvent;
- (void)addSharedDataSpecifiersWithIdentifiers:(id)a3;
- (void)configureHealthChecklistItemInSpecifiers:(id)a3;
- (void)configureHealthRecordsItemInSpecifiers:(id)a3;
- (void)configureMedicalIDItemInSpecifiers:(id)a3;
- (void)configureOrganDonationItemInSpecifiers:(id)a3;
- (void)configureProfileCharacteristicsItemInSpecifiers:(id)a3;
- (void)configureSourcesItemInSpecifiers:(id)a3;
- (void)donateWithDeepLink:(id)a3 andTitle:(id)a4;
- (void)fetchHealthRecordsDataWithCompletion:(id)a3;
- (void)fetchSharedHealthData;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)openHealthChecklist:(id)a3;
- (void)showHealthRecords;
- (void)showMedicalID:(id)a3;
- (void)showOrganDonation:(id)a3;
- (void)showProfileCharacteristics:(id)a3;
- (void)showSharedProfileHealthSettings:(id)a3;
- (void)showSources:(id)a3;
@end

@implementation HKHealthSettingsController

- (HKHealthSettingsController)init
{
  v3 = +[HKHealthSettingsProfile sharedProfile];
  v4 = [(HKHealthSettingsController *)self initWithPrimaryProfile:1 healthSettingsProfile:v3];

  return v4;
}

- (HKHealthSettingsController)initWithPrimaryProfile:(BOOL)a3 healthSettingsProfile:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKHealthSettingsController;
  v8 = [(HKHealthSettingsController *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_primaryProfile = a3;
    objc_storeStrong(&v8->_healthSettingsProfile, a4);
    sharedHealthDataIdentifiers = v9->_sharedHealthDataIdentifiers;
    v9->_sharedHealthDataIdentifiers = MEMORY[0x277CBEBF8];

    hasHealthRecordsData = v9->_hasHealthRecordsData;
    v9->_hasHealthRecordsData = 0;

    pendingURLDictionary = v9->_pendingURLDictionary;
    v9->_pendingURLDictionary = 0;

    if (v9->_primaryProfile)
    {
      [(HKHealthSettingsController *)v9 fetchHealthRecordsDataWithCompletion:0];
      [(HKHealthSettingsController *)v9 fetchSharedHealthData];
    }
  }

  return v9;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [(HKHealthSettingsController *)self appPolicy];

    if (!v6)
    {
      v7 = objc_alloc(MEMORY[0x277D3FB30]);
      v8 = [v7 initWithBundleIdentifier:*MEMORY[0x277CCE3A8]];
      [(HKHealthSettingsController *)self setAppPolicy:v8];

      v9 = [(HKHealthSettingsController *)self appPolicy];
      [v9 setDelegate:self];
    }

    v10 = [(HKHealthSettingsController *)self appPolicy];
    v11 = [v10 specifiersForPolicyOptions:8462337 force:0];
    v12 = [v11 mutableCopy];

    [v5 addObjectsFromArray:v12];
    if (![(HKHealthSettingsController *)self isPrimaryProfile])
    {
      [v5 removeObjectsInArray:v12];
    }

    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [(HKHealthSettingsController *)self loadSpecifiersFromPlistName:@"HealthSettingsSpecifiers" target:self bundle:v13];
    [v5 addObjectsFromArray:v14];

    v15 = [MEMORY[0x277CCDD30] sharedBehavior];
    if ([v15 healthAppHiddenOrNotInstalled])
    {
      v16 = @"HEALTH_DATA_SETTINGS_TITLE";
    }

    else
    {
      v16 = @"HEALTH_SETTINGS_TITLE";
    }

    v17 = HKHealthSettingsLocalizedString(v16);
    [(HKHealthSettingsController *)self setTitle:v17];

    if (![(HKHealthSettingsController *)self isPrimaryProfile])
    {
      v18 = [(HKHealthSettingsController *)self healthSettingsProfile];
      v19 = [v18 localizedName];
      [(HKHealthSettingsController *)self setTitle:v19];
    }

    [(HKHealthSettingsController *)self configureProfileCharacteristicsItemInSpecifiers:v5];
    [(HKHealthSettingsController *)self configureMedicalIDItemInSpecifiers:v5];
    [(HKHealthSettingsController *)self configureOrganDonationItemInSpecifiers:v5];
    [(HKHealthSettingsController *)self configureSourcesItemInSpecifiers:v5];
    [(HKHealthSettingsController *)self configureHealthRecordsItemInSpecifiers:v5];
    if (self->_primaryProfile && [(NSArray *)self->_sharedHealthDataIdentifiers count])
    {
      v20 = [(HKHealthSettingsController *)self createSharedHealthDataSpecifiersWithProfileIdentifiers:self->_sharedHealthDataIdentifiers];
      v21 = [(HKHealthSettingsController *)self _getLastDataSourceInSpecifiers:v5];
      v22 = [v21 identifier];
      v23 = [v5 indexOfSpecifierWithID:v22];

      v24 = [v5 objectAtIndexedSubscript:v23];
      [v5 ps_insertObjectsFromArray:v20 afterObject:v24];
    }

    [(HKHealthSettingsController *)self configureHealthChecklistItemInSpecifiers:v5];
    v25 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKeyedSubscript:@"path"];
  v10 = [v9 componentsSeparatedByString:@"/"];
  v11 = [v10 firstObject];
  v12 = [MEMORY[0x277D0FD48] healthSettingsSourcesItemSpecifier];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    v14 = [(HKHealthSettingsController *)self view];
    v15 = [v14 window];

    if (v15)
    {
      v16 = [v10 lastObject];
      if (([MEMORY[0x277D0FD58] canOpenLinkWithSourceIdentifier:0 destinationIdentifier:v16] & 1) != 0 || (objc_msgSend(MEMORY[0x277D0FD48], "healthSettingsSourcesItemSpecifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v9, "isEqualToString:", v17), v17, v18))
      {
        [(HKHealthSettingsController *)self showSourcesForPrimaryProfile:[(HKHealthSettingsController *)self isPrimaryProfile] animated:1 restorationSourceBundleIdentifier:v16 completion:v8];
        v19 = [MEMORY[0x277D0FD48] externalSourceAssistantService];
        v20 = [v16 isEqualToString:v19];

        if (v20)
        {
          [(HKHealthSettingsController *)self _submitScribeAnalyticEvent];
        }
      }

      else
      {
        v8[2](v8);
      }
    }

    else
    {
      objc_storeStrong(&self->_pendingURLDictionary, a3);
      v8[2](v8);
    }
  }

  else if ([v9 containsString:@"HEALTH_RECORDS_ITEM"] && -[HKHealthSettingsController isPrimaryProfile](self, "isPrimaryProfile") && !self->_hasHealthRecordsData)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__HKHealthSettingsController_handleURL_withCompletion___block_invoke;
    v22[3] = &unk_2796E5278;
    v23 = v7;
    v24 = self;
    v25 = v8;
    [(HKHealthSettingsController *)self fetchHealthRecordsDataWithCompletion:v22];
  }

  else
  {
    v21.receiver = self;
    v21.super_class = HKHealthSettingsController;
    [(HKHealthSettingsController *)&v21 handleURL:v7 withCompletion:v8];
  }
}

id __55__HKHealthSettingsController_handleURL_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4.receiver = *(a1 + 40);
  v4.super_class = HKHealthSettingsController;
  return objc_msgSendSuper2(&v4, sel_handleURL_withCompletion_, v1, v2);
}

- (void)_submitScribeAnalyticEvent
{
  v2 = objc_alloc_init(MEMORY[0x277D0FD68]);
  [v2 submitHealthEventWithDescription:@"Authorization Management: Settings" requestInterval:0];
}

- (void)configureProfileCharacteristicsItemInSpecifiers:(id)a3
{
  v3 = [a3 specifierForID:@"HEALTH_DETAILS_ITEM"];
  [v3 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  [v3 setControllerLoadAction:sel_showProfileCharacteristics_];
}

- (void)configureMedicalIDItemInSpecifiers:(id)a3
{
  v6 = a3;
  v3 = [v6 specifierForID:@"MEDICAL_ID_ITEM"];
  [v3 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  if (v3 && ([MEMORY[0x277CCD4A8] shared], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isMedicalIDAvailable"), v4, (v5 & 1) != 0))
  {
    [v3 setControllerLoadAction:sel_showMedicalID_];
  }

  else
  {
    [v6 removeObject:v3];
  }
}

- (void)configureOrganDonationItemInSpecifiers:(id)a3
{
  v5 = a3;
  v4 = [v5 specifierForID:@"ORGAN_DONATION_ITEM"];
  [v4 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  [v4 setControllerLoadAction:sel_showOrganDonation_];
  if (!v4 || ![MEMORY[0x277D129B8] isOrganDonationRegistrationAvailable] || !objc_msgSend(MEMORY[0x277D129B8], "hasStoredRegistrant") || !-[HKHealthSettingsController isPrimaryProfile](self, "isPrimaryProfile"))
  {
    [v5 removeObject:v4];
  }
}

- (void)configureHealthRecordsItemInSpecifiers:(id)a3
{
  v8 = a3;
  v4 = [v8 specifierForID:@"HEALTH_RECORDS_ITEM"];
  healthRecordsSpecifier = self->_healthRecordsSpecifier;
  self->_healthRecordsSpecifier = v4;

  [(PSSpecifier *)self->_healthRecordsSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  [(PSSpecifier *)self->_healthRecordsSpecifier setControllerLoadAction:sel_showHealthRecords_];
  if (self->_healthRecordsSpecifier)
  {
    if ([(HKHealthSettingsController *)self isPrimaryProfile]&& [(NSNumber *)self->_hasHealthRecordsData BOOLValue])
    {
      v6 = [(PSSpecifier *)self->_healthRecordsSpecifier identifier];
      v7 = [v8 specifierForID:v6];

      if (!v7)
      {
        [v8 insertObject:self->_healthRecordsSpecifier atIndex:{objc_msgSend(v8, "indexOfSpecifierWithID:", @"SOURCES_ITEM"}];
      }
    }

    else
    {
      [v8 removeObject:self->_healthRecordsSpecifier];
    }
  }
}

- (void)configureSourcesItemInSpecifiers:(id)a3
{
  v3 = [a3 specifierForID:@"SOURCES_ITEM"];
  [v3 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  [v3 setControllerLoadAction:sel_showSources_];
}

- (void)configureHealthChecklistItemInSpecifiers:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 specifierForID:@"HEALTH_CHECKLIST_GROUP"];
  v6 = [v4 specifierForID:@"HEALTH_CHECKLIST_ITEM"];
  if ([(HKHealthSettingsController *)self isPrimaryProfile])
  {
    v7 = [MEMORY[0x277CCDD30] sharedBehavior];
    v8 = [v7 healthAppHiddenOrNotInstalled];

    v9 = [MEMORY[0x277CCD4A8] shared];
    v10 = [v9 isHealthChecklistAvailable];

    if ((v8 & 1) != 0 || !v10)
    {
      v15[0] = v5;
      v15[1] = v6;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
      [v4 removeObjectsInArray:v13];
    }

    else
    {
      if ([MEMORY[0x277CCDD30] hasPairedWatch])
      {
        v11 = @"HEALTH_CHECKLIST_FOOTER_PHONE_WATCH";
      }

      else
      {
        v11 = @"HEALTH_CHECKLIST_FOOTER_PHONE_ONLY";
      }

      v12 = HKHealthSettingsSpecifiersLocalizedString(v11);
      [v5 setProperty:v12 forKey:*MEMORY[0x277D3FF88]];

      [v6 setButtonAction:sel_openHealthChecklist_];
      [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    }
  }

  else
  {
    [v4 removeObject:v6];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)createSharedHealthDataSpecifiersWithProfileIdentifiers:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v4 && [v4 count])
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SHARED_DATA_GROUP_TITLE" value:&stru_28641BB60 table:@"Localizable-tinker"];

    v20 = v7;
    v19 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"HealthSettingsTinkerProfileSpecifierID" name:v7];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = v4;
    obj = v4;
    v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      v11 = *MEMORY[0x277D3FD80];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [[HKHealthSettingsProfile alloc] initWithProfileIdentifier:*(*(&v23 + 1) + 8 * i)];
          v14 = MEMORY[0x277D3FAD8];
          v15 = [(HKHealthSettingsProfile *)v13 localizedName];
          v16 = [v14 preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:1 edit:0];

          [v16 setProperty:v13 forKey:@"HealthSettingsProfileProperty"];
          [v16 setProperty:MEMORY[0x277CBEC38] forKey:v11];
          [v16 setControllerLoadAction:sel_showSharedProfileHealthSettings_];
          [v5 addObject:v16];
        }

        v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    [v5 sortUsingComparator:&__block_literal_global];
    [v5 insertObject:v19 atIndex:0];

    v4 = v21;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __85__HKHealthSettingsController_createSharedHealthDataSpecifiersWithProfileIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)fetchSharedHealthData
{
  objc_initWeak(&location, self);
  v3 = [(HKHealthSettingsController *)self healthSettingsProfile];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__HKHealthSettingsController_fetchSharedHealthData__block_invoke;
  v4[3] = &unk_2796E52E8;
  objc_copyWeak(&v5, &location);
  [v3 getProfilesOfType:3 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __51__HKHealthSettingsController_fetchSharedHealthData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__HKHealthSettingsController_fetchSharedHealthData__block_invoke_2;
    v5[3] = &unk_2796E52C0;
    v6 = v3;
    v7 = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __51__HKHealthSettingsController_fetchSharedHealthData__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setSharedHealthDataIdentifiers:?];
  }

  v2 = *(*(a1 + 40) + *MEMORY[0x277D3FC48]);
  if (v2)
  {
    v3 = [v2 specifierForID:@"HealthSettingsTinkerProfileSpecifierID"];

    if (!v3)
    {
      v5 = *(a1 + 32);
      v4 = *(a1 + 40);

      [v4 addSharedDataSpecifiersWithIdentifiers:v5];
    }
  }
}

- (void)fetchHealthRecordsDataWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277D123E8]);
  v6 = [(HKHealthSettingsController *)self healthSettingsProfile];
  v7 = [v6 healthStore];
  v8 = [v5 initWithHealthStore:v7];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HKHealthSettingsController_fetchHealthRecordsDataWithCompletion___block_invoke;
  v10[3] = &unk_2796E5338;
  objc_copyWeak(&v12, &location);
  v9 = v4;
  v11 = v9;
  [v8 hasAnyHealthRecordsAccountWithCompletion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __67__HKHealthSettingsController_fetchHealthRecordsDataWithCompletion___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__HKHealthSettingsController_fetchHealthRecordsDataWithCompletion___block_invoke_2;
    block[3] = &unk_2796E5310;
    block[4] = WeakRetained;
    v8 = a2;
    v7 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __67__HKHealthSettingsController_fetchHealthRecordsDataWithCompletion___block_invoke_2(uint64_t a1)
{
  if (!*(*(a1 + 32) + 1456))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 1456);
    *(v5 + 1456) = v4;

    v7 = *(*(a1 + 32) + *MEMORY[0x277D3FC48]);
    if (v7)
    {
      v8 = [v7 specifierForID:@"HEALTH_RECORDS_ITEM"];

      if (!v8)
      {
        [*(a1 + 32) addHealthRecordsSpecifier:*(a1 + 48)];
      }
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)addSharedDataSpecifiersWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [(HKHealthSettingsController *)self createSharedHealthDataSpecifiersWithProfileIdentifiers:v5];
    v7 = [(HKHealthSettingsController *)self specifiers];
    v8 = [(HKHealthSettingsController *)self _getLastDataSourceInSpecifiers:v7];

    if (v8)
    {
      [(HKHealthSettingsController *)self insertContiguousSpecifiers:v6 afterSpecifier:v8 animated:0];
    }

    else
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_FAULT))
      {
        [(HKHealthSettingsController *)v9 addSharedDataSpecifiersWithIdentifiers:?];
      }
    }
  }
}

- (id)_getLastDataSourceInSpecifiers:(id)a3
{
  v3 = a3;
  v4 = [v3 specifierForID:@"SOURCES_ITEM"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = [v3 specifierForID:@"HEALTH_RECORDS_ITEM"];
    v8 = v7;
    if (v7)
    {
      v9 = v7;

      v6 = v9;
    }

    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)showProfileCharacteristics:(id)a3
{
  v4 = MEMORY[0x277D11230];
  v5 = [(HKHealthSettingsController *)self healthSettingsProfile];
  v6 = [v5 healthStore];
  v7 = [v4 makeWithSharedDiskHealthExperienceStoreWithHealthStore:v6];

  [v7 setAccessType:5];
  [v7 setSettingsNavigationDonatingDelegate:self];
  [(UIViewController *)self hk_authenticateWithCompletionViewController:v7];
}

- (void)showMedicalID:(id)a3
{
  v4 = [HKHealthSettingsMedicalIDViewController alloc];
  v5 = [(HKHealthSettingsController *)self healthSettingsProfile];
  v6 = [(HKHealthSettingsMedicalIDViewController *)v4 initWithHealthSettingsProfile:v5];

  [(HKHealthSettingsMedicalIDViewController *)v6 setSettingsNavigationDonatingDelegate:self];
  [(UIViewController *)self hk_authenticateWithCompletionViewController:v6];
}

- (void)showOrganDonation:(id)a3
{
  v5 = objc_alloc_init(HKHealthSettingsOrganDonationViewController);
  v4 = [(HKHealthSettingsController *)self makePopToHealthControllerHandler];
  [(HKOrganDonationRegisterViewController *)v5 setRegistrationCompletionHandler:v4];

  [(UIViewController *)self hk_authenticateWithCompletionViewController:v5];
}

- (id)makePopToHealthControllerHandler
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__HKHealthSettingsController_makePopToHealthControllerHandler__block_invoke;
  v4[3] = &unk_2796E5388;
  objc_copyWeak(&v5, &location);
  v2 = MEMORY[0x253091850](v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __62__HKHealthSettingsController_makePopToHealthControllerHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__HKHealthSettingsController_makePopToHealthControllerHandler__block_invoke_2;
    block[3] = &unk_2796E5360;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)showHealthRecords
{
  v3 = GSSystemRootDirectory();
  v4 = MEMORY[0x277CCA8D8];
  v5 = [v3 stringByAppendingPathComponent:@"/System/Library/PreferenceBundles/HealthRecordsSettings.bundle"];
  v6 = [v4 bundleWithPath:v5];

  if (v6)
  {
    v7 = [v6 principalClass];
    if (v7)
    {
      v8 = objc_alloc_init(v7);
      if ([v8 conformsToProtocol:&unk_28642A050])
      {
        [v8 setSettingsNavigationDonatingDelegate:self];
      }

      if (v8)
      {
        [(UIViewController *)self hk_authenticateWithCompletionViewController:v8];
      }

      else
      {
        _HKInitializeLogging();
        v25 = *MEMORY[0x277CCC2B0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_FAULT))
        {
          [(HKHealthSettingsController *)v25 showHealthRecords:v26];
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_FAULT))
      {
        [(HKHealthSettingsController *)v17 showHealthRecords:v18];
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_FAULT))
    {
      [(HKHealthSettingsController *)v9 showHealthRecords:v10];
    }
  }
}

- (void)showSources:(id)a3
{
  v4 = [(HKHealthSettingsController *)self isPrimaryProfile];

  [(HKHealthSettingsController *)self showSourcesForPrimaryProfile:v4 animated:1 restorationSourceBundleIdentifier:0 completion:0];
}

void __113__HKHealthSettingsController_showSourcesForPrimaryProfile_animated_restorationSourceBundleIdentifier_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __113__HKHealthSettingsController_showSourcesForPrimaryProfile_animated_restorationSourceBundleIdentifier_completion___block_invoke_2;
    block[3] = &unk_2796E53B0;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v9 = v6;
    v10 = *(a1 + 56);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

void __113__HKHealthSettingsController_showSourcesForPrimaryProfile_animated_restorationSourceBundleIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 hk_showViewController:*(a1 + 40) animated:*(a1 + 48)];
}

- (id)sourcesViewControllerForPrimaryProfile:(BOOL)a3 restorationSourceBundleIdentifier:(id)a4
{
  v5 = &off_2796E5050;
  if (!a3)
  {
    v5 = off_2796E5048;
  }

  v6 = *v5;
  v7 = a4;
  v8 = [v6 alloc];
  v9 = [(HKHealthSettingsController *)self healthSettingsProfile];
  v10 = [v8 initWithProfile:v9 usingInsetStyling:1];

  [v10 setRestorationSourceBundleIdentifier:v7];

  return v10;
}

- (void)openHealthChecklist:(id)a3
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"x-apple-health://HealthChecklist?urlSource=HealthSettings"];
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:MEMORY[0x277CBEC10]];
}

- (void)showSharedProfileHealthSettings:(id)a3
{
  v5 = [a3 propertyForKey:@"HealthSettingsProfileProperty"];
  v4 = [[HKHealthSettingsController alloc] initWithHealthSettingsProfile:v5];
  [(UIViewController *)self hk_authenticateWithCompletionViewController:v4];
}

- (void)donateWithDeepLink:(id)a3 andTitle:(id)a4
{
  v25 = a4;
  v6 = MEMORY[0x277CCAEB8];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 bundleURL];
  v12 = @"Health";
  v13 = [v8 initWithKey:@"Health" table:0 locale:v9 bundleURL:v11];

  v14 = [MEMORY[0x277CBEB18] array];
  [v14 addObject:v13];
  if (v25)
  {
    v15 = objc_alloc(MEMORY[0x277CCAEB8]);
    v16 = [MEMORY[0x277CBEAF8] currentLocale];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 bundleURL];
    v19 = [v15 initWithKey:v25 table:0 locale:v16 bundleURL:v18];

    [v14 addObject:v19];
    v12 = v25;
  }

  v20 = objc_alloc(MEMORY[0x277CCAEB8]);
  v21 = [MEMORY[0x277CBEAF8] currentLocale];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 bundleURL];
  v24 = [v20 initWithKey:v12 table:0 locale:v21 bundleURL:v23];

  [(HKHealthSettingsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.Health" title:v24 localizedNavigationComponents:v14 deepLink:v7];
}

- (void)addSharedDataSpecifiersWithIdentifiers:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 specifiers];
  OUTLINED_FUNCTION_1(&dword_251E77000, v5, v6, "HKHealthSettingsController is expecting to insert SHARED_DATA_GROUP_TITLE after SOURCES_ITEM, however the latter is not currently present in self.specifiers. Have: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addHealthRecordsSpecifier:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 specifiers];
  OUTLINED_FUNCTION_1(&dword_251E77000, v5, v6, "HKHealthSettingsController is expecting to insert HEALTH_RECORDS_ITEM after SOURCES_ITEM, however the latter is not currently present in self.specifiers. Have: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

@end