@interface IDSStewiePhoneNumberManager
- (IDSStewiePhoneNumberManager)initWithDelegate:(id)delegate queue:(id)queue userStore:(id)store;
- (IDSStewiePhoneNumberManager)initWithDelegate:(id)delegate queue:(id)queue userStore:(id)store registrationKeychainManager:(id)manager registrationController:(id)controller pushHandler:(id)handler;
- (IDSStewiePhoneNumberManagerDelegate)delegate;
- (id)createPhoneInfoForUser:(id)user cert:(id)cert;
- (void)clearCredentialsForInfo:(id)info;
- (void)dealloc;
- (void)handler:(id)handler pushTokenChanged:(id)changed;
- (void)obtainAuthCertForUser:(id)user;
- (void)performInitialPhoneInfoCheck;
- (void)registrationController:(id)controller registrationFailed:(id)failed error:(int64_t)error info:(id)info;
- (void)userStore:(id)store didAddAuthenticationCertificate:(id)certificate forUser:(id)user;
- (void)userStore:(id)store didAddUser:(id)user;
- (void)userStore:(id)store didRemoveAuthenticationCertificateForUser:(id)user;
- (void)userStore:(id)store didRemoveUser:(id)user withAuthenticationCertificate:(id)certificate;
- (void)userStore:(id)store didUpdateUser:(id)user;
@end

@implementation IDSStewiePhoneNumberManager

- (IDSStewiePhoneNumberManager)initWithDelegate:(id)delegate queue:(id)queue userStore:(id)store
{
  storeCopy = store;
  queueCopy = queue;
  delegateCopy = delegate;
  v11 = +[IDSRegistrationKeychainManager sharedInstance];
  v12 = +[IDSRegistrationController sharedInstance];
  v13 = +[IDSPushHandler sharedInstance];
  v14 = [(IDSStewiePhoneNumberManager *)self initWithDelegate:delegateCopy queue:queueCopy userStore:storeCopy registrationKeychainManager:v11 registrationController:v12 pushHandler:v13];

  return v14;
}

- (IDSStewiePhoneNumberManager)initWithDelegate:(id)delegate queue:(id)queue userStore:(id)store registrationKeychainManager:(id)manager registrationController:(id)controller pushHandler:(id)handler
{
  delegateCopy = delegate;
  queueCopy = queue;
  storeCopy = store;
  managerCopy = manager;
  controllerCopy = controller;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = IDSStewiePhoneNumberManager;
  v19 = [(IDSStewiePhoneNumberManager *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_delegate, delegateCopy);
    objc_storeStrong(&v20->_userStore, store);
    [(IDSUserStore *)v20->_userStore addActionListener:v20 forRealm:0];
    v21 = objc_alloc_init(NSMutableDictionary);
    phoneInfos = v20->_phoneInfos;
    v20->_phoneInfos = v21;

    v23 = objc_alloc_init(NSMutableDictionary);
    inProgressRegistrations = v20->_inProgressRegistrations;
    v20->_inProgressRegistrations = v23;

    objc_storeStrong(&v20->_registrationController, controller);
    [(IDSRegistrationController *)v20->_registrationController addListener:v20];
    objc_storeStrong(&v20->_registrationKeychainManager, manager);
    objc_storeStrong(&v20->_pushHandler, handler);
    [(IDSPushHandler *)v20->_pushHandler addListener:v20 topics:0 commands:0 queue:queueCopy];
  }

  return v20;
}

- (void)dealloc
{
  [(IDSUserStore *)self->_userStore removeActionListener:self];
  [(IDSPushHandler *)self->_pushHandler removeListener:self];
  v3.receiver = self;
  v3.super_class = IDSStewiePhoneNumberManager;
  [(IDSStewiePhoneNumberManager *)&v3 dealloc];
}

- (void)performInitialPhoneInfoCheck
{
  v3 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Performing initial stewie phone info check", buf, 2u);
  }

  userStore = [(IDSStewiePhoneNumberManager *)self userStore];
  v5 = [userStore usersWithRealm:0];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(IDSStewiePhoneNumberManager *)self obtainAuthCertForUser:*(*(&v11 + 1) + 8 * v10), v11];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)clearCredentialsForInfo:(id)info
{
  infoCopy = info;
  userStore = [(IDSStewiePhoneNumberManager *)self userStore];
  uniqueIdentifier = [infoCopy uniqueIdentifier];
  v7 = [userStore userWithUniqueIdentifier:uniqueIdentifier];

  if (v7)
  {
    v8 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = infoCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Clearing auth cert for user { user: %@, info: %@ }", &v13, 0x16u);
    }

    phoneInfos = [(IDSStewiePhoneNumberManager *)self phoneInfos];
    uniqueIdentifier2 = [infoCopy uniqueIdentifier];
    [phoneInfos setObject:0 forKeyedSubscript:uniqueIdentifier2];

    v11 = +[IDSPACStateTracker sharedInstance];
    [v11 notePhoneAuthCertLost:3];

    userStore2 = [(IDSStewiePhoneNumberManager *)self userStore];
    [userStore2 setAuthenticationCertificate:0 forUser:v7];
  }
}

