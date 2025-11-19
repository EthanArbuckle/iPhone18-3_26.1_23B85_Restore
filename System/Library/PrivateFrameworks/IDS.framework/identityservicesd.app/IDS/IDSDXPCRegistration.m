@interface IDSDXPCRegistration
- (IDSDXPCRegistration)initWithQueue:(id)a3 connection:(id)a4;
- (IDSDXPCRegistration)initWithQueue:(id)a3 connection:(id)a4 userStore:(id)a5 accountController:(id)a6 ctAdapter:(id)a7;
- (void)constructRAResponseDictionaryForServices:(id)a3 completionHandler:(id)a4;
- (void)disableTemporaryPhoneAlias:(id)a3 withCompletion:(id)a4;
- (void)enableTemporaryPhoneAlias:(id)a3 withCompletion:(id)a4;
- (void)removeTemporaryPhoneAlias:(id)a3 withCompletion:(id)a4;
- (void)requestSelectedSubscriptionsWithCompletion:(id)a3;
- (void)requestUnselectedTemporaryPhoneAliasesWithCompletion:(id)a3;
- (void)selectSubscription:(id)a3 withCompletion:(id)a4;
- (void)setSelectedSubscriptions:(id)a3 withCompletion:(id)a4;
- (void)unselectSubscription:(id)a3 withCompletion:(id)a4;
@end

@implementation IDSDXPCRegistration

- (IDSDXPCRegistration)initWithQueue:(id)a3 connection:(id)a4 userStore:(id)a5 accountController:(id)a6 ctAdapter:(id)a7
{
  v25 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = IDSDXPCRegistration;
  v17 = [(IDSDXPCRegistration *)&v26 init];
  if (!v17)
  {
LABEL_12:
    v21 = v17;
    goto LABEL_13;
  }

  v18 = [v13 hasEntitlement:kIDSPhoneNumberAuthenticationEntitlement];
  v19 = [v13 hasEntitlement:@"com.apple.private.imcore.spi.database-access"];
  if (v18 & 1) != 0 || (v19)
  {
    v22 = v18 | v19 ^ 1;
    if ((v22 & 1) == 0)
    {
      log = +[IMRGLog sms];
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v13;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Allowing bypass entitlement to read from IDSXPCRegistration {connection: %@}", buf, 0xCu);
      }
    }

    objc_storeStrong(&v17->_queue, a3);
    v17->_onlyAllowReads = (v22 & 1) == 0;
    objc_storeStrong(&v17->_userStore, a5);
    objc_storeStrong(&v17->_accountController, a6);
    objc_storeStrong(&v17->_ctAdapter, a7);
    goto LABEL_12;
  }

  v20 = +[IMRGLog sms];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Missing phone number authentication entitlement -- failing creation of IDSDXPCRegistration collaborator {connection: %@}", buf, 0xCu);
  }

  v21 = 0;
LABEL_13:

  return v21;
}

- (IDSDXPCRegistration)initWithQueue:(id)a3 connection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[IDSDaemon sharedInstance];
  v9 = [v8 registrationConductor];
  v10 = [v9 userStore];
  v11 = +[IDSDAccountController sharedInstance];
  v12 = +[IDSCTAdapter sharedInstance];
  v13 = [(IDSDXPCRegistration *)self initWithQueue:v7 connection:v6 userStore:v10 accountController:v11 ctAdapter:v12];

  return v13;
}

- (void)requestSelectedSubscriptionsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[FTUserConfiguration sharedInstance];
  v6 = [v5 selectedPhoneNumberRegistrationSubscriptionLabels];

  v7 = [(IDSDXPCRegistration *)self ctAdapter];
  v20 = 0;
  v8 = [v7 currentSIMsWithError:&v20];
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
    v4[2](v4, 0, v13);
  }

  else
  {
    v14 = sub_10061E538(v8, v6);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10061E788;
    v17[3] = &unk_100BE2950;
    v15 = v8;
    v18 = v15;
    v19 = self;
    v12 = [v14 __imArrayByFilteringWithBlock:v17];

    v16 = +[IMRGLog sms];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v22 = v12;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Client requested selected subscriptions {subscriptions: %@, selectedLabelIDs: %@, SIMs: %@}", buf, 0x20u);
    }

    (v4)[2](v4, v12, 0);
    v13 = v18;
  }
}

