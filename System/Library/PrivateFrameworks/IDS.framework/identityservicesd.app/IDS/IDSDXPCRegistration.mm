@interface IDSDXPCRegistration
- (IDSDXPCRegistration)initWithQueue:(id)queue connection:(id)connection;
- (IDSDXPCRegistration)initWithQueue:(id)queue connection:(id)connection userStore:(id)store accountController:(id)controller ctAdapter:(id)adapter;
- (void)constructRAResponseDictionaryForServices:(id)services completionHandler:(id)handler;
- (void)disableTemporaryPhoneAlias:(id)alias withCompletion:(id)completion;
- (void)enableTemporaryPhoneAlias:(id)alias withCompletion:(id)completion;
- (void)removeTemporaryPhoneAlias:(id)alias withCompletion:(id)completion;
- (void)requestSelectedSubscriptionsWithCompletion:(id)completion;
- (void)requestUnselectedTemporaryPhoneAliasesWithCompletion:(id)completion;
- (void)selectSubscription:(id)subscription withCompletion:(id)completion;
- (void)setSelectedSubscriptions:(id)subscriptions withCompletion:(id)completion;
- (void)unselectSubscription:(id)subscription withCompletion:(id)completion;
@end

@implementation IDSDXPCRegistration

- (IDSDXPCRegistration)initWithQueue:(id)queue connection:(id)connection userStore:(id)store accountController:(id)controller ctAdapter:(id)adapter
{
  queueCopy = queue;
  connectionCopy = connection;
  storeCopy = store;
  controllerCopy = controller;
  adapterCopy = adapter;
  v26.receiver = self;
  v26.super_class = IDSDXPCRegistration;
  v17 = [(IDSDXPCRegistration *)&v26 init];
  if (!v17)
  {
LABEL_12:
    v21 = v17;
    goto LABEL_13;
  }

  v18 = [connectionCopy hasEntitlement:kIDSPhoneNumberAuthenticationEntitlement];
  v19 = [connectionCopy hasEntitlement:@"com.apple.private.imcore.spi.database-access"];
  if (v18 & 1) != 0 || (v19)
  {
    v22 = v18 | v19 ^ 1;
    if ((v22 & 1) == 0)
    {
      log = +[IMRGLog sms];
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = connectionCopy;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Allowing bypass entitlement to read from IDSXPCRegistration {connection: %@}", buf, 0xCu);
      }
    }

    objc_storeStrong(&v17->_queue, queue);
    v17->_onlyAllowReads = (v22 & 1) == 0;
    objc_storeStrong(&v17->_userStore, store);
    objc_storeStrong(&v17->_accountController, controller);
    objc_storeStrong(&v17->_ctAdapter, adapter);
    goto LABEL_12;
  }

  v20 = +[IMRGLog sms];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Missing phone number authentication entitlement -- failing creation of IDSDXPCRegistration collaborator {connection: %@}", buf, 0xCu);
  }

  v21 = 0;
LABEL_13:

  return v21;
}

- (IDSDXPCRegistration)initWithQueue:(id)queue connection:(id)connection
{
  connectionCopy = connection;
  queueCopy = queue;
  v8 = +[IDSDaemon sharedInstance];
  registrationConductor = [v8 registrationConductor];
  userStore = [registrationConductor userStore];
  v11 = +[IDSDAccountController sharedInstance];
  v12 = +[IDSCTAdapter sharedInstance];
  v13 = [(IDSDXPCRegistration *)self initWithQueue:queueCopy connection:connectionCopy userStore:userStore accountController:v11 ctAdapter:v12];

  return v13;
}

- (void)requestSelectedSubscriptionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[FTUserConfiguration sharedInstance];
  selectedPhoneNumberRegistrationSubscriptionLabels = [v5 selectedPhoneNumberRegistrationSubscriptionLabels];

  ctAdapter = [(IDSDXPCRegistration *)self ctAdapter];
  v20 = 0;
  v8 = [ctAdapter currentSIMsWithError:&v20];
  v9 = v20;

  if (v9)
  {
    v10 = +[IMRGLog sms];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unable to fetch sims -- returning nil {simFetchError: %@}", buf, 0xCu);
    }

    v11 = IDSPhoneSubscriptionSelectorErrorDomain;
    v27 = NSUnderlyingErrorKey;
    v28 = v9;
    v12 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v13 = [NSError errorWithDomain:v11 code:100 userInfo:v12];
    completionCopy[2](completionCopy, 0, v13);
  }

  else
  {
    v14 = sub_10061E538(v8, selectedPhoneNumberRegistrationSubscriptionLabels);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10061E788;
    v17[3] = &unk_100BE2950;
    v15 = v8;
    v18 = v15;
    selfCopy = self;
    v12 = [v14 __imArrayByFilteringWithBlock:v17];

    v16 = +[IMRGLog sms];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v22 = v12;
      v23 = 2112;
      v24 = selectedPhoneNumberRegistrationSubscriptionLabels;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Client requested selected subscriptions {subscriptions: %@, selectedLabelIDs: %@, SIMs: %@}", buf, 0x20u);
    }

    (completionCopy)[2](completionCopy, v12, 0);
    v13 = v18;
  }
}