- (void)obtainAuthCertForUser:(id)user
{
  userCopy = user;
  userStore = [(IDSStewiePhoneNumberManager *)self userStore];
  uniqueIdentifier = [userCopy uniqueIdentifier];
  v7 = [userStore userWithUniqueIdentifier:uniqueIdentifier];

  userStore2 = [(IDSStewiePhoneNumberManager *)self userStore];
  v9 = [userStore2 propertiesForUser:v7];

  if (v9 && ([v9 isSPSCapable] & 1) == 0)
  {
    v10 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = userCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User has registration disabled. Not obtaining new auth cert, clearing existing auth cert. { user: %@ }", buf, 0xCu);
    }

    sub_10092B3E8(self, userCopy);
  }

  else
  {
    v11 = userCopy;
    im_dispatch_after_primary_queue();
  }
}

- (id)createPhoneInfoForUser:(id)user cert:(id)cert
{
  certCopy = cert;
  userCopy = user;
  v7 = [[IDSStewiePhoneNumberInfo alloc] initWithUser:userCopy authenticationCertificate:certCopy];

  return v7;
}

- (void)userStore:(id)store didAddUser:(id)user
{
  userCopy = user;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = userCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Added user, obtaining auth cert { user: %@ }", &v7, 0xCu);
  }

  [(IDSStewiePhoneNumberManager *)self obtainAuthCertForUser:userCopy];
}

- (void)userStore:(id)store didAddAuthenticationCertificate:(id)certificate forUser:(id)user
{
  userCopy = user;
  v7 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = userCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Obtained auth cert { user: %@ }", &v14, 0xCu);
  }

  uniqueIdentifier = [userCopy uniqueIdentifier];

  if (uniqueIdentifier)
  {
    inProgressRegistrations = [(IDSStewiePhoneNumberManager *)self inProgressRegistrations];
    uniqueIdentifier2 = [userCopy uniqueIdentifier];
    v11 = [inProgressRegistrations objectForKeyedSubscript:uniqueIdentifier2];

    [v11 removeFromKeychain];
    inProgressRegistrations2 = [(IDSStewiePhoneNumberManager *)self inProgressRegistrations];
    uniqueIdentifier3 = [userCopy uniqueIdentifier];
    [inProgressRegistrations2 setObject:0 forKeyedSubscript:uniqueIdentifier3];

    [(IDSStewiePhoneNumberManager *)self obtainAuthCertForUser:userCopy];
  }
}

- (void)userStore:(id)store didRemoveAuthenticationCertificateForUser:(id)user
{
  userCopy = user;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = userCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notified auth cert was removed. Reobtaining... { user: %@ }", &v10, 0xCu);
  }

  uniqueIdentifier = [userCopy uniqueIdentifier];

  if (uniqueIdentifier)
  {
    phoneInfos = [(IDSStewiePhoneNumberManager *)self phoneInfos];
    uniqueIdentifier2 = [userCopy uniqueIdentifier];
    [phoneInfos setObject:0 forKeyedSubscript:uniqueIdentifier2];

    [(IDSStewiePhoneNumberManager *)self obtainAuthCertForUser:userCopy];
  }
}

- (void)userStore:(id)store didUpdateUser:(id)user
{
  userCopy = user;
  userStore = [(IDSStewiePhoneNumberManager *)self userStore];
  uniqueIdentifier = [userCopy uniqueIdentifier];
  v8 = [userStore userWithUniqueIdentifier:uniqueIdentifier];

  userStore2 = [(IDSStewiePhoneNumberManager *)self userStore];
  v10 = [userStore2 propertiesForUser:v8];

  if (v10 && ([v10 isSPSCapable] & 1) == 0)
  {
    sub_10092B994(userCopy, self);
  }

  else
  {
    v11 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = userCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updated user, obtaining auth cert { user: %@ }", &v12, 0xCu);
    }

    [(IDSStewiePhoneNumberManager *)self obtainAuthCertForUser:userCopy];
  }
}

- (void)registrationController:(id)controller registrationFailed:(id)failed error:(int64_t)error info:(id)info
{
  failedCopy = failed;
  inProgressRegistrations = [(IDSStewiePhoneNumberManager *)self inProgressRegistrations];
  userUniqueIdentifier = [failedCopy userUniqueIdentifier];
  v11 = [inProgressRegistrations objectForKeyedSubscript:userUniqueIdentifier];

  if (v11)
  {
    v12 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10092BA48(failedCopy, error, v12);
    }

    sub_1005B228C(self, v11);
    sub_10092B740(self);
  }
}

- (void)handler:(id)handler pushTokenChanged:(id)changed
{
  changedCopy = changed;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  inProgressRegistrations = [(IDSStewiePhoneNumberManager *)self inProgressRegistrations];
  allKeys = [inProgressRegistrations allKeys];

  v8 = [allKeys countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v21;
    *&v9 = 138412290;
    v19 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        inProgressRegistrations2 = [(IDSStewiePhoneNumberManager *)self inProgressRegistrations];
        v15 = [inProgressRegistrations2 objectForKeyedSubscript:v13];

        pushToken = [v15 pushToken];

        if (!pushToken)
        {
          v17 = +[IDSFoundationLog stewieProvisioning];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v19;
            v25 = v15;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Notified push token obtained. Kicking registration { registration: %@ }", buf, 0xCu);
          }

          [v15 setPushToken:changedCopy];
          sub_10092B638(self, v15);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v18 = [allKeys countByEnumeratingWithState:&v20 objects:v26 count:16];
      v10 = v18;
    }

    while (v18);
  }
}

- (IDSStewiePhoneNumberManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)userStore:(id)store didRemoveUser:(id)user withAuthenticationCertificate:(id)certificate
{
  userCopy = user;
  v8 = +[IDSFoundationLog stewieProvisioning];
  if (sub_1004DA798(v8))
  {
    sub_1004DA77C();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
  }

  sub_10092B3E8(self, userCopy);
}

@end