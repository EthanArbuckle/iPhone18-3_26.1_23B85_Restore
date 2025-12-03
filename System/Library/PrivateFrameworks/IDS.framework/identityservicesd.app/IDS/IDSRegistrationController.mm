@interface IDSRegistrationController
+ (BOOL)_isPhoneNumberAuthenticationDuringBuddyAllowed;
+ (BOOL)canCompleteRegistration;
+ (BOOL)canStartRegistrationForAccountType:(int)type;
+ (BOOL)isBuddyBlockingRegistration;
+ (BOOL)isBuddyShowing;
+ (BOOL)systemSupportsPhoneNumberRegistration;
+ (BOOL)systemSupportsRegistrationInfo:(id)info;
+ (BOOL)systemSupportsServiceType:(id)type accountType:(int)accountType isTemporary:(BOOL)temporary;
+ (BOOL)systemSupportsServiceType:(id)type registrationType:(int)registrationType;
+ (BOOL)validSIMStateForRegistration;
+ (IDSRegistrationController)sharedInstance;
+ (id)registeredPhoneNumbers;
+ (void)initialize;
- (BOOL)_performCorrectServerRequestForTemporaryPhoneRegistration:(id)registration sentAuthentication:(BOOL *)authentication sentIDSAction:(BOOL *)action;
- (BOOL)_pnrOngoing;
- (BOOL)_sendIDSAuthenticationForRegistration:(id)registration;
- (BOOL)_sendIDSAuthenticationOrRegistrationIfNeeded:(id)needed;
- (BOOL)_shouldSubmitRegistrationCompletedMetricForRegistration:(id)registration;
- (BOOL)registerInfo:(id)info requireSilentAuth:(BOOL)auth;
- (BOOL)registrationSupportedForRegistration:(id)registration;
- (BOOL)systemSupportsPhoneNumberRegistration;
- (BOOL)systemSupportsRegistrationInfo:(id)info;
- (BOOL)systemSupportsServiceType:(id)type accountType:(int)accountType isTemporary:(BOOL)temporary;
- (BOOL)systemSupportsServiceType:(id)type registrationType:(int)registrationType;
- (BOOL)unregisterInfo:(id)info;
- (IDSRegistrationController)initWithUserStore:(id)store;
- (IDSUserStore)userStore;
- (NSArray)activeRegistrationsToRegister;
- (double)simDeactivationInfoRateLimitInterval;
- (id)_phoneUserWithCredentials;
- (id)_provisionedTemporaryUser;
- (id)activeRegistrationsMatchingUserID:(id)d;
- (id)activeRegistrationsOfType:(int)type;
- (int64_t)simDeactivationInfoRateLimitCount;
- (void)SIM:(id)m didDeactivateWithInfo:(id)info;
- (void)_alertForHomeNumberIfNeededForSIMIdentifier:(id)identifier withPhoneNumber:(id)number;
- (void)_captureDiagnosticsForFailedRegistration:(id)registration registrationError:(int64_t)error;
- (void)_ensureProfileQueriesAreReadyForRegistratration:(id)registratration;
- (void)_notifyAllRegistrationSuccess:(id)success;
- (void)_notifyDeregistrationStarting:(id)starting;
- (void)_notifyHomeNumberSuccessForUser:(id)user;
- (void)_notifyNeedsNewRegistration;
- (void)_notifyRegistrationFailure:(id)failure error:(int64_t)error info:(id)info;
- (void)_notifyRegistrationStarting:(id)starting;
- (void)_notifyRegistrationSuccess:(id)success;
- (void)_notifyRegistrationUpdated:(id)updated;
- (void)_postHomeNumberNotificationBeforeAlertForIdentifier:(id)identifier forcefully:(BOOL)forcefully;
- (void)_submitRegistrationCompletedMetricWithRegistration:(id)registration success:(BOOL)success registrationError:(int64_t)error;
- (void)_systemConfigurationPrefsChanged;
- (void)_updateNotifyState;
- (void)addListener:(id)listener;
- (void)cancelActionsForRegistrationInfo:(id)info;
- (void)center:(id)center failedAuthentication:(id)authentication error:(int64_t)error info:(id)info;
- (void)center:(id)center failedIDSAuthentication:(id)authentication error:(int64_t)error info:(id)info;
- (void)center:(id)center failedIdentification:(id)identification error:(int64_t)error;
- (void)center:(id)center failedRegistration:(id)registration error:(int64_t)error info:(id)info;
- (void)center:(id)center succeededAuthentication:(id)authentication;
- (void)center:(id)center succeededCurrentEmailsRequest:(id)request emailInfo:(id)info;
- (void)center:(id)center succeededIDSAuthentication:(id)authentication;
- (void)center:(id)center succeededIdentification:(id)identification phoneNumber:(id)number token:(id)token;
- (void)center:(id)center succeededInitialRegionQuery:(id)query;
- (void)center:(id)center succeededLinkHandlesConfirmation:(id)confirmation emailAddress:(id)address;
- (void)center:(id)center succeededRegionValidation:(id)validation regionID:(id)d phoneNumber:(id)number extraContext:(id)context verified:(BOOL)verified;
- (void)center:(id)center succeededRegistration:(id)registration;
- (void)centerNeedsNewIdentification:(id)identification;
- (void)dealloc;
- (void)noteManateeAvailabilityTime;
- (void)noteiCloudSignInTime;
- (void)removeListener:(id)listener;
- (void)reportClientEvent:(id)event registration:(id)registration completion:(id)completion;
- (void)reportMessage:(id)message toURI:(id)i registration:(id)registration;
- (void)reportSpamWithMessages:(id)messages toURI:(id)i registration:(id)registration;
- (void)reportiMessageUnknownSender:(id)sender messageID:(id)d isBlackholed:(BOOL)blackholed isJunked:(BOOL)junked messageServerTimestamp:(id)timestamp toURI:(id)i registration:(id)registration;
- (void)startTrackingActiveRegistration:(id)registration;
- (void)startTrackingRegistration:(id)registration;
- (void)stopTrackingActiveRegistration:(id)registration;
- (void)stopTrackingRegistration:(id)registration;
- (void)systemDidLeaveFirstDataProtectionLock;
@end

@implementation IDSRegistrationController

+ (BOOL)systemSupportsPhoneNumberRegistration
{
  v2 = +[FTDeviceSupport sharedInstance];
  deviceType = [v2 deviceType];

  v4 = +[IDSPairingManager sharedInstance];
  isCurrentDeviceTinkerConfiguredWatch = [v4 isCurrentDeviceTinkerConfiguredWatch];

  if (deviceType == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = (deviceType == 6) & isCurrentDeviceTinkerConfiguredWatch;
  }

  v7 = +[IDSCTAdapter sharedInstance];
  supportsIdentification = [v7 supportsIdentification];

  return supportsIdentification & v6;
}

+ (BOOL)isBuddyShowing
{
  v2 = +[IMSystemMonitor sharedInstance];
  isSetup = [v2 isSetup];

  return isSetup ^ 1;
}

+ (BOOL)isBuddyBlockingRegistration
{
  if (_os_feature_enabled_impl())
  {
    return 0;
  }

  return [self isBuddyShowing];
}

+ (id)registeredPhoneNumbers
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = +[IDSRegistrationController sharedInstance];
  trackedRegistrations = [v3 trackedRegistrations];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100022EF4;
  v8[3] = &unk_100BD8A48;
  v9 = v2;
  v5 = v2;
  [trackedRegistrations enumerateObjectsUsingBlock:v8];

  v6 = [v5 copy];

  return v6;
}

+ (IDSRegistrationController)sharedInstance
{
  if (qword_100CBD150 != -1)
  {
    sub_100918324();
  }

  v3 = qword_100CBD158;

  return v3;
}

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {

    +[IDSRegistrationKeyManager setupKeys];
  }
}

+ (BOOL)canStartRegistrationForAccountType:(int)type
{
  if (_os_feature_enabled_impl())
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "RegisterDuringBuddy feature flag set to YES.  Allowing registration.", &v19, 2u);
    }

    v6 = 1;
  }

  else
  {
    isBuddyBlockingRegistration = [self isBuddyBlockingRegistration];
    _isPhoneNumberAuthenticationDuringBuddyAllowed = [self _isPhoneNumberAuthenticationDuringBuddyAllowed];
    v9 = +[IDSPairingManager sharedInstance];
    isCurrentDeviceTinkerConfiguredWatch = [v9 isCurrentDeviceTinkerConfiguredWatch];

    v11 = _isPhoneNumberAuthenticationDuringBuddyAllowed | isBuddyBlockingRegistration ^ 1;
    if (type)
    {
      v11 = isBuddyBlockingRegistration ^ 1;
    }

    if (type == 1)
    {
      v6 = isCurrentDeviceTinkerConfiguredWatch | isBuddyBlockingRegistration ^ 1;
    }

    else
    {
      v6 = v11;
    }

    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v6)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = _StringForIDSAccountType();
      v14 = v13;
      v19 = 138413314;
      if (isBuddyBlockingRegistration)
      {
        v15 = @"NO";
      }

      else
      {
        v15 = @"YES";
      }

      v20 = v12;
      if (_isPhoneNumberAuthenticationDuringBuddyAllowed)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v21 = 2112;
      if (isCurrentDeviceTinkerConfiguredWatch)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v22 = v13;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Checked whether system setup dependencies are complete { haveDependenciesCompleted: %@, accountType: %@, hasSetupCompleted: %@, isPhoneNumberAuthenticationDuringSetupAllowed: %@, isAppleIDRegistrationDuringSetupAllowed: %@ }", &v19, 0x34u);
    }
  }

  return v6 & 1;
}

+ (BOOL)canCompleteRegistration
{
  v2 = +[IDSPairingManager sharedInstance];
  v3 = [v2 activePairedDeviceHasPairingType:1];

  v4 = +[IDSDependencyProvider systemMonitorAdapter];
  isUnderFirstDataProtectionLock = [v4 isUnderFirstDataProtectionLock];

  if ((isUnderFirstDataProtectionLock & 1) == 0 && (v3 & 1) == 0)
  {
    isUnderFirstDataProtectionLock = +[IDSRegistrationController isBuddyBlockingRegistration];
  }

  return isUnderFirstDataProtectionLock ^ 1;
}

+ (BOOL)_isPhoneNumberAuthenticationDuringBuddyAllowed
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"setup-phone-auth-enabled"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (BOOL)validSIMStateForRegistration
{
  if (!+[IDSRegistrationController systemSupportsPhoneNumberRegistration])
  {
    return 1;
  }

  v2 = +[IDSCTAdapter sharedInstance];
  isAnySIMUsable = [v2 isAnySIMUsable];

  if ((isAnySIMUsable & 1) == 0)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = " SIM State says cannot register";
      v7 = buf;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }

