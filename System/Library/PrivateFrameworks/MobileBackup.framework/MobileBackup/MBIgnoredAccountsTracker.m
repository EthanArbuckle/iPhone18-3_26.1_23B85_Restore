@interface MBIgnoredAccountsTracker
+ (BOOL)_isEnterpriseAccount:(id)a3;
- (BOOL)addAccountWithDSID:(id)a3;
- (BOOL)isIgnoredAppleID:(id)a3;
- (MBIgnoredAccountsTracker)init;
@end

@implementation MBIgnoredAccountsTracker

- (MBIgnoredAccountsTracker)init
{
  v12.receiver = self;
  v12.super_class = MBIgnoredAccountsTracker;
  v2 = [(MBIgnoredAccountsTracker *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    allowedDSIDs = v2->_allowedDSIDs;
    v2->_allowedDSIDs = v3;

    v5 = objc_opt_new();
    ignoredDSIDs = v2->_ignoredDSIDs;
    v2->_ignoredDSIDs = v5;

    v7 = objc_opt_new();
    ignoredAppleIDs = v2->_ignoredAppleIDs;
    v2->_ignoredAppleIDs = v7;

    v9 = objc_opt_new();
    allowedAppleIDs = v2->_allowedAppleIDs;
    v2->_allowedAppleIDs = v9;
  }

  return v2;
}

+ (BOOL)_isEnterpriseAccount:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    __assert_rtn("+[MBIgnoredAccountsTracker _isEnterpriseAccount:]", "MBIgnoredAccountsTracker.m", 37, "account");
  }

  v4 = v3;
  if (![v3 aa_isManagedAppleID])
  {
    v5 = [v4 personaIdentifier];
    if (v5)
    {
      v7 = [UMUserPersonaAttributes personaAttributesForPersonaUniqueString:v5];
      v6 = v7 != 0;
      v8 = MBGetDefaultLog();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (!v7)
      {
        if (v9)
        {
          *buf = 138543362;
          v13 = v5;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to fetch the persona attributes for persona %{public}@", buf, 0xCu);
          goto LABEL_19;
        }

LABEL_20:

        goto LABEL_21;
      }

      if (v9)
      {
        *buf = 138543618;
        v13 = v5;
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetched the attributes for persona %{public}@: %@", buf, 0x16u);
        _MBLog();
      }

      v10 = [v7 userPersonaUniqueString];
      if (([v5 isEqualToString:v10]& 1) == 0)
      {
        __assert_rtn("+[MBIgnoredAccountsTracker _isEnterpriseAccount:]", "MBIgnoredAccountsTracker.m", 53, "[personaIdentifier isEqualToString:attributes.userPersonaUniqueString]");
      }

      if ([v7 isEnterprisePersona])
      {
        v8 = MBGetDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v13 = v5;
          v14 = 2112;
          v15 = v4;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found an enterprise persona (%@) for account %@", buf, 0x16u);
LABEL_19:
          _MBLog();
          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Found nil personaIdentifier for %@", buf, 0xCu);
        _MBLog();
      }
    }

    v6 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Account is marked as managed %@", buf, 0xCu);
    _MBLog();
  }

  v6 = 1;
LABEL_22:

  return v6;
}

- (BOOL)addAccountWithDSID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isEqualToNumber:&off_1003E0F78] & 1) == 0)
  {
    v8 = self;
    objc_sync_enter(v8);
    if ([(NSMutableSet *)v8->_ignoredDSIDs containsObject:v5])
    {
      objc_sync_exit(v8);

      v6 = 0;
      goto LABEL_4;
    }

    v9 = [(NSMutableSet *)v8->_allowedDSIDs containsObject:v5];
    objc_sync_exit(v8);

    if ((v9 & 1) == 0)
    {
      v10 = +[ACAccountStore defaultStore];
      v11 = [v5 stringValue];
      v12 = [v10 aa_appleAccountWithPersonID:v11];

      if (v12)
      {
        v13 = [v12 username];
        v14 = [objc_opt_class() _isEnterpriseAccount:v12];
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          if (v14)
          {
            v16 = "Ignoring";
          }

          else
          {
            v16 = "Found";
          }

          v23 = v16;
          v24 = 2112;
          v25 = v13;
          v26 = 2112;
          v27 = v5;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s account: %@/%@", buf, 0x20u);
          v20 = v13;
          v21 = v5;
          v19 = v16;
          _MBLog();
        }

        v17 = v8;
        objc_sync_enter(v17);
        if (v14)
        {
          [(NSMutableSet *)v8->_ignoredDSIDs addObject:v5];
          if (v13)
          {
            [v17[4] addObject:v13];
          }

          v6 = 0;
LABEL_24:
          objc_sync_exit(v8);

          goto LABEL_4;
        }
      }

      else
      {
        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v23 = v5;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "No account found for %@", buf, 0xCu);
          v19 = v5;
          _MBLog();
        }

        objc_sync_enter(v8);
        v13 = 0;
      }

      [(NSMutableSet *)v8->_allowedDSIDs addObject:v5, v19, v20, v21];
      if (v13)
      {
        [(NSMutableSet *)v8->_allowedAppleIDs addObject:v13];
      }

      v6 = 1;
      goto LABEL_24;
    }
  }

  v6 = 1;
LABEL_4:

  return v6;
}

- (BOOL)isIgnoredAppleID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMutableSet *)v5->_ignoredAppleIDs containsObject:v4];
    if ((v6 & 1) == 0)
    {
      [(NSMutableSet *)v5->_allowedAppleIDs containsObject:v4];
    }

    objc_sync_exit(v5);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end