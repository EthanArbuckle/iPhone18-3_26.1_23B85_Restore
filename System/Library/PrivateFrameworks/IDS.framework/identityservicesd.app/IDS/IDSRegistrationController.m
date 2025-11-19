@interface IDSRegistrationController
+ (BOOL)_isPhoneNumberAuthenticationDuringBuddyAllowed;
+ (BOOL)canCompleteRegistration;
+ (BOOL)canStartRegistrationForAccountType:(int)a3;
+ (BOOL)isBuddyBlockingRegistration;
+ (BOOL)isBuddyShowing;
+ (BOOL)systemSupportsPhoneNumberRegistration;
+ (BOOL)systemSupportsRegistrationInfo:(id)a3;
+ (BOOL)systemSupportsServiceType:(id)a3 accountType:(int)a4 isTemporary:(BOOL)a5;
+ (BOOL)systemSupportsServiceType:(id)a3 registrationType:(int)a4;
+ (BOOL)validSIMStateForRegistration;
+ (IDSRegistrationController)sharedInstance;
+ (id)registeredPhoneNumbers;
+ (void)initialize;
- (BOOL)_performCorrectServerRequestForTemporaryPhoneRegistration:(id)a3 sentAuthentication:(BOOL *)a4 sentIDSAction:(BOOL *)a5;
- (BOOL)_pnrOngoing;
- (BOOL)_sendIDSAuthenticationForRegistration:(id)a3;
- (BOOL)_sendIDSAuthenticationOrRegistrationIfNeeded:(id)a3;
- (BOOL)_shouldSubmitRegistrationCompletedMetricForRegistration:(id)a3;
- (BOOL)registerInfo:(id)a3 requireSilentAuth:(BOOL)a4;
- (BOOL)registrationSupportedForRegistration:(id)a3;
- (BOOL)systemSupportsPhoneNumberRegistration;
- (BOOL)systemSupportsRegistrationInfo:(id)a3;
- (BOOL)systemSupportsServiceType:(id)a3 accountType:(int)a4 isTemporary:(BOOL)a5;
- (BOOL)systemSupportsServiceType:(id)a3 registrationType:(int)a4;
- (BOOL)unregisterInfo:(id)a3;
- (IDSRegistrationController)initWithUserStore:(id)a3;
- (IDSUserStore)userStore;
- (NSArray)activeRegistrationsToRegister;
- (double)simDeactivationInfoRateLimitInterval;
- (id)_phoneUserWithCredentials;
- (id)_provisionedTemporaryUser;
- (id)activeRegistrationsMatchingUserID:(id)a3;
- (id)activeRegistrationsOfType:(int)a3;
- (int64_t)simDeactivationInfoRateLimitCount;
- (void)SIM:(id)a3 didDeactivateWithInfo:(id)a4;
- (void)_alertForHomeNumberIfNeededForSIMIdentifier:(id)a3 withPhoneNumber:(id)a4;
- (void)_captureDiagnosticsForFailedRegistration:(id)a3 registrationError:(int64_t)a4;
- (void)_ensureProfileQueriesAreReadyForRegistratration:(id)a3;
- (void)_notifyAllRegistrationSuccess:(id)a3;
- (void)_notifyDeregistrationStarting:(id)a3;
- (void)_notifyHomeNumberSuccessForUser:(id)a3;
- (void)_notifyNeedsNewRegistration;
- (void)_notifyRegistrationFailure:(id)a3 error:(int64_t)a4 info:(id)a5;
- (void)_notifyRegistrationStarting:(id)a3;
- (void)_notifyRegistrationSuccess:(id)a3;
- (void)_notifyRegistrationUpdated:(id)a3;
- (void)_postHomeNumberNotificationBeforeAlertForIdentifier:(id)a3 forcefully:(BOOL)a4;
- (void)_submitRegistrationCompletedMetricWithRegistration:(id)a3 success:(BOOL)a4 registrationError:(int64_t)a5;
- (void)_systemConfigurationPrefsChanged;
- (void)_updateNotifyState;
- (void)addListener:(id)a3;
- (void)cancelActionsForRegistrationInfo:(id)a3;
- (void)center:(id)a3 failedAuthentication:(id)a4 error:(int64_t)a5 info:(id)a6;
- (void)center:(id)a3 failedIDSAuthentication:(id)a4 error:(int64_t)a5 info:(id)a6;
- (void)center:(id)a3 failedIdentification:(id)a4 error:(int64_t)a5;
- (void)center:(id)a3 failedRegistration:(id)a4 error:(int64_t)a5 info:(id)a6;
- (void)center:(id)a3 succeededAuthentication:(id)a4;
- (void)center:(id)a3 succeededCurrentEmailsRequest:(id)a4 emailInfo:(id)a5;
- (void)center:(id)a3 succeededIDSAuthentication:(id)a4;
- (void)center:(id)a3 succeededIdentification:(id)a4 phoneNumber:(id)a5 token:(id)a6;
- (void)center:(id)a3 succeededInitialRegionQuery:(id)a4;
- (void)center:(id)a3 succeededLinkHandlesConfirmation:(id)a4 emailAddress:(id)a5;
- (void)center:(id)a3 succeededRegionValidation:(id)a4 regionID:(id)a5 phoneNumber:(id)a6 extraContext:(id)a7 verified:(BOOL)a8;
- (void)center:(id)a3 succeededRegistration:(id)a4;
- (void)centerNeedsNewIdentification:(id)a3;
- (void)dealloc;
- (void)noteManateeAvailabilityTime;
- (void)noteiCloudSignInTime;
- (void)removeListener:(id)a3;
- (void)reportClientEvent:(id)a3 registration:(id)a4 completion:(id)a5;
- (void)reportMessage:(id)a3 toURI:(id)a4 registration:(id)a5;
- (void)reportSpamWithMessages:(id)a3 toURI:(id)a4 registration:(id)a5;
- (void)reportiMessageUnknownSender:(id)a3 messageID:(id)a4 isBlackholed:(BOOL)a5 isJunked:(BOOL)a6 messageServerTimestamp:(id)a7 toURI:(id)a8 registration:(id)a9;
- (void)startTrackingActiveRegistration:(id)a3;
- (void)startTrackingRegistration:(id)a3;
- (void)stopTrackingActiveRegistration:(id)a3;
- (void)stopTrackingRegistration:(id)a3;
- (void)systemDidLeaveFirstDataProtectionLock;
@end

@implementation IDSRegistrationController

+ (BOOL)systemSupportsPhoneNumberRegistration
{
  v2 = +[FTDeviceSupport sharedInstance];
  v3 = [v2 deviceType];

  v4 = +[IDSPairingManager sharedInstance];
  v5 = [v4 isCurrentDeviceTinkerConfiguredWatch];

  if (v3 == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = (v3 == 6) & v5;
  }

  v7 = +[IDSCTAdapter sharedInstance];
  v8 = [v7 supportsIdentification];

  return v8 & v6;
}

+ (BOOL)isBuddyShowing
{
  v2 = +[IMSystemMonitor sharedInstance];
  v3 = [v2 isSetup];

  return v3 ^ 1;
}

+ (BOOL)isBuddyBlockingRegistration
{
  if (_os_feature_enabled_impl())
  {
    return 0;
  }

  return [a1 isBuddyShowing];
}

+ (id)registeredPhoneNumbers
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = +[IDSRegistrationController sharedInstance];
  v4 = [v3 trackedRegistrations];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100022EF4;
  v8[3] = &unk_100BD8A48;
  v9 = v2;
  v5 = v2;
  [v4 enumerateObjectsUsingBlock:v8];

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