LABEL_8:

    return 0;
  }

  v4 = +[IDSCTAdapter sharedInstance];
  if (![v4 isAnySIMUsable])
  {
    v9 = +[IMMobileNetworkManager sharedInstance];
    requiresSIMInserted = [v9 requiresSIMInserted];

    if (!requiresSIMInserted)
    {
      return 1;
    }

    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v6 = " SIM is not inserted, cannot register";
      v7 = &v11;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  return 1;
}

- (IDSUserStore)userStore
{
  userStore = self->_userStore;
  if (userStore)
  {
    userStore = userStore;
  }

  else
  {
    v4 = +[IDSDaemon sharedInstance];
    registrationConductor = [v4 registrationConductor];
    userStore = [registrationConductor userStore];
  }

  return userStore;
}

- (IDSRegistrationController)initWithUserStore:(id)store
{
  storeCopy = store;
  v29.receiver = self;
  v29.super_class = IDSRegistrationController;
  v6 = [(IDSRegistrationController *)&v29 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userStore, store);
    v8 = +[FTDeviceSupport sharedInstance];
    deviceName = [v8 deviceName];
    deviceName = v7->_deviceName;
    v7->_deviceName = deviceName;

    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = +[FTDeviceSupport sharedInstance];
      deviceInformationString = [v12 deviceInformationString];
      LODWORD(buf.version) = 138412290;
      *(&buf.version + 4) = deviceInformationString;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Registration controller starting up (%@)", &buf, 0xCu);
    }

    memset(&buf, 0, sizeof(buf));
    v14 = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.IDSRegistrationController", sub_10036E174, &buf);
    if (v14)
    {
      v15 = v14;
      ComputerName = SCDynamicStoreKeyCreateComputerName(kCFAllocatorDefault);
      v30 = ComputerName;
      v17 = [NSArray arrayWithObjects:&v30 count:1];
      if (ComputerName)
      {
        CFRelease(ComputerName);
      }

      SCDynamicStoreSetNotificationKeys(v15, v17, 0);
      v18 = im_primary_queue();
      SCDynamicStoreSetDispatchQueue(v15, v18);
    }

    v19 = objc_alloc_init(IDSKeychainWrapper);
    keychainWrapper = v7->_keychainWrapper;
    v7->_keychainWrapper = v19;

    v21 = +[IDSAppleIDRegistrationCenter sharedInstance];
    [v21 addListener:v7];

    v22 = +[IDSRegistrationCenter sharedInstance];
    [v22 addListener:v7];

    v23 = +[IDSSMSRegistrationCenter sharedInstance];
    [v23 addListener:v7];

    if (_IDSRunningInDaemon())
    {
      v24 = IMUserScopedNotification();
      notify_register_check(v24, &v7->_screenSharingToken);
      v25 = IMUserScopedNotification();
      notify_register_check(v25, &v7->_iMessageToken);
      v26 = IMUserScopedNotification();
      notify_register_check(v26, &v7->_faceTimeToken);
      v27 = IMUserScopedNotification();
      notify_register_check(v27, &v7->_callingToken);
      [(IDSRegistrationController *)v7 _updateNotifyState];
    }
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:0 object:0];

  v4 = +[IDSAppleIDRegistrationCenter sharedInstance];
  [v4 removeListener:self];

  v5 = +[IDSRegistrationCenter sharedInstance];
  [v5 removeListener:self];

  v6 = +[IDSSMSRegistrationCenter sharedInstance];
  [v6 removeListener:self];

  v7.receiver = self;
  v7.super_class = IDSRegistrationController;
  [(IDSRegistrationController *)&v7 dealloc];
}

- (BOOL)registrationSupportedForRegistration:(id)registration
{
  v3 = +[IMLockdownManager sharedInstance];
  isExpired = [v3 isExpired];

  if (isExpired)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "*** Lockdown state is expired, not allowing registration", &v10, 2u);
    }

    LOBYTE(registrationSupported) = 0;
  }

  else
  {
    v7 = +[FTDeviceSupport sharedInstance];
    registrationSupported = [v7 registrationSupported];

    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (registrationSupported)
      {
        v8 = @"YES";
      }

      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Returning device support registration supported: %@", &v10, 0xCu);
    }
  }

  return registrationSupported;
}

+ (BOOL)systemSupportsServiceType:(id)type accountType:(int)accountType isTemporary:(BOOL)temporary
{
  temporaryCopy = temporary;
  v6 = *&accountType;
  typeCopy = type;
  if (v6 != 1)
  {
    if (v6)
    {
      v9 = 1;
      goto LABEL_8;
    }

    if (temporaryCopy)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  v9 = [self systemSupportsServiceType:typeCopy registrationType:v6];
LABEL_8:

  return v9;
}

+ (BOOL)systemSupportsServiceType:(id)type registrationType:(int)registrationType
{
  typeCopy = type;
  if (registrationType != 2)
  {
    if (registrationType == 1)
    {
      v9 = +[FTDeviceSupport sharedInstance];
      supportsAppleIDIdentification = [v9 supportsAppleIDIdentification];

      if ((supportsAppleIDIdentification & 1) == 0)
      {
        v6 = +[IMRGLog registration];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v7 = "System does not support Apple ID identification";
          v8 = buf;
          goto LABEL_21;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (registrationType)
      {
        v15 = +[IMRGLog warning];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          sub_1009183B0(registrationType, v15);
        }

        goto LABEL_23;
      }

      if (!+[IDSRegistrationController systemSupportsPhoneNumberRegistration])
      {
        v6 = +[IMRGLog registration];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 0;
          v7 = "System does not support SMS identification";
          v8 = &v30;
LABEL_21:
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
          goto LABEL_22;
        }

        goto LABEL_22;
      }
    }
  }

  if (!IDSIsFaceTimeRegistrationServiceType())
  {
    if (IDSIsCallingRegistrationServiceType())
    {
      v13 = +[FTDeviceSupport sharedInstance];
      callingSupported = [v13 callingSupported];

      if ((callingSupported & 1) == 0)
      {
        v6 = +[IMRGLog registration];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 0;
          v7 = "System does not support Calling";
          v8 = &v27;
          goto LABEL_21;
        }

        goto LABEL_22;
      }
    }

    else if (IDSIsMultiwayRegistrationServiceType())
    {
      v17 = +[FTDeviceSupport sharedInstance];
      multiwaySupported = [v17 multiwaySupported];

      if ((multiwaySupported & 1) == 0)
      {
        v6 = +[IMRGLog registration];
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        v26 = 0;
        v7 = "System does not support Multiway";
        v8 = &v26;
        goto LABEL_21;
      }
    }

    else if (IDSIsiMessageRegistrationServiceType())
    {
      v19 = +[FTDeviceSupport sharedInstance];
      iMessageSupported = [v19 iMessageSupported];

      if ((iMessageSupported & 1) == 0)
      {
        v6 = +[IMRGLog registration];
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        v25 = 0;
        v7 = "System does not support iMessage";
        v8 = &v25;
        goto LABEL_21;
      }
    }

    else
    {
      if (!IDSIsAlloyRegistrationServiceType())
      {
        if (IDSIsStewieRegistrationServiceType())
        {
          v16 = registrationType == 0;
          goto LABEL_35;
        }

        v6 = +[IMRGLog warning];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          sub_100918338(typeCopy, v6);
        }

        goto LABEL_22;
      }

      v21 = +[FTDeviceSupport sharedInstance];
      identityServicesSupported = [v21 identityServicesSupported];

      if ((identityServicesSupported & 1) == 0)
      {
        v6 = +[IMRGLog registration];
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        v24 = 0;
        v7 = "System does not support IDS";
        v8 = &v24;
        goto LABEL_21;
      }
    }

LABEL_34:
    v16 = 1;
    goto LABEL_35;
  }

  v11 = +[FTDeviceSupport sharedInstance];
  faceTimeSupported = [v11 faceTimeSupported];

  if (faceTimeSupported)
  {
    goto LABEL_34;
  }

  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 0;
    v7 = "System does not support FaceTime";
    v8 = &v28;
    goto LABEL_21;
  }

LABEL_22:

LABEL_23:
  v16 = 0;
LABEL_35:

  return v16;
}

+ (BOOL)systemSupportsRegistrationInfo:(id)info
{
  infoCopy = info;
  serviceType = [infoCopy serviceType];
  v6 = [self systemSupportsServiceType:serviceType registrationType:{objc_msgSend(infoCopy, "registrationType")}];
  if ((v6 & 1) == 0)
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = infoCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "We can't register this: %@", &v9, 0xCu);
    }
  }

  return v6;
}

- (BOOL)systemSupportsPhoneNumberRegistration
{
  v2 = objc_opt_class();

  return [v2 systemSupportsPhoneNumberRegistration];
}

- (BOOL)systemSupportsServiceType:(id)type accountType:(int)accountType isTemporary:(BOOL)temporary
{
  temporaryCopy = temporary;
  v6 = *&accountType;
  typeCopy = type;
  LOBYTE(temporaryCopy) = [objc_opt_class() systemSupportsServiceType:typeCopy accountType:v6 isTemporary:temporaryCopy];

  return temporaryCopy;
}

- (BOOL)systemSupportsServiceType:(id)type registrationType:(int)registrationType
{
  v4 = *&registrationType;
  typeCopy = type;
  LOBYTE(v4) = [objc_opt_class() systemSupportsServiceType:typeCopy registrationType:v4];

  return v4;
}

- (BOOL)systemSupportsRegistrationInfo:(id)info
{
  infoCopy = info;
  v4 = [objc_opt_class() systemSupportsRegistrationInfo:infoCopy];

  return v4;
}

