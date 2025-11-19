@interface IDSStewiePhoneNumberManager
- (IDSStewiePhoneNumberManager)initWithDelegate:(id)a3 queue:(id)a4 userStore:(id)a5;
- (IDSStewiePhoneNumberManager)initWithDelegate:(id)a3 queue:(id)a4 userStore:(id)a5 registrationKeychainManager:(id)a6 registrationController:(id)a7 pushHandler:(id)a8;
- (IDSStewiePhoneNumberManagerDelegate)delegate;
- (id)createPhoneInfoForUser:(id)a3 cert:(id)a4;
- (void)clearCredentialsForInfo:(id)a3;
- (void)dealloc;
- (void)handler:(id)a3 pushTokenChanged:(id)a4;
- (void)obtainAuthCertForUser:(id)a3;
- (void)performInitialPhoneInfoCheck;
- (void)registrationController:(id)a3 registrationFailed:(id)a4 error:(int64_t)a5 info:(id)a6;
- (void)userStore:(id)a3 didAddAuthenticationCertificate:(id)a4 forUser:(id)a5;
- (void)userStore:(id)a3 didAddUser:(id)a4;
- (void)userStore:(id)a3 didRemoveAuthenticationCertificateForUser:(id)a4;
- (void)userStore:(id)a3 didRemoveUser:(id)a4 withAuthenticationCertificate:(id)a5;
- (void)userStore:(id)a3 didUpdateUser:(id)a4;
@end

@implementation IDSStewiePhoneNumberManager

- (IDSStewiePhoneNumberManager)initWithDelegate:(id)a3 queue:(id)a4 userStore:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[IDSRegistrationKeychainManager sharedInstance];
  v12 = +[IDSRegistrationController sharedInstance];
  v13 = +[IDSPushHandler sharedInstance];
  v14 = [(IDSStewiePhoneNumberManager *)self initWithDelegate:v10 queue:v9 userStore:v8 registrationKeychainManager:v11 registrationController:v12 pushHandler:v13];

  return v14;
}

- (IDSStewiePhoneNumberManager)initWithDelegate:(id)a3 queue:(id)a4 userStore:(id)a5 registrationKeychainManager:(id)a6 registrationController:(id)a7 pushHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v26 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v27.receiver = self;
  v27.super_class = IDSStewiePhoneNumberManager;
  v19 = [(IDSStewiePhoneNumberManager *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_delegate, v14);
    objc_storeStrong(&v20->_userStore, a5);
    [(IDSUserStore *)v20->_userStore addActionListener:v20 forRealm:0];
    v21 = objc_alloc_init(NSMutableDictionary);
    phoneInfos = v20->_phoneInfos;
    v20->_phoneInfos = v21;

    v23 = objc_alloc_init(NSMutableDictionary);
    inProgressRegistrations = v20->_inProgressRegistrations;
    v20->_inProgressRegistrations = v23;

    objc_storeStrong(&v20->_registrationController, a7);
    [(IDSRegistrationController *)v20->_registrationController addListener:v20];
    objc_storeStrong(&v20->_registrationKeychainManager, a6);
    objc_storeStrong(&v20->_pushHandler, a8);
    [(IDSPushHandler *)v20->_pushHandler addListener:v20 topics:0 commands:0 queue:v15];
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

  v4 = [(IDSStewiePhoneNumberManager *)self userStore];
  v5 = [v4 usersWithRealm:0];

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

- (void)clearCredentialsForInfo:(id)a3
{
  v4 = a3;
  v5 = [(IDSStewiePhoneNumberManager *)self userStore];
  v6 = [v4 uniqueIdentifier];
  v7 = [v5 userWithUniqueIdentifier:v6];

  if (v7)
  {
    v8 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Clearing auth cert for user { user: %@, info: %@ }", &v13, 0x16u);
    }

    v9 = [(IDSStewiePhoneNumberManager *)self phoneInfos];
    v10 = [v4 uniqueIdentifier];
    [v9 setObject:0 forKeyedSubscript:v10];

    v11 = +[IDSPACStateTracker sharedInstance];
    [v11 notePhoneAuthCertLost:3];

    v12 = [(IDSStewiePhoneNumberManager *)self userStore];
    [v12 setAuthenticationCertificate:0 forUser:v7];
  }
}