+ (BOOL)canStartRegistrationForAccountType:(int)a3
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
    v7 = [a1 isBuddyBlockingRegistration];
    v8 = [a1 _isPhoneNumberAuthenticationDuringBuddyAllowed];
    v9 = +[IDSPairingManager sharedInstance];
    v10 = [v9 isCurrentDeviceTinkerConfiguredWatch];

    v11 = v8 | v7 ^ 1;
    if (a3)
    {
      v11 = v7 ^ 1;
    }

    if (a3 == 1)
    {
      v6 = v10 | v7 ^ 1;
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
      if (v7)
      {
        v15 = @"NO";
      }

      else
      {
        v15 = @"YES";
      }

      v20 = v12;
      if (v8)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v21 = 2112;
      if (v10)
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
  v5 = [v4 isUnderFirstDataProtectionLock];

  if ((v5 & 1) == 0 && (v3 & 1) == 0)
  {
    v5 = +[IDSRegistrationController isBuddyBlockingRegistration];
  }

  return v5 ^ 1;
}

+ (BOOL)_isPhoneNumberAuthenticationDuringBuddyAllowed
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"setup-phone-auth-enabled"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (BOOL)validSIMStateForRegistration
{
  if (!+[IDSRegistrationController systemSupportsPhoneNumberRegistration])
  {
    return 1;
  }

  v2 = +[IDSCTAdapter sharedInstance];
  v3 = [v2 isAnySIMUsable];

  if ((v3 & 1) == 0)
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
    v10 = [v9 requiresSIMInserted];

    if (!v10)
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
    v3 = userStore;
  }

  else
  {
    v4 = +[IDSDaemon sharedInstance];
    v5 = [v4 registrationConductor];
    v3 = [v5 userStore];
  }

  return v3;
}

- (IDSRegistrationController)initWithUserStore:(id)a3
{
  v5 = a3;
  v29.receiver = self;
  v29.super_class = IDSRegistrationController;
  v6 = [(IDSRegistrationController *)&v29 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userStore, a3);
    v8 = +[FTDeviceSupport sharedInstance];
    v9 = [v8 deviceName];
    deviceName = v7->_deviceName;
    v7->_deviceName = v9;

    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = +[FTDeviceSupport sharedInstance];
      v13 = [v12 deviceInformationString];
      LODWORD(buf.version) = 138412290;
      *(&buf.version + 4) = v13;
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

- (BOOL)registrationSupportedForRegistration:(id)a3
{
  v3 = +[IMLockdownManager sharedInstance];
  v4 = [v3 isExpired];

  if (v4)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "*** Lockdown state is expired, not allowing registration", &v10, 2u);
    }

    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = +[FTDeviceSupport sharedInstance];
    v6 = [v7 registrationSupported];

    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (v6)
      {
        v8 = @"YES";
      }

      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Returning device support registration supported: %@", &v10, 0xCu);
    }
  }

  return v6;
}

+ (BOOL)systemSupportsServiceType:(id)a3 accountType:(int)a4 isTemporary:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v8 = a3;
  if (v6 != 1)
  {
    if (v6)
    {
      v9 = 1;
      goto LABEL_8;
    }

    if (v5)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  v9 = [a1 systemSupportsServiceType:v8 registrationType:v6];
LABEL_8:

  return v9;
}

+ (BOOL)systemSupportsServiceType:(id)a3 registrationType:(int)a4
{
  v5 = a3;
  if (a4 != 2)
  {
    if (a4 == 1)
    {
      v9 = +[FTDeviceSupport sharedInstance];
      v10 = [v9 supportsAppleIDIdentification];

      if ((v10 & 1) == 0)
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
      if (a4)
      {
        v15 = +[IMRGLog warning];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          sub_1009183B0(a4, v15);
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
      v14 = [v13 callingSupported];

      if ((v14 & 1) == 0)
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
      v18 = [v17 multiwaySupported];

      if ((v18 & 1) == 0)
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
      v20 = [v19 iMessageSupported];

      if ((v20 & 1) == 0)
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
          v16 = a4 == 0;
          goto LABEL_35;
        }

        v6 = +[IMRGLog warning];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          sub_100918338(v5, v6);
        }

        goto LABEL_22;
      }

      v21 = +[FTDeviceSupport sharedInstance];
      v22 = [v21 identityServicesSupported];

      if ((v22 & 1) == 0)
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
  v12 = [v11 faceTimeSupported];

  if (v12)
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

+ (BOOL)systemSupportsRegistrationInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 serviceType];
  v6 = [a1 systemSupportsServiceType:v5 registrationType:{objc_msgSend(v4, "registrationType")}];
  if ((v6 & 1) == 0)
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
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

- (BOOL)systemSupportsServiceType:(id)a3 accountType:(int)a4 isTemporary:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v7 = a3;
  LOBYTE(v5) = [objc_opt_class() systemSupportsServiceType:v7 accountType:v6 isTemporary:v5];

  return v5;
}

- (BOOL)systemSupportsServiceType:(id)a3 registrationType:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  LOBYTE(v4) = [objc_opt_class() systemSupportsServiceType:v5 registrationType:v4];

  return v4;
}

- (BOOL)systemSupportsRegistrationInfo:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() systemSupportsRegistrationInfo:v3];

  return v4;
}

- (BOOL)registerInfo:(id)a3 requireSilentAuth:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[IDSRegistrationEventTracing sharedInstance];
  v7 = [v5 registrationTraceID];
  v8 = [v6 isRegistrationOpenWithGuid:v7];

  if ((v8 & 1) == 0)
  {
    [v5 resetRegistrationID];
    v9 = objc_alloc_init(IDSRegistrationEventTracingRegistrationEvent);
    v10 = +[IDSRegistrationEventTracing sharedInstance];
    v11 = [v5 registrationTraceID];
    [v10 beginEvent:v9 identifier:v11];
  }

  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v99 = _os_activity_create(&_mh_execute_header, "Registration controller register", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v99, &state);
  v12 = +[IMRGLog registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = +[FTDeviceSupport sharedInstance];
    v14 = [v13 deviceInformationString];
    *buf = 138412546;
    v102 = v5;
    v103 = 2112;
    v104 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Registration request: %@  (Environment: %@)", buf, 0x16u);
  }

  if ([(IDSRegistrationController *)self registrationSupportedForRegistration:v5])
  {
    v15 = [v5 pushToken];
    v16 = v15 == 0;

    if (v16)
    {
      v20 = +[IMRGLog registration];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v102 = v5;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Cannot register, invalid push token: %@", buf, 0xCu);
      }

      v24 = 14;
      goto LABEL_23;
    }

    if ([(IDSRegistrationController *)self systemSupportsRegistrationInfo:v5])
    {
      if (![v5 registrationType] && !+[IMUserDefaults bypassRegistrationControlStatusCheck](IMUserDefaults, "bypassRegistrationControlStatusCheck"))
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

          [(IDSRegistrationController *)self _notifyRegistrationFailure:v5 error:39 info:0];
          goto LABEL_24;
        }
      }

      v97 = 0;
      [v5 setRunningSimpleAuthentication:0];
      v27 = [v5 registrationType];
      if (v27)
      {
        if (v27 != 1)
        {
          if (v27 != 2)
          {
            v52 = +[IMRGLog warning];
            if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
            {
              sub_100918428(v5, buf, [v5 registrationType], v52);
            }

            v29 = 1;
            goto LABEL_57;
          }

          v28 = +[IMRGLog registration];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v102 = v5;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Request to register Home Number for info: %@", buf, 0xCu);
          }

          if (![(IDSRegistrationController *)self _performCorrectServerRequestForTemporaryPhoneRegistration:v5 sentAuthentication:&v97 + 1 sentIDSAction:&v97])
          {
            v29 = 11;
LABEL_57:
            [(IDSRegistrationController *)self _notifyRegistrationFailure:v5 error:v29 info:0];
            goto LABEL_24;
          }

LABEL_81:
          v91 = [v5 authenticationToken];
          if ([v5 registrationType] != 1)
          {
            goto LABEL_104;
          }

          v68 = [v5 authenticationCert];
          if (!v68)
          {
            goto LABEL_104;
          }

          v69 = [v5 regionID];
          if ([v69 length])
          {
            v70 = [v5 regionBasePhoneNumber];
            v71 = [v70 length] == 0;

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
            v102 = v5;
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
                if (v77 != v5 && [*(*(&v93 + 1) + 8 * i) registrationType] == 1)
                {
                  v78 = [v77 regionID];
                  if (v78)
                  {
                    v79 = [v77 regionBasePhoneNumber];
                    v80 = v79 == 0;

                    if (!v80)
                    {
                      v81 = +[IMRGLog registration];
                      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v102 = v77;
                        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "  => We found a good one we can pull from, let's fix ourselves using that: %@", buf, 0xCu);
                      }

                      v82 = [v77 regionID];
                      [v5 setRegionID:v82];

                      v83 = [v77 regionBasePhoneNumber];
                      [v5 setRegionBasePhoneNumber:v83];

                      [v5 saveToKeychain];
                    }
                  }
                }
              }

              v74 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v93 objects:v100 count:16];
            }

            while (v74);
          }