- (BOOL)registerInfo:(id)info requireSilentAuth:(BOOL)auth
{
  authCopy = auth;
  infoCopy = info;
  v6 = +[IDSRegistrationEventTracing sharedInstance];
  registrationTraceID = [infoCopy registrationTraceID];
  v8 = [v6 isRegistrationOpenWithGuid:registrationTraceID];

  if ((v8 & 1) == 0)
  {
    [infoCopy resetRegistrationID];
    v9 = objc_alloc_init(IDSRegistrationEventTracingRegistrationEvent);
    v10 = +[IDSRegistrationEventTracing sharedInstance];
    registrationTraceID2 = [infoCopy registrationTraceID];
    [v10 beginEvent:v9 identifier:registrationTraceID2];
  }

  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v99 = _os_activity_create(&_mh_execute_header, "Registration controller register", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v99, &state);
  v12 = +[IMRGLog registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = +[FTDeviceSupport sharedInstance];
    deviceInformationString = [v13 deviceInformationString];
    *buf = 138412546;
    v102 = infoCopy;
    v103 = 2112;
    v104 = deviceInformationString;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Registration request: %@  (Environment: %@)", buf, 0x16u);
  }

  if ([(IDSRegistrationController *)self registrationSupportedForRegistration:infoCopy])
  {
    pushToken = [infoCopy pushToken];
    v16 = pushToken == 0;

    if (v16)
    {
      v20 = +[IMRGLog registration];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v102 = infoCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Cannot register, invalid push token: %@", buf, 0xCu);
      }

      v24 = 14;
      goto LABEL_23;
    }

    if ([(IDSRegistrationController *)self systemSupportsRegistrationInfo:infoCopy])
    {
      if (![infoCopy registrationType] && !+[IMUserDefaults bypassRegistrationControlStatusCheck](IMUserDefaults, "bypassRegistrationControlStatusCheck"))
      {
        v17 = +[IDSDRegistrationControl sharedInstance];
        v18 = [v17 registrationStateForRegistrationType:0 error:0];

        if ((v18 & 0xFFFFFFFFFFFFFFFDLL) == 1)
        {
          v19 = +[IMRGLog registration];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v102 = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Cannot register, phone number registration or authentication are disabled { controlStatus: %lld }", buf, 0xCu);
          }

          [(IDSRegistrationController *)self _notifyRegistrationFailure:infoCopy error:39 info:0];
          goto LABEL_24;
        }
      }

      v97 = 0;
      [infoCopy setRunningSimpleAuthentication:0];
      registrationType = [infoCopy registrationType];
      if (registrationType)
      {
        if (registrationType != 1)
        {
          if (registrationType != 2)
          {
            v52 = +[IMRGLog warning];
            if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
            {
              sub_100918428(infoCopy, buf, [infoCopy registrationType], v52);
            }

            v29 = 1;
            goto LABEL_57;
          }

          v28 = +[IMRGLog registration];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v102 = infoCopy;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Request to register Home Number for info: %@", buf, 0xCu);
          }

          if (![(IDSRegistrationController *)self _performCorrectServerRequestForTemporaryPhoneRegistration:infoCopy sentAuthentication:&v97 + 1 sentIDSAction:&v97])
          {
            v29 = 11;
LABEL_57:
            [(IDSRegistrationController *)self _notifyRegistrationFailure:infoCopy error:v29 info:0];
            goto LABEL_24;
          }

LABEL_81:
          authenticationToken = [infoCopy authenticationToken];
          if ([infoCopy registrationType] != 1)
          {
            goto LABEL_104;
          }

          authenticationCert = [infoCopy authenticationCert];
          if (!authenticationCert)
          {
            goto LABEL_104;
          }

          regionID = [infoCopy regionID];
          if ([regionID length])
          {
            regionBasePhoneNumber = [infoCopy regionBasePhoneNumber];
            v71 = [regionBasePhoneNumber length] == 0;

            if (!v71)
            {
              goto LABEL_104;
            }
          }

          else
          {
          }

          v72 = +[IMRGLog registration];
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v102 = infoCopy;
            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "This registration is missing region information, despite being already authenticated, let's fix that: %@", buf, 0xCu);
          }

          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v73 = self->_trackedRegistrations;
          v74 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v93 objects:v100 count:16];
          if (v74)
          {
            v75 = *v94;
            do
            {
              for (i = 0; i != v74; i = i + 1)
              {
                if (*v94 != v75)
                {
                  objc_enumerationMutation(v73);
                }

                v77 = *(*(&v93 + 1) + 8 * i);
                if (v77 != infoCopy && [*(*(&v93 + 1) + 8 * i) registrationType] == 1)
                {
                  regionID2 = [v77 regionID];
                  if (regionID2)
                  {
                    regionBasePhoneNumber2 = [v77 regionBasePhoneNumber];
                    v80 = regionBasePhoneNumber2 == 0;

                    if (!v80)
                    {
                      v81 = +[IMRGLog registration];
                      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v102 = v77;
                        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "  => We found a good one we can pull from, let's fix ourselves using that: %@", buf, 0xCu);
                      }

                      regionID3 = [v77 regionID];
                      [infoCopy setRegionID:regionID3];

                      regionBasePhoneNumber3 = [v77 regionBasePhoneNumber];
                      [infoCopy setRegionBasePhoneNumber:regionBasePhoneNumber3];

                      [infoCopy saveToKeychain];
                    }
                  }
                }
              }

              v74 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v93 objects:v100 count:16];
            }

            while (v74);
          }

LABEL_104:
          if (authenticationToken)
          {
            v84 = 1;
          }

          else
          {
            authenticationCert2 = [infoCopy authenticationCert];
            v84 = authenticationCert2 != 0;
          }

          if ((v97 & 0x100) != 0)
          {
LABEL_108:
            [(IDSRegistrationController *)self _notifyRegistrationStarting:infoCopy];
            [(IDSRegistrationController *)self startTrackingActiveRegistration:infoCopy];
            v25 = 1;
LABEL_109:

            goto LABEL_25;
          }

          if ((v97 & 1) != 0 || !v84)
          {
            if (!v84)
            {
              v89 = +[IMRGLog registration];
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "...we didn't authenticate, and we can't ids authentcate or register. not good!", buf, 2u);
              }
            }

            goto LABEL_108;
          }

          if (!authenticationToken && ([infoCopy authenticationCert], v86 = objc_claimAutoreleasedReturnValue(), v87 = v86 == 0, v86, v87))
          {
            v90 = +[IMRGLog registration];
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "We were told that we're done authentication here, but we have no token... bailing register", buf, 2u);
            }

            [(IDSRegistrationController *)self _notifyRegistrationFailure:infoCopy error:11 info:0];
          }

          else
          {
            v88 = +[IMRGLog registration];
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v102 = infoCopy;
              _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "...trying to IDS Auth or Register: %@", buf, 0xCu);
            }

            if (sub_10036F9B8(infoCopy))
            {
              goto LABEL_108;
            }
          }

          v25 = 0;
          goto LABEL_109;
        }

        v30 = +[IMRGLog registration];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v102 = infoCopy;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Request to register apple ID based info: %@", buf, 0xCu);
        }

        authenticationToken2 = [infoCopy authenticationToken];
        profileID = [infoCopy profileID];
        if ([profileID length])
        {
          if (authenticationToken2)
          {

            authenticationCert3 = [infoCopy authenticationCert];
            v34 = authenticationCert3 == 0;

            if (v34)
            {
              v67 = +[IMRGLog registration];
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v102 = infoCopy;
                _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Sending IDS authentication for registration with existing auth token: %@", buf, 0xCu);
              }

              LOBYTE(v97) = [(IDSRegistrationController *)self _sendIDSAuthenticationForRegistration:infoCopy];
              goto LABEL_80;
            }

            authenticationCert4 = [infoCopy authenticationCert];
            v36 = authenticationCert4 == 0;

            if (!v36)
            {
              v37 = +[IMRGLog registration];
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v102 = infoCopy;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Sending IDS authentication for registration with existing auth token/cert: %@", buf, 0xCu);
              }

              if ([(IDSRegistrationController *)self _sendIDSAuthenticationOrRegistrationIfNeeded:infoCopy])
              {
                LOBYTE(v97) = 1;
LABEL_80:

                goto LABEL_81;
              }

              v61 = +[IMRGLog registration];
              if (!os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
LABEL_79:

                [(IDSRegistrationController *)self _ensureProfileQueriesAreReadyForRegistratration:infoCopy];
                goto LABEL_80;
              }

              *buf = 138412290;
              v102 = infoCopy;
              v62 = "Ensuring validation checks for: %@";
LABEL_78:
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, v62, buf, 0xCu);
              goto LABEL_79;
            }

LABEL_65:
            authenticationCert5 = [infoCopy authenticationCert];
            if (!authenticationCert5)
            {
              goto LABEL_80;
            }

            regionID4 = [infoCopy regionID];
            v60 = [regionID4 length] == 0;

            if (v60)
            {
              goto LABEL_80;
            }

            v61 = +[IMRGLog registration];
            if (!os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_79;
            }

            *buf = 138412290;
            v102 = infoCopy;
            v62 = "Registration looks correct, ensuring validation checks: %@";
            goto LABEL_78;
          }

          authenticationCert6 = [infoCopy authenticationCert];
          v57 = authenticationCert6 == 0;

          if (!v57)
          {
            goto LABEL_65;
          }
        }

        else
        {
        }

        v53 = +[IMRGLog registration];
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v102 = infoCopy;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Sending authentication for registration for new auth token and auth cert: %@", buf, 0xCu);
        }

        v54 = +[IDSAppleIDRegistrationCenter sharedInstance];
        [v54 authenticateRegistration:infoCopy requireSilentAuth:authCopy];

        HIBYTE(v97) = 1;
        goto LABEL_80;
      }

      v38 = +[IMRGLog registration];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v102 = infoCopy;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Request to register sms identified info: %@", buf, 0xCu);
      }

      authenticationToken3 = [infoCopy authenticationToken];
      if (!authenticationToken3)
      {
        migrationContext = [infoCopy migrationContext];
        v41 = migrationContext == 0;

        if (v41)
        {
          goto LABEL_51;
        }

        v42 = +[IMRGLog registration];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v102 = infoCopy;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "We can try to migrate this guy: %@", buf, 0xCu);
        }

        migrationContext2 = [infoCopy migrationContext];
        v44 = [migrationContext2 objectForKey:@"signature"];
        authenticationToken3 = [v44 _FTStringFromBaseData];

        v45 = +[IDSDaemon sharedInstance];
        registrationConductor = [v45 registrationConductor];
        phoneUserRegistry = [registrationConductor phoneUserRegistry];
        v48 = [[IDSPhoneUserCredential alloc] initWithSMSSignature:authenticationToken3 mechanismUsed:0];
        userUniqueIdentifier = [infoCopy userUniqueIdentifier];
        [phoneUserRegistry setCredential:v48 forUserUniqueIdentifier:userUniqueIdentifier];
      }

LABEL_51:
      mainID = [infoCopy mainID];
      if ([mainID length])
      {
        authenticationToken4 = [infoCopy authenticationToken];
        if (authenticationToken4)
        {

LABEL_70:
          authenticationToken5 = [infoCopy authenticationToken];
          v66 = authenticationToken5 == 0;

          if (!v66 && [infoCopy registrationStatus] <= 5)
          {
            [infoCopy setRegistrationStatus:6];
          }

          goto LABEL_81;
        }

        authenticationCert7 = [infoCopy authenticationCert];
        v64 = authenticationCert7 == 0;

        if (!v64)
        {
          goto LABEL_70;
        }
      }

      else
      {
      }

      [infoCopy setRegistrationStatus:4];
      v55 = +[IDSSMSRegistrationCenter sharedInstance];
      [v55 sendRegistration:infoCopy];

      HIBYTE(v97) = 1;
      goto LABEL_81;
    }

    v20 = +[IMRGLog registration];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v102 = infoCopy;
      v21 = "Unsupported registration on this system: %@";
      v22 = v20;
      v23 = 12;
      goto LABEL_21;
    }
  }

  else
  {
    v20 = +[IMRGLog registration];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v21 = "Cannot register, unsupported";
      v22 = v20;
      v23 = 2;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    }
  }

  v24 = 1;
LABEL_23:

  [(IDSRegistrationController *)self _notifyRegistrationFailure:infoCopy error:v24 info:0];