- (void)requestUnselectedTemporaryPhoneAliasesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSDXPCRegistration *)self accountController];
  v6 = [v5 hasiCloudAccount];

  v7 = [(IDSDXPCRegistration *)self ctAdapter];
  if ([v7 isAnySIMInserted])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(IDSDXPCRegistration *)self userStore];
    v10 = [v9 usersWithRealm:0];
    v8 = [v10 count] != 0;
  }

  if (v6 & v8)
  {
    v11 = [(IDSDXPCRegistration *)self userStore];
    v12 = [v11 usersWithRealm:2];
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

    v4[2](v4, v14, 0);
  }

  else
  {
    v16 = +[IMRGLog sms];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = @"NO";
      if (v6)
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

    v4[2](v4, &__NSArray0__struct, 0);
  }
}

- (void)selectSubscription:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(IDSDXPCRegistration *)self onlyAllowReads])
  {
    if (![v6 subscriptionSlot])
    {
      v12 = [v6 labelID];

      if (!v12)
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
      v7[2](v7, 0, v18);
      goto LABEL_17;
    }

    v17 = sub_10061F174(v14, v6);
    v19 = [NSMutableSet alloc];
    v20 = +[FTUserConfiguration sharedInstance];
    v21 = [v20 selectedPhoneNumberRegistrationSubscriptionLabels];
    v18 = [v19 initWithArray:v21];

    [v18 addObject:v17];
    v22 = +[FTUserConfiguration sharedInstance];
    if (([v22 isDeviceInDualPhoneIdentityMode] & 1) == 0)
    {
      v23 = +[FTUserConfiguration sharedInstance];
      v24 = [v23 isDeviceInManualPhoneSelectionMode];

      if (!v24)
      {
LABEL_16:
        v25 = +[IDSRegistrationReasonTracker sharedInstance];
        [v25 setPNRReason:5 forUserUniqueIdentifier:v17];

        v26 = +[FTUserConfiguration sharedInstance];
        v27 = [v18 allObjects];
        [v26 setSelectedPhoneNumberRegistrationSubscriptionLabels:v27];

        v28 = [v18 allObjects];
        v29 = sub_10061E538(v14, v28);

        (v7)[2](v7, v29, 0);
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
  v7[2](v7, 0, v11);
LABEL_18:
}

- (void)unselectSubscription:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(IDSDXPCRegistration *)self onlyAllowReads])
  {
    if (![v6 subscriptionSlot])
    {
      v12 = [v6 labelID];

      if (!v12)
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
      v7[2](v7, 0, v18);
      goto LABEL_17;
    }

    v17 = sub_10061F174(v14, v6);
    v19 = [NSMutableSet alloc];
    v20 = +[FTUserConfiguration sharedInstance];
    v21 = [v20 selectedPhoneNumberRegistrationSubscriptionLabels];
    v18 = [v19 initWithArray:v21];

    [v18 removeObject:v17];
    v22 = +[FTUserConfiguration sharedInstance];
    if (([v22 isDeviceInDualPhoneIdentityMode] & 1) == 0)
    {
      v23 = +[FTUserConfiguration sharedInstance];
      v24 = [v23 isDeviceInManualPhoneSelectionMode];

      if (v24)
      {
LABEL_16:
        v25 = +[FTUserConfiguration sharedInstance];
        v26 = [v18 allObjects];
        [v25 setSelectedPhoneNumberRegistrationSubscriptionLabels:v26];

        v27 = [v18 allObjects];
        v28 = sub_10061E538(v14, v27);

        (v7)[2](v7, v28, 0);
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
  v7[2](v7, 0, v11);
LABEL_18:
}

- (void)setSelectedSubscriptions:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IDSDXPCRegistration *)self onlyAllowReads])
  {
    v8 = +[IMRGLog sms];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v9 = [NSError errorWithDomain:IDSPhoneSubscriptionSelectorErrorDomain code:400 userInfo:0];
    v7[2](v7, 0, v9);
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
      v7[2](v7, 0, v15);
    }

    else
    {
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10061FB14;
      v37[3] = &unk_100BE29E0;
      v16 = v11;
      v38 = v16;
      v17 = [v6 __imArrayByApplyingBlock:v37];
      v18 = v17;
      if (v17 && (v19 = [v17 count], v19 == objc_msgSend(v6, "count")))
      {
        v31 = v16;
        v32 = v18;
        v20 = [v18 __imSetFromArray];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v21 = [v20 countByEnumeratingWithState:&v33 objects:v40 count:16];
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
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v33 + 1) + 8 * i);
              v26 = +[IDSRegistrationReasonTracker sharedInstance];
              [v26 setPNRReason:5 forUserUniqueIdentifier:v25];
            }

            v22 = [v20 countByEnumeratingWithState:&v33 objects:v40 count:16];
          }

          while (v22);
        }

        v27 = +[FTUserConfiguration sharedInstance];
        v28 = [v20 allObjects];
        [v27 setSelectedPhoneNumberRegistrationSubscriptionLabels:v28];

        v29 = [v20 allObjects];
        v30 = sub_10061E538(v31, v29);

        (v7)[2](v7, v30, 0);
        v18 = v32;
      }

      else
      {
        v20 = [NSError errorWithDomain:IDSPhoneSubscriptionSelectorErrorDomain code:200 userInfo:0];
        v7[2](v7, 0, v20);
      }

      v14 = v38;
    }
  }
}

