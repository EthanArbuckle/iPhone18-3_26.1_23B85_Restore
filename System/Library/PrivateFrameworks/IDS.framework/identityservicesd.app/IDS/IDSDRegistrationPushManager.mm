@interface IDSDRegistrationPushManager
+ (id)sharedInstance;
- (BOOL)_isAccountRelevantForRegistrationPush:(id)push;
- (IDSDRegistrationPushManager)init;
- (id)_accountsWithService:(id)service;
- (void)_acceptIncomingPushes;
- (void)_handleAction:(int64_t)action forAccounts:(id)accounts;
- (void)_handleForceRepairRegistrationActionForAccounts:(id)accounts;
- (void)_handleKTOptOutActionForAllAccounts;
- (void)_handleReIdentifyActionForAccounts:(id)accounts;
- (void)_handleReProvisionActionForAccounts:(id)accounts;
- (void)_handleReRegisterActionForAccounts:(id)accounts;
- (void)_handleValidateCredentialsActionForAccounts:(id)accounts;
- (void)_ignoreIncomingPushes;
- (void)_updatePushState;
- (void)dealloc;
- (void)handler:(id)handler cohortSelected:(id)selected;
- (void)handler:(id)handler requestedPromptThroughPushWithTitle:(id)title message:(id)message defaultButton:(id)button defaultUrl:(id)url alternateButton:(id)alternateButton alternateUrl:(id)alternateUrl;
- (void)handler:(id)handler requestedSysdiagnoseWithTapToRadarPushPayload:(id)payload;
- (void)handler:(id)handler reregisterUserID:(id)d style:(id)style service:(id)service;
- (void)startTrackingRegisteredAccountID:(id)d;
- (void)stopTrackingRegisteredAccountID:(id)d;
@end

@implementation IDSDRegistrationPushManager

+ (id)sharedInstance
{
  if (qword_100CBD250 != -1)
  {
    sub_10091D400();
  }

  v3 = qword_100CBD258;

  return v3;
}

- (IDSDRegistrationPushManager)init
{
  v10.receiver = self;
  v10.super_class = IDSDRegistrationPushManager;
  v2 = [(IDSDRegistrationPushManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_registeredForPushes = 0;
    v4 = objc_alloc_init(NSMutableSet);
    registeredAccountIDs = v3->_registeredAccountIDs;
    v3->_registeredAccountIDs = v4;

    v6 = objc_alloc_init(IDSRegistrationPushHandler);
    pushHandler = v3->_pushHandler;
    v3->_pushHandler = v6;

    [(IDSRegistrationPushHandler *)v3->_pushHandler addListener:v3];
    v8 = +[IMSystemMonitor sharedInstance];
    [v8 addListener:v3];
  }

  return v3;
}

- (void)dealloc
{
  [(IDSDRegistrationPushManager *)self _ignoreIncomingPushes];
  [(IDSRegistrationPushHandler *)self->_pushHandler removeListener:self];
  v3 = +[IMSystemMonitor sharedInstance];
  [v3 removeListener:self];

  v4.receiver = self;
  v4.super_class = IDSDRegistrationPushManager;
  [(IDSDRegistrationPushManager *)&v4 dealloc];
}

- (void)startTrackingRegisteredAccountID:(id)d
{
  dCopy = d;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSDRegistrationPushManager now tracking registered account {accountID: %@}", &v6, 0xCu);
  }

  if (dCopy)
  {
    [(NSMutableSet *)self->_registeredAccountIDs addObject:dCopy];
    [(IDSDRegistrationPushManager *)self _updatePushState];
  }
}

- (void)stopTrackingRegisteredAccountID:(id)d
{
  dCopy = d;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSDRegistrationPushManager stopped tracking registered account {accountID: %@}", &v6, 0xCu);
  }

  if (dCopy)
  {
    [(NSMutableSet *)self->_registeredAccountIDs removeObject:dCopy];
    [(IDSDRegistrationPushManager *)self _updatePushState];
  }
}

- (void)_updatePushState
{
  if ([(NSMutableSet *)self->_registeredAccountIDs count])
  {
    if (!self->_registeredForPushes)
    {

      [(IDSDRegistrationPushManager *)self _acceptIncomingPushes];
    }
  }

  else if (self->_registeredForPushes)
  {

    [(IDSDRegistrationPushManager *)self _ignoreIncomingPushes];
  }
}

- (void)_acceptIncomingPushes
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "IDSDRegistrationPushManager is now accepting incoming pushes", v4, 2u);
  }

  [(IDSRegistrationPushHandler *)self->_pushHandler setRegistered:1];
  self->_registeredForPushes = 1;
}