LABEL_24:
  v25 = 0;
LABEL_25:
  os_activity_scope_leave(&state);
  cut_arc_os_release();

  return v25;
}

- (BOOL)unregisterInfo:(id)info
{
  infoCopy = info;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = IMGetEnvironmentName();
    v10 = 138412546;
    v11 = infoCopy;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Request to unregister: %@  (Environment: %@)", &v10, 0x16u);
  }

  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing registration info from keychain", &v10, 2u);
  }

  [infoCopy removeFromKeychain];
  [infoCopy setRegistrationStatus:0];
  [infoCopy setRunningSimpleAuthentication:0];
  [infoCopy setRegistrationCert:0];
  [(IDSRegistrationController *)self stopTrackingActiveRegistration:infoCopy];
  v8 = +[IDSRegistrationCenter sharedInstance];
  [v8 sendDeregistration:infoCopy];

  [(IDSRegistrationController *)self _notifyDeregistrationStarting:infoCopy];
  return 1;
}

- (void)cancelActionsForRegistrationInfo:(id)info
{
  infoCopy = info;
  v3 = +[IDSRegistrationCenter sharedInstance];
  [v3 cancelActionsForRegistrationInfo:infoCopy];

  v4 = +[IDSAppleIDRegistrationCenter sharedInstance];
  [v4 cancelActionsForRegistrationInfo:infoCopy];

  v5 = +[IDSSMSRegistrationCenter sharedInstance];
  [v5 cancelActionsForRegistrationInfo:infoCopy];

  [infoCopy setRunningSimpleAuthentication:0];
}

- (void)reportSpamWithMessages:(id)messages toURI:(id)i registration:(id)registration
{
  registrationCopy = registration;
  iCopy = i;
  messagesCopy = messages;
  v10 = +[IDSRegistrationCenter sharedInstance];
  [v10 reportSpamWithMessages:messagesCopy selfURI:iCopy registration:registrationCopy];
}

- (void)reportiMessageUnknownSender:(id)sender messageID:(id)d isBlackholed:(BOOL)blackholed isJunked:(BOOL)junked messageServerTimestamp:(id)timestamp toURI:(id)i registration:(id)registration
{
  junkedCopy = junked;
  blackholedCopy = blackholed;
  registrationCopy = registration;
  iCopy = i;
  timestampCopy = timestamp;
  dCopy = d;
  senderCopy = sender;
  v20 = +[IDSRegistrationCenter sharedInstance];
  [v20 reportiMessageUnknownSender:senderCopy messageID:dCopy isBlackholed:blackholedCopy isJunked:junkedCopy messageServerTimestamp:timestampCopy selfURI:iCopy registration:registrationCopy];
}

- (void)reportMessage:(id)message toURI:(id)i registration:(id)registration
{
  iCopy = i;
  registrationCopy = registration;
  messageCopy = message;
  v10 = [NSMutableDictionary dictionaryWithDictionary:messageCopy];
  v11 = kIDSGeneralReportingTypeKey;
  v12 = [messageCopy objectForKey:kIDSGeneralReportingTypeKey];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  unsignedIntegerValue = [v12 unsignedIntegerValue];
  [v10 removeObjectForKey:v11];
  if (unsignedIntegerValue == 1)
  {
    v15 = kIDSGeneralSpamReportRecipientURIKey;
    v16 = [v10 objectForKey:kIDSGeneralSpamReportRecipientURIKey];

    if (v16)
    {
      [v10 removeObjectForKey:v15];
    }

    v14 = +[IDSRegistrationCenter sharedInstance];
    [v14 reportUnknownSenderMessage:v10 selfURI:iCopy registration:registrationCopy];
  }

  else
  {
    if (!unsignedIntegerValue)
    {
LABEL_4:
      v14 = +[IDSRegistrationCenter sharedInstance];
      [v14 reportSpamMessage:v10 selfURI:iCopy registration:registrationCopy];
      goto LABEL_5;
    }

    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = unsignedIntegerValue;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Invalid reporting type provided, we shouldn't be here... { reportingType: %lu }", &v17, 0xCu);
    }
  }

LABEL_5:
}

- (void)reportClientEvent:(id)event registration:(id)registration completion:(id)completion
{
  completionCopy = completion;
  registrationCopy = registration;
  eventCopy = event;
  v10 = +[IDSRegistrationCenter sharedInstance];
  [v10 reportClientEvent:eventCopy registration:registrationCopy completion:completionCopy];
}

- (BOOL)_performCorrectServerRequestForTemporaryPhoneRegistration:(id)registration sentAuthentication:(BOOL *)authentication sentIDSAction:(BOOL *)action
{
  registrationCopy = registration;
  if (CUTIsInternalInstall() && _os_feature_enabled_impl())
  {
    v9 = +[IDSDaemon sharedInstance];
    registrationConductor = [v9 registrationConductor];
    userStore = [registrationConductor userStore];

    userUniqueIdentifier = [registrationCopy userUniqueIdentifier];
    v13 = [userStore userWithUniqueIdentifier:userUniqueIdentifier];

    v14 = [userStore credentialForUser:v13];
    v15 = v14;
    if (v14 && [v14 realm] == 2)
    {
      phoneAuthenticationCertificate = [v15 phoneAuthenticationCertificate];
      dataRepresentation = [phoneAuthenticationCertificate dataRepresentation];
      [registrationCopy setAuthenticationCert:dataRepresentation];

      v18 = +[IMUserDefaults homeNumberSecondsUntilExpiration];
      v19 = 3888000;
      if (v18)
      {
        v19 = v18;
      }

      v20 = [NSDate dateWithTimeIntervalSinceNow:v19];
      v21 = [v13 temporaryPhoneUserWithUpdatedExpirationDate:v20];
      [userStore updateUser:v21];
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  authenticationCert = [registrationCopy authenticationCert];

  if (authenticationCert)
  {
    v24 = 1;
    v25 = 1;
  }

  else
  {
    authenticationToken = [registrationCopy authenticationToken];
    if (authenticationToken && (v27 = authenticationToken, [registrationCopy profileID], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "length"), v28, v27, v29))
    {
      v24 = 0;
      v25 = [registrationCopy needsRenewal] ^ 1;
    }

    else
    {
      v25 = 0;
      v24 = 1;
    }
  }

  email = [registrationCopy email];
  v31 = [email length];

  if (((v22 | v25) & 1) != 0 || !v31)
  {
    if (authenticationCert)
    {
      v35 = 1;
    }

    else
    {
      v35 = v22;
    }

    if ((v35 | v24))
    {
      if (authenticationCert)
      {
        v36 = +[IDSRegistrationCenter sharedInstance];
        [v36 sendRegistration:registrationCopy];

        v34 = 1;
        if (action)
        {
          *action = 1;
        }
      }

      else
      {
        v38 = +[IMRGLog registration];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_100918480(registrationCopy, v38);
        }

        v34 = 0;
      }
    }

    else
    {
      v37 = [(IDSRegistrationController *)self _sendIDSAuthenticationForRegistration:registrationCopy];
      if (action)
      {
        *action = v37;
      }

      v34 = 1;
    }
  }

  else
  {
    v32 = +[IMRGLog registration];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 138412290;
      v41 = registrationCopy;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Sending authentication for registration for new auth token and auth cert: %@", &v40, 0xCu);
    }

    v33 = +[IDSAppleIDRegistrationCenter sharedInstance];
    v34 = 1;
    [v33 authenticateRegistration:registrationCopy forceNewToken:1 requireSilentAuth:1];

    [registrationCopy setNeedsRenewal:0];
    [registrationCopy saveToKeychain];
    if (authentication)
    {
      *authentication = 1;
    }
  }

  return v34;
}

- (void)_notifyNeedsNewRegistration
{
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = _copyForEnumerating;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 registrationControllerNeedsNewRegistration:{self, v9}];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyRegistrationUpdated:(id)updated
{
  updatedCopy = updated;
  if ([updatedCopy isDisabled])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = updatedCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ignoring registration updated, registration is disabled: %@", buf, 0xCu);
    }
  }

  else
  {
    _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = _copyForEnumerating;
    v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 registrationController:self registrationUpdated:{updatedCopy, v11}];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_notifyRegistrationStarting:(id)starting
{
  startingCopy = starting;
  if ([startingCopy isDisabled])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = startingCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ignoring registration starting, registration is disabled: %@", buf, 0xCu);
    }
  }

  else
  {
    _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = _copyForEnumerating;
    v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 registrationController:self registrationWillStart:{startingCopy, v11}];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_notifyRegistrationFailure:(id)failure error:(int64_t)error info:(id)info
{
  failureCopy = failure;
  infoCopy = info;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v28 = _os_activity_create(&_mh_execute_header, "Registration controller notify registration failure", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v28, &state);
  if ([failureCopy isDisabled])
  {
    v10 = +[IMRGLog registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = failureCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ignoring registration failure, registration is disabled: %@", buf, 0xCu);
    }
  }

  else
  {
    [failureCopy setRegistrationStatus:-1];
    v11 = objc_alloc_init(IDSRegistrationEventTracingRegistrationEvent);
    v12 = +[IDSRegistrationEventTracing sharedInstance];
    registrationTraceID = [failureCopy registrationTraceID];
    v14 = [NSError errorWithDomain:@"IDSRegistrationError" code:error userInfo:0];
    [v12 endEvent:v11 identifier:registrationTraceID error:v14];

    if ([failureCopy registrationType] == 1)
    {
      v15 = +[IMRGLog registration];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removing registration info from keychain", buf, 2u);
      }

      [failureCopy removeFromKeychain];
    }

    _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v22 = v11;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = _copyForEnumerating;
    v18 = [v17 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v18)
    {
      v19 = *v24;
      do
      {
        v20 = 0;
        do
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v23 + 1) + 8 * v20);
          if (objc_opt_respondsToSelector())
          {
            [v21 registrationController:self registrationFailed:failureCopy error:error info:infoCopy];
          }

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v17 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v18);
    }

    v10 = v22;
    [(IDSRegistrationController *)self _submitRegistrationCompletedMetricWithRegistration:failureCopy success:0 registrationError:error];
    [(IDSRegistrationController *)self _captureDiagnosticsForFailedRegistration:failureCopy registrationError:error];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_notifyRegistrationSuccess:(id)success
{
  successCopy = success;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v18 = _os_activity_create(&_mh_execute_header, "Registration controller notify registration success", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v18, &state);
  if ([successCopy isDisabled])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = successCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ignoring registration success, registration is disabled: %@", buf, 0xCu);
    }
  }

  else
  {
    _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = _copyForEnumerating;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 registrationController:self registrationSucceeded:{successCopy, v13}];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v8);
    }

    if (![successCopy registrationType])
    {
      v12 = +[IDSSMSRegistrationCenter sharedInstance];
      [v12 notePhoneNumberRegistrationReset];
    }

    [(IDSRegistrationController *)self _submitRegistrationCompletedMetricWithRegistration:successCopy success:1 registrationError:-1, v13];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_notifyAllRegistrationSuccess:(id)success
{
  successCopy = success;
  v5 = [successCopy mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = successCopy;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v7)
  {
    v9 = *v25;
    *&v8 = 138412290;
    v19 = v8;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if ([v11 isDisabled])
        {
          v12 = +[IMRGLog registration];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v19;
            v30 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring succeeded registration, registration is disabled: %@", buf, 0xCu);
          }

          [v5 removeObject:v11];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v7);
  }

  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = _copyForEnumerating;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = *v21;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v20 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v18 registrationController:self allRegistrationsSucceeded:v5];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }
}