- (void)obtainAuthCertForUser:(id)a3
{
  v4 = a3;
  v5 = [(IDSStewiePhoneNumberManager *)self userStore];
  v6 = [v4 uniqueIdentifier];
  v7 = [v5 userWithUniqueIdentifier:v6];

  v8 = [(IDSStewiePhoneNumberManager *)self userStore];
  v9 = [v8 propertiesForUser:v7];

  if (v9 && ([v9 isSPSCapable] & 1) == 0)
  {
    v10 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User has registration disabled. Not obtaining new auth cert, clearing existing auth cert. { user: %@ }", buf, 0xCu);
    }

    sub_10092B3E8(self, v4);
  }

  else
  {
    v11 = v4;
    im_dispatch_after_primary_queue();
  }
}

- (id)createPhoneInfoForUser:(id)a3 cert:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[IDSStewiePhoneNumberInfo alloc] initWithUser:v6 authenticationCertificate:v5];

  return v7;
}

- (void)userStore:(id)a3 didAddUser:(id)a4
{
  v5 = a4;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Added user, obtaining auth cert { user: %@ }", &v7, 0xCu);
  }

  [(IDSStewiePhoneNumberManager *)self obtainAuthCertForUser:v5];
}

- (void)userStore:(id)a3 didAddAuthenticationCertificate:(id)a4 forUser:(id)a5
{
  v6 = a5;
  v7 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Obtained auth cert { user: %@ }", &v14, 0xCu);
  }

  v8 = [v6 uniqueIdentifier];

  if (v8)
  {
    v9 = [(IDSStewiePhoneNumberManager *)self inProgressRegistrations];
    v10 = [v6 uniqueIdentifier];
    v11 = [v9 objectForKeyedSubscript:v10];

    [v11 removeFromKeychain];
    v12 = [(IDSStewiePhoneNumberManager *)self inProgressRegistrations];
    v13 = [v6 uniqueIdentifier];
    [v12 setObject:0 forKeyedSubscript:v13];

    [(IDSStewiePhoneNumberManager *)self obtainAuthCertForUser:v6];
  }
}

- (void)userStore:(id)a3 didRemoveAuthenticationCertificateForUser:(id)a4
{
  v5 = a4;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notified auth cert was removed. Reobtaining... { user: %@ }", &v10, 0xCu);
  }

  v7 = [v5 uniqueIdentifier];

  if (v7)
  {
    v8 = [(IDSStewiePhoneNumberManager *)self phoneInfos];
    v9 = [v5 uniqueIdentifier];
    [v8 setObject:0 forKeyedSubscript:v9];

    [(IDSStewiePhoneNumberManager *)self obtainAuthCertForUser:v5];
  }
}

- (void)userStore:(id)a3 didUpdateUser:(id)a4
{
  v5 = a4;
  v6 = [(IDSStewiePhoneNumberManager *)self userStore];
  v7 = [v5 uniqueIdentifier];
  v8 = [v6 userWithUniqueIdentifier:v7];

  v9 = [(IDSStewiePhoneNumberManager *)self userStore];
  v10 = [v9 propertiesForUser:v8];

  if (v10 && ([v10 isSPSCapable] & 1) == 0)
  {
    sub_10092B994(v5, self);
  }

  else
  {
    v11 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updated user, obtaining auth cert { user: %@ }", &v12, 0xCu);
    }

    [(IDSStewiePhoneNumberManager *)self obtainAuthCertForUser:v5];
  }
}

- (void)registrationController:(id)a3 registrationFailed:(id)a4 error:(int64_t)a5 info:(id)a6
{
  v8 = a4;
  v9 = [(IDSStewiePhoneNumberManager *)self inProgressRegistrations];
  v10 = [v8 userUniqueIdentifier];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10092BA48(v8, a5, v12);
    }

    sub_1005B228C(self, v11);
    sub_10092B740(self);
  }
}

- (void)handler:(id)a3 pushTokenChanged:(id)a4
{
  v5 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(IDSStewiePhoneNumberManager *)self inProgressRegistrations];
  v7 = [v6 allKeys];

  v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        v14 = [(IDSStewiePhoneNumberManager *)self inProgressRegistrations];
        v15 = [v14 objectForKeyedSubscript:v13];

        v16 = [v15 pushToken];

        if (!v16)
        {
          v17 = +[IDSFoundationLog stewieProvisioning];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v19;
            v25 = v15;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Notified push token obtained. Kicking registration { registration: %@ }", buf, 0xCu);
          }

          [v15 setPushToken:v5];
          sub_10092B638(self, v15);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v18 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
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

- (void)userStore:(id)a3 didRemoveUser:(id)a4 withAuthenticationCertificate:(id)a5
{
  v7 = a4;
  v8 = +[IDSFoundationLog stewieProvisioning];
  if (sub_1004DA798(v8))
  {
    sub_1004DA77C();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
  }

  sub_10092B3E8(self, v7);
}

@end