- (void)_ignoreIncomingPushes
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "IDSDRegistrationPushManager is no longer accepting incoming pushes", v4, 2u);
  }

  [(IDSRegistrationPushHandler *)self->_pushHandler setRegistered:0];
  self->_registeredForPushes = 0;
}

- (id)_accountsWithService:(id)service
{
  serviceCopy = service;
  v4 = [serviceCopy length];
  v5 = +[IDSDAccountController sharedInstance];
  v6 = v5;
  if (v4)
  {
    v7 = +[IDSDServiceController sharedInstance];
    v8 = [v7 serviceWithName:serviceCopy];
    accounts = [v6 accountsOnService:v8];
  }

  else
  {
    accounts = [v5 accounts];
  }

  return accounts;
}

- (BOOL)_isAccountRelevantForRegistrationPush:(id)push
{
  pushCopy = push;
  accountType = [pushCopy accountType];
  accountType2 = [pushCopy accountType];
  service = [pushCopy service];

  adHocServiceType = [service adHocServiceType];
  return (accountType == 1 || accountType2 == 0) && adHocServiceType == 0;
}

- (void)handler:(id)handler requestedSysdiagnoseWithTapToRadarPushPayload:(id)payload
{
  payloadCopy = payload;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    errorCode = [payloadCopy errorCode];
    serverErrorDetail = [payloadCopy serverErrorDetail];
    promptMessage = [payloadCopy promptMessage];
    *buf = 138412802;
    v51 = *&errorCode;
    v52 = 2112;
    v53 = *&serverErrorDetail;
    v54 = 2112;
    v55 = *&promptMessage;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device received sysdiagnose request push {error code: %@, serverErrorDetail: %@, userFacingMessage: %@}", buf, 0x20u);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v10 = v9;
  v11 = IMGetAppIntForKey();
  v12 = vabdd_f64(v10, v11);
  if (v12 >= 86400.0)
  {
    v14 = [NSNumber numberWithDouble:v10];
    IMSetAppValueForKey();

    v13 = objc_alloc_init(NSMutableDictionary);
    v15 = +[FTDeviceSupport sharedInstance];
    productBuildVersion = [v15 productBuildVersion];
    radarTitle = [payloadCopy radarTitle];
    v18 = radarTitle;
    if (radarTitle)
    {
      v19 = radarTitle;
    }

    else
    {
      v19 = @"Internal IDS error detected ";
    }

    errorCode2 = [payloadCopy errorCode];
    v21 = [NSString stringWithFormat:@"[%@] Tap-to-Radar: %@ (server error code: %@)", productBuildVersion, v19, errorCode2];
    v22 = kIDSTapToRadarTitleKey;
    [v13 setObject:v21 forKeyedSubscript:kIDSTapToRadarTitleKey];

    v23 = [v13 objectForKeyedSubscript:v22];
    v24 = +[FTDeviceSupport sharedInstance];
    deviceInformationString = [v24 deviceInformationString];
    serverErrorDetail2 = [payloadCopy serverErrorDetail];
    v27 = serverErrorDetail2;
    if (serverErrorDetail2)
    {
      v28 = serverErrorDetail2;
    }

    else
    {
      v28 = &stru_100C06028;
    }

    radarDescription = [payloadCopy radarDescription];
    v30 = radarDescription;
    if (radarDescription)
    {
      v31 = radarDescription;
    }

    else
    {
      v31 = &stru_100C06028;
    }

    v32 = [NSString stringWithFormat:@"%@\n\n%@\n\n%@\n\n%@", v23, deviceInformationString, v28, v31];
    [v13 setObject:v32 forKeyedSubscript:kIDSTapToRadarDescriptionKey];

    radarComponentName = [payloadCopy radarComponentName];
    if (radarComponentName)
    {
      CFDictionarySetValue(v13, kIDSTapToRadarComponentNameKey, radarComponentName);
    }

    radarComponentVersion = [payloadCopy radarComponentVersion];
    if (radarComponentVersion)
    {
      CFDictionarySetValue(v13, kIDSTapToRadarComponentVersionKey, radarComponentVersion);
    }

    radarComponentId = [payloadCopy radarComponentId];
    if (radarComponentId)
    {
      CFDictionarySetValue(v13, kIDSTapToRadarComponentIDKey, radarComponentId);
    }

    radarClassification = [payloadCopy radarClassification];
    if (radarClassification)
    {
      CFDictionarySetValue(v13, kIDSTapToRadarClassificationKey, radarClassification);
    }

    radarReproducibility = [payloadCopy radarReproducibility];
    if (radarReproducibility)
    {
      CFDictionarySetValue(v13, kIDSTapToRadarReproducibilityKey, radarReproducibility);
    }

    radarKeywords = [payloadCopy radarKeywords];
    if (radarKeywords)
    {
      CFDictionarySetValue(v13, kIDSTapToRadarKeywordsKey, radarKeywords);
    }

    radarQueryParameter = [payloadCopy radarQueryParameter];
    if (radarQueryParameter)
    {
      CFDictionarySetValue(v13, kIDSTapToRadarQueryParameterKey, radarQueryParameter);
    }

    v40 = [[IDSTapToRadarContext alloc] initWithDictionary:v13];
    promptTitle = [payloadCopy promptTitle];
    v42 = promptTitle;
    v43 = @"Internal IDS Error Detected";
    if (promptTitle)
    {
      v43 = promptTitle;
    }

    v44 = v43;

    promptMessage2 = [payloadCopy promptMessage];
    v46 = promptMessage2;
    v47 = @"An internal IDS error has been detected";
    if (promptMessage2)
    {
      v47 = promptMessage2;
    }

    v48 = v47;

    v49 = [[IDSTapToRadarRequest alloc] initWithTitle:v44 message:v48];
    [IDSTapToRadar launchWithRequest:v49 context:v40];
  }

  else
  {
    v13 = +[IMRGLog registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v51 = v10;
      v52 = 2048;
      v53 = v11;
      v54 = 2048;
      v55 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ignoring sysdiagnose request push (not enough time has passed since last prompt) { now: %f, lastPromptTime: %f, delta: %f }", buf, 0x20u);
    }
  }
}