- (void)_notifyDeregistrationStarting:(id)starting
{
  startingCopy = starting;
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = _copyForEnumerating;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 registrationController:self deregistrationWillStart:{startingCopy, v11}];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_submitRegistrationCompletedMetricWithRegistration:(id)registration success:(BOOL)success registrationError:(int64_t)error
{
  successCopy = success;
  registrationCopy = registration;
  if ([(IDSRegistrationController *)self _shouldSubmitRegistrationCompletedMetricForRegistration:?])
  {
    v8 = [IDSRegistrationCompletedMetric alloc];
    registrationType = [registrationCopy registrationType];
    serviceIdentifier = [registrationCopy serviceIdentifier];
    v11 = [v8 initWithRegistrationType:registrationType serviceIdentifier:serviceIdentifier wasSuccessful:successCopy registrationError:error];

    v12 = +[IDSAWDLogger logger];
    [v12 logMetric:v11];

    v13 = [IDSRTCLogger loggerWithCategory:4000];
    [v13 logMetric:v11];

    v14 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v14 logMetric:v11];
  }
}

- (BOOL)_shouldSubmitRegistrationCompletedMetricForRegistration:(id)registration
{
  serviceIdentifier = [registration serviceIdentifier];
  v4 = [&off_100C3DB80 containsObject:serviceIdentifier];

  return v4;
}

- (void)_captureDiagnosticsForFailedRegistration:(id)registration registrationError:(int64_t)error
{
  registrationCopy = registration;
  if (+[IDSAutoBugCapture isSupported])
  {
    serviceIdentifier = [registrationCopy serviceIdentifier];
    if (![serviceIdentifier isEqualToString:@"com.apple.madrid"] || objc_msgSend(registrationCopy, "registrationType") != 1)
    {
      goto LABEL_6;
    }

    if ((error & 0xFFFFFFFFFFFFFFFELL) == 0x2A)
    {
      v7 = sub_100016528(error);
      serviceIdentifier2 = [registrationCopy serviceIdentifier];
      v9 = _StringForIDSRegistrationType([registrationCopy registrationType]);
      v10 = [NSString stringWithFormat:@"(%@, %@, %@)", v7, serviceIdentifier2, v9];

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100371898;
      v11[3] = &unk_100BD9500;
      v12 = v10;
      serviceIdentifier = v10;
      [IDSAutoBugCapture triggerCaptureWithEvent:200 context:serviceIdentifier completion:v11];

LABEL_6:
    }
  }
}

- (void)center:(id)center succeededRegistration:(id)registration
{
  registrationCopy = registration;
  if (![registrationCopy isDisabled])
  {
    if ([registrationCopy registrationType] == 1)
    {
      vettedEmails = [registrationCopy vettedEmails];
      if (!vettedEmails)
      {
        goto LABEL_9;
      }

      v8 = vettedEmails;
      if (([registrationCopy shouldRegisterUsingDSHandle] & 1) == 0)
      {
LABEL_22:

        goto LABEL_23;
      }

      dsHandle = [registrationCopy dsHandle];
      v10 = [dsHandle length];

      if (!v10)
      {
LABEL_9:
        v11 = +[IMRGLog registration];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "** Empty vetted emails, we should make sure to query them", buf, 2u);
        }

        v8 = +[IDSRegistrationCenter sharedInstance];
        [v8 queryValidatedEmailsForRegistration:registrationCopy allowPasswordPrompt:0 completionBlock:0];
        goto LABEL_22;
      }
    }

    else if ([registrationCopy registrationType] == 2)
    {
      userStore = [(IDSRegistrationController *)self userStore];
      userUniqueIdentifier = [registrationCopy userUniqueIdentifier];
      v8 = [userStore userWithUniqueIdentifier:userUniqueIdentifier];

      if (([v8 finishedRegistration] & 1) == 0)
      {
        _phoneUserWithCredentials = [(IDSRegistrationController *)self _phoneUserWithCredentials];
        temporaryPhoneUserWithFinishedRegistration = [v8 temporaryPhoneUserWithFinishedRegistration];
        userStore2 = [(IDSRegistrationController *)self userStore];
        [userStore2 updateUser:temporaryPhoneUserWithFinishedRegistration];

        userStore3 = [(IDSRegistrationController *)self userStore];
        [userStore3 persistUsersImmediately];

        displayingAddNumberPrompt = [(IDSRegistrationController *)self displayingAddNumberPrompt];
        if (_phoneUserWithCredentials)
        {
          if ((displayingAddNumberPrompt & 1) == 0 && ([v8 hasNotifiedSuccess] & 1) == 0)
          {
            [(IDSRegistrationController *)self _notifyHomeNumberSuccessForUser:temporaryPhoneUserWithFinishedRegistration];
          }
        }

        else if ((displayingAddNumberPrompt & 1) == 0 && ([v8 hasNotifiedSuccess] & 1) == 0)
        {
          v19 = _NSConcreteStackBlock;
          v20 = 3221225472;
          v21 = sub_100371C84;
          v22 = &unk_100BD6E40;
          selfCopy = self;
          v24 = registrationCopy;
          im_dispatch_after_primary_queue();
        }
      }

      goto LABEL_22;
    }

LABEL_23:
    [(IDSRegistrationController *)self _notifyRegistrationSuccess:registrationCopy, v19, v20, v21, v22, selfCopy];
    goto LABEL_24;
  }

  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = registrationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring succeeded registration, registration is disabled: %@", buf, 0xCu);
  }

LABEL_24:
}

- (void)center:(id)center failedRegistration:(id)registration error:(int64_t)error info:(id)info
{
  registrationCopy = registration;
  infoCopy = info;
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = registrationCopy;
    v14 = 1024;
    errorCopy = error;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed HTTP registration with info: %@       error: %d", &v12, 0x12u);
  }

  [(IDSRegistrationController *)self _notifyRegistrationFailure:registrationCopy error:error info:infoCopy];
}

- (void)center:(id)center succeededIdentification:(id)identification phoneNumber:(id)number token:(id)token
{
  identificationCopy = identification;
  numberCopy = number;
  if ([identificationCopy isDisabled])
  {
    v10 = +[IMRGLog registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = identificationCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ignoring need for new identification, registration is disabled: %@", &v13, 0xCu);
    }
  }

  else
  {
    sub_10036F9B8(identificationCopy);
    if (![identificationCopy registrationType])
    {
      _provisionedTemporaryUser = [(IDSRegistrationController *)self _provisionedTemporaryUser];
      if ([numberCopy length] && _provisionedTemporaryUser && !-[IDSRegistrationController displayingAddNumberPrompt](self, "displayingAddNumberPrompt"))
      {
        userUniqueIdentifier = [identificationCopy userUniqueIdentifier];
        [(IDSRegistrationController *)self _alertForHomeNumberIfNeededForSIMIdentifier:userUniqueIdentifier withPhoneNumber:numberCopy];
      }
    }
  }
}

- (void)center:(id)center failedIdentification:(id)identification error:(int64_t)error
{
  identificationCopy = identification;
  if ([identificationCopy isDisabled])
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = identificationCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ignoring failed identification, registration is disabled: %@", &v9, 0xCu);
    }
  }

  else
  {
    [(IDSRegistrationController *)self _notifyRegistrationFailure:identificationCopy error:error info:0];
  }
}

- (void)centerNeedsNewIdentification:(id)identification
{
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SMS agent requested new identification", v5, 2u);
  }

  [(IDSRegistrationController *)self _notifyNeedsNewRegistration];
}

- (void)center:(id)center succeededIDSAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  if ([authenticationCopy isDisabled])
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = authenticationCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring succeeded IDS Authentication, registration is disabled: %@", &v11, 0xCu);
    }

    goto LABEL_10;
  }

  [(IDSRegistrationController *)self _ensureProfileQueriesAreReadyForRegistratration:authenticationCopy];
  [(IDSRegistrationController *)self _sendIDSAuthenticationOrRegistrationIfNeeded:authenticationCopy];
  if (![authenticationCopy registrationType])
  {
    v6 = +[IDSRegistrationCenter sharedInstance];
    [v6 sendRegistration:authenticationCopy];
LABEL_10:

    goto LABEL_11;
  }

  if ([authenticationCopy registrationType] == 2)
  {
    _phoneUserWithCredentials = [(IDSRegistrationController *)self _phoneUserWithCredentials];
    v8 = _phoneUserWithCredentials;
    if (_phoneUserWithCredentials)
    {
      uniqueIdentifier = [_phoneUserWithCredentials uniqueIdentifier];
      phoneNumber = [v8 phoneNumber];
      [(IDSRegistrationController *)self _alertForHomeNumberIfNeededForSIMIdentifier:uniqueIdentifier withPhoneNumber:phoneNumber];
    }
  }

LABEL_11:
}

- (void)center:(id)center failedIDSAuthentication:(id)authentication error:(int64_t)error info:(id)info
{
  authenticationCopy = authentication;
  infoCopy = info;
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *v50 = authenticationCopy;
    *&v50[8] = 1024;
    *&v50[10] = error;
    v51 = 2112;
    v52 = infoCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed IDS Authentication with info: %@ error: %d info: %@", buf, 0x1Cu);
  }

  if ([authenticationCopy isDisabled])
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v50 = authenticationCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring failed IDS Authentication, registration is disabled: %@", buf, 0xCu);
    }

    goto LABEL_52;
  }

  if ((error - 10) >= 2)
  {
    if (error != 37)
    {
      if (error == 18)
      {
        v13 = +[IMRGLog registration];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "IDS Authentication failed - Login failed", buf, 2u);
        }

        if (![authenticationCopy registrationType])
        {
          v33 = +[IMRGLog registration];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "  This was an SMS reg", buf, 2u);
          }

          v34 = +[IDSRegistrationReasonTracker sharedInstance];
          userUniqueIdentifier = [authenticationCopy userUniqueIdentifier];
          [v34 setPNRReason:6 forUserUniqueIdentifier:userUniqueIdentifier];

          v12 = +[IDSSMSRegistrationCenter sharedInstance];
          [v12 sendRegistration:authenticationCopy];
          goto LABEL_52;
        }

        if ([authenticationCopy registrationType] == 1)
        {
          v14 = +[IMRGLog registration];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "This was an apple ID reg", buf, 2u);
          }

          if ([authenticationCopy retries] <= 2)
          {
            [authenticationCopy setAuthenticationToken:0];
            [authenticationCopy setRetries:{objc_msgSend(authenticationCopy, "retries") + 1}];
            v15 = +[IMRGLog registration];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              retries = [authenticationCopy retries];
              *buf = 67109120;
              *v50 = retries;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Let's re-auth, retry %d", buf, 8u);
            }

            [authenticationCopy setRegistrationStatus:3];
            v12 = +[IDSAppleIDRegistrationCenter sharedInstance];
            [v12 authenticateRegistration:authenticationCopy forceNewToken:1];
            goto LABEL_52;
          }

          v38 = +[IMRGLog registration];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Too many retries, failing", buf, 2u);
          }

          [authenticationCopy setRetries:0];
        }
      }