LABEL_104:
          if (v91)
          {
            v84 = 1;
          }

          else
          {
            v85 = [v5 authenticationCert];
            v84 = v85 != 0;
          }

          if ((v97 & 0x100) != 0)
          {
LABEL_108:
            [(IDSRegistrationController *)self _notifyRegistrationStarting:v5];
            [(IDSRegistrationController *)self startTrackingActiveRegistration:v5];
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

          if (!v91 && ([v5 authenticationCert], v86 = objc_claimAutoreleasedReturnValue(), v87 = v86 == 0, v86, v87))
          {
            v90 = +[IMRGLog registration];
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "We were told that we're done authentication here, but we have no token... bailing register", buf, 2u);
            }

            [(IDSRegistrationController *)self _notifyRegistrationFailure:v5 error:11 info:0];
          }

          else
          {
            v88 = +[IMRGLog registration];
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v102 = v5;
              _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "...trying to IDS Auth or Register: %@", buf, 0xCu);
            }

            if (sub_10036F9B8(v5))
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
          v102 = v5;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Request to register apple ID based info: %@", buf, 0xCu);
        }

        v31 = [v5 authenticationToken];
        v32 = [v5 profileID];
        if ([v32 length])
        {
          if (v31)
          {

            v33 = [v5 authenticationCert];
            v34 = v33 == 0;

            if (v34)
            {
              v67 = +[IMRGLog registration];
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v102 = v5;
                _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Sending IDS authentication for registration with existing auth token: %@", buf, 0xCu);
              }

              LOBYTE(v97) = [(IDSRegistrationController *)self _sendIDSAuthenticationForRegistration:v5];
              goto LABEL_80;
            }

            v35 = [v5 authenticationCert];
            v36 = v35 == 0;

            if (!v36)
            {
              v37 = +[IMRGLog registration];
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v102 = v5;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Sending IDS authentication for registration with existing auth token/cert: %@", buf, 0xCu);
              }

              if ([(IDSRegistrationController *)self _sendIDSAuthenticationOrRegistrationIfNeeded:v5])
              {
                LOBYTE(v97) = 1;
LABEL_80:

                goto LABEL_81;
              }

              v61 = +[IMRGLog registration];
              if (!os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
LABEL_79:

                [(IDSRegistrationController *)self _ensureProfileQueriesAreReadyForRegistratration:v5];
                goto LABEL_80;
              }

              *buf = 138412290;
              v102 = v5;
              v62 = "Ensuring validation checks for: %@";
LABEL_78:
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, v62, buf, 0xCu);
              goto LABEL_79;
            }

LABEL_65:
            v58 = [v5 authenticationCert];
            if (!v58)
            {
              goto LABEL_80;
            }

            v59 = [v5 regionID];
            v60 = [v59 length] == 0;

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
            v102 = v5;
            v62 = "Registration looks correct, ensuring validation checks: %@";
            goto LABEL_78;
          }

          v56 = [v5 authenticationCert];
          v57 = v56 == 0;

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
          v102 = v5;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Sending authentication for registration for new auth token and auth cert: %@", buf, 0xCu);
        }

        v54 = +[IDSAppleIDRegistrationCenter sharedInstance];
        [v54 authenticateRegistration:v5 requireSilentAuth:v4];

        HIBYTE(v97) = 1;
        goto LABEL_80;
      }

      v38 = +[IMRGLog registration];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v102 = v5;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Request to register sms identified info: %@", buf, 0xCu);
      }

      v39 = [v5 authenticationToken];
      if (!v39)
      {
        v40 = [v5 migrationContext];
        v41 = v40 == 0;

        if (v41)
        {
          goto LABEL_51;
        }

        v42 = +[IMRGLog registration];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v102 = v5;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "We can try to migrate this guy: %@", buf, 0xCu);
        }

        v43 = [v5 migrationContext];
        v44 = [v43 objectForKey:@"signature"];
        v39 = [v44 _FTStringFromBaseData];

        v45 = +[IDSDaemon sharedInstance];
        v46 = [v45 registrationConductor];
        v47 = [v46 phoneUserRegistry];
        v48 = [[IDSPhoneUserCredential alloc] initWithSMSSignature:v39 mechanismUsed:0];
        v49 = [v5 userUniqueIdentifier];
        [v47 setCredential:v48 forUserUniqueIdentifier:v49];
      }

LABEL_51:
      v50 = [v5 mainID];
      if ([v50 length])
      {
        v51 = [v5 authenticationToken];
        if (v51)
        {

LABEL_70:
          v65 = [v5 authenticationToken];
          v66 = v65 == 0;

          if (!v66 && [v5 registrationStatus] <= 5)
          {
            [v5 setRegistrationStatus:6];
          }

          goto LABEL_81;
        }

        v63 = [v5 authenticationCert];
        v64 = v63 == 0;

        if (!v64)
        {
          goto LABEL_70;
        }
      }

      else
      {
      }

      [v5 setRegistrationStatus:4];
      v55 = +[IDSSMSRegistrationCenter sharedInstance];
      [v55 sendRegistration:v5];

      HIBYTE(v97) = 1;
      goto LABEL_81;
    }

    v20 = +[IMRGLog registration];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v102 = v5;
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

  [(IDSRegistrationController *)self _notifyRegistrationFailure:v5 error:v24 info:0];
LABEL_24:
  v25 = 0;
LABEL_25:
  os_activity_scope_leave(&state);
  cut_arc_os_release();

  return v25;
}

