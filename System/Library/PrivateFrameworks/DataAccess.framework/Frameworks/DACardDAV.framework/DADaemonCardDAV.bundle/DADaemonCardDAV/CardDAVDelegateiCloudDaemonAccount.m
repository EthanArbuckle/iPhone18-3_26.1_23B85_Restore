@interface CardDAVDelegateiCloudDaemonAccount
- (BOOL)isEqualToAccount:(id)a3;
- (BOOL)shouldFailAllTasks;
- (CardDAVDelegateiCloudDaemonAccount)initWithBackingAccountInfo:(id)a3;
- (id)accountDescription;
- (id)additionalHeaderValues;
- (id)description;
- (id)familyDelegateAltDSID;
- (id)grandSlamAppToken;
- (id)host;
- (id)principalPath;
- (id)setUpLocalDBHelper:(id)a3;
- (id)user;
- (int64_t)port;
- (void)noteHomeSetOnDifferentHost:(id)a3;
@end

@implementation CardDAVDelegateiCloudDaemonAccount

- (CardDAVDelegateiCloudDaemonAccount)initWithBackingAccountInfo:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CardDAVDelegateiCloudDaemonAccount;
  v5 = [(CardDAViCloudDaemonAccount *)&v15 initWithBackingAccountInfo:v4];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = sharedDAAccountStore();
  v7 = [v6 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierCardDAV];
  v8 = *(v5 + 211);
  *(v5 + 211) = v7;

  v9 = [v5 setUpLocalDBHelper:v4];
  v10 = *(v5 + 203);
  *(v5 + 203) = v9;

  if (!*(v5 + 203))
  {
    v12 = +[DAAccountMonitor sharedMonitor];
    [v12 unmonitorAccount:v5];

    v13 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v13 unregisterWaiterForDataclassLocks:v5];

    v11 = 0;
  }

  else
  {
LABEL_3:
    v11 = v5;
  }

  return v11;
}

- (id)description
{
  v3 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  v4 = [v3 identifier];

  v5 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  v6 = [v5 parentAccount];
  v7 = [v6 identifier];

  v8 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  v9 = [CardDAVDelegateInfo dsidForAccount:v8];

  v10 = [NSString stringWithFormat:@"CardDAVDelegateiCloudDaemonAccount %p: accountID: %@ parentAccount: %@ dsid: %@", self, v4, v7, v9];

  return v10;
}

- (id)accountDescription
{
  v3 = [objc_opt_class() description];
  v4 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  v5 = [CardDAVDelegateInfo appleIDForAccount:v4];

  v6 = [NSString stringWithFormat:@"%@ %@", v3, v5];

  return v6;
}

- (id)setUpLocalDBHelper:(id)a3
{
  v4 = a3;
  v5 = [(CardDAVDelegateiCloudDaemonAccount *)self familyDelegateAltDSID];
  if (v5)
  {
    v6 = [CardDAVLocalDBHelper alloc];
    v7 = [v4 identifier];
    v8 = [v6 initWithContactsFamilyDelegateAltDSID:v5 familyDelegateACAccountID:v7];
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v9, v10))
    {
      v11 = [(CardDAVDelegateiCloudDaemonAccount *)self accountDescription];
      v12 = [(CardDAVDelegateiCloudDaemonAccount *)self publicDescription];
      v14 = 138412546;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_0, v9, v10, "CardDAVDelegateiCloudDaemonAccount for %@ (%{public}@) does not have a familyDelegateAltDSID, failing setup!", &v14, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqualToAccount:(id)a3
{
  v5 = a3;
  v6 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  v7 = [v6 parentAccount];
  v8 = [v7 identifier];
  v9 = [v5 backingAccountInfo];
  v10 = [v9 parentAccount];
  v11 = [v10 identifier];
  if (![v8 isEqualToString:v11])
  {
    v13 = 0;
    goto LABEL_32;
  }

  v41 = [v5 username];
  v40 = [v41 length];
  if (!v40)
  {
    v34 = [(CardDAVDelegateiCloudDaemonAccount *)self username];
    if (![v34 length])
    {
      v39 = 0;
      goto LABEL_9;
    }
  }

  v12 = [v5 username];
  v3 = [(CardDAVDelegateiCloudDaemonAccount *)self username];
  if ([v12 isEqualToString:v3])
  {
    v33 = v12;
    v39 = 1;
LABEL_9:
    v38 = [v5 host];
    v37 = [v38 length];
    if (v37 || (-[CardDAVDelegateiCloudDaemonAccount host](self, "host"), v25 = objc_claimAutoreleasedReturnValue(), [v25 length]))
    {
      v14 = v3;
      v15 = [v5 host];
      v35 = [(CardDAVDelegateiCloudDaemonAccount *)self host];
      v36 = v15;
      if (![v15 isEqualToString:?])
      {
        v13 = 0;
        v3 = v14;
LABEL_24:

        goto LABEL_25;
      }

      v30 = v8;
      v32 = 1;
      v3 = v14;
    }

    else
    {
      v30 = v8;
      v32 = 0;
    }

    v16 = [v5 principalURL];
    v31 = [v16 absoluteString];
    v17 = [v31 length];
    if (v17 || (-[CardDAVDelegateiCloudDaemonAccount principalURL](self, "principalURL"), v24 = objc_claimAutoreleasedReturnValue(), [v24 absoluteString], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "length")))
    {
      v26 = v16;
      v27 = v3;
      v28 = v7;
      v29 = v6;
      v18 = [v5 principalURL];
      v19 = [v18 absoluteString];
      v20 = [(CardDAVDelegateiCloudDaemonAccount *)self principalURL];
      v21 = [v20 absoluteString];
      v13 = [v19 isEqualToString:v21];

      if (v17)
      {

        v7 = v28;
        v6 = v29;
        v3 = v27;
        if (v32)
        {
          v8 = v30;
          goto LABEL_24;
        }

        v8 = v30;
LABEL_25:
        if (!v37)
        {
        }

        if (v39)
        {
        }

        goto LABEL_29;
      }

      v7 = v28;
      v6 = v29;
      v16 = v26;
      v3 = v27;
    }

    else
    {
      v13 = 1;
    }

    v8 = v30;
    if (v32)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v13 = 0;
LABEL_29:
  if (!v40)
  {
  }

LABEL_32:
  return v13;
}

- (id)principalPath
{
  v3 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  v4 = [CardDAVDelegateInfo dsidForAccount:v3];

  if (v4)
  {
    v5 = [CardDAVDelegateInfo hardCodedPrincipalPathForDSID:v4];
  }

  else
  {
    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v6, v7))
    {
      v8 = [(CardDAVDelegateiCloudDaemonAccount *)self accountDescription];
      v9 = [(CardDAVDelegateiCloudDaemonAccount *)self publicDescription];
      v11 = 138412546;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_0, v6, v7, "Unable to determine principalPath for account %@ (%{public}@)", &v11, 0x16u);
    }

    v5 = &stru_3CFD8;
  }

  return v5;
}