LABEL_54:
      [(IDSRegistrationController *)self _notifyRegistrationFailure:authenticationCopy error:error info:0];
      goto LABEL_55;
    }

    goto LABEL_46;
  }

  if (![authenticationCopy registrationType])
  {
    v30 = +[IDSRegistrationReasonTracker sharedInstance];
    userUniqueIdentifier2 = [authenticationCopy userUniqueIdentifier];
    [v30 setPNRReason:6 forUserUniqueIdentifier:userUniqueIdentifier2];

    v32 = +[IDSSMSRegistrationCenter sharedInstance];
    [v32 sendRegistration:authenticationCopy];

    v29 = 1;
    goto LABEL_47;
  }

  if ([authenticationCopy registrationType] != 1)
  {
LABEL_46:
    v29 = 0;
    goto LABEL_47;
  }

  v17 = +[IMRGLog registration];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    retries2 = [authenticationCopy retries];
    *buf = 67109120;
    *v50 = retries2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed, retry %d", buf, 8u);
  }

  if ([authenticationCopy retries] > 2)
  {
    [authenticationCopy setRetries:0];
    goto LABEL_46;
  }

  [authenticationCopy setRetries:{objc_msgSend(authenticationCopy, "retries") + 1}];
  if (![authenticationCopy registrationType])
  {
    [authenticationCopy setMainID:0];
  }

  confirmedEmails = [authenticationCopy confirmedEmails];
  [authenticationCopy setUris:0];
  registrationType = [authenticationCopy registrationType];
  if (error == 10 && registrationType == 1)
  {
    selfCopy = self;
    v42 = 10;
    v43 = infoCopy;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v40 = confirmedEmails;
    v21 = confirmedEmails;
    v22 = [v21 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v45;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v45 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v44 + 1) + 8 * i);
          v27 = [IMRGLog registration:v40];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v50 = v26;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " => Added confirmed emails: %@", buf, 0xCu);
          }

          [authenticationCopy addCandidateEmail:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v23);
    }

    error = v42;
    infoCopy = v43;
    confirmedEmails = v40;
    self = selfCopy;
  }

  authenticationToken = [authenticationCopy authenticationToken];

  if (authenticationToken)
  {
    if ([authenticationCopy registrationStatus] < 6)
    {
      v29 = 0;
    }

    else
    {
      sub_10036F9B8(authenticationCopy);
      v29 = 1;
    }
  }

  else
  {
    [authenticationCopy setRegistrationStatus:3];
    v39 = +[IDSAppleIDRegistrationCenter sharedInstance];
    v29 = 1;
    [v39 authenticateRegistration:authenticationCopy forceNewToken:1];
  }

LABEL_47:
  if ([authenticationCopy registrationType] != 2)
  {
    goto LABEL_53;
  }

  v36 = +[IMRGLog registration];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    retries3 = [authenticationCopy retries];
    *buf = 67109378;
    *v50 = retries3;
    *&v50[4] = 2112;
    *&v50[6] = authenticationCopy;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Home Number provision request had expired auth token, renewing {  retries: %d, registration: %@ }", buf, 0x12u);
  }

  if ([authenticationCopy retries] > 2)
  {
LABEL_53:
    if (v29)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  [authenticationCopy setRetries:{objc_msgSend(authenticationCopy, "retries") + 1}];
  [authenticationCopy setRegistrationStatus:3];
  v12 = +[IDSAppleIDRegistrationCenter sharedInstance];
  [v12 authenticateRegistration:authenticationCopy forceRenewal:1 requireSilentAuth:1];
LABEL_52:

LABEL_55:
}

- (BOOL)_sendIDSAuthenticationOrRegistrationIfNeeded:(id)needed
{
  neededCopy = needed;
  registrationType = [neededCopy registrationType];
  if (registrationType)
  {
    vettedEmails = [neededCopy vettedEmails];

    if (!vettedEmails)
    {
      v6 = +[IMRGLog registration];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = neededCopy;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "We still have no vetted email response for: %@   waiting....", buf, 0xCu);
      }
    }

    regionID = [neededCopy regionID];

    if (!regionID)
    {
      v12 = +[IMRGLog registration];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:

        goto LABEL_27;
      }

      *buf = 138412290;
      v24 = neededCopy;
      v13 = "We still have no default profile response for: %@   waiting....";
      v14 = v12;
      v15 = 12;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      goto LABEL_26;
    }

    if (!vettedEmails)
    {
LABEL_27:
      v9 = 0;
      goto LABEL_28;
    }
  }

  if ([neededCopy registrationStatus] <= 5)
  {
    [neededCopy setRegistrationStatus:6];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100372CFC;
    v21 = &unk_100BD6E40;
    v22 = neededCopy;
    im_dispatch_after_primary_queue();
  }

  if (registrationType || ([neededCopy runningSimpleAuthentication] & 1) == 0)
  {
    v10 = [IMRGLog registration:v18];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "We already have a region ID, skipping query", buf, 2u);
    }

    authenticationToken = [neededCopy authenticationToken];
    if (authenticationToken)
    {

LABEL_22:
      v9 = sub_10036F9B8(neededCopy);
      goto LABEL_28;
    }

    authenticationCert = [neededCopy authenticationCert];

    if (authenticationCert)
    {
      goto LABEL_22;
    }

    v12 = +[IMRGLog registration];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v13 = "We were told that we're done authentication here, but we have no token... not doing anything";
    v14 = v12;
    v15 = 2;
    goto LABEL_25;
  }

  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "This was just a simple auth, we're done here", buf, 2u);
  }

  v9 = 1;
LABEL_28:

  return v9;
}

- (void)center:(id)center succeededCurrentEmailsRequest:(id)request emailInfo:(id)info
{
  requestCopy = request;
  if ([requestCopy isDisabled])
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = requestCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ignoring succeeded current emails request, registration is disabled: %@", &v11, 0xCu);
    }
  }

  else
  {
    vettedEmails = [requestCopy vettedEmails];

    if (!vettedEmails)
    {
      v9 = +[NSArray array];
      [requestCopy setVettedEmails:v9];
    }

    if ([requestCopy registrationStatus] < 8 || (objc_msgSend(requestCopy, "authenticationCert"), v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
    {
      [(IDSRegistrationController *)self _sendIDSAuthenticationOrRegistrationIfNeeded:requestCopy];
    }
  }
}

- (void)_ensureProfileQueriesAreReadyForRegistratration:(id)registratration
{
  registratrationCopy = registratration;
  if ([registratrationCopy registrationType] == 1)
  {
    vettedEmails = [registratrationCopy vettedEmails];

    if (!vettedEmails)
    {
      authenticationCert = [registratrationCopy authenticationCert];

      v7 = +[IMRGLog registration];
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (authenticationCert)
      {
        if (v8)
        {
          LOWORD(v15) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " * Empty vetted emails, sending off handles gathering", &v15, 2u);
        }

        v9 = +[IDSRegistrationCenter sharedInstance];
        [v9 queryValidatedEmailsForRegistration:registratrationCopy allowPasswordPrompt:1 completionBlock:0];
      }

      else
      {
        if (v8)
        {
          LOWORD(v15) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " **** missing auth cert, can't send vetted email request", &v15, 2u);
        }

        [(IDSRegistrationController *)self _sendIDSAuthenticationForRegistration:registratrationCopy];
      }
    }
  }

  if ([registratrationCopy registrationType] == 1 && (objc_msgSend(registratrationCopy, "regionID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, !v11))
  {
    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Empty region ID, querying initial region", &v15, 2u);
    }

    v12 = +[IDSAppleIDRegistrationCenter sharedInstance];
    [v12 queryInitialInvitationContextForRegistration:registratrationCopy];
  }

  else
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      regionID = [registratrationCopy regionID];
      v15 = 138412290;
      v16 = regionID;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Non empty region ID: %@", &v15, 0xCu);
    }
  }
}

- (BOOL)_sendIDSAuthenticationForRegistration:(id)registration
{
  registrationCopy = registration;
  v4 = registrationCopy;
  if (registrationCopy)
  {
    if ([registrationCopy registrationStatus] >= 6)
    {
      v5 = +[IDSRegistrationCenter sharedInstance];
      [v5 buildValidationCredentialsIfNeeded];
    }

    if ([v4 registrationType] == 2 && (objc_msgSend(v4, "authenticationCert"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      v7 = +[IMRGLog registration];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not reprovisioning temporary phone because we already have an auth cert for %@", &v11, 0xCu);
      }

      v8 = 0;
    }

    else
    {
      v9 = +[IMRGLog registration];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Registration Controller - sending IDS authentication: %@", &v11, 0xCu);
      }

      v7 = +[IDSRegistrationCenter sharedInstance];
      v8 = [v7 authenticateRegistration:v4];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)center:(id)center succeededInitialRegionQuery:(id)query
{
  queryCopy = query;
  if ([queryCopy isDisabled])
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = queryCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring succeeded initial region query, registration is disabled: %@", &v8, 0xCu);
    }
  }

  else
  {
    regionID = [queryCopy regionID];

    if (!regionID)
    {
      [queryCopy setRegionID:&stru_100C06028];
    }

    if ([queryCopy registrationStatus] <= 7)
    {
      [(IDSRegistrationController *)self _sendIDSAuthenticationOrRegistrationIfNeeded:queryCopy];
    }
  }
}

- (void)center:(id)center succeededAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = authenticationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registration Controller - succeeded authentication: %@", &v8, 0xCu);
  }

  if ([authenticationCopy isDisabled])
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = authenticationCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ignoring succeeded authentication, registration is disabled: %@", &v8, 0xCu);
    }
  }

  else
  {
    [(IDSRegistrationController *)self _sendIDSAuthenticationForRegistration:authenticationCopy];
  }
}