- (void)handler:(id)handler requestedPromptThroughPushWithTitle:(id)title message:(id)message defaultButton:(id)button defaultUrl:(id)url alternateButton:(id)alternateButton alternateUrl:(id)alternateUrl
{
  titleCopy = title;
  messageCopy = message;
  buttonCopy = button;
  urlCopy = url;
  alternateButtonCopy = alternateButton;
  alternateUrlCopy = alternateUrl;
  v19 = +[IMRGLog registration];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138413570;
    v27 = *&titleCopy;
    v28 = 2112;
    v29 = *&messageCopy;
    v30 = 2112;
    v31 = *&buttonCopy;
    v32 = 2112;
    v33 = urlCopy;
    v34 = 2112;
    v35 = alternateButtonCopy;
    v36 = 2112;
    v37 = alternateUrlCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device received request for prompt {title: %@, message: %@, default button: %@, default url: %@, alternate button: %@, alternate url: %@}", &v26, 0x3Eu);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v21 = v20;
  v22 = IMGetAppIntForKey();
  v23 = vabdd_f64(v21, v22);
  if (v23 >= 60.0)
  {
    v25 = [NSNumber numberWithDouble:v21];
    IMSetAppValueForKey();

    v24 = [[IDSPopupPrompt alloc] initWithTitle:titleCopy promptMessage:messageCopy];
    [v24 launchPromptWithButton:buttonCopy defaultUrl:urlCopy alternateButton:alternateButtonCopy alternateUrl:alternateUrlCopy];
  }

  else
  {
    v24 = +[IMRGLog registration];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 134218496;
      v27 = v21;
      v28 = 2048;
      v29 = v22;
      v30 = 2048;
      v31 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Ignoring request for prompt (not enough time has passed since last prompt) { now: %f, lastPromptTime: %f, delta: %f }", &v26, 0x20u);
    }
  }
}