- (void)requestUnselectedTemporaryPhoneAliasesWithCompletion:(id)completion
{
  completionCopy = completion;
  accountController = [(IDSDXPCRegistration *)self accountController];
  hasiCloudAccount = [accountController hasiCloudAccount];

  ctAdapter = [(IDSDXPCRegistration *)self ctAdapter];
  if ([ctAdapter isAnySIMInserted])
  {
    v8 = 1;
  }

  else
  {
    userStore = [(IDSDXPCRegistration *)self userStore];
    v10 = [userStore usersWithRealm:0];
    v8 = [v10 count] != 0;
  }

  if (hasiCloudAccount & v8)
  {
    userStore2 = [(IDSDXPCRegistration *)self userStore];
    v12 = [userStore2 usersWithRealm:2];
    v13 = [v12 __imArrayByFilteringWithBlock:&stru_100BE2990];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10061EC4C;
    v19[3] = &unk_100BE29B8;
    v19[4] = self;
    v14 = [(__CFString *)v13 __imArrayByApplyingBlock:v19];
    v15 = +[IMRGLog sms];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v14;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Client requested unselected temporary phone aliases {descriptions: %@, users: %@}", buf, 0x16u);
    }

    completionCopy[2](completionCopy, v14, 0);
  }

  else
  {
    v16 = +[IMRGLog sms];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = @"NO";
      if (hasiCloudAccount)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      if (v8)
      {
        v17 = @"YES";
      }

      *buf = 138412546;
      v21 = v18;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Client requested unselected temporary phone aliases, but not in state where home number is allowed {isiCloudSignedIn: %@, allowHomeNumber: %@}", buf, 0x16u);
    }

    completionCopy[2](completionCopy, &__NSArray0__struct, 0);
  }
}

- (void)selectSubscription:(id)subscription withCompletion:(id)completion
{
  subscriptionCopy = subscription;
  completionCopy = completion;
  if (![(IDSDXPCRegistration *)self onlyAllowReads])
  {
    if (![subscriptionCopy subscriptionSlot])
    {
      labelID = [subscriptionCopy labelID];

      if (!labelID)
      {
        v30 = +[IMRGLog sms];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "This API does not support phone subscrptions with unknown slots and no labelID", buf, 2u);
        }

        v9 = IDSPhoneSubscriptionSelectorErrorDomain;
        v10 = 300;
        goto LABEL_5;
      }
    }

    v13 = +[IDSCTAdapter sharedInstance];
    v31 = 0;
    v14 = [v13 currentSIMsWithError:&v31];
    v11 = v31;

    if (v11)
    {
      v15 = +[IMRGLog sms];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unable to fetch sims -- returning nil {simFetchError: %@}", buf, 0xCu);
      }

      v16 = IDSPhoneSubscriptionSelectorErrorDomain;
      v32 = NSUnderlyingErrorKey;
      v33 = v11;
      v17 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v18 = [NSError errorWithDomain:v16 code:100 userInfo:v17];
      completionCopy[2](completionCopy, 0, v18);
      goto LABEL_17;
    }

    v17 = sub_10061F174(v14, subscriptionCopy);
    v19 = [NSMutableSet alloc];
    v20 = +[FTUserConfiguration sharedInstance];
    selectedPhoneNumberRegistrationSubscriptionLabels = [v20 selectedPhoneNumberRegistrationSubscriptionLabels];
    v18 = [v19 initWithArray:selectedPhoneNumberRegistrationSubscriptionLabels];

    [v18 addObject:v17];
    v22 = +[FTUserConfiguration sharedInstance];
    if (([v22 isDeviceInDualPhoneIdentityMode] & 1) == 0)
    {
      v23 = +[FTUserConfiguration sharedInstance];
      isDeviceInManualPhoneSelectionMode = [v23 isDeviceInManualPhoneSelectionMode];

      if (!isDeviceInManualPhoneSelectionMode)
      {
LABEL_16:
        v25 = +[IDSRegistrationReasonTracker sharedInstance];
        [v25 setPNRReason:5 forUserUniqueIdentifier:v17];

        v26 = +[FTUserConfiguration sharedInstance];
        allObjects = [v18 allObjects];
        [v26 setSelectedPhoneNumberRegistrationSubscriptionLabels:allObjects];

        allObjects2 = [v18 allObjects];
        v29 = sub_10061E538(v14, allObjects2);

        (completionCopy)[2](completionCopy, v29, 0);
LABEL_17:

        goto LABEL_18;
      }

      v22 = +[FTUserConfiguration sharedInstance];
      [v22 setIsDeviceInManualPhoneSelectionMode:0];
    }

    goto LABEL_16;
  }

  v8 = +[IMRGLog sms];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
  }

  v9 = IDSPhoneSubscriptionSelectorErrorDomain;
  v10 = 400;