- (void)center:(id)center succeededRegionValidation:(id)validation regionID:(id)d phoneNumber:(id)number extraContext:(id)context verified:(BOOL)verified
{
  verifiedCopy = verified;
  validationCopy = validation;
  dCopy = d;
  numberCopy = number;
  contextCopy = context;
  v16 = +[IMRGLog registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    v19 = 138413314;
    v20 = validationCopy;
    v21 = 2112;
    if (verifiedCopy)
    {
      v17 = @"YES";
    }

    v22 = dCopy;
    v23 = 2112;
    v24 = numberCopy;
    v25 = 2112;
    v26 = contextCopy;
    v27 = 2112;
    v28 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Registration Controller - succeeded region validation - registration info: %@   regionID: %@  phoneNumber: %@  extraContext: %@  verified: %@", &v19, 0x34u);
  }

  if ([validationCopy isDisabled])
  {
    v18 = +[IMRGLog registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = validationCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Ignoring succeeded region validation, registration is disabled: %@", &v19, 0xCu);
    }
  }
}

- (void)center:(id)center failedAuthentication:(id)authentication error:(int64_t)error info:(id)info
{
  authenticationCopy = authentication;
  infoCopy = info;
  if ([authenticationCopy isDisabled])
  {
    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = authenticationCopy;
      v12 = "Ignoring failed authentication, registration is disabled: %@";
      v13 = v11;
      v14 = 12;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v16, v14);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (+[IDSRegistrationController isBuddyBlockingRegistration])
  {
    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v12 = "System not setup, ignoring auth failure and not proceeding";
      v13 = v11;
      v14 = 2;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (error == 18 && ([authenticationCopy runningSimpleAuthentication] & 1) == 0 && objc_msgSend(authenticationCopy, "registrationType") == 1)
  {
    if ([authenticationCopy retries] <= 3)
    {
      [authenticationCopy setRetries:{objc_msgSend(authenticationCopy, "retries") + 1}];
      [authenticationCopy setRegistrationCert:0];
      [authenticationCopy setUris:0];
      [authenticationCopy setRegistrationStatus:3];
      v11 = +[IDSAppleIDRegistrationCenter sharedInstance];
      [v11 authenticateRegistration:authenticationCopy forceNewToken:1];
      goto LABEL_8;
    }

    [authenticationCopy setRetries:0];
  }

  v15 = +[IMRGLog registration];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = authenticationCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Authentication failed. Notifying, and unregistering %@", &v16, 0xCu);
  }

  [(IDSRegistrationController *)self _notifyRegistrationFailure:authenticationCopy error:error info:infoCopy];
  if ([authenticationCopy registrationStatus] >= 7)
  {
    [(IDSRegistrationController *)self unregisterInfo:authenticationCopy];
  }

LABEL_9:
}

- (void)center:(id)center succeededLinkHandlesConfirmation:(id)confirmation emailAddress:(id)address
{
  confirmationCopy = confirmation;
  if ([confirmationCopy isDisabled])
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = confirmationCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring succeeded link handles confirmation, registration is disabled: %@", &v7, 0xCu);
    }
  }

  else
  {
    sub_10036F9B8(confirmationCopy);
  }
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  if (([(NSMutableArray *)self->_handlers containsObjectIdenticalTo:?]& 1) == 0)
  {
    handlers = self->_handlers;
    if (!handlers)
    {
      v5 = +[NSMutableArray nonRetainingArray];
      v6 = self->_handlers;
      self->_handlers = v5;

      handlers = self->_handlers;
    }

    [(NSMutableArray *)handlers addObject:listenerCopy];
  }
}

- (void)removeListener:(id)listener
{
  [(NSMutableArray *)self->_handlers removeObjectIdenticalTo:listener];
  if (![(NSMutableArray *)self->_handlers count])
  {
    handlers = self->_handlers;
    self->_handlers = 0;
  }
}

- (void)_updateNotifyState
{
  if (_IDSRunningInDaemon())
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    selfCopy = self;
    obj = self->_trackedRegistrations;
    v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = *v38;
      v34 = kIDSServiceDefaultsSentinelAlias;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v38 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v37 + 1) + 8 * i);
          serviceType = [v11 serviceType];
          if ([v11 registrationType] != 1 || (objc_msgSend(v11, "uris"), v13 = objc_claimAutoreleasedReturnValue(), v36 = v6, v14 = v5, v15 = v7, v16 = v4, v17 = v8, v18 = v9, v19 = objc_msgSend(v13, "count"), v13, v20 = v19 == 1, v9 = v18, v8 = v17, v4 = v16, v7 = v15, v5 = v14, v6 = v36, !v20) || (objc_msgSend(v11, "uris"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "objectAtIndex:", 0), v22 = objc_claimAutoreleasedReturnValue(), v21, v23 = objc_msgSend(v22, "caseInsensitiveCompare:", v34), v22, v23))
          {
            v7 = IDSIsFaceTimeRegistrationServiceType() | v7;
            v6 = IDSIsiMessageRegistrationServiceType() | v6;
            v8 = IDSIsCallingRegistrationServiceType() | v8;
            v5 = IDSIsScreenSharingRegistrationServiceType() | v5;
          }
        }

        v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v4);
    }

    else
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
      LOBYTE(v7) = 0;
      LOBYTE(v8) = 0;
    }

    v24 = +[IMRGLog registration];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = @"NO";
      if (v8)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      if (v7)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      *buf = 138413058;
      v42 = v26;
      if (v6)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      v43 = 2112;
      v44 = v27;
      v45 = 2112;
      v46 = v28;
      if (v5)
      {
        v25 = @"YES";
      }

      v47 = 2112;
      v48 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Calculated states for _updateNotifyState {foundCalling: %@, foundFaceTime: %@, foundiMessage:%@, foundScreenSharing: %@}", buf, 0x2Au);
    }

    notify_set_state(selfCopy->_iMessageToken, v6 & 1);
    v29 = IMUserScopedNotification();
    notify_post(v29);
    notify_set_state(selfCopy->_screenSharingToken, v5 & 1);
    v30 = IMUserScopedNotification();
    notify_post(v30);
    notify_set_state(selfCopy->_faceTimeToken, v7 & 1);
    v31 = IMUserScopedNotification();
    notify_post(v31);
    notify_set_state(selfCopy->_callingToken, v8 & 1);
    v32 = IMUserScopedNotification();
    notify_post(v32);
  }
}

- (void)startTrackingRegistration:(id)registration
{
  registrationCopy = registration;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = registrationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding registration to list of tracked registrations: %@", &v11, 0xCu);
  }

  if (registrationCopy)
  {
    if ([(NSMutableArray *)self->_trackedRegistrations containsObject:registrationCopy])
    {
      [(NSMutableArray *)self->_trackedRegistrations removeObject:registrationCopy];
    }

    else
    {
      v6 = +[IMRGLog registration];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = registrationCopy;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "  => Adding registration: %@", &v11, 0xCu);
      }

      v7 = +[IDSHeartbeatCenter sharedInstance];
      [v7 updateHeartbeat];
    }

    trackedRegistrations = self->_trackedRegistrations;
    if (!trackedRegistrations)
    {
      v9 = objc_alloc_init(NSMutableArray);
      v10 = self->_trackedRegistrations;
      self->_trackedRegistrations = v9;

      trackedRegistrations = self->_trackedRegistrations;
    }

    [(NSMutableArray *)trackedRegistrations addObject:registrationCopy];
    [(IDSRegistrationController *)self _updateNotifyState];
  }
}

- (void)stopTrackingRegistration:(id)registration
{
  registrationCopy = registration;
  if (registrationCopy && [(NSMutableArray *)self->_trackedRegistrations containsObject:registrationCopy])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = registrationCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing registration from list of tracked registrations: %@", &v8, 0xCu);
    }

    [(NSMutableArray *)self->_trackedRegistrations removeObject:registrationCopy];
    if (![(NSMutableArray *)self->_trackedRegistrations count])
    {
      trackedRegistrations = self->_trackedRegistrations;
      self->_trackedRegistrations = 0;
    }

    [(IDSRegistrationController *)self _updateNotifyState];
    v7 = +[IDSHeartbeatCenter sharedInstance];
    [v7 updateHeartbeat];
  }
}

- (void)startTrackingActiveRegistration:(id)registration
{
  registrationCopy = registration;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = registrationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding registration to list of active registrations: %@", &v10, 0xCu);
  }

  if (registrationCopy)
  {
    if ([(NSMutableArray *)self->_activeRegistrations containsObject:registrationCopy])
    {
      [(NSMutableArray *)self->_activeRegistrations removeObject:registrationCopy];
    }

    else
    {
      v6 = +[IMRGLog registration];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = registrationCopy;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "  => Adding registration: %@", &v10, 0xCu);
      }
    }

    activeRegistrations = self->_activeRegistrations;
    if (!activeRegistrations)
    {
      v8 = objc_alloc_init(NSMutableArray);
      v9 = self->_activeRegistrations;
      self->_activeRegistrations = v8;

      activeRegistrations = self->_activeRegistrations;
    }

    [(NSMutableArray *)activeRegistrations addObject:registrationCopy];
  }
}

- (void)stopTrackingActiveRegistration:(id)registration
{
  registrationCopy = registration;
  if (registrationCopy && [(NSMutableArray *)self->_activeRegistrations containsObjectIdenticalTo:registrationCopy])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = registrationCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing registration from list of active registrations: %@", &v7, 0xCu);
    }

    [(NSMutableArray *)self->_activeRegistrations removeObjectIdenticalTo:registrationCopy];
    if (![(NSMutableArray *)self->_activeRegistrations count])
    {
      activeRegistrations = self->_activeRegistrations;
      self->_activeRegistrations = 0;
    }
  }
}

- (id)activeRegistrationsMatchingUserID:(id)d
{
  _im_normalizedURIString = [d _im_normalizedURIString];
  activeRegistrations = [(IDSRegistrationController *)self activeRegistrations];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100374384;
  v9[3] = &unk_100BD9528;
  v10 = _im_normalizedURIString;
  v6 = _im_normalizedURIString;
  v7 = [activeRegistrations __imArrayByApplyingBlock:v9];

  return v7;
}

- (id)activeRegistrationsOfType:(int)type
{
  activeRegistrations = [(IDSRegistrationController *)self activeRegistrations];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003744B0;
  v7[3] = &unk_100BD9548;
  typeCopy = type;
  v5 = [activeRegistrations __imArrayByApplyingBlock:v7];

  return v5;
}

- (NSArray)activeRegistrationsToRegister
{
  activeRegistrations = [(IDSRegistrationController *)self activeRegistrations];
  v3 = [activeRegistrations __imArrayByApplyingBlock:&stru_100BD9568];

  return v3;
}

