@interface BRKRemindersSettingsHelper
- (BOOL)areRemindersAvailable;
- (BOOL)isMeCardAvailable;
- (BRKRemindersSettingsDelegate)delegate;
- (BRKRemindersSettingsHelper)initWithDelegate:(id)a3 settings:(id)a4;
- (id)_handwashingAppBundleLocationManager;
- (id)_handwashingLocationManager;
- (id)meContactWithKeysToFetch:(id)a3;
- (id)remindersFooterTextAndLinkString;
- (void)_fetchLocationAuthorizationStatus;
- (void)_fetchLocationAvailableStatus;
- (void)_handwashingAppBundleLocationManager;
- (void)_handwashingLocationManager;
- (void)_isCoreRoutineHomeAvailableWithCompletion:(id)a3;
- (void)_updateWithLocationAuthorizationStatus:(int)a3 manager:(id)a4;
- (void)dealloc;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)requestLocationAuthorizationIfNeeded;
- (void)setCoreRoutineAvailable:(BOOL)a3;
- (void)setLocationAuthorizationValid:(BOOL)a3;
- (void)setLocationAvailable:(BOOL)a3;
- (void)update;
@end

@implementation BRKRemindersSettingsHelper

- (BRKRemindersSettingsHelper)initWithDelegate:(id)a3 settings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = BRKRemindersSettingsHelper;
  v8 = [(BRKRemindersSettingsHelper *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_brookSettings, a4);
    v10 = [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0];
    v9->_contactStoreAuthorizationStatus = v10;
    if (v10 == 3)
    {
      v11 = [MEMORY[0x277CBDAB8] storeWithOptions:1];
      contactStore = v9->_contactStore;
      v9->_contactStore = v11;
    }

    v13 = [MEMORY[0x277D01280] defaultManager];
    routineManager = v9->_routineManager;
    v9->_routineManager = v13;

    objc_initWeak(&location, v9);
    brookSettings = v9->_brookSettings;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__BRKRemindersSettingsHelper_initWithDelegate_settings___block_invoke;
    v17[3] = &unk_278D28B50;
    objc_copyWeak(&v18, &location);
    [(BRKSettings *)brookSettings isLocationAuthFlowEnabledWithCompletionHandler:v17];
    v9->_locationAuthorizationValid = 1;
    *&v9->_coreRoutineAvailable = 257;
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __56__BRKRemindersSettingsHelper_initWithDelegate_settings___block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = a2;
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "Selecting handwashing location manager with auth flow enabled result: %d", v11, 8u);
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = v6;
  if (a2)
  {
    [v6 _handwashingAppBundleLocationManager];
  }

  else
  {
    [v6 _handwashingLocationManager];
  }
  v8 = ;
  v9 = WeakRetained[5];
  WeakRetained[5] = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  inUseAssertion = self->_inUseAssertion;
  self->_inUseAssertion = 0;

  v4.receiver = self;
  v4.super_class = BRKRemindersSettingsHelper;
  [(BRKRemindersSettingsHelper *)&v4 dealloc];
}

- (BOOL)areRemindersAvailable
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(BRKRemindersSettingsHelper *)self isLocationAvailable])
  {
    v3 = [(BRKRemindersSettingsHelper *)self isLocationAuthorizationValid];
  }

  else
  {
    v3 = 0;
  }

  v4 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromBOOL();
    v8 = 136315394;
    v9 = "[BRKRemindersSettingsHelper areRemindersAvailable]";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)isMeCardAvailable
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277CBD018];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v4 = [(BRKRemindersSettingsHelper *)self meContactWithKeysToFetch:v3];

  v5 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromBOOL();
    v9 = 136315394;
    v10 = "[BRKRemindersSettingsHelper isMeCardAvailable]";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4 != 0;
}