- (id)host
{
  v3 = [(CardDAViCloudDaemonAccount *)self hostOverride];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
    v6 = [v5 parentAccount];
    v7 = [v6 accountProperties];

    v4 = [v7 objectForKeyedSubscript:kDAAccountHost];

    if (!v4)
    {
      v8 = DALoggingwithCategory();
      v9 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v8, v9))
      {
        v10 = [(CardDAVDelegateiCloudDaemonAccount *)self accountDescription];
        v11 = [(CardDAVDelegateiCloudDaemonAccount *)self publicDescription];
        v13 = 138412546;
        v14 = v10;
        v15 = 2114;
        v16 = v11;
        _os_log_impl(&dword_0, v8, v9, "Unable to determine host for account %@ (%{public}@)", &v13, 0x16u);
      }

      v4 = 0;
    }
  }

  return v4;
}

- (int64_t)port
{
  v3 = [(CardDAViCloudDaemonAccount *)self portOverride];
  if ((v3 & 0x8000000000000000) == 0)
  {
    return v3;
  }

  v5 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  v6 = [v5 parentAccount];
  v7 = [v6 accountProperties];

  v8 = [v7 objectForKeyedSubscript:kDAAccountPort];
  if (v8)
  {
    v9 = v8;
    v4 = [v8 integerValue];

    if ((v4 & 0x8000000000000000) == 0)
    {
      return v4;
    }
  }

  else
  {
  }

  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v10, v11))
  {
    v12 = [(CardDAVDelegateiCloudDaemonAccount *)self accountDescription];
    v13 = [(CardDAVDelegateiCloudDaemonAccount *)self publicDescription];
    v15 = 138412546;
    v16 = v12;
    v17 = 2114;
    v18 = v13;
    _os_log_impl(&dword_0, v10, v11, "Unable to determine port for  %@ (%{public}@), falling back to 443", &v15, 0x16u);
  }

  return 443;
}