- (void)_systemConfigurationPrefsChanged
{
  v3 = +[FTDeviceSupport sharedInstance];
  deviceName = [v3 deviceName];

  if (deviceName)
  {
    deviceName = self->_deviceName;
    if (deviceName != deviceName)
    {
      v6 = CUNumericSuffixRemoved();
      v7 = [(NSString *)deviceName isEqualToString:v6];

      if ((v7 & 1) == 0)
      {
        v8 = +[IMRGLog registration];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = self->_deviceName;
          *buf = 138412546;
          v34 = v9;
          v35 = 2112;
          v36 = deviceName;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device name changed from %@ to %@", buf, 0x16u);
        }

        objc_storeStrong(&self->_deviceName, deviceName);
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        _copyForEnumerating = [(NSMutableArray *)self->_trackedRegistrations _copyForEnumerating];
        v11 = [_copyForEnumerating countByEnumeratingWithState:&v29 objects:v39 count:16];
        if (v11)
        {
          v13 = v11;
          v14 = *v30;
          *&v12 = 138412802;
          v28 = v12;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v30 != v14)
              {
                objc_enumerationMutation(_copyForEnumerating);
              }

              v16 = *(*(&v29 + 1) + 8 * i);
              deviceName2 = [v16 deviceName];
              v18 = [deviceName2 isEqualToString:deviceName];

              if ((v18 & 1) == 0)
              {
                v19 = +[IMRGLog registration];
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  deviceName3 = [v16 deviceName];
                  *buf = v28;
                  v34 = deviceName3;
                  v35 = 2112;
                  v36 = deviceName;
                  v37 = 2112;
                  v38 = v16;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device name was updated from %@ to %@  (Registration: %@)", buf, 0x20u);
                }

                v21 = +[IMSystemMonitor sharedInstance];
                isUnderFirstDataProtectionLock = [v21 isUnderFirstDataProtectionLock];

                v23 = +[IMRGLog registration];
                v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
                if (isUnderFirstDataProtectionLock)
                {
                  if (v24)
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "  => Deferring registration for device name change, we're locked", buf, 2u);
                  }

                  deferredRegisters = self->_deferredRegisters;
                  if (!deferredRegisters)
                  {
                    v26 = objc_alloc_init(NSMutableSet);
                    v27 = self->_deferredRegisters;
                    self->_deferredRegisters = v26;

                    deferredRegisters = self->_deferredRegisters;
                  }

                  [(NSMutableSet *)deferredRegisters addObject:v16];
                }

                else
                {
                  if (v24)
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "  => Sending registration for device name change", buf, 2u);
                  }

                  [(IDSRegistrationController *)self registerInfo:v16];
                }
              }
            }

            v13 = [_copyForEnumerating countByEnumeratingWithState:&v29 objects:v39 count:16];
          }

          while (v13);
        }
      }
    }
  }
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSMutableSet *)self->_deferredRegisters count];
    *buf = 67109120;
    LODWORD(v21) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "First unlock, checking deferred registrations: %d", buf, 8u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allObjects = [(NSMutableSet *)self->_deferredRegisters allObjects];
  _copyForEnumerating = [allObjects _copyForEnumerating];

  v7 = [_copyForEnumerating countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v17;
    *&v8 = 138412290;
    v15 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(_copyForEnumerating);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = +[IMRGLog registration];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v15;
          v21 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "  => Sending deferred registration: %@", buf, 0xCu);
        }

        [(IDSRegistrationController *)self registerInfo:v12];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [_copyForEnumerating countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v9);
  }

  deferredRegisters = self->_deferredRegisters;
  self->_deferredRegisters = 0;
}

- (void)_postHomeNumberNotificationBeforeAlertForIdentifier:(id)identifier forcefully:(BOOL)forcefully
{
  forcefullyCopy = forcefully;
  identifierCopy = identifier;
  _phoneUserWithCredentials = [(IDSRegistrationController *)self _phoneUserWithCredentials];
  userStore = [(IDSRegistrationController *)self userStore];
  v9 = [userStore userWithUniqueIdentifier:identifierCopy];

  if (_phoneUserWithCredentials)
  {
    displayingAddNumberPrompt = 1;
  }

  else
  {
    displayingAddNumberPrompt = [(IDSRegistrationController *)self displayingAddNumberPrompt];
  }

  if ([v9 finishedRegistration])
  {
    hasNotifiedSuccess = [v9 hasNotifiedSuccess];
  }

  else
  {
    hasNotifiedSuccess = 1;
  }

  _pnrOngoing = [(IDSRegistrationController *)self _pnrOngoing];
  v13 = +[IMRGLog registration];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    displayingAddNumberPrompt2 = [(IDSRegistrationController *)self displayingAddNumberPrompt];
    v15 = @"NO";
    *buf = 138413314;
    if (displayingAddNumberPrompt2)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v20 = v16;
    v21 = 2112;
    if (forcefullyCopy)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v22 = v17;
    v23 = 2112;
    if (_pnrOngoing)
    {
      v15 = @"YES";
    }

    v24 = v15;
    v25 = 2112;
    v26 = _phoneUserWithCredentials;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to post Home Number notification before alert { displayingAddNumberPrompt: %@, bypassOngoingPNR: %@, ongoingPNR: %@, phoneUser: %@, tempUser: %@ }", buf, 0x34u);
  }

  if ((displayingAddNumberPrompt | hasNotifiedSuccess) & 1) != 0 || (!forcefullyCopy & _pnrOngoing)
  {
    if (((displayingAddNumberPrompt | hasNotifiedSuccess) & 1) == 0)
    {
      v18 = identifierCopy;
      im_dispatch_after_primary_queue();
    }
  }

  else
  {
    [(IDSRegistrationController *)self _notifyHomeNumberSuccessForUser:v9];
  }
}

- (BOOL)_pnrOngoing
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = +[IDSDaemon sharedInstance];
  registrationConductor = [v2 registrationConductor];
  phoneUserRegistry = [registrationConductor phoneUserRegistry];
  validators = [phoneUserRegistry validators];

  v6 = [validators countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(validators);
        }

        v8 |= ([*(*(&v12 + 1) + 8 * i) status] & 0xFFFFFFFFFFFFFFFELL) == 2;
      }

      v7 = [validators countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)_provisionedTemporaryUser
{
  userStore = [(IDSRegistrationController *)self userStore];
  [userStore usersWithRealm:2];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 hasBeenProvisioned])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)_phoneUserWithCredentials
{
  userStore = [(IDSRegistrationController *)self userStore];
  [userStore usersWithRealm:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [userStore credentialForUser:{v7, v10}];

        if (v8)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)_notifyHomeNumberSuccessForUser:(id)user
{
  userCopy = user;
  [IDSTemporaryPhoneAlertManager presentSuccessAlertForUser:userCopy];
  temporaryPhoneUserWithNotifiedSuccess = [userCopy temporaryPhoneUserWithNotifiedSuccess];

  userStore = [(IDSRegistrationController *)self userStore];
  [userStore updateUser:temporaryPhoneUserWithNotifiedSuccess];
}

- (void)_alertForHomeNumberIfNeededForSIMIdentifier:(id)identifier withPhoneNumber:(id)number
{
  identifierCopy = identifier;
  numberCopy = number;
  if ([numberCopy length] && !-[IDSRegistrationController displayingAddNumberPrompt](self, "displayingAddNumberPrompt"))
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = IMLocalizedStringFromTableInBundle();
    v10 = +[IDSTemporaryPhoneAlertManager serviceString];
    v11 = IMLocalizedStringFromTableInBundle();
    v12 = IMFormattedNumberForUnformattedNumber();
    v13 = [NSString stringWithFormat:v11, v12, v10];

    v14 = IMLocalizedStringFromTableInBundle();
    v15 = IMLocalizedStringFromTableInBundle();
    v16 = +[IMRGLog registration];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Displaying should add phone number alert", buf, 2u);
    }

    v17 = [IMUserNotification userNotificationWithIdentifier:@"HomeNumberAdd" title:v9 message:v13 defaultButton:v14 alternateButton:0 otherButton:v15];
    if (v17)
    {
      [(IDSRegistrationController *)self setDisplayingAddNumberPrompt:1];
      +[IMUserNotificationCenter sharedInstance];
      v22 = v14;
      v18 = v13;
      v19 = v10;
      v21 = v20 = v9;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100375488;
      v23[3] = &unk_100BD9590;
      v24 = identifierCopy;
      selfCopy = self;
      [v21 addUserNotification:v17 listener:0 completionHandler:v23];

      v9 = v20;
      v10 = v19;
      v13 = v18;
      v14 = v22;
    }
  }
}

- (int64_t)simDeactivationInfoRateLimitCount
{
  v2 = +[IDSServerBag sharedInstance];
  v3 = [v2 objectForKey:@"sim-deactivation-rate-limit-count"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 5;
  }

  return integerValue;
}

- (double)simDeactivationInfoRateLimitInterval
{
  v2 = +[IDSServerBag sharedInstance];
  v3 = [v2 objectForKey:@"sim-deactivation-rate-limit-time"];

  v4 = 86400.0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 doubleValue];
      v4 = v5;
    }
  }

  return v4;
}

- (void)SIM:(id)m didDeactivateWithInfo:(id)info
{
  mCopy = m;
  infoCopy = info;
  simDeactivationRequestRateLimiter = [(IDSRegistrationController *)self simDeactivationRequestRateLimiter];

  if (!simDeactivationRequestRateLimiter)
  {
    v9 = [IDSRateLimiter alloc];
    simDeactivationInfoRateLimitCount = [(IDSRegistrationController *)self simDeactivationInfoRateLimitCount];
    [(IDSRegistrationController *)self simDeactivationInfoRateLimitInterval];
    v11 = [v9 initWithLimit:simDeactivationInfoRateLimitCount timeLimit:?];
    [(IDSRegistrationController *)self setSimDeactivationRequestRateLimiter:v11];
  }

  sIMIdentifier = [mCopy SIMIdentifier];
  v13 = sIMIdentifier;
  v14 = @"SIM";
  if (sIMIdentifier)
  {
    v14 = sIMIdentifier;
  }

  v15 = v14;

  simDeactivationRequestRateLimiter2 = [(IDSRegistrationController *)self simDeactivationRequestRateLimiter];
  v17 = [simDeactivationRequestRateLimiter2 underLimitForItem:v15];

  v18 = +[IMRGLog registration];
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      sIMIdentifier2 = [mCopy SIMIdentifier];
      v23 = 138412290;
      v24 = sIMIdentifier2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending SIM deactivation request for label ID %@", &v23, 0xCu);
    }

    simDeactivationRequestRateLimiter3 = [(IDSRegistrationController *)self simDeactivationRequestRateLimiter];
    [simDeactivationRequestRateLimiter3 noteItem:v15];

    v18 = +[IDSRegistrationCenter sharedInstance];
    [v18 sendDeactivationRequestWithSIM:mCopy Info:infoCopy];
  }

  else if (v19)
  {
    simDeactivationRequestRateLimiter4 = [(IDSRegistrationController *)self simDeactivationRequestRateLimiter];
    v23 = 138412290;
    v24 = simDeactivationRequestRateLimiter4;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Too many SIM deactivation events. Not sending request %@", &v23, 0xCu);
  }
}

- (void)noteiCloudSignInTime
{
  v2 = +[IDSRegistrationKeyManager sharedInstance];
  [v2 noteiCloudSignInTime];
}

- (void)noteManateeAvailabilityTime
{
  v2 = +[IDSRegistrationKeyManager sharedInstance];
  [v2 noteManateeAvailableTime];
}

@end