LABEL_5:
  v11 = [NSError errorWithDomain:v9 code:v10 userInfo:0];
  completionCopy[2](completionCopy, 0, v11);
LABEL_18:
}

- (void)unselectSubscription:(id)subscription withCompletion:(id)completion
{
  subscriptionCopy = subscription;
  completionCopy = completion;
  if (![(IDSDXPCRegistration *)self onlyAllowReads])
  {
    if (![subscriptionCopy subscriptionSlot])
    {
      labelID = [subscriptionCopy labelID];

      if (!labelID)
      {
        v29 = +[IMRGLog sms];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "This API does not support phone subscrptions with unknown slots and no labelID", buf, 2u);
        }

        v9 = IDSPhoneSubscriptionSelectorErrorDomain;
        v10 = 300;
        goto LABEL_5;
      }
    }

    v13 = +[IDSCTAdapter sharedInstance];
    v30 = 0;
    v14 = [v13 currentSIMsWithError:&v30];
    v11 = v30;

    if (v11)
    {
      v15 = +[IMRGLog sms];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unable to fetch sims -- returning nil {simFetchError: %@}", buf, 0xCu);
      }

      v16 = IDSPhoneSubscriptionSelectorErrorDomain;
      v31 = NSUnderlyingErrorKey;
      v32 = v11;
      v17 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v18 = [NSError errorWithDomain:v16 code:100 userInfo:v17];
      completionCopy[2](completionCopy, 0, v18);
      goto LABEL_17;
    }

    v17 = sub_10061F174(v14, subscriptionCopy);
    v19 = [NSMutableSet alloc];
    v20 = +[FTUserConfiguration sharedInstance];
    selectedPhoneNumberRegistrationSubscriptionLabels = [v20 selectedPhoneNumberRegistrationSubscriptionLabels];
    v18 = [v19 initWithArray:selectedPhoneNumberRegistrationSubscriptionLabels];

    [v18 removeObject:v17];
    v22 = +[FTUserConfiguration sharedInstance];
    if (([v22 isDeviceInDualPhoneIdentityMode] & 1) == 0)
    {
      v23 = +[FTUserConfiguration sharedInstance];
      isDeviceInManualPhoneSelectionMode = [v23 isDeviceInManualPhoneSelectionMode];

      if (isDeviceInManualPhoneSelectionMode)
      {
LABEL_16:
        v25 = +[FTUserConfiguration sharedInstance];
        allObjects = [v18 allObjects];
        [v25 setSelectedPhoneNumberRegistrationSubscriptionLabels:allObjects];

        allObjects2 = [v18 allObjects];
        v28 = sub_10061E538(v14, allObjects2);

        (completionCopy)[2](completionCopy, v28, 0);
LABEL_17:

        goto LABEL_18;
      }

      v22 = +[FTUserConfiguration sharedInstance];
      [v22 setIsDeviceInManualPhoneSelectionMode:1];
    }

    goto LABEL_16;
  }

  v8 = +[IMRGLog sms];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
  }

  v9 = IDSPhoneSubscriptionSelectorErrorDomain;
  v10 = 400;
LABEL_5:
  v11 = [NSError errorWithDomain:v9 code:v10 userInfo:0];
  completionCopy[2](completionCopy, 0, v11);
LABEL_18:
}