- (BOOL)unregisterInfo:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = IMGetEnvironmentName();
    v10 = 138412546;
    v11 = v4;
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

  [v4 removeFromKeychain];
  [v4 setRegistrationStatus:0];
  [v4 setRunningSimpleAuthentication:0];
  [v4 setRegistrationCert:0];
  [(IDSRegistrationController *)self stopTrackingActiveRegistration:v4];
  v8 = +[IDSRegistrationCenter sharedInstance];
  [v8 sendDeregistration:v4];

  [(IDSRegistrationController *)self _notifyDeregistrationStarting:v4];
  return 1;
}

- (void)cancelActionsForRegistrationInfo:(id)a3
{
  v6 = a3;
  v3 = +[IDSRegistrationCenter sharedInstance];
  [v3 cancelActionsForRegistrationInfo:v6];

  v4 = +[IDSAppleIDRegistrationCenter sharedInstance];
  [v4 cancelActionsForRegistrationInfo:v6];

  v5 = +[IDSSMSRegistrationCenter sharedInstance];
  [v5 cancelActionsForRegistrationInfo:v6];

  [v6 setRunningSimpleAuthentication:0];
}

- (void)reportSpamWithMessages:(id)a3 toURI:(id)a4 registration:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[IDSRegistrationCenter sharedInstance];
  [v10 reportSpamWithMessages:v9 selfURI:v8 registration:v7];
}

- (void)reportiMessageUnknownSender:(id)a3 messageID:(id)a4 isBlackholed:(BOOL)a5 isJunked:(BOOL)a6 messageServerTimestamp:(id)a7 toURI:(id)a8 registration:(id)a9
{
  v11 = a6;
  v12 = a5;
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a4;
  v19 = a3;
  v20 = +[IDSRegistrationCenter sharedInstance];
  [v20 reportiMessageUnknownSender:v19 messageID:v18 isBlackholed:v12 isJunked:v11 messageServerTimestamp:v17 selfURI:v16 registration:v15];
}

- (void)reportMessage:(id)a3 toURI:(id)a4 registration:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [NSMutableDictionary dictionaryWithDictionary:v9];
  v11 = kIDSGeneralReportingTypeKey;
  v12 = [v9 objectForKey:kIDSGeneralReportingTypeKey];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v13 = [v12 unsignedIntegerValue];
  [v10 removeObjectForKey:v11];
  if (v13 == 1)
  {
    v15 = kIDSGeneralSpamReportRecipientURIKey;
    v16 = [v10 objectForKey:kIDSGeneralSpamReportRecipientURIKey];

    if (v16)
    {
      [v10 removeObjectForKey:v15];
    }

    v14 = +[IDSRegistrationCenter sharedInstance];
    [v14 reportUnknownSenderMessage:v10 selfURI:v7 registration:v8];
  }

  else
  {
    if (!v13)
    {
LABEL_4:
      v14 = +[IDSRegistrationCenter sharedInstance];
      [v14 reportSpamMessage:v10 selfURI:v7 registration:v8];
      goto LABEL_5;
    }

    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Invalid reporting type provided, we shouldn't be here... { reportingType: %lu }", &v17, 0xCu);
    }
  }

LABEL_5:
}

- (void)reportClientEvent:(id)a3 registration:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[IDSRegistrationCenter sharedInstance];
  [v10 reportClientEvent:v9 registration:v8 completion:v7];
}

- (BOOL)_performCorrectServerRequestForTemporaryPhoneRegistration:(id)a3 sentAuthentication:(BOOL *)a4 sentIDSAction:(BOOL *)a5
{
  v8 = a3;
  if (CUTIsInternalInstall() && _os_feature_enabled_impl())
  {
    v9 = +[IDSDaemon sharedInstance];
    v10 = [v9 registrationConductor];
    v11 = [v10 userStore];

    v12 = [v8 userUniqueIdentifier];
    v13 = [v11 userWithUniqueIdentifier:v12];

    v14 = [v11 credentialForUser:v13];
    v15 = v14;
    if (v14 && [v14 realm] == 2)
    {
      v16 = [v15 phoneAuthenticationCertificate];
      v17 = [v16 dataRepresentation];
      [v8 setAuthenticationCert:v17];

      v18 = +[IMUserDefaults homeNumberSecondsUntilExpiration];
      v19 = 3888000;
      if (v18)
      {
        v19 = v18;
      }

      v20 = [NSDate dateWithTimeIntervalSinceNow:v19];
      v21 = [v13 temporaryPhoneUserWithUpdatedExpirationDate:v20];
      [v11 updateUser:v21];
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  v23 = [v8 authenticationCert];

  if (v23)
  {
    v24 = 1;
    v25 = 1;
  }

  else
  {
    v26 = [v8 authenticationToken];
    if (v26 && (v27 = v26, [v8 profileID], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "length"), v28, v27, v29))
    {
      v24 = 0;
      v25 = [v8 needsRenewal] ^ 1;
    }

    else
    {
      v25 = 0;
      v24 = 1;
    }
  }

  v30 = [v8 email];
  v31 = [v30 length];

  if (((v22 | v25) & 1) != 0 || !v31)
  {
    if (v23)
    {
      v35 = 1;
    }

    else
    {
      v35 = v22;
    }

    if ((v35 | v24))
    {
      if (v23)
      {
        v36 = +[IDSRegistrationCenter sharedInstance];
        [v36 sendRegistration:v8];

        v34 = 1;
        if (a5)
        {
          *a5 = 1;
        }
      }

      else
      {
        v38 = +[IMRGLog registration];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_100918480(v8, v38);
        }

        v34 = 0;
      }
    }

    else
    {
      v37 = [(IDSRegistrationController *)self _sendIDSAuthenticationForRegistration:v8];
      if (a5)
      {
        *a5 = v37;
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
      v41 = v8;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Sending authentication for registration for new auth token and auth cert: %@", &v40, 0xCu);
    }

    v33 = +[IDSAppleIDRegistrationCenter sharedInstance];
    v34 = 1;
    [v33 authenticateRegistration:v8 forceNewToken:1 requireSilentAuth:1];

    [v8 setNeedsRenewal:0];
    [v8 saveToKeychain];
    if (a4)
    {
      *a4 = 1;
    }
  }

  return v34;
}

- (void)_notifyNeedsNewRegistration
{
  v3 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
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

- (void)_notifyRegistrationUpdated:(id)a3
{
  v4 = a3;
  if ([v4 isDisabled])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ignoring registration updated, registration is disabled: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v6;
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
            [v10 registrationController:self registrationUpdated:{v4, v11}];
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

- (void)_notifyRegistrationStarting:(id)a3
{
  v4 = a3;
  if ([v4 isDisabled])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ignoring registration starting, registration is disabled: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v6;
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
            [v10 registrationController:self registrationWillStart:{v4, v11}];
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

- (void)_notifyRegistrationFailure:(id)a3 error:(int64_t)a4 info:(id)a5
{
  v8 = a3;
  v9 = a5;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v28 = _os_activity_create(&_mh_execute_header, "Registration controller notify registration failure", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v28, &state);
  if ([v8 isDisabled])
  {
    v10 = +[IMRGLog registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ignoring registration failure, registration is disabled: %@", buf, 0xCu);
    }
  }

  else
  {
    [v8 setRegistrationStatus:-1];
    v11 = objc_alloc_init(IDSRegistrationEventTracingRegistrationEvent);
    v12 = +[IDSRegistrationEventTracing sharedInstance];
    v13 = [v8 registrationTraceID];
    v14 = [NSError errorWithDomain:@"IDSRegistrationError" code:a4 userInfo:0];
    [v12 endEvent:v11 identifier:v13 error:v14];

    if ([v8 registrationType] == 1)
    {
      v15 = +[IMRGLog registration];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removing registration info from keychain", buf, 2u);
      }

      [v8 removeFromKeychain];
    }

    v16 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v22 = v11;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = v16;
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
            [v21 registrationController:self registrationFailed:v8 error:a4 info:v9];
          }

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v17 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v18);
    }

    v10 = v22;
    [(IDSRegistrationController *)self _submitRegistrationCompletedMetricWithRegistration:v8 success:0 registrationError:a4];
    [(IDSRegistrationController *)self _captureDiagnosticsForFailedRegistration:v8 registrationError:a4];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_notifyRegistrationSuccess:(id)a3
{
  v4 = a3;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v18 = _os_activity_create(&_mh_execute_header, "Registration controller notify registration success", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v18, &state);
  if ([v4 isDisabled])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ignoring registration success, registration is disabled: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v6;
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
            [v11 registrationController:self registrationSucceeded:{v4, v13}];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v8);
    }

    if (![v4 registrationType])
    {
      v12 = +[IDSSMSRegistrationCenter sharedInstance];
      [v12 notePhoneNumberRegistrationReset];
    }

    [(IDSRegistrationController *)self _submitRegistrationCompletedMetricWithRegistration:v4 success:1 registrationError:-1, v13];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_notifyAllRegistrationSuccess:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
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

  v13 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = v13;
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

- (void)_notifyDeregistrationStarting:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
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
          [v10 registrationController:self deregistrationWillStart:{v4, v11}];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_submitRegistrationCompletedMetricWithRegistration:(id)a3 success:(BOOL)a4 registrationError:(int64_t)a5
{
  v6 = a4;
  v15 = a3;
  if ([(IDSRegistrationController *)self _shouldSubmitRegistrationCompletedMetricForRegistration:?])
  {
    v8 = [IDSRegistrationCompletedMetric alloc];
    v9 = [v15 registrationType];
    v10 = [v15 serviceIdentifier];
    v11 = [v8 initWithRegistrationType:v9 serviceIdentifier:v10 wasSuccessful:v6 registrationError:a5];

    v12 = +[IDSAWDLogger logger];
    [v12 logMetric:v11];

    v13 = [IDSRTCLogger loggerWithCategory:4000];
    [v13 logMetric:v11];

    v14 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v14 logMetric:v11];
  }
}