- (void)setCoreRoutineAvailable:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_coreRoutineAvailable != a3)
  {
    self->_coreRoutineAvailable = a3;
    v4 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      coreRoutineAvailable = self->_coreRoutineAvailable;
      v6 = NSStringFromBOOL();
      v9 = 136315394;
      v10 = "[BRKRemindersSettingsHelper setCoreRoutineAvailable:]";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%s -> %@", &v9, 0x16u);
    }

    v7 = [(BRKRemindersSettingsHelper *)self delegate];
    [v7 remindersSettingsDidUpdate:self];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLocationAvailable:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_locationAvailable != a3)
  {
    self->_locationAvailable = a3;
    v4 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      locationAvailable = self->_locationAvailable;
      v6 = NSStringFromBOOL();
      v9 = 136315394;
      v10 = "[BRKRemindersSettingsHelper setLocationAvailable:]";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%s -> %@", &v9, 0x16u);
    }

    v7 = [(BRKRemindersSettingsHelper *)self delegate];
    [v7 remindersSettingsDidUpdate:self];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLocationAuthorizationValid:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_locationAuthorizationValid != a3)
  {
    self->_locationAuthorizationValid = a3;
    v4 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      locationAuthorizationValid = self->_locationAuthorizationValid;
      v6 = NSStringFromBOOL();
      v9 = 136315394;
      v10 = "[BRKRemindersSettingsHelper setLocationAuthorizationValid:]";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%s -> %@", &v9, 0x16u);
    }

    v7 = [(BRKRemindersSettingsHelper *)self delegate];
    [v7 remindersSettingsDidUpdate:self];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestLocationAuthorizationIfNeeded
{
  objc_initWeak(&location, self);
  brookSettings = self->_brookSettings;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__BRKRemindersSettingsHelper_requestLocationAuthorizationIfNeeded__block_invoke;
  v4[3] = &unk_278D28B50;
  objc_copyWeak(&v5, &location);
  [(BRKSettings *)brookSettings isLocationAuthFlowEnabledWithCompletionHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __66__BRKRemindersSettingsHelper_requestLocationAuthorizationIfNeeded__block_invoke(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"requestAlwaysAuthorization";
    if (a2)
    {
      v5 = @"requestWhenInUseAuthorization";
    }

    v10 = 136315394;
    v11 = "[BRKRemindersSettingsHelper requestLocationAuthorizationIfNeeded]_block_invoke";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%s: requesting %@ location authorization", &v10, 0x16u);
  }

  v6 = WeakRetained[5];
  if (a2)
  {
    [v6 requestWhenInUseAuthorization];
    v7 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      v8 = "[strongSelf.locationManager requestWhenInUseAuthorization]";
LABEL_10:
      _os_log_impl(&dword_241EE4000, v7, OS_LOG_TYPE_DEFAULT, v8, &v10, 2u);
    }
  }

  else
  {
    [v6 requestAlwaysAuthorization];
    v7 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      v8 = "[strongSelf.locationManager requestAlwaysAuthorization]";
      goto LABEL_10;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)update
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[BRKRemindersSettingsHelper update]";
    _os_log_impl(&dword_241EE4000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(BRKRemindersSettingsHelper *)self _fetchLocationAvailableStatus];
  [(BRKRemindersSettingsHelper *)self _fetchLocationAuthorizationStatus];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)remindersFooterTextAndLinkString
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = +[BRKSettings remindersSettingFooter];
  if ([(BRKRemindersSettingsHelper *)self contactStoreAuthorizationStatus]!= 3)
  {
    v5 = +[BRKSettings remindersFooterExplanationContactStoreNotAuthorized];
    goto LABEL_10;
  }

  if (![(BRKRemindersSettingsHelper *)self isCoreRoutineAvailable])
  {
    v5 = +[BRKSettings remindersFooterExplanationSignificantLocationsUnavailable];
LABEL_10:
    v4 = v5;
    v6 = 0;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (![(BRKRemindersSettingsHelper *)self isMeCardAvailable]&& ![(BRKRemindersSettingsHelper *)self isLocationAvailable])
  {
    v12 = +[BRKSettings remindersFooterExplanationNoLocationOrMeCard];
    goto LABEL_20;
  }

  if (![(BRKRemindersSettingsHelper *)self isLocationAvailable])
  {
    v12 = +[BRKSettings remindersFooterExplanationNoLocation];
LABEL_20:
    v4 = v12;
    v13 = +[BRKSettings remindersFooterLinkTitleContacts];
    goto LABEL_22;
  }

  if ([(BRKRemindersSettingsHelper *)self isLocationAuthorizationValid])
  {
    v4 = 0;
    goto LABEL_14;
  }

  v4 = +[BRKSettings remindersFooterExplanationInavlidLocationAuth];
  v13 = +[BRKSettings remindersFooterLinkTitleLocation];
LABEL_22:
  v6 = v13;
  if (v4)
  {
LABEL_11:
    v7 = +[BRKSettings remindersFooterExplanationFormat];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:v7, v3, v4];

    v3 = v8;
  }