- (void)setSelectedSubscriptions:(id)subscriptions withCompletion:(id)completion
{
  subscriptionsCopy = subscriptions;
  completionCopy = completion;
  if ([(IDSDXPCRegistration *)self onlyAllowReads])
  {
    v8 = +[IMRGLog sms];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v9 = [NSError errorWithDomain:IDSPhoneSubscriptionSelectorErrorDomain code:400 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    v10 = +[IDSCTAdapter sharedInstance];
    v39 = 0;
    v11 = [v10 currentSIMsWithError:&v39];
    v9 = v39;

    if (v9)
    {
      v12 = +[IMRGLog sms];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unable to fetch sims -- returning nil {simFetchError: %@}", buf, 0xCu);
      }

      v13 = IDSPhoneSubscriptionSelectorErrorDomain;
      v41 = NSUnderlyingErrorKey;
      v42 = v9;
      v14 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v15 = [NSError errorWithDomain:v13 code:100 userInfo:v14];
      completionCopy[2](completionCopy, 0, v15);
    }

    else
    {
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10061FB14;
      v37[3] = &unk_100BE29E0;
      v16 = v11;
      v38 = v16;
      v17 = [subscriptionsCopy __imArrayByApplyingBlock:v37];
      v18 = v17;
      if (v17 && (v19 = [v17 count], v19 == objc_msgSend(subscriptionsCopy, "count")))
      {
        v31 = v16;
        v32 = v18;
        __imSetFromArray = [v18 __imSetFromArray];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v21 = [__imSetFromArray countByEnumeratingWithState:&v33 objects:v40 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v34;
          do
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v34 != v23)
              {
                objc_enumerationMutation(__imSetFromArray);
              }

              v25 = *(*(&v33 + 1) + 8 * i);
              v26 = +[IDSRegistrationReasonTracker sharedInstance];
              [v26 setPNRReason:5 forUserUniqueIdentifier:v25];
            }

            v22 = [__imSetFromArray countByEnumeratingWithState:&v33 objects:v40 count:16];
          }

          while (v22);
        }

        v27 = +[FTUserConfiguration sharedInstance];
        allObjects = [__imSetFromArray allObjects];
        [v27 setSelectedPhoneNumberRegistrationSubscriptionLabels:allObjects];

        allObjects2 = [__imSetFromArray allObjects];
        v30 = sub_10061E538(v31, allObjects2);

        (completionCopy)[2](completionCopy, v30, 0);
        v18 = v32;
      }

      else
      {
        __imSetFromArray = [NSError errorWithDomain:IDSPhoneSubscriptionSelectorErrorDomain code:200 userInfo:0];
        completionCopy[2](completionCopy, 0, __imSetFromArray);
      }

      v14 = v38;
    }
  }
}