- (BOOL)_shouldSubmitRegistrationCompletedMetricForRegistration:(id)a3
{
  v3 = [a3 serviceIdentifier];
  v4 = [&off_100C3DB80 containsObject:v3];

  return v4;
}

- (void)_captureDiagnosticsForFailedRegistration:(id)a3 registrationError:(int64_t)a4
{
  v5 = a3;
  if (+[IDSAutoBugCapture isSupported])
  {
    v6 = [v5 serviceIdentifier];
    if (![v6 isEqualToString:@"com.apple.madrid"] || objc_msgSend(v5, "registrationType") != 1)
    {
      goto LABEL_6;
    }

    if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 0x2A)
    {
      v7 = sub_100016528(a4);
      v8 = [v5 serviceIdentifier];
      v9 = _StringForIDSRegistrationType([v5 registrationType]);
      v10 = [NSString stringWithFormat:@"(%@, %@, %@)", v7, v8, v9];

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100371898;
      v11[3] = &unk_100BD9500;
      v12 = v10;
      v6 = v10;
      [IDSAutoBugCapture triggerCaptureWithEvent:200 context:v6 completion:v11];

LABEL_6:
    }
  }
}

- (void)center:(id)a3 succeededRegistration:(id)a4
{
  v5 = a4;
  if (![v5 isDisabled])
  {
    if ([v5 registrationType] == 1)
    {
      v7 = [v5 vettedEmails];
      if (!v7)
      {
        goto LABEL_9;
      }

      v8 = v7;
      if (([v5 shouldRegisterUsingDSHandle] & 1) == 0)
      {
LABEL_22:

        goto LABEL_23;
      }

      v9 = [v5 dsHandle];
      v10 = [v9 length];

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
        [v8 queryValidatedEmailsForRegistration:v5 allowPasswordPrompt:0 completionBlock:0];
        goto LABEL_22;
      }
    }

    else if ([v5 registrationType] == 2)
    {
      v12 = [(IDSRegistrationController *)self userStore];
      v13 = [v5 userUniqueIdentifier];
      v8 = [v12 userWithUniqueIdentifier:v13];

      if (([v8 finishedRegistration] & 1) == 0)
      {
        v14 = [(IDSRegistrationController *)self _phoneUserWithCredentials];
        v15 = [v8 temporaryPhoneUserWithFinishedRegistration];
        v16 = [(IDSRegistrationController *)self userStore];
        [v16 updateUser:v15];

        v17 = [(IDSRegistrationController *)self userStore];
        [v17 persistUsersImmediately];

        v18 = [(IDSRegistrationController *)self displayingAddNumberPrompt];
        if (v14)
        {
          if ((v18 & 1) == 0 && ([v8 hasNotifiedSuccess] & 1) == 0)
          {
            [(IDSRegistrationController *)self _notifyHomeNumberSuccessForUser:v15];
          }
        }

        else if ((v18 & 1) == 0 && ([v8 hasNotifiedSuccess] & 1) == 0)
        {
          v19 = _NSConcreteStackBlock;
          v20 = 3221225472;
          v21 = sub_100371C84;
          v22 = &unk_100BD6E40;
          v23 = self;
          v24 = v5;
          im_dispatch_after_primary_queue();
        }
      }

      goto LABEL_22;
    }

LABEL_23:
    [(IDSRegistrationController *)self _notifyRegistrationSuccess:v5, v19, v20, v21, v22, v23];
    goto LABEL_24;
  }

  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring succeeded registration, registration is disabled: %@", buf, 0xCu);
  }

LABEL_24:
}

- (void)center:(id)a3 failedRegistration:(id)a4 error:(int64_t)a5 info:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v9;
    v14 = 1024;
    v15 = a5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed HTTP registration with info: %@       error: %d", &v12, 0x12u);
  }

  [(IDSRegistrationController *)self _notifyRegistrationFailure:v9 error:a5 info:v10];
}

- (void)center:(id)a3 succeededIdentification:(id)a4 phoneNumber:(id)a5 token:(id)a6
{
  v8 = a4;
  v9 = a5;
  if ([v8 isDisabled])
  {
    v10 = +[IMRGLog registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ignoring need for new identification, registration is disabled: %@", &v13, 0xCu);
    }
  }

  else
  {
    sub_10036F9B8(v8);
    if (![v8 registrationType])
    {
      v11 = [(IDSRegistrationController *)self _provisionedTemporaryUser];
      if ([v9 length] && v11 && !-[IDSRegistrationController displayingAddNumberPrompt](self, "displayingAddNumberPrompt"))
      {
        v12 = [v8 userUniqueIdentifier];
        [(IDSRegistrationController *)self _alertForHomeNumberIfNeededForSIMIdentifier:v12 withPhoneNumber:v9];
      }
    }
  }
}

- (void)center:(id)a3 failedIdentification:(id)a4 error:(int64_t)a5
{
  v7 = a4;
  if ([v7 isDisabled])
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ignoring failed identification, registration is disabled: %@", &v9, 0xCu);
    }
  }

  else
  {
    [(IDSRegistrationController *)self _notifyRegistrationFailure:v7 error:a5 info:0];
  }
}

