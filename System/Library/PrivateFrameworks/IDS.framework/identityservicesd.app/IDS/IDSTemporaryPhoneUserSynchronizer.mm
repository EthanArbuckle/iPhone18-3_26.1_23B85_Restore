@interface IDSTemporaryPhoneUserSynchronizer
- (IDSTemporaryPhoneUserSynchronizer)initWithUserStore:(id)a3 ctAdapter:(id)a4;
- (id)updatedUserDescriptionSetForRealm:(int64_t)a3 currentUserDescriptions:(id)a4;
- (void)expirationManager:(id)a3 didExpireUser:(id)a4;
- (void)forceRemoveUser:(id)a3 silently:(BOOL)a4;
- (void)userStore:(id)a3 didAddUser:(id)a4;
- (void)userStore:(id)a3 didRemoveUser:(id)a4 withAuthenticationCertificate:(id)a5;
- (void)userStore:(id)a3 didUpdateUser:(id)a4;
@end

@implementation IDSTemporaryPhoneUserSynchronizer

- (IDSTemporaryPhoneUserSynchronizer)initWithUserStore:(id)a3 ctAdapter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = IDSTemporaryPhoneUserSynchronizer;
  v9 = [(IDSTemporaryPhoneUserSynchronizer *)&v15 init];
  if (v9)
  {
    v10 = objc_alloc_init(IDSTransactionQueue);
    transactionQueue = v9->_transactionQueue;
    v9->_transactionQueue = v10;

    objc_storeStrong(&v9->_userStore, a3);
    objc_storeStrong(&v9->_ctAdapter, a4);
    v12 = [[IDSTemporaryPhoneUserExpirationManager alloc] initWithUserStore:v7 delegate:v9];
    expirationManager = v9->_expirationManager;
    v9->_expirationManager = v12;

    [v7 addActionListener:v9 forRealm:0];
  }

  return v9;
}

- (void)forceRemoveUser:(id)a3 silently:(BOOL)a4
{
  v5 = a3;
  if ([v5 realm] == 2)
  {
    v6 = [[IDSTemporaryPhoneUserRemoveTransaction alloc] initWithUser:v5 alertType:0];
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User removed. Prepending transaction %@", &v10, 0xCu);
    }

    v8 = [(IDSTemporaryPhoneUserSynchronizer *)self transactionQueue];
    [v8 prependItem:v6];

    v9 = [(IDSTemporaryPhoneUserSynchronizer *)self userStore];
    [v9 reloadUsersForRealm:2];
  }
}

- (id)updatedUserDescriptionSetForRealm:(int64_t)a3 currentUserDescriptions:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 == 2)
  {
    v8 = [v6 mutableCopy];
    v9 = [(IDSTemporaryPhoneUserSynchronizer *)self transactionQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1006DB6F8;
    v14[3] = &unk_100BE5A38;
    v14[4] = self;
    v10 = v8;
    v15 = v10;
    [v9 executeReadyItemsWithBlock:v14];

    v11 = v15;
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  return v12;
}

- (void)userStore:(id)a3 didAddUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 realm])
  {
    v8 = [[IDSTemporaryPhoneUser alloc] initWithPhoneUser:v7];
    v9 = [[IDSTemporaryPhoneUserRemoveTransaction alloc] initWithUser:v8 alertType:0];
    v10 = +[IMRGLog registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Phone user added. Adding transaction %@", &v12, 0xCu);
    }

    v11 = [(IDSTemporaryPhoneUserSynchronizer *)self transactionQueue];
    [v11 appendItem:v9];

    [v6 reloadUsersForRealm:2];
  }
}

- (void)userStore:(id)a3 didUpdateUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 realm])
  {
    v8 = [[IDSTemporaryPhoneUser alloc] initWithPhoneUser:v7];
    v9 = [[IDSTemporaryPhoneUserRemoveTransaction alloc] initWithUser:v8 alertType:0];
    v10 = +[IMRGLog registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Phone user changed. Adding transaction %@", &v12, 0xCu);
    }

    v11 = [(IDSTemporaryPhoneUserSynchronizer *)self transactionQueue];
    [v11 appendItem:v9];

    [v6 reloadUsersForRealm:2];
  }
}

- (void)userStore:(id)a3 didRemoveUser:(id)a4 withAuthenticationCertificate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(IDSTemporaryPhoneUserAddTransaction *)v9 realm])
  {
    if (!v10)
    {
      v11 = +[IMRGLog registration];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138412290;
        v29 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not provisioning for Home Number because nil authenticationCertificate for user: %@", &v28, 0xCu);
      }

      goto LABEL_19;
    }

    v11 = v9;
    v12 = [(IDSTemporaryPhoneUserSynchronizer *)self ctAdapter];
    v13 = [v11 uniqueIdentifier];
    v14 = [v12 SIMForIdentifier:v13];

    if (v14)
    {
      v15 = [v14 phoneNumber];
      v16 = [v11 phoneNumber];
      v17 = [IDSCTAdapter isPhoneNumber:v15 equivalentToExistingPhoneNumber:v16];

      if (v17)
      {
        v18 = +[IMRGLog registration];
        if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 138412546;
          v29 = v11;
          v30 = 2112;
          v31 = v14;
          v19 = "Not provisioning for Home Number because SIM is still present {user: %@, SIM: %@}";
          p_super = &v18->super;
          v21 = 22;
LABEL_11:
          _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, v19, &v28, v21);
          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }

    v22 = +[FTUserConfiguration sharedInstance];
    if ([v22 isDeviceInDualPhoneIdentityMode])
    {
      v23 = [v11 isDefaultUser];

      if ((v23 & 1) == 0)
      {
        v18 = +[IMRGLog registration];
        if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 138412290;
          v29 = v11;
          v19 = "Not provisioning for Home Number because removed SIM is not the default phone SIM on the DSDS phone {user: %@}";
          p_super = &v18->super;
          v21 = 12;
          goto LABEL_11;
        }

LABEL_18:

LABEL_19:
        goto LABEL_20;
      }
    }

    else
    {
    }

    v18 = [[IDSTemporaryPhoneUser alloc] initWithPhoneUser:v11];
    v24 = [[IDSTemporaryPhoneUserCredential alloc] initWithPhoneAuthenticationCertificate:v10];
    v25 = [[IDSTemporaryPhoneUserAddTransaction alloc] initWithUser:v18 credential:v24];
    v26 = +[IMRGLog registration];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Phone user removed. Adding transaction %@", &v28, 0xCu);
    }

    v27 = [(IDSTemporaryPhoneUserSynchronizer *)self transactionQueue];
    [v27 appendItem:v25];

    [v8 reloadUsersForRealm:2];
    goto LABEL_18;
  }

LABEL_20:
}

- (void)expirationManager:(id)a3 didExpireUser:(id)a4
{
  v5 = a4;
  v6 = [[IDSTemporaryPhoneUserRemoveTransaction alloc] initWithUser:v5 alertType:1];

  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User expired. Prepending transaction %@", &v10, 0xCu);
  }

  v8 = [(IDSTemporaryPhoneUserSynchronizer *)self transactionQueue];
  [v8 prependItem:v6];

  v9 = [(IDSTemporaryPhoneUserSynchronizer *)self userStore];
  [v9 reloadUsersForRealm:2];
}

@end