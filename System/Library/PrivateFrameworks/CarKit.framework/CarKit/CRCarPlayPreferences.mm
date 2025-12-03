@interface CRCarPlayPreferences
+ (BOOL)hasShownEditWidgetsNotification;
+ (id)_BOOLValueInAirPlayDomainForKey:(__CFString *)key;
+ (id)_BOOLValueInCarPlayDomainForKey:(__CFString *)key;
+ (id)isPreflightThemeAssetEnabled;
+ (void)setHasShownEditWidgetsNotification:(BOOL)notification;
+ (void)setPreflightThemeAssetEnabled:(BOOL)enabled;
- (BOOL)_isCarPlayAllowed;
- (BOOL)isCarPlayCapable;
- (CRCarPlayPreferences)init;
- (CRCarPlayPreferencesDelegate)preferencesDelegate;
- (id)forceCarPlayThemeSupportEnablement;
- (id)isCCCHeadUnitPairingOverrideEnabled;
- (id)isCarPlayRouteSharingEnabled;
- (id)isCarPlaySetupEnabled;
- (id)isCarPlayThemeSupportEnabled;
- (id)shouldAlwaysAcceptCCCHeadUnitPairing;
- (void)_updateCarPlayAllowed;
- (void)dealloc;
@end

@implementation CRCarPlayPreferences

- (CRCarPlayPreferences)init
{
  v7.receiver = self;
  v7.super_class = CRCarPlayPreferences;
  v2 = [(CRCarPlayPreferences *)&v7 init];
  if (v2)
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    profileConnection = v2->_profileConnection;
    v2->_profileConnection = mEMORY[0x1E69ADFB8];

    [(MCProfileConnection *)v2->_profileConnection registerObserver:v2];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, CRLostModeStateChanged, *MEMORY[0x1E699C858], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(CRCarPlayPreferences *)v2 setCachedCarPlayAllowed:[(CRCarPlayPreferences *)v2 _isCarPlayAllowed]];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [(MCProfileConnection *)self->_profileConnection unregisterObserver:self];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = CRCarPlayPreferences;
  [(CRCarPlayPreferences *)&v5 dealloc];
}

- (void)_updateCarPlayAllowed
{
  _isCarPlayAllowed = [(CRCarPlayPreferences *)self _isCarPlayAllowed];
  if (_isCarPlayAllowed != [(CRCarPlayPreferences *)self cachedCarPlayAllowed])
  {
    [(CRCarPlayPreferences *)self setCachedCarPlayAllowed:_isCarPlayAllowed];
    preferencesDelegate = [(CRCarPlayPreferences *)self preferencesDelegate];
    if (objc_opt_respondsToSelector())
    {
      [preferencesDelegate handleCarPlayAllowedDidChange];
    }
  }
}

+ (id)_BOOLValueInCarPlayDomainForKey:(__CFString *)key
{
  v3 = CFPreferencesCopyValue(key, CRPreferencesNotMigratedDomain, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFBooleanGetTypeID())
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:CFBooleanGetValue(v4)];
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_BOOLValueInAirPlayDomainForKey:(__CFString *)key
{
  v3 = CFPreferencesCopyValue(key, CRPreferencesAirPlayDomain, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFBooleanGetTypeID())
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:CFBooleanGetValue(v4)];
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isCarPlayCapable
{
  v2 = MGGetBoolAnswer();
  v3 = CarGeneralLogging();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v9 = 0;
      v5 = "device is CarPlay capable";
      v6 = &v9;
LABEL_6:
      _os_log_impl(&dword_1C81FC000, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else if (v4)
  {
    v8 = 0;
    v5 = "device is not CarPlay capable";
    v6 = &v8;
    goto LABEL_6;
  }

  return v2;
}

- (BOOL)_isCarPlayAllowed
{
  if ([(CRCarPlayPreferences *)self isCarPlayCapable])
  {
    if (([(MCProfileConnection *)self->_profileConnection isVehicleUIAllowed]& 1) != 0)
    {
      mEMORY[0x1E699C848] = [MEMORY[0x1E699C848] sharedInstance];
      if (([mEMORY[0x1E699C848] isLostModeActive]& 1) == 0 && ![mEMORY[0x1E699C848] isManagedLostModeActive])
      {
        v5 = 1;
        goto LABEL_12;
      }

      v4 = CarGeneralLogging();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1C81FC000, v4, OS_LOG_TYPE_DEFAULT, "CarPlay disabled by lost mode.", v7, 2u);
      }
    }

    else
    {
      mEMORY[0x1E699C848] = CarGeneralLogging();
      if (os_log_type_enabled(mEMORY[0x1E699C848], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C81FC000, mEMORY[0x1E699C848], OS_LOG_TYPE_DEFAULT, "CarPlay disabled by restrictions", buf, 2u);
      }
    }

    v5 = 0;
LABEL_12:

    return v5;
  }

  return 0;
}

- (id)isCCCHeadUnitPairingOverrideEnabled
{
  v2 = objc_opt_class();

  return [v2 _BOOLValueInCarPlayDomainForKey:@"EnableHeadUnitPairingOverride"];
}

- (id)shouldAlwaysAcceptCCCHeadUnitPairing
{
  v2 = objc_opt_class();

  return [v2 _BOOLValueInCarPlayDomainForKey:@"AlwaysAcceptHeadUnitPairing"];
}

- (id)isCarPlaySetupEnabled
{
  v2 = [objc_opt_class() _BOOLValueInCarPlayDomainForKey:@"EnableCarPlaySetup"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E118];
  }

  return v4;
}

- (id)isCarPlayThemeSupportEnabled
{
  v2 = [objc_opt_class() _BOOLValueInCarPlayDomainForKey:@"EnableFerrite"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E118];
  }

  return v4;
}

- (id)forceCarPlayThemeSupportEnablement
{
  v2 = [objc_opt_class() _BOOLValueInCarPlayDomainForKey:@"EnableFerrite"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E110];
  }

  return v4;
}

- (id)isCarPlayRouteSharingEnabled
{
  v2 = [objc_opt_class() _BOOLValueInAirPlayDomainForKey:@"enableCarPlayRouteSharing"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E110];
  }

  return v4;
}

+ (id)isPreflightThemeAssetEnabled
{
  v2 = [objc_opt_class() _BOOLValueInCarPlayDomainForKey:@"EnablePreflightThemeAsset"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E110];
  }

  return v4;
}

+ (void)setPreflightThemeAssetEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [v4 _setBoolValue:v5 inCarPlayDomainForKey:@"EnablePreflightThemeAsset"];
}

+ (BOOL)hasShownEditWidgetsNotification
{
  v2 = [objc_opt_class() _BOOLValueInCarPlayDomainForKey:@"HasShownEditWidgets"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (void)setHasShownEditWidgetsNotification:(BOOL)notification
{
  notificationCopy = notification;
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithBool:notificationCopy];
  [v4 _setBoolValue:v5 inCarPlayDomainForKey:@"HasShownEditWidgets"];
}

- (CRCarPlayPreferencesDelegate)preferencesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_preferencesDelegate);

  return WeakRetained;
}

@end