LABEL_12:
  if (v6)
  {
    v15[0] = v3;
    v15[1] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

    goto LABEL_15;
  }

LABEL_14:
  v14 = v3;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
LABEL_15:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)meContactWithKeysToFetch:(id)a3
{
  v4 = a3;
  v5 = [(BRKRemindersSettingsHelper *)self contactStore];
  v6 = [v5 _ios_meContactWithKeysToFetch:v4 error:0];

  return v6;
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "authorizationStatus")}];
    v8 = 136315394;
    v9 = "[BRKRemindersSettingsHelper locationManagerDidChangeAuthorization:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v8, 0x16u);
  }

  -[BRKRemindersSettingsHelper _updateWithLocationAuthorizationStatus:manager:](self, "_updateWithLocationAuthorizationStatus:manager:", [v4 authorizationStatus], v4);
  v7 = *MEMORY[0x277D85DE8];
}

- (id)_handwashingLocationManager
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/LocationBundles/HandwashingLocation.bundle"];
  v4 = objc_alloc(MEMORY[0x277CBFC10]);
  v5 = [v4 initWithEffectiveBundle:v3 delegate:self onQueue:MEMORY[0x277D85CD0]];
  v6 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[BRKRemindersSettingsHelper _handwashingLocationManager]";
    _os_log_impl(&dword_241EE4000, v6, OS_LOG_TYPE_DEFAULT, "%s [[CLLocationManager alloc] initWithEffectiveBundle:bundle delegate:self onQueue:dispatch_get_main_queue()]", &v12, 0xCu);
  }

  if (v5)
  {
    v7 = [MEMORY[0x277CBFBF8] newAssertionForBundle:v3 withReason:@"Accepting Handwashing terms"];
    [(BRKRemindersSettingsHelper *)self setInUseAssertion:v7];

    v8 = v5;
  }

  else
  {
    v9 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BRKRemindersSettingsHelper _handwashingLocationManager];
    }

    [(BRKRemindersSettingsHelper *)self setLocationAvailable:0];
    [(BRKRemindersSettingsHelper *)self setLocationAuthorizationValid:0];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_handwashingAppBundleLocationManager
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBFC10]);
  v4 = [v3 initWithEffectiveBundleIdentifier:@"com.apple.brook.BrookUI" delegate:self onQueue:MEMORY[0x277D85CD0]];
  v5 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[BRKRemindersSettingsHelper _handwashingAppBundleLocationManager]";
    _os_log_impl(&dword_241EE4000, v5, OS_LOG_TYPE_DEFAULT, "%s [[CLLocationManager alloc] initWithEffectiveBundleIdentifier:BROOK_UI_APP_BUNDLE_IDENTIFIER delegate:self onQueue:dispatch_get_main_queue()]", &v11, 0xCu);
  }

  if (v4)
  {
    v6 = [MEMORY[0x277CBFBF8] newAssertionForBundleIdentifier:@"com.apple.brook.BrookUI" withReason:@"Accepting Handwashing terms"];
    [(BRKRemindersSettingsHelper *)self setInUseAssertion:v6];

    v7 = v4;
  }

  else
  {
    v8 = BRKLoggingObjectForDomain(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BRKRemindersSettingsHelper _handwashingAppBundleLocationManager];
    }

    [(BRKRemindersSettingsHelper *)self setLocationAvailable:0];
    [(BRKRemindersSettingsHelper *)self setLocationAuthorizationValid:0];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_fetchLocationAuthorizationStatus
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = BRKLoggingObjectForDomain(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[BRKRemindersSettingsHelper _fetchLocationAuthorizationStatus]";
    _os_log_impl(&dword_241EE4000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v4 = [(BRKRemindersSettingsHelper *)self locationManager];
  v5 = [v4 authorizationStatus];
  v6 = [(BRKRemindersSettingsHelper *)self locationManager];
  [(BRKRemindersSettingsHelper *)self _updateWithLocationAuthorizationStatus:v5 manager:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_fetchLocationAvailableStatus
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__BRKRemindersSettingsHelper__fetchLocationAvailableStatus__block_invoke;
  v3[3] = &unk_278D28BA0;
  objc_copyWeak(&v4, &location);
  [(BRKRemindersSettingsHelper *)self _isCoreRoutineHomeAvailableWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __59__BRKRemindersSettingsHelper__fetchLocationAvailableStatus__block_invoke(uint64_t a1, char a2, char a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__BRKRemindersSettingsHelper__fetchLocationAvailableStatus__block_invoke_2;
  v5[3] = &unk_278D28B78;
  objc_copyWeak(&v6, (a1 + 32));
  v7 = a2;
  v8 = a3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v6);
}

void __59__BRKRemindersSettingsHelper__fetchLocationAvailableStatus__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLocationAvailable:*(a1 + 40)];
  [WeakRetained setCoreRoutineAvailable:*(a1 + 41)];
}

- (void)_isCoreRoutineHomeAvailableWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BRKRemindersSettingsHelper *)self routineManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__BRKRemindersSettingsHelper__isCoreRoutineHomeAvailableWithCompletion___block_invoke;
  v7[3] = &unk_278D28BC8;
  v8 = v4;
  v6 = v4;
  [BRKRoutineManager fetchLocationsOfInterestWithSingleRetryOfType:0 routineManager:v5 withHandler:v7];
}