- (void)centerNeedsNewIdentification:(id)a3
{
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SMS agent requested new identification", v5, 2u);
  }

  [(IDSRegistrationController *)self _notifyNeedsNewRegistration];
}

- (void)center:(id)a3 succeededIDSAuthentication:(id)a4
{
  v5 = a4;
  if ([v5 isDisabled])
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring succeeded IDS Authentication, registration is disabled: %@", &v11, 0xCu);
    }

    goto LABEL_10;
  }

  [(IDSRegistrationController *)self _ensureProfileQueriesAreReadyForRegistratration:v5];
  [(IDSRegistrationController *)self _sendIDSAuthenticationOrRegistrationIfNeeded:v5];
  if (![v5 registrationType])
  {
    v6 = +[IDSRegistrationCenter sharedInstance];
    [v6 sendRegistration:v5];
LABEL_10:

    goto LABEL_11;
  }

  if ([v5 registrationType] == 2)
  {
    v7 = [(IDSRegistrationController *)self _phoneUserWithCredentials];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 uniqueIdentifier];
      v10 = [v8 phoneNumber];
      [(IDSRegistrationController *)self _alertForHomeNumberIfNeededForSIMIdentifier:v9 withPhoneNumber:v10];
    }
  }

LABEL_11:
}

- (void)center:(id)a3 failedIDSAuthentication:(id)a4 error:(int64_t)a5 info:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *v50 = v9;
    *&v50[8] = 1024;
    *&v50[10] = a5;
    v51 = 2112;
    v52 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed IDS Authentication with info: %@ error: %d info: %@", buf, 0x1Cu);
  }

  if ([v9 isDisabled])
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v50 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring failed IDS Authentication, registration is disabled: %@", buf, 0xCu);
    }

    goto LABEL_52;
  }

  if ((a5 - 10) >= 2)
  {
    if (a5 != 37)
    {
      if (a5 == 18)
      {
        v13 = +[IMRGLog registration];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "IDS Authentication failed - Login failed", buf, 2u);
        }

        if (![v9 registrationType])
        {
          v33 = +[IMRGLog registration];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "  This was an SMS reg", buf, 2u);
          }

          v34 = +[IDSRegistrationReasonTracker sharedInstance];
          v35 = [v9 userUniqueIdentifier];
          [v34 setPNRReason:6 forUserUniqueIdentifier:v35];

          v12 = +[IDSSMSRegistrationCenter sharedInstance];
          [v12 sendRegistration:v9];
          goto LABEL_52;
        }

        if ([v9 registrationType] == 1)
        {
          v14 = +[IMRGLog registration];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "This was an apple ID reg", buf, 2u);
          }

          if ([v9 retries] <= 2)
          {
            [v9 setAuthenticationToken:0];
            [v9 setRetries:{objc_msgSend(v9, "retries") + 1}];
            v15 = +[IMRGLog registration];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v9 retries];
              *buf = 67109120;
              *v50 = v16;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Let's re-auth, retry %d", buf, 8u);
            }

            [v9 setRegistrationStatus:3];
            v12 = +[IDSAppleIDRegistrationCenter sharedInstance];
            [v12 authenticateRegistration:v9 forceNewToken:1];
            goto LABEL_52;
          }

          v38 = +[IMRGLog registration];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Too many retries, failing", buf, 2u);
          }

          [v9 setRetries:0];
        }
      }

LABEL_54:
      [(IDSRegistrationController *)self _notifyRegistrationFailure:v9 error:a5 info:0];
      goto LABEL_55;
    }

    goto LABEL_46;
  }

  if (![v9 registrationType])
  {
    v30 = +[IDSRegistrationReasonTracker sharedInstance];
    v31 = [v9 userUniqueIdentifier];
    [v30 setPNRReason:6 forUserUniqueIdentifier:v31];

    v32 = +[IDSSMSRegistrationCenter sharedInstance];
    [v32 sendRegistration:v9];

    v29 = 1;
    goto LABEL_47;
  }

  if ([v9 registrationType] != 1)
  {
LABEL_46:
    v29 = 0;
    goto LABEL_47;
  }

  v17 = +[IMRGLog registration];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v9 retries];
    *buf = 67109120;
    *v50 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed, retry %d", buf, 8u);
  }

  if ([v9 retries] > 2)
  {
    [v9 setRetries:0];
    goto LABEL_46;
  }

  [v9 setRetries:{objc_msgSend(v9, "retries") + 1}];
  if (![v9 registrationType])
  {
    [v9 setMainID:0];
  }

  v19 = [v9 confirmedEmails];
  [v9 setUris:0];
  v20 = [v9 registrationType];
  if (a5 == 10 && v20 == 1)
  {
    v41 = self;
    v42 = 10;
    v43 = v10;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v40 = v19;
    v21 = v19;
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

          [v9 addCandidateEmail:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v23);
    }

    a5 = v42;
    v10 = v43;
    v19 = v40;
    self = v41;
  }

  v28 = [v9 authenticationToken];

  if (v28)
  {
    if ([v9 registrationStatus] < 6)
    {
      v29 = 0;
    }

    else
    {
      sub_10036F9B8(v9);
      v29 = 1;
    }
  }

  else
  {
    [v9 setRegistrationStatus:3];
    v39 = +[IDSAppleIDRegistrationCenter sharedInstance];
    v29 = 1;
    [v39 authenticateRegistration:v9 forceNewToken:1];
  }

LABEL_47:
  if ([v9 registrationType] != 2)
  {
    goto LABEL_53;
  }

  v36 = +[IMRGLog registration];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [v9 retries];
    *buf = 67109378;
    *v50 = v37;
    *&v50[4] = 2112;
    *&v50[6] = v9;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Home Number provision request had expired auth token, renewing {  retries: %d, registration: %@ }", buf, 0x12u);
  }

  if ([v9 retries] > 2)
  {
LABEL_53:
    if (v29)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  [v9 setRetries:{objc_msgSend(v9, "retries") + 1}];
  [v9 setRegistrationStatus:3];
  v12 = +[IDSAppleIDRegistrationCenter sharedInstance];
  [v12 authenticateRegistration:v9 forceRenewal:1 requireSilentAuth:1];
LABEL_52:

LABEL_55:
}

- (BOOL)_sendIDSAuthenticationOrRegistrationIfNeeded:(id)a3
{
  v3 = a3;
  v4 = [v3 registrationType];
  if (v4)
  {
    v5 = [v3 vettedEmails];

    if (!v5)
    {
      v6 = +[IMRGLog registration];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "We still have no vetted email response for: %@   waiting....", buf, 0xCu);
      }
    }

    v7 = [v3 regionID];

    if (!v7)
    {
      v12 = +[IMRGLog registration];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:

        goto LABEL_27;
      }

      *buf = 138412290;
      v24 = v3;
      v13 = "We still have no default profile response for: %@   waiting....";
      v14 = v12;
      v15 = 12;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      goto LABEL_26;
    }

    if (!v5)
    {
LABEL_27:
      v9 = 0;
      goto LABEL_28;
    }
  }

  if ([v3 registrationStatus] <= 5)
  {
    [v3 setRegistrationStatus:6];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100372CFC;
    v21 = &unk_100BD6E40;
    v22 = v3;
    im_dispatch_after_primary_queue();
  }

  if (v4 || ([v3 runningSimpleAuthentication] & 1) == 0)
  {
    v10 = [IMRGLog registration:v18];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "We already have a region ID, skipping query", buf, 2u);
    }

    v11 = [v3 authenticationToken];
    if (v11)
    {

LABEL_22:
      v9 = sub_10036F9B8(v3);
      goto LABEL_28;
    }

    v16 = [v3 authenticationCert];

    if (v16)
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