- (void)handler:(id)handler reregisterUserID:(id)d style:(id)style service:(id)service
{
  handlerCopy = handler;
  dCopy = d;
  styleCopy = style;
  serviceCopy = service;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v41 = _os_activity_create(&_mh_execute_header, "Registration push manager received registration push", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v41, &state);
  v10 = +[IMRGLog registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v44 = styleCopy;
    v45 = 2112;
    v46 = dCopy;
    v47 = 2112;
    v48 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device received registration push {style: %@, userID: %@, service: %@}", buf, 0x20u);
  }

  if (+[IDSRegistrationController isBuddyBlockingRegistration])
  {
    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "System not setup -- ignoring registration push", buf, 2u);
    }
  }

  else
  {
    v12 = +[NSMutableArray array];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = [(IDSDRegistrationPushManager *)self _accountsWithService:serviceCopy];
    v14 = [v13 countByEnumeratingWithState:&v36 objects:v42 count:16];
    v32 = v12;
    if (v14)
    {
      v34 = *v37;
      obj = v13;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v37 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          if ([(IDSDRegistrationPushManager *)self _isAccountRelevantForRegistrationPush:v16])
          {
            v17 = [dCopy length];
            registration = [v16 registration];
            userID = [registration userID];
            v20 = [dCopy isEqualToIgnoringCase:userID];

            registration2 = [v16 registration];
            profileID = [registration2 profileID];
            if ([dCopy isEqualToIgnoringCase:profileID])
            {
              registration3 = [v16 registration];
              v24 = [registration3 registrationType] == 1;
            }

            else
            {
              v24 = 0;
            }

            registration4 = [v16 registration];
            idsUserID = [registration4 idsUserID];
            v27 = [dCopy isEqualToIgnoringCase:idsUserID];

            if ((v17 == 0 || v24) | v20 & 1 | v27 & 1)
            {
              v28 = +[IMRGLog registration];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v44 = v16;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Found matching candidate account for registration push {account: %@}", buf, 0xCu);
              }

              [v32 addObject:v16];
            }
          }
        }

        v13 = obj;
        v14 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v14);
    }

    v11 = v32;
    -[IDSDRegistrationPushManager _handleAction:forAccounts:](self, "_handleAction:forAccounts:", [styleCopy integerValue], v32);
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)handler:(id)handler cohortSelected:(id)selected
{
  selectedCopy = selected;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = selectedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device received cohort selected push {cohortSelected: %@}", &v10, 0xCu);
  }

  integerValue = [selectedCopy integerValue];
  if (CUTIsInternalInstall() && integerValue == 256)
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Allowing test cohort", &v10, 2u);
    }

    goto LABEL_11;
  }

  if (integerValue < 0x100)
  {
LABEL_11:
    v8 = [[IDSBassHarborCheckInMetric alloc] initWithCohort:selectedCopy];
    v9 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v9 logMetric:v8];

    goto LABEL_12;
  }

  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10091D414(selectedCopy, v8);
  }

LABEL_12:
}

- (void)_handleAction:(int64_t)action forAccounts:(id)accounts
{
  accountsCopy = accounts;
  if (action <= 1)
  {
    switch(action)
    {
      case -1:
        goto LABEL_18;
      case 0:
        [(IDSDRegistrationPushManager *)self _handleReIdentifyActionForAccounts:accountsCopy];
        goto LABEL_18;
      case 1:
        [(IDSDRegistrationPushManager *)self _handleReProvisionActionForAccounts:accountsCopy];
        goto LABEL_18;
    }
  }

  else
  {
    if (action <= 3)
    {
      if (action == 2)
      {
        [(IDSDRegistrationPushManager *)self _handleReRegisterActionForAccounts:accountsCopy];
      }

      else
      {
        [(IDSDRegistrationPushManager *)self _handleValidateCredentialsActionForAccounts:accountsCopy];
      }

      goto LABEL_18;
    }

    if (action == 4)
    {
      [(IDSDRegistrationPushManager *)self _handleForceRepairRegistrationActionForAccounts:accountsCopy];
      goto LABEL_18;
    }

    if (action == 5)
    {
      [(IDSDRegistrationPushManager *)self _handleKTOptOutActionForAllAccounts];
      goto LABEL_18;
    }
  }

  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    sub_10091D48C(action, v7);
  }

LABEL_18:
}