void __72__BRKRemindersSettingsHelper__isCoreRoutineHomeAvailableWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 code];
    v9 = BRKLoggingObjectForDomain(13);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v8 == 2)
    {
      if (v10)
      {
        __72__BRKRemindersSettingsHelper__isCoreRoutineHomeAvailableWithCompletion___block_invoke_cold_2();
      }
    }

    else if (v10)
    {
      __72__BRKRemindersSettingsHelper__isCoreRoutineHomeAvailableWithCompletion___block_invoke_cold_1();
    }
  }

  else
  {
    v11 = [v5 count];
    v9 = BRKLoggingObjectForDomain(13);
    v12 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v12)
      {
        v14 = 136315138;
        v15 = "[BRKRemindersSettingsHelper _isCoreRoutineHomeAvailableWithCompletion:]_block_invoke";
        _os_log_impl(&dword_241EE4000, v9, OS_LOG_TYPE_DEFAULT, "%s: found at least one location of interest for RTLocationOfInterestTypeHome", &v14, 0xCu);
      }
    }

    else if (v12)
    {
      v14 = 136315138;
      v15 = "[BRKRemindersSettingsHelper _isCoreRoutineHomeAvailableWithCompletion:]_block_invoke";
      _os_log_impl(&dword_241EE4000, v9, OS_LOG_TYPE_DEFAULT, "%s: no locations of interest for RTLocationOfInterestTypeHome", &v14, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithLocationAuthorizationStatus:(int)a3 manager:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__BRKRemindersSettingsHelper__updateWithLocationAuthorizationStatus_manager___block_invoke;
  v8[3] = &unk_278D28BF0;
  objc_copyWeak(&v10, &location);
  v11 = a3;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __77__BRKRemindersSettingsHelper__updateWithLocationAuthorizationStatus_manager___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_14;
  }

  v3 = *(a1 + 48);
  v4 = BRKLoggingObjectForDomain(13);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 3)
  {
    if (v5)
    {
      [*(a1 + 32) _limitsPrecision];
      v6 = NSStringFromBOOL();
      v11 = 136315394;
      v12 = "[BRKRemindersSettingsHelper _updateWithLocationAuthorizationStatus:manager:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%s: location auth is always, _limitsPrecision: %@", &v11, 0x16u);
    }

    v7 = [*(a1 + 32) _limitsPrecision] ^ 1;
    v8 = WeakRetained;
    goto LABEL_13;
  }

  if (v3)
  {
    if (v5)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
      v11 = 136315394;
      v12 = "[BRKRemindersSettingsHelper _updateWithLocationAuthorizationStatus:manager:]_block_invoke";
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%s: location auth is NOT always (%@)", &v11, 0x16u);
    }

    v8 = WeakRetained;
    v7 = 0;
LABEL_13:
    [v8 setLocationAuthorizationValid:v7];
    goto LABEL_14;
  }

  if (v5)
  {
    v11 = 136315138;
    v12 = "[BRKRemindersSettingsHelper _updateWithLocationAuthorizationStatus:manager:]_block_invoke";
    _os_log_impl(&dword_241EE4000, v4, OS_LOG_TYPE_DEFAULT, "%s: location auth is undetermined", &v11, 0xCu);
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
}

- (BRKRemindersSettingsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handwashingLocationManager
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handwashingAppBundleLocationManager
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __72__BRKRemindersSettingsHelper__isCoreRoutineHomeAvailableWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __72__BRKRemindersSettingsHelper__isCoreRoutineHomeAvailableWithCompletion___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end