- (void)center:(id)a3 succeededCurrentEmailsRequest:(id)a4 emailInfo:(id)a5
{
  v6 = a4;
  if ([v6 isDisabled])
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ignoring succeeded current emails request, registration is disabled: %@", &v11, 0xCu);
    }
  }

  else
  {
    v8 = [v6 vettedEmails];

    if (!v8)
    {
      v9 = +[NSArray array];
      [v6 setVettedEmails:v9];
    }

    if ([v6 registrationStatus] < 8 || (objc_msgSend(v6, "authenticationCert"), v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
    {
      [(IDSRegistrationController *)self _sendIDSAuthenticationOrRegistrationIfNeeded:v6];
    }
  }
}

- (void)_ensureProfileQueriesAreReadyForRegistratration:(id)a3
{
  v4 = a3;
  if ([v4 registrationType] == 1)
  {
    v5 = [v4 vettedEmails];

    if (!v5)
    {
      v6 = [v4 authenticationCert];

      v7 = +[IMRGLog registration];
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          LOWORD(v15) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " * Empty vetted emails, sending off handles gathering", &v15, 2u);
        }

        v9 = +[IDSRegistrationCenter sharedInstance];
        [v9 queryValidatedEmailsForRegistration:v4 allowPasswordPrompt:1 completionBlock:0];
      }

      else
      {
        if (v8)
        {
          LOWORD(v15) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " **** missing auth cert, can't send vetted email request", &v15, 2u);
        }

        [(IDSRegistrationController *)self _sendIDSAuthenticationForRegistration:v4];
      }
    }
  }

  if ([v4 registrationType] == 1 && (objc_msgSend(v4, "regionID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, !v11))
  {
    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Empty region ID, querying initial region", &v15, 2u);
    }

    v12 = +[IDSAppleIDRegistrationCenter sharedInstance];
    [v12 queryInitialInvitationContextForRegistration:v4];
  }

  else
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 regionID];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Non empty region ID: %@", &v15, 0xCu);
    }
  }
}

- (BOOL)_sendIDSAuthenticationForRegistration:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 registrationStatus] >= 6)
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

- (void)center:(id)a3 succeededInitialRegionQuery:(id)a4
{
  v5 = a4;
  if ([v5 isDisabled])
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring succeeded initial region query, registration is disabled: %@", &v8, 0xCu);
    }
  }

  else
  {
    v7 = [v5 regionID];

    if (!v7)
    {
      [v5 setRegionID:&stru_100C06028];
    }

    if ([v5 registrationStatus] <= 7)
    {
      [(IDSRegistrationController *)self _sendIDSAuthenticationOrRegistrationIfNeeded:v5];
    }
  }
}

- (void)center:(id)a3 succeededAuthentication:(id)a4
{
  v5 = a4;
  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registration Controller - succeeded authentication: %@", &v8, 0xCu);
  }

  if ([v5 isDisabled])
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ignoring succeeded authentication, registration is disabled: %@", &v8, 0xCu);
    }
  }

  else
  {
    [(IDSRegistrationController *)self _sendIDSAuthenticationForRegistration:v5];
  }
}

- (void)center:(id)a3 succeededRegionValidation:(id)a4 regionID:(id)a5 phoneNumber:(id)a6 extraContext:(id)a7 verified:(BOOL)a8
{
  v8 = a8;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = +[IMRGLog registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    v19 = 138413314;
    v20 = v12;
    v21 = 2112;
    if (v8)
    {
      v17 = @"YES";
    }

    v22 = v13;
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = v15;
    v27 = 2112;
    v28 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Registration Controller - succeeded region validation - registration info: %@   regionID: %@  phoneNumber: %@  extraContext: %@  verified: %@", &v19, 0x34u);
  }

  if ([v12 isDisabled])
  {
    v18 = +[IMRGLog registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Ignoring succeeded region validation, registration is disabled: %@", &v19, 0xCu);
    }
  }
}

- (void)center:(id)a3 failedAuthentication:(id)a4 error:(int64_t)a5 info:(id)a6
{
  v9 = a4;
  v10 = a6;
  if ([v9 isDisabled])
  {
    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v9;
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

  if (a5 == 18 && ([v9 runningSimpleAuthentication] & 1) == 0 && objc_msgSend(v9, "registrationType") == 1)
  {
    if ([v9 retries] <= 3)
    {
      [v9 setRetries:{objc_msgSend(v9, "retries") + 1}];
      [v9 setRegistrationCert:0];
      [v9 setUris:0];
      [v9 setRegistrationStatus:3];
      v11 = +[IDSAppleIDRegistrationCenter sharedInstance];
      [v11 authenticateRegistration:v9 forceNewToken:1];
      goto LABEL_8;
    }

    [v9 setRetries:0];
  }

  v15 = +[IMRGLog registration];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Authentication failed. Notifying, and unregistering %@", &v16, 0xCu);
  }

  [(IDSRegistrationController *)self _notifyRegistrationFailure:v9 error:a5 info:v10];
  if ([v9 registrationStatus] >= 7)
  {
    [(IDSRegistrationController *)self unregisterInfo:v9];
  }

LABEL_9:
}

- (void)center:(id)a3 succeededLinkHandlesConfirmation:(id)a4 emailAddress:(id)a5
{
  v5 = a4;
  if ([v5 isDisabled])
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring succeeded link handles confirmation, registration is disabled: %@", &v7, 0xCu);
    }
  }

  else
  {
    sub_10036F9B8(v5);
  }
}

- (void)addListener:(id)a3
{
  v7 = a3;
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

    [(NSMutableArray *)handlers addObject:v7];
  }
}

- (void)removeListener:(id)a3
{
  [(NSMutableArray *)self->_handlers removeObjectIdenticalTo:a3];
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
    v33 = self;
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
          v12 = [v11 serviceType];
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

    notify_set_state(v33->_iMessageToken, v6 & 1);
    v29 = IMUserScopedNotification();
    notify_post(v29);
    notify_set_state(v33->_screenSharingToken, v5 & 1);
    v30 = IMUserScopedNotification();
    notify_post(v30);
    notify_set_state(v33->_faceTimeToken, v7 & 1);
    v31 = IMUserScopedNotification();
    notify_post(v31);
    notify_set_state(v33->_callingToken, v8 & 1);
    v32 = IMUserScopedNotification();
    notify_post(v32);
  }
}

- (void)startTrackingRegistration:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding registration to list of tracked registrations: %@", &v11, 0xCu);
  }

  if (v4)
  {
    if ([(NSMutableArray *)self->_trackedRegistrations containsObject:v4])
    {
      [(NSMutableArray *)self->_trackedRegistrations removeObject:v4];
    }

    else
    {
      v6 = +[IMRGLog registration];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v4;
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

    [(NSMutableArray *)trackedRegistrations addObject:v4];
    [(IDSRegistrationController *)self _updateNotifyState];
  }
}

- (void)stopTrackingRegistration:(id)a3
{
  v4 = a3;
  if (v4 && [(NSMutableArray *)self->_trackedRegistrations containsObject:v4])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing registration from list of tracked registrations: %@", &v8, 0xCu);
    }

    [(NSMutableArray *)self->_trackedRegistrations removeObject:v4];
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

