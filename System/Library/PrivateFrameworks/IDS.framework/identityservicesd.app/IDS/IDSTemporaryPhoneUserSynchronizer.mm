@interface IDSTemporaryPhoneUserSynchronizer
- (IDSTemporaryPhoneUserSynchronizer)initWithUserStore:(id)store ctAdapter:(id)adapter;
- (id)updatedUserDescriptionSetForRealm:(int64_t)realm currentUserDescriptions:(id)descriptions;
- (void)expirationManager:(id)manager didExpireUser:(id)user;
- (void)forceRemoveUser:(id)user silently:(BOOL)silently;
- (void)userStore:(id)store didAddUser:(id)user;
- (void)userStore:(id)store didRemoveUser:(id)user withAuthenticationCertificate:(id)certificate;
- (void)userStore:(id)store didUpdateUser:(id)user;
@end

@implementation IDSTemporaryPhoneUserSynchronizer

- (IDSTemporaryPhoneUserSynchronizer)initWithUserStore:(id)store ctAdapter:(id)adapter
{
  storeCopy = store;
  adapterCopy = adapter;
  v15.receiver = self;
  v15.super_class = IDSTemporaryPhoneUserSynchronizer;
  v9 = [(IDSTemporaryPhoneUserSynchronizer *)&v15 init];
  if (v9)
  {
    v10 = objc_alloc_init(IDSTransactionQueue);
    transactionQueue = v9->_transactionQueue;
    v9->_transactionQueue = v10;

    objc_storeStrong(&v9->_userStore, store);
    objc_storeStrong(&v9->_ctAdapter, adapter);
    v12 = [[IDSTemporaryPhoneUserExpirationManager alloc] initWithUserStore:storeCopy delegate:v9];
    expirationManager = v9->_expirationManager;
    v9->_expirationManager = v12;

    [storeCopy addActionListener:v9 forRealm:0];
  }

  return v9;
}

- (void)forceRemoveUser:(id)user silently:(BOOL)silently
{
  userCopy = user;
  if ([userCopy realm] == 2)
  {
    v6 = [[IDSTemporaryPhoneUserRemoveTransaction alloc] initWithUser:userCopy alertType:0];
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User removed. Prepending transaction %@", &v10, 0xCu);
    }

    transactionQueue = [(IDSTemporaryPhoneUserSynchronizer *)self transactionQueue];
    [transactionQueue prependItem:v6];

    userStore = [(IDSTemporaryPhoneUserSynchronizer *)self userStore];
    [userStore reloadUsersForRealm:2];
  }
}

- (id)updatedUserDescriptionSetForRealm:(int64_t)realm currentUserDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  v7 = descriptionsCopy;
  if (realm == 2)
  {
    v8 = [descriptionsCopy mutableCopy];
    transactionQueue = [(IDSTemporaryPhoneUserSynchronizer *)self transactionQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1006DB6F8;
    v14[3] = &unk_100BE5A38;
    v14[4] = self;
    v10 = v8;
    v15 = v10;
    [transactionQueue executeReadyItemsWithBlock:v14];

    v11 = v15;
    v12 = v10;
  }

  else
  {
    v12 = descriptionsCopy;
  }

  return v12;
}

- (void)userStore:(id)store didAddUser:(id)user
{
  storeCopy = store;
  userCopy = user;
  if (![userCopy realm])
  {
    v8 = [[IDSTemporaryPhoneUser alloc] initWithPhoneUser:userCopy];
    v9 = [[IDSTemporaryPhoneUserRemoveTransaction alloc] initWithUser:v8 alertType:0];
    v10 = +[IMRGLog registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Phone user added. Adding transaction %@", &v12, 0xCu);
    }

    transactionQueue = [(IDSTemporaryPhoneUserSynchronizer *)self transactionQueue];
    [transactionQueue appendItem:v9];

    [storeCopy reloadUsersForRealm:2];
  }
}

- (void)userStore:(id)store didUpdateUser:(id)user
{
  storeCopy = store;
  userCopy = user;
  if (![userCopy realm])
  {
    v8 = [[IDSTemporaryPhoneUser alloc] initWithPhoneUser:userCopy];
    v9 = [[IDSTemporaryPhoneUserRemoveTransaction alloc] initWithUser:v8 alertType:0];
    v10 = +[IMRGLog registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Phone user changed. Adding transaction %@", &v12, 0xCu);
    }

    transactionQueue = [(IDSTemporaryPhoneUserSynchronizer *)self transactionQueue];
    [transactionQueue appendItem:v9];

    [storeCopy reloadUsersForRealm:2];
  }
}

- (void)userStore:(id)store didRemoveUser:(id)user withAuthenticationCertificate:(id)certificate
{
  storeCopy = store;
  userCopy = user;
  certificateCopy = certificate;
  if (![(IDSTemporaryPhoneUserAddTransaction *)userCopy realm])
  {
    if (!certificateCopy)
    {
      v11 = +[IMRGLog registration];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138412290;
        v29 = userCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not provisioning for Home Number because nil authenticationCertificate for user: %@", &v28, 0xCu);
      }

      goto LABEL_19;
    }

    v11 = userCopy;
    ctAdapter = [(IDSTemporaryPhoneUserSynchronizer *)self ctAdapter];
    uniqueIdentifier = [v11 uniqueIdentifier];
    v14 = [ctAdapter SIMForIdentifier:uniqueIdentifier];

    if (v14)
    {
      phoneNumber = [v14 phoneNumber];
      phoneNumber2 = [v11 phoneNumber];
      v17 = [IDSCTAdapter isPhoneNumber:phoneNumber equivalentToExistingPhoneNumber:phoneNumber2];

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
      isDefaultUser = [v11 isDefaultUser];

      if ((isDefaultUser & 1) == 0)
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
    v24 = [[IDSTemporaryPhoneUserCredential alloc] initWithPhoneAuthenticationCertificate:certificateCopy];
    v25 = [[IDSTemporaryPhoneUserAddTransaction alloc] initWithUser:v18 credential:v24];
    v26 = +[IMRGLog registration];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Phone user removed. Adding transaction %@", &v28, 0xCu);
    }

    transactionQueue = [(IDSTemporaryPhoneUserSynchronizer *)self transactionQueue];
    [transactionQueue appendItem:v25];

    [storeCopy reloadUsersForRealm:2];
    goto LABEL_18;
  }

LABEL_20:
}

- (void)expirationManager:(id)manager didExpireUser:(id)user
{
  userCopy = user;
  v6 = [[IDSTemporaryPhoneUserRemoveTransaction alloc] initWithUser:userCopy alertType:1];

  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User expired. Prepending transaction %@", &v10, 0xCu);
  }

  transactionQueue = [(IDSTemporaryPhoneUserSynchronizer *)self transactionQueue];
  [transactionQueue prependItem:v6];

  userStore = [(IDSTemporaryPhoneUserSynchronizer *)self userStore];
  [userStore reloadUsersForRealm:2];
}

@end