- (void)removeTemporaryPhoneAlias:(id)alias withCompletion:(id)completion
{
  aliasCopy = alias;
  completionCopy = completion;
  if ([(IDSDXPCRegistration *)self onlyAllowReads])
  {
    v8 = +[IMRGLog sms];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v9 = [NSError errorWithDomain:IDSPhoneSubscriptionSelectorErrorDomain code:400 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
    goto LABEL_22;
  }

  v23 = completionCopy;
  v10 = +[IMRGLog registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = aliasCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Told to remove temporary URI { uri: %@ }", buf, 0xCu);
  }

  userStore = [(IDSDXPCRegistration *)self userStore];
  v12 = [userStore usersWithRealm:2];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v12;
  v13 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v13)
  {
LABEL_17:

LABEL_20:
    v18 = [NSError errorWithDomain:IDSPhoneSubscriptionSelectorErrorDomain code:200 userInfo:0];
    completionCopy = v23;
    v23[2](v23, 0, v18);
    goto LABEL_21;
  }

  v14 = v13;
  v15 = *v25;
LABEL_9:
  v16 = 0;
  while (1)
  {
    if (*v25 != v15)
    {
      objc_enumerationMutation(v9);
    }

    v17 = *(*(&v24 + 1) + 8 * v16);
    if ([v17 realm] != 2)
    {
      goto LABEL_15;
    }

    v18 = v17;
    phoneNumber = [v18 phoneNumber];
    unprefixedURI = [aliasCopy unprefixedURI];
    v21 = [phoneNumber isEqualToString:unprefixedURI];

    if (v21)
    {
      break;
    }

LABEL_15:
    if (v14 == ++v16)
    {
      v14 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v14)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  if (!v18)
  {
    goto LABEL_20;
  }

  userStore2 = [(IDSDXPCRegistration *)self userStore];
  [userStore2 forceRemoveUser:v18 silently:1];

  completionCopy = v23;
  v23[2](v23, 1, 0);
LABEL_21:

LABEL_22:
}

- (void)disableTemporaryPhoneAlias:(id)alias withCompletion:(id)completion
{
  aliasCopy = alias;
  completionCopy = completion;
  if ([(IDSDXPCRegistration *)self onlyAllowReads])
  {
    v8 = +[IMRGLog sms];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v9 = [NSError errorWithDomain:IDSPhoneSubscriptionSelectorErrorDomain code:400 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
    goto LABEL_25;
  }

  v29 = completionCopy;
  v10 = +[IMRGLog registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = aliasCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Told to disable temporary URI { uri: %@ }", buf, 0xCu);
  }

  userStore = [(IDSDXPCRegistration *)self userStore];
  v12 = [userStore usersWithRealm:2];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v12;
  v13 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v13)
  {
LABEL_17:

LABEL_21:
    v18 = [NSError errorWithDomain:IDSPhoneSubscriptionSelectorErrorDomain code:200 userInfo:0];
    completionCopy = v29;
    v29[2](v29, 0, v18);
    goto LABEL_24;
  }

  v14 = v13;
  v15 = *v31;
LABEL_9:
  v16 = 0;
  while (1)
  {
    if (*v31 != v15)
    {
      objc_enumerationMutation(v9);
    }

    v17 = *(*(&v30 + 1) + 8 * v16);
    if ([v17 realm] != 2)
    {
      goto LABEL_15;
    }

    v18 = v17;
    phoneNumber = [v18 phoneNumber];
    unprefixedURI = [aliasCopy unprefixedURI];
    v21 = [phoneNumber isEqualToString:unprefixedURI];

    if (v21)
    {
      break;
    }

LABEL_15:
    if (v14 == ++v16)
    {
      v14 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v14)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  if (!v18)
  {
    goto LABEL_21;
  }

  userStore2 = [(IDSDXPCRegistration *)self userStore];
  v23 = [userStore2 propertiesForUser:v18];
  v24 = v23;
  completionCopy = v29;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = objc_alloc_init(IDSUserProperties);
  }

  v26 = v25;

  v27 = [(IDSUserProperties *)v26 propsByUpdatingDisableRegistration:1];

  userStore3 = [(IDSDXPCRegistration *)self userStore];
  [userStore3 setProperties:v27 forUser:v18];

  v29[2](v29, 1, 0);
LABEL_24:

LABEL_25:
}

- (void)enableTemporaryPhoneAlias:(id)alias withCompletion:(id)completion
{
  aliasCopy = alias;
  completionCopy = completion;
  if ([(IDSDXPCRegistration *)self onlyAllowReads])
  {
    v8 = +[IMRGLog sms];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v9 = [NSError errorWithDomain:IDSPhoneSubscriptionSelectorErrorDomain code:400 userInfo:0];
    completionCopy[2](completionCopy, 0, v9);
    goto LABEL_25;
  }

  v29 = completionCopy;
  v10 = +[IMRGLog registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = aliasCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Told to enable temporary URI { uri: %@ }", buf, 0xCu);
  }

  userStore = [(IDSDXPCRegistration *)self userStore];
  v12 = [userStore usersWithRealm:2];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v12;
  v13 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v13)
  {
LABEL_17:

LABEL_21:
    v18 = [NSError errorWithDomain:IDSPhoneSubscriptionSelectorErrorDomain code:200 userInfo:0];
    completionCopy = v29;
    v29[2](v29, 0, v18);
    goto LABEL_24;
  }

  v14 = v13;
  v15 = *v31;
LABEL_9:
  v16 = 0;
  while (1)
  {
    if (*v31 != v15)
    {
      objc_enumerationMutation(v9);
    }

    v17 = *(*(&v30 + 1) + 8 * v16);
    if ([v17 realm] != 2)
    {
      goto LABEL_15;
    }

    v18 = v17;
    phoneNumber = [v18 phoneNumber];
    unprefixedURI = [aliasCopy unprefixedURI];
    v21 = [phoneNumber isEqualToString:unprefixedURI];

    if (v21)
    {
      break;
    }

LABEL_15:
    if (v14 == ++v16)
    {
      v14 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v14)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  if (!v18)
  {
    goto LABEL_21;
  }

  userStore2 = [(IDSDXPCRegistration *)self userStore];
  v23 = [userStore2 propertiesForUser:v18];
  v24 = v23;
  completionCopy = v29;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = objc_alloc_init(IDSUserProperties);
  }

  v26 = v25;

  v27 = [(IDSUserProperties *)v26 propsByUpdatingDisableRegistration:0];

  userStore3 = [(IDSDXPCRegistration *)self userStore];
  [userStore3 setProperties:v27 forUser:v18];

  v29[2](v29, 1, 0);
LABEL_24:

LABEL_25:
}

- (void)constructRAResponseDictionaryForServices:(id)services completionHandler:(id)handler
{
  handlerCopy = handler;
  servicesCopy = services;
  v7 = +[IDSAccountSync sharedInstance];
  v8 = [v7 constructRAResponseDictionary:servicesCopy];

  handlerCopy[2](handlerCopy, v8);
}

@end