- (void)startTrackingActiveRegistration:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding registration to list of active registrations: %@", &v10, 0xCu);
  }

  if (v4)
  {
    if ([(NSMutableArray *)self->_activeRegistrations containsObject:v4])
    {
      [(NSMutableArray *)self->_activeRegistrations removeObject:v4];
    }

    else
    {
      v6 = +[IMRGLog registration];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v4;
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

    [(NSMutableArray *)activeRegistrations addObject:v4];
  }
}

- (void)stopTrackingActiveRegistration:(id)a3
{
  v4 = a3;
  if (v4 && [(NSMutableArray *)self->_activeRegistrations containsObjectIdenticalTo:v4])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing registration from list of active registrations: %@", &v7, 0xCu);
    }

    [(NSMutableArray *)self->_activeRegistrations removeObjectIdenticalTo:v4];
    if (![(NSMutableArray *)self->_activeRegistrations count])
    {
      activeRegistrations = self->_activeRegistrations;
      self->_activeRegistrations = 0;
    }
  }
}

- (id)activeRegistrationsMatchingUserID:(id)a3
{
  v4 = [a3 _im_normalizedURIString];
  v5 = [(IDSRegistrationController *)self activeRegistrations];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100374384;
  v9[3] = &unk_100BD9528;
  v10 = v4;
  v6 = v4;
  v7 = [v5 __imArrayByApplyingBlock:v9];

  return v7;
}

- (id)activeRegistrationsOfType:(int)a3
{
  v4 = [(IDSRegistrationController *)self activeRegistrations];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003744B0;
  v7[3] = &unk_100BD9548;
  v8 = a3;
  v5 = [v4 __imArrayByApplyingBlock:v7];

  return v5;
}

- (NSArray)activeRegistrationsToRegister
{
  v2 = [(IDSRegistrationController *)self activeRegistrations];
  v3 = [v2 __imArrayByApplyingBlock:&stru_100BD9568];

  return v3;
}

- (void)_systemConfigurationPrefsChanged
{
  v3 = +[FTDeviceSupport sharedInstance];
  v4 = [v3 deviceName];

  if (v4)
  {
    deviceName = self->_deviceName;
    if (deviceName != v4)
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
          v36 = v4;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device name changed from %@ to %@", buf, 0x16u);
        }

        objc_storeStrong(&self->_deviceName, v4);
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v10 = [(NSMutableArray *)self->_trackedRegistrations _copyForEnumerating];
        v11 = [v10 countByEnumeratingWithState:&v29 objects:v39 count:16];
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
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v29 + 1) + 8 * i);
              v17 = [v16 deviceName];
              v18 = [v17 isEqualToString:v4];

              if ((v18 & 1) == 0)
              {
                v19 = +[IMRGLog registration];
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  v20 = [v16 deviceName];
                  *buf = v28;
                  v34 = v20;
                  v35 = 2112;
                  v36 = v4;
                  v37 = 2112;
                  v38 = v16;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device name was updated from %@ to %@  (Registration: %@)", buf, 0x20u);
                }

                v21 = +[IMSystemMonitor sharedInstance];
                v22 = [v21 isUnderFirstDataProtectionLock];

                v23 = +[IMRGLog registration];
                v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
                if (v22)
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

            v13 = [v10 countByEnumeratingWithState:&v29 objects:v39 count:16];
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
  v5 = [(NSMutableSet *)self->_deferredRegisters allObjects];
  v6 = [v5 _copyForEnumerating];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
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
      v9 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v9);
  }

  deferredRegisters = self->_deferredRegisters;
  self->_deferredRegisters = 0;
}

- (void)_postHomeNumberNotificationBeforeAlertForIdentifier:(id)a3 forcefully:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(IDSRegistrationController *)self _phoneUserWithCredentials];
  v8 = [(IDSRegistrationController *)self userStore];
  v9 = [v8 userWithUniqueIdentifier:v6];

  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = [(IDSRegistrationController *)self displayingAddNumberPrompt];
  }

  if ([v9 finishedRegistration])
  {
    v11 = [v9 hasNotifiedSuccess];
  }

  else
  {
    v11 = 1;
  }

  v12 = [(IDSRegistrationController *)self _pnrOngoing];
  v13 = +[IMRGLog registration];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(IDSRegistrationController *)self displayingAddNumberPrompt];
    v15 = @"NO";
    *buf = 138413314;
    if (v14)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v20 = v16;
    v21 = 2112;
    if (v4)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v22 = v17;
    v23 = 2112;
    if (v12)
    {
      v15 = @"YES";
    }

    v24 = v15;
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to post Home Number notification before alert { displayingAddNumberPrompt: %@, bypassOngoingPNR: %@, ongoingPNR: %@, phoneUser: %@, tempUser: %@ }", buf, 0x34u);
  }

  if ((v10 | v11) & 1) != 0 || (!v4 & v12)
  {
    if (((v10 | v11) & 1) == 0)
    {
      v18 = v6;
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
  v3 = [v2 registrationConductor];
  v4 = [v3 phoneUserRegistry];
  v5 = [v4 validators];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v8 |= ([*(*(&v12 + 1) + 8 * i) status] & 0xFFFFFFFFFFFFFFFELL) == 2;
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v2 = [(IDSRegistrationController *)self userStore];
  [v2 usersWithRealm:2];
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
  v2 = [(IDSRegistrationController *)self userStore];
  [v2 usersWithRealm:0];
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
        v8 = [v2 credentialForUser:{v7, v10}];

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

- (void)_notifyHomeNumberSuccessForUser:(id)a3
{
  v4 = a3;
  [IDSTemporaryPhoneAlertManager presentSuccessAlertForUser:v4];
  v6 = [v4 temporaryPhoneUserWithNotifiedSuccess];

  v5 = [(IDSRegistrationController *)self userStore];
  [v5 updateUser:v6];
}

- (void)_alertForHomeNumberIfNeededForSIMIdentifier:(id)a3 withPhoneNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length] && !-[IDSRegistrationController displayingAddNumberPrompt](self, "displayingAddNumberPrompt"))
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
      v24 = v6;
      v25 = self;
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
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 5;
  }

  return v4;
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

- (void)SIM:(id)a3 didDeactivateWithInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSRegistrationController *)self simDeactivationRequestRateLimiter];

  if (!v8)
  {
    v9 = [IDSRateLimiter alloc];
    v10 = [(IDSRegistrationController *)self simDeactivationInfoRateLimitCount];
    [(IDSRegistrationController *)self simDeactivationInfoRateLimitInterval];
    v11 = [v9 initWithLimit:v10 timeLimit:?];
    [(IDSRegistrationController *)self setSimDeactivationRequestRateLimiter:v11];
  }

  v12 = [v6 SIMIdentifier];
  v13 = v12;
  v14 = @"SIM";
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [(IDSRegistrationController *)self simDeactivationRequestRateLimiter];
  v17 = [v16 underLimitForItem:v15];

  v18 = +[IMRGLog registration];
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      v20 = [v6 SIMIdentifier];
      v23 = 138412290;
      v24 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending SIM deactivation request for label ID %@", &v23, 0xCu);
    }

    v21 = [(IDSRegistrationController *)self simDeactivationRequestRateLimiter];
    [v21 noteItem:v15];

    v18 = +[IDSRegistrationCenter sharedInstance];
    [v18 sendDeactivationRequestWithSIM:v6 Info:v7];
  }

  else if (v19)
  {
    v22 = [(IDSRegistrationController *)self simDeactivationRequestRateLimiter];
    v23 = 138412290;
    v24 = v22;
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