- (void)_handleReIdentifyActionForAccounts:(id)accounts
{
  accountsCopy = accounts;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v40 = _os_activity_create(&_mh_execute_header, "Registration push manager re-identify", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v40, &state);
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Re-identifying accounts in response to registration push", buf, 2u);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = accountsCopy;
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v6)
  {
    v7 = *v36;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        registration = [v9 registration];
        v11 = [registration registrationType] == 0;

        if (v11)
        {
          v12 = +[IDSRegistrationReasonTracker sharedInstance];
          userUniqueIdentifier = [v9 userUniqueIdentifier];
          [v12 setPNRReason:9 forUserUniqueIdentifier:userUniqueIdentifier];
        }

        registration2 = [v9 registration];
        [registration2 setRegistrationStatus:0];

        registration3 = [v9 registration];
        [registration3 voidPassword];

        registration4 = [v9 registration];
        [registration4 voidAuthenticationTokenAllowingGracePeriod];

        registration5 = [v9 registration];
        [registration5 saveToKeychain];

        [v9 _removeAuthenticationCredentialsIncludingAuthToken:0];
      }

      v6 = [v5 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v6);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = v5;
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v19)
  {
    v21 = *v32;
    *&v20 = 138412290;
    v30 = v20;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v31 + 1) + 8 * j);
        if ([v23 accountType] || !objc_msgSend(v23, "isTemporary"))
        {
          [v23 reregister];
        }

        else
        {
          v24 = +[IDSDaemon sharedInstance];
          registrationConductor = [v24 registrationConductor];
          userStore = [registrationConductor userStore];

          userUniqueIdentifier2 = [v23 userUniqueIdentifier];
          v28 = [userStore userWithUniqueIdentifier:userUniqueIdentifier2];

          v29 = +[IMRGLog registration];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v30;
            v42 = v28;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "We can't re-identify a temporary account. Nuking Home Number user %@", buf, 0xCu);
          }

          [userStore forceRemoveUser:v28 silently:0];
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v19);
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_handleReProvisionActionForAccounts:(id)accounts
{
  accountsCopy = accounts;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v40 = _os_activity_create(&_mh_execute_header, "Registration push manager re-provision", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v40, &state);
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Re-provisioning accounts in response to registration push", buf, 2u);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = accountsCopy;
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v6)
  {
    v7 = *v36;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        registration = [v9 registration];
        v11 = [registration registrationType] == 0;

        if (v11)
        {
          v12 = +[IDSRegistrationReasonTracker sharedInstance];
          userUniqueIdentifier = [v9 userUniqueIdentifier];
          [v12 setPNRReason:13 forUserUniqueIdentifier:userUniqueIdentifier];

          v14 = +[IDSPACStateTracker sharedInstance];
          [v14 notePhoneAuthCertLost:6];
        }

        registration2 = [v9 registration];
        [registration2 setAuthenticationCert:0];

        registration3 = [v9 registration];
        [registration3 setUris:0];

        registration4 = [v9 registration];
        [registration4 setRegistrationCert:0];
      }

      v6 = [v5 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v6);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = v5;
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v19)
  {
    v21 = *v32;
    *&v20 = 138412290;
    v30 = v20;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v31 + 1) + 8 * j);
        if ([v23 accountType] || !objc_msgSend(v23, "isTemporary"))
        {
          [v23 reregister];
        }

        else
        {
          v24 = +[IDSDaemon sharedInstance];
          registrationConductor = [v24 registrationConductor];
          userStore = [registrationConductor userStore];

          userUniqueIdentifier2 = [v23 userUniqueIdentifier];
          v28 = [userStore userWithUniqueIdentifier:userUniqueIdentifier2];

          v29 = +[IMRGLog registration];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v30;
            v42 = v28;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "We can't re-provision a temporary account. Nuking Home Number user %@", buf, 0xCu);
          }

          [userStore forceRemoveUser:v28 silently:0];
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v19);
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_handleReRegisterActionForAccounts:(id)accounts
{
  accountsCopy = accounts;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v15 = _os_activity_create(&_mh_execute_header, "Registration push manager re-register", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v15, &state);
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Re-registering accounts in response to registration push", buf, 2u);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = accountsCopy;
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v16 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) reregister];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v16 count:16];
    }

    while (v6);
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_handleForceRepairRegistrationActionForAccounts:(id)accounts
{
  accountsCopy = accounts;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v9 = _os_activity_create(&_mh_execute_header, "Registration push manager repair registration", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v9, &state);
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Repairing registration on accounts in response to registration push", v7, 2u);
  }

  v5 = +[IDSDaemon sharedInstance];
  registrationConductor = [v5 registrationConductor];
  [registrationConductor forceRepairAccounts:accountsCopy];

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_handleKTOptOutActionForAllAccounts
{
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v17 = _os_activity_create(&_mh_execute_header, "Registration push manager kt opt out", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v17, &state);
  v3 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Repairing registration on accounts in response to registration push for KT opt out.", buf, 2u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(IDSDRegistrationPushManager *)self _accountsWithService:0, 0];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v18 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 registrationError] == 47 || objc_msgSend(v8, "registrationError") == 48 || objc_msgSend(v8, "registrationError") == 49)
        {
          [v8 resetErrorState];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v18 count:16];
    }

    while (v5);
  }

  v9 = +[IDSDaemon sharedInstance];
  registrationConductor = [v9 registrationConductor];
  [registrationConductor kickRepair];

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_handleValidateCredentialsActionForAccounts:(id)accounts
{
  accountsCopy = accounts;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v18 = _os_activity_create(&_mh_execute_header, "Registration push manager validate credentials", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v18, &state);
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Validating credentials in response to registration push", buf, 2u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = accountsCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v19 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_100418990;
        v11[3] = &unk_100BD7598;
        v11[4] = self;
        v11[5] = v10;
        [v10 validateCredentialsWithDeliveryCompletionBlock:v11];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v19 count:16];
    }

    while (v7);
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

@end