- (void)removeTemporaryPhoneAlias:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IDSDXPCRegistration *)self onlyAllowReads])
  {
    v8 = +[IMRGLog sms];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v9 = [NSError errorWithDomain:IDSPhoneSubscriptionSelectorErrorDomain code:400 userInfo:0];
    v7[2](v7, 0, v9);
    goto LABEL_22;
  }

  v23 = v7;
  v10 = +[IMRGLog registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Told to remove temporary URI { uri: %@ }", buf, 0xCu);
  }

  v11 = [(IDSDXPCRegistration *)self userStore];
  v12 = [v11 usersWithRealm:2];

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
    v7 = v23;
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
    v19 = [v18 phoneNumber];
    v20 = [v6 unprefixedURI];
    v21 = [v19 isEqualToString:v20];

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

  v22 = [(IDSDXPCRegistration *)self userStore];
  [v22 forceRemoveUser:v18 silently:1];

  v7 = v23;
  v23[2](v23, 1, 0);
LABEL_21:

LABEL_22:
}

- (void)disableTemporaryPhoneAlias:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IDSDXPCRegistration *)self onlyAllowReads])
  {
    v8 = +[IMRGLog sms];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v9 = [NSError errorWithDomain:IDSPhoneSubscriptionSelectorErrorDomain code:400 userInfo:0];
    v7[2](v7, 0, v9);
    goto LABEL_25;
  }

  v29 = v7;
  v10 = +[IMRGLog registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Told to disable temporary URI { uri: %@ }", buf, 0xCu);
  }

  v11 = [(IDSDXPCRegistration *)self userStore];
  v12 = [v11 usersWithRealm:2];

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
    v7 = v29;
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
    v19 = [v18 phoneNumber];
    v20 = [v6 unprefixedURI];
    v21 = [v19 isEqualToString:v20];

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

  v22 = [(IDSDXPCRegistration *)self userStore];
  v23 = [v22 propertiesForUser:v18];
  v24 = v23;
  v7 = v29;
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

  v28 = [(IDSDXPCRegistration *)self userStore];
  [v28 setProperties:v27 forUser:v18];

  v29[2](v29, 1, 0);
LABEL_24:

LABEL_25:
}

- (void)enableTemporaryPhoneAlias:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IDSDXPCRegistration *)self onlyAllowReads])
  {
    v8 = +[IMRGLog sms];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v9 = [NSError errorWithDomain:IDSPhoneSubscriptionSelectorErrorDomain code:400 userInfo:0];
    v7[2](v7, 0, v9);
    goto LABEL_25;
  }

  v29 = v7;
  v10 = +[IMRGLog registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Told to enable temporary URI { uri: %@ }", buf, 0xCu);
  }

  v11 = [(IDSDXPCRegistration *)self userStore];
  v12 = [v11 usersWithRealm:2];

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
    v7 = v29;
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
    v19 = [v18 phoneNumber];
    v20 = [v6 unprefixedURI];
    v21 = [v19 isEqualToString:v20];

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

  v22 = [(IDSDXPCRegistration *)self userStore];
  v23 = [v22 propertiesForUser:v18];
  v24 = v23;
  v7 = v29;
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

  v28 = [(IDSDXPCRegistration *)self userStore];
  [v28 setProperties:v27 forUser:v18];

  v29[2](v29, 1, 0);
LABEL_24:

LABEL_25:
}

- (void)constructRAResponseDictionaryForServices:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IDSAccountSync sharedInstance];
  v8 = [v7 constructRAResponseDictionary:v6];

  v5[2](v5, v8);
}

@end