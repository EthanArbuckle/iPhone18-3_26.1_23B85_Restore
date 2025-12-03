@interface ParentalControls
+ (id)objectForKey:(id)key;
+ (id)standardControls;
- (BOOL)disableAccount:(id)account;
- (BOOL)disableService:(id)service;
- (BOOL)disableServiceSession:(id)session;
- (BOOL)forceAllowlistForServiceSession:(id)session;
- (ParentalControls)init;
- (id)_serviceWithName:(id)name;
- (id)allowlistForServiceSession:(id)session;
- (void)_managedPrefsNotification:(id)notification;
- (void)_updateParentalSettings;
- (void)updateAccountActivation;
@end

@implementation ParentalControls

+ (id)standardControls
{
  result = qword_10008B7C0;
  if (!qword_10008B7C0)
  {
    qword_10008B7C0 = objc_alloc_init(ParentalControls);
    [qword_10008B7C0 setShouldPostNotifications:0];
    [qword_10008B7C0 _updateParentalSettings];
    [qword_10008B7C0 setShouldPostNotifications:1];
    return qword_10008B7C0;
  }

  return result;
}

- (ParentalControls)init
{
  v8.receiver = self;
  v8.super_class = ParentalControls;
  v2 = [(ParentalControls *)&v8 init];
  if (v2)
  {
    v2->_parentalControls = objc_alloc_init(NSMutableDictionary);
    v3 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v3 addObserver:v2 selector:"_managedPrefsNotification:" name:kCFManagedPreferencesMCXNotificationName object:kCFManagedPreferencesMCXObjectName];
    v4 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v4 addObserver:v2 selector:"_managedPrefsNotification:" name:FaceTimeDeviceRegistrationCapabilityChangedNotification object:0];
    v5 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v5 addObserver:v2 selector:"_managedPrefsNotification:" name:FaceTimeDeviceCapabilityChangedNotification object:0];
    v6 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v6 addObserver:v2 selector:"_managedPrefsNotification:" name:FaceTimeDeviceRestictionsChangedNotification object:0];
  }

  return v2;
}

- (id)_serviceWithName:(id)name
{
  result = [(NSMutableDictionary *)self->_parentalControls objectForKey:?];
  if (!result)
  {
    v6 = objc_alloc_init(ParentalControlsService);
    [(ParentalControlsService *)v6 setName:name];
    [(NSMutableDictionary *)self->_parentalControls setObject:v6 forKey:name];

    return v6;
  }

  return result;
}

- (void)_updateParentalSettings
{
  if (self->_active)
  {
    self->_active = 0;
    if (self->_shouldPostNotifications)
    {
      v3 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v3 __mainThreadPostNotificationName:IMDManagedPreferencesChangedNotification object:self];
    }
  }

  [(ParentalControls *)self updateAccountActivation];
}

+ (id)objectForKey:(id)key
{
  result = [key length];
  if (result)
  {
    v5 = [@"Setting." stringByAppendingString:key];

    return [NSUserDefaults _IMAgentObjectForKey:v5];
  }

  return result;
}

- (void)updateAccountActivation
{
  v3 = +[IMDAccountController sharedAccountController];
  isLoading = [v3 isLoading];
  v5 = +[IMRGLog registration];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isLoading)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Waiting on account activate, the account controller isn't ready yet", buf, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " Updating account activation if needed", buf, 2u);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    accounts = [v3 accounts];
    v8 = [accounts countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v17;
      *&v9 = 138412290;
      v15 = v9;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(accounts);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 isActive] && -[ParentalControls disableAccount:](self, "disableAccount:", v13))
          {
            [v3 deactivateAccount:{objc_msgSend(v13, "accountID")}];
            [v13 setWasDisabledAutomatically:1];
          }

          else if (([v13 isActive] & 1) == 0 && !-[ParentalControls disableAccount:](self, "disableAccount:", v13) && objc_msgSend(v13, "wasDisabledAutomatically"))
          {
            v14 = +[IMRGLog registration];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v15;
              v21 = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Re-activating a disabled account: %@", buf, 0xCu);
            }

            [v3 activateAccount:{objc_msgSend(v13, "accountID")}];
            [objc_msgSend(v13 "session")];
          }
        }

        v10 = [accounts countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v10);
    }
  }
}

- (BOOL)disableService:(id)service
{
  if (service)
  {
    active = [(ParentalControls *)self active];
    if (active)
    {
      v6 = -[ParentalControls _serviceWithName:](self, "_serviceWithName:", [service internalName]);

      LOBYTE(active) = [v6 disableService];
    }
  }

  else
  {
    LOBYTE(active) = 1;
  }

  return active;
}

- (BOOL)disableAccount:(id)account
{
  service = [account service];

  return [(ParentalControls *)self disableService:service];
}

- (BOOL)disableServiceSession:(id)session
{
  service = [session service];

  return [(ParentalControls *)self disableService:service];
}

- (id)allowlistForServiceSession:(id)session
{
  result = [session service];
  if (result)
  {
    v5 = result;
    if ([(ParentalControls *)self active])
    {
      v6 = [-[ParentalControls _serviceWithName:](self _serviceWithName:{objc_msgSend(v5, "internalName")), "allowlist"}];
      if ([v6 count])
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)forceAllowlistForServiceSession:(id)session
{
  service = [session service];
  if (service)
  {
    v5 = service;
    active = [(ParentalControls *)self active];
    if (active)
    {
      v7 = -[ParentalControls _serviceWithName:](self, "_serviceWithName:", [v5 internalName]);

      LOBYTE(active) = [v7 forceAllowlist];
    }
  }

  else
  {
    LOBYTE(active) = 1;
  }

  return active;
}

- (void)_managedPrefsNotification:(id)notification
{
  [(ParentalControls *)self _updateParentalSettings];
  v3 = +[IMDAccountController sharedAccountController];

  [v3 load];
}

@end