- (BOOL)shouldFailAllTasks
{
  if (([(CardDAVDelegateiCloudDaemonAccount *)self isValidating]& 1) != 0 || ([(CardDAVDelegateiCloudDaemonAccount *)self wasUserInitiated]& 1) != 0)
  {
LABEL_15:
    v23 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
    v24 = [v23 parentAccount];
    v25 = [v24 aa_isSuspended];

    if (v25)
    {
      v12 = DALoggingwithCategory();
      v26 = _CPLog_to_os_log_type[4];
      if (!os_log_type_enabled(v12, v26))
      {
        goto LABEL_23;
      }

      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
      v30 = [v29 parentAccount];
      v31 = [v30 identifier];
      v38 = 138543618;
      v39 = v28;
      v40 = 2114;
      v41 = v31;
      _os_log_impl(&dword_0, v12, v26, "Not attempting request for account %{public}@ because the parent account needs to verify terms or is suspended. %{public}@", &v38, 0x16u);
    }

    else
    {
      v32 = +[DAKeychain sharedKeychain];
      v33 = [v32 canAccessCredentialsWithAccessibility:{-[CardDAVDelegateiCloudDaemonAccount keychainAccessibilityType](self, "keychainAccessibilityType")}];

      if (v33)
      {
        return 0;
      }

      v12 = DALoggingwithCategory();
      v35 = _CPLog_to_os_log_type[4];
      if (!os_log_type_enabled(v12, v35))
      {
        goto LABEL_23;
      }

      v36 = objc_opt_class();
      v28 = NSStringFromClass(v36);
      v37 = [(CardDAVDelegateiCloudDaemonAccount *)self keychainAccessibilityType];
      v38 = 138543618;
      v39 = v28;
      v40 = 1024;
      LODWORD(v41) = v37;
      _os_log_impl(&dword_0, v12, v35, "Not attempting request for account %{public}@ because we don't have access to keychain items with accessibility %d right now", &v38, 0x12u);
    }

    goto LABEL_23;
  }

  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    v5 = [(CardDAVDelegateiCloudDaemonAccount *)self accountDescription];
    v6 = [(CardDAVDelegateiCloudDaemonAccount *)self publicDescription];
    v38 = 138412546;
    v39 = v5;
    v40 = 2114;
    v41 = v6;
    _os_log_impl(&dword_0, v3, v4, "Checking auth status for account %@ (%{public}@)", &v38, 0x16u);
  }

  v7 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  v8 = [v7 parentAccount];
  if ([v8 supportsAuthentication])
  {
    v9 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
    v10 = [v9 parentAccount];
    v11 = [v10 isAuthenticated];

    if ((v11 & 1) == 0)
    {
      v12 = DALoggingwithCategory();
      v13 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v12, v13))
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }
  }

  else
  {
  }

  v14 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  v15 = [v14 parentAccount];
  if (([v15 supportsAuthentication] & 1) == 0)
  {

    goto LABEL_15;
  }

  v16 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  v17 = [v16 parentAccount];
  v18 = [v17 isAuthenticated];

  if (v18)
  {
    goto LABEL_15;
  }

  v12 = DALoggingwithCategory();
  v13 = _CPLog_to_os_log_type[4];
  if (os_log_type_enabled(v12, v13))
  {
LABEL_13:
    v19 = [(CardDAVDelegateiCloudDaemonAccount *)self accountDescription];
    v20 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
    v21 = [v20 parentAccount];
    v22 = [v21 identifier];
    v38 = 138412546;
    v39 = v19;
    v40 = 2114;
    v41 = v22;
    _os_log_impl(&dword_0, v12, v13, "Not attempting request for account %@ because the parent account credential isn't authed %{public}@", &v38, 0x16u);
  }

LABEL_23:

  return 1;
}

- (id)user
{
  v2 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  v3 = [v2 parentAccount];
  v4 = [v3 username];

  return v4;
}

- (id)additionalHeaderValues
{
  v8.receiver = self;
  v8.super_class = CardDAVDelegateiCloudDaemonAccount;
  v3 = [(CardDAVDelegateiCloudDaemonAccount *)&v8 additionalHeaderValues];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = [[NSMutableDictionary alloc] initWithCapacity:2];
  }

  v5 = [(CardDAVDelegateiCloudDaemonAccount *)self grandSlamAppToken];
  [v4 setObject:v5 forKeyedSubscript:@"X-APPLE-FAMILY-AUTH-TOKEN"];

  v6 = +[AADeviceInfo clientInfoHeader];
  [v4 setObject:v6 forKeyedSubscript:@"X-MMe-Client-Info"];

  return v4;
}

- (id)grandSlamAppToken
{
  v3 = sharedDAAccountStore();
  v4 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  v5 = [v3 aida_accountForiCloudAccount:v4];

  if (v5)
  {
    v6 = sharedDAAccountStore();
    v7 = [v6 credentialForAccount:v5 serviceID:@"com.apple.gs.icloud.family.auth"];

    v8 = [v7 token];
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v9, v10))
    {
      v11 = [(CardDAVDelegateiCloudDaemonAccount *)self accountDescription];
      v12 = [(CardDAVDelegateiCloudDaemonAccount *)self publicDescription];
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_0, v9, v10, "Unable to obtain authentication account for account %@ %@{public}", &v14, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)noteHomeSetOnDifferentHost:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(CardDAVDelegateiCloudDaemonAccount *)self accountDescription];
    v8 = [(CardDAVDelegateiCloudDaemonAccount *)self publicDescription];
    v11 = 138412546;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_0, v5, v6, "Home set is on a different host. Updating overrides for account %@ (%{public}@)", &v11, 0x16u);
  }

  v9 = [v4 host];
  [(CardDAViCloudDaemonAccount *)self setHost:v9];

  v10 = [v4 port];

  -[CardDAViCloudDaemonAccount setPort:](self, "setPort:", [v10 integerValue]);
}

- (id)familyDelegateAltDSID
{
  v2 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  v3 = [CardDAVDelegateInfo altDSIDForAccount:v2];

  return v3;
}

@end