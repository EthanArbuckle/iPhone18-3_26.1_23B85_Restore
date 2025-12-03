@interface CardDAVDelegateiCloudDaemonAccount
- (BOOL)isEqualToAccount:(id)account;
- (BOOL)shouldFailAllTasks;
- (CardDAVDelegateiCloudDaemonAccount)initWithBackingAccountInfo:(id)info;
- (id)accountDescription;
- (id)additionalHeaderValues;
- (id)description;
- (id)familyDelegateAltDSID;
- (id)grandSlamAppToken;
- (id)host;
- (id)principalPath;
- (id)setUpLocalDBHelper:(id)helper;
- (id)user;
- (int64_t)port;
- (void)noteHomeSetOnDifferentHost:(id)host;
@end

@implementation CardDAVDelegateiCloudDaemonAccount

- (CardDAVDelegateiCloudDaemonAccount)initWithBackingAccountInfo:(id)info
{
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = CardDAVDelegateiCloudDaemonAccount;
  v5 = [(CardDAViCloudDaemonAccount *)&v15 initWithBackingAccountInfo:infoCopy];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = sharedDAAccountStore();
  v7 = [v6 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierCardDAV];
  v8 = *(v5 + 211);
  *(v5 + 211) = v7;

  v9 = [v5 setUpLocalDBHelper:infoCopy];
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
  backingAccountInfo = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  identifier = [backingAccountInfo identifier];

  backingAccountInfo2 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  parentAccount = [backingAccountInfo2 parentAccount];
  identifier2 = [parentAccount identifier];

  backingAccountInfo3 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  v9 = [CardDAVDelegateInfo dsidForAccount:backingAccountInfo3];

  v10 = [NSString stringWithFormat:@"CardDAVDelegateiCloudDaemonAccount %p: accountID: %@ parentAccount: %@ dsid: %@", self, identifier, identifier2, v9];

  return v10;
}

- (id)accountDescription
{
  v3 = [objc_opt_class() description];
  backingAccountInfo = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  v5 = [CardDAVDelegateInfo appleIDForAccount:backingAccountInfo];

  v6 = [NSString stringWithFormat:@"%@ %@", v3, v5];

  return v6;
}

- (id)setUpLocalDBHelper:(id)helper
{
  helperCopy = helper;
  familyDelegateAltDSID = [(CardDAVDelegateiCloudDaemonAccount *)self familyDelegateAltDSID];
  if (familyDelegateAltDSID)
  {
    v6 = [CardDAVLocalDBHelper alloc];
    identifier = [helperCopy identifier];
    v8 = [v6 initWithContactsFamilyDelegateAltDSID:familyDelegateAltDSID familyDelegateACAccountID:identifier];
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v9, v10))
    {
      accountDescription = [(CardDAVDelegateiCloudDaemonAccount *)self accountDescription];
      publicDescription = [(CardDAVDelegateiCloudDaemonAccount *)self publicDescription];
      v14 = 138412546;
      v15 = accountDescription;
      v16 = 2114;
      v17 = publicDescription;
      _os_log_impl(&dword_0, v9, v10, "CardDAVDelegateiCloudDaemonAccount for %@ (%{public}@) does not have a familyDelegateAltDSID, failing setup!", &v14, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqualToAccount:(id)account
{
  accountCopy = account;
  backingAccountInfo = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  parentAccount = [backingAccountInfo parentAccount];
  identifier = [parentAccount identifier];
  backingAccountInfo2 = [accountCopy backingAccountInfo];
  parentAccount2 = [backingAccountInfo2 parentAccount];
  identifier2 = [parentAccount2 identifier];
  if (![identifier isEqualToString:identifier2])
  {
    v13 = 0;
    goto LABEL_32;
  }

  username = [accountCopy username];
  v40 = [username length];
  if (!v40)
  {
    username2 = [(CardDAVDelegateiCloudDaemonAccount *)self username];
    if (![username2 length])
    {
      v39 = 0;
      goto LABEL_9;
    }
  }

  username3 = [accountCopy username];
  username4 = [(CardDAVDelegateiCloudDaemonAccount *)self username];
  if ([username3 isEqualToString:username4])
  {
    v33 = username3;
    v39 = 1;
LABEL_9:
    host = [accountCopy host];
    v37 = [host length];
    if (v37 || (-[CardDAVDelegateiCloudDaemonAccount host](self, "host"), v25 = objc_claimAutoreleasedReturnValue(), [v25 length]))
    {
      v14 = username4;
      host2 = [accountCopy host];
      host3 = [(CardDAVDelegateiCloudDaemonAccount *)self host];
      v36 = host2;
      if (![host2 isEqualToString:?])
      {
        v13 = 0;
        username4 = v14;
LABEL_24:

        goto LABEL_25;
      }

      v30 = identifier;
      v32 = 1;
      username4 = v14;
    }

    else
    {
      v30 = identifier;
      v32 = 0;
    }

    principalURL = [accountCopy principalURL];
    absoluteString = [principalURL absoluteString];
    v17 = [absoluteString length];
    if (v17 || (-[CardDAVDelegateiCloudDaemonAccount principalURL](self, "principalURL"), v24 = objc_claimAutoreleasedReturnValue(), [v24 absoluteString], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "length")))
    {
      v26 = principalURL;
      v27 = username4;
      v28 = parentAccount;
      v29 = backingAccountInfo;
      principalURL2 = [accountCopy principalURL];
      absoluteString2 = [principalURL2 absoluteString];
      principalURL3 = [(CardDAVDelegateiCloudDaemonAccount *)self principalURL];
      absoluteString3 = [principalURL3 absoluteString];
      v13 = [absoluteString2 isEqualToString:absoluteString3];

      if (v17)
      {

        parentAccount = v28;
        backingAccountInfo = v29;
        username4 = v27;
        if (v32)
        {
          identifier = v30;
          goto LABEL_24;
        }

        identifier = v30;
LABEL_25:
        if (!v37)
        {
        }

        if (v39)
        {
        }

        goto LABEL_29;
      }

      parentAccount = v28;
      backingAccountInfo = v29;
      principalURL = v26;
      username4 = v27;
    }

    else
    {
      v13 = 1;
    }

    identifier = v30;
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
  backingAccountInfo = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  v4 = [CardDAVDelegateInfo dsidForAccount:backingAccountInfo];

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
      accountDescription = [(CardDAVDelegateiCloudDaemonAccount *)self accountDescription];
      publicDescription = [(CardDAVDelegateiCloudDaemonAccount *)self publicDescription];
      v11 = 138412546;
      v12 = accountDescription;
      v13 = 2114;
      v14 = publicDescription;
      _os_log_impl(&dword_0, v6, v7, "Unable to determine principalPath for account %@ (%{public}@)", &v11, 0x16u);
    }

    v5 = &stru_3CFD8;
  }

  return v5;
}

- (id)host
{
  hostOverride = [(CardDAViCloudDaemonAccount *)self hostOverride];
  if (hostOverride)
  {
    v4 = hostOverride;
  }

  else
  {
    backingAccountInfo = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
    parentAccount = [backingAccountInfo parentAccount];
    accountProperties = [parentAccount accountProperties];

    v4 = [accountProperties objectForKeyedSubscript:kDAAccountHost];

    if (!v4)
    {
      v8 = DALoggingwithCategory();
      v9 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v8, v9))
      {
        accountDescription = [(CardDAVDelegateiCloudDaemonAccount *)self accountDescription];
        publicDescription = [(CardDAVDelegateiCloudDaemonAccount *)self publicDescription];
        v13 = 138412546;
        v14 = accountDescription;
        v15 = 2114;
        v16 = publicDescription;
        _os_log_impl(&dword_0, v8, v9, "Unable to determine host for account %@ (%{public}@)", &v13, 0x16u);
      }

      v4 = 0;
    }
  }

  return v4;
}

- (int64_t)port
{
  portOverride = [(CardDAViCloudDaemonAccount *)self portOverride];
  if ((portOverride & 0x8000000000000000) == 0)
  {
    return portOverride;
  }

  backingAccountInfo = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  parentAccount = [backingAccountInfo parentAccount];
  accountProperties = [parentAccount accountProperties];

  v8 = [accountProperties objectForKeyedSubscript:kDAAccountPort];
  if (v8)
  {
    v9 = v8;
    integerValue = [v8 integerValue];

    if ((integerValue & 0x8000000000000000) == 0)
    {
      return integerValue;
    }
  }

  else
  {
  }

  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v10, v11))
  {
    accountDescription = [(CardDAVDelegateiCloudDaemonAccount *)self accountDescription];
    publicDescription = [(CardDAVDelegateiCloudDaemonAccount *)self publicDescription];
    v15 = 138412546;
    v16 = accountDescription;
    v17 = 2114;
    v18 = publicDescription;
    _os_log_impl(&dword_0, v10, v11, "Unable to determine port for  %@ (%{public}@), falling back to 443", &v15, 0x16u);
  }

  return 443;
}

- (BOOL)shouldFailAllTasks
{
  if (([(CardDAVDelegateiCloudDaemonAccount *)self isValidating]& 1) != 0 || ([(CardDAVDelegateiCloudDaemonAccount *)self wasUserInitiated]& 1) != 0)
  {
LABEL_15:
    backingAccountInfo = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
    parentAccount = [backingAccountInfo parentAccount];
    aa_isSuspended = [parentAccount aa_isSuspended];

    if (aa_isSuspended)
    {
      v12 = DALoggingwithCategory();
      v26 = _CPLog_to_os_log_type[4];
      if (!os_log_type_enabled(v12, v26))
      {
        goto LABEL_23;
      }

      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      backingAccountInfo2 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
      parentAccount2 = [backingAccountInfo2 parentAccount];
      identifier = [parentAccount2 identifier];
      v38 = 138543618;
      v39 = v28;
      v40 = 2114;
      v41 = identifier;
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
      keychainAccessibilityType = [(CardDAVDelegateiCloudDaemonAccount *)self keychainAccessibilityType];
      v38 = 138543618;
      v39 = v28;
      v40 = 1024;
      LODWORD(v41) = keychainAccessibilityType;
      _os_log_impl(&dword_0, v12, v35, "Not attempting request for account %{public}@ because we don't have access to keychain items with accessibility %d right now", &v38, 0x12u);
    }

    goto LABEL_23;
  }

  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    accountDescription = [(CardDAVDelegateiCloudDaemonAccount *)self accountDescription];
    publicDescription = [(CardDAVDelegateiCloudDaemonAccount *)self publicDescription];
    v38 = 138412546;
    v39 = accountDescription;
    v40 = 2114;
    v41 = publicDescription;
    _os_log_impl(&dword_0, v3, v4, "Checking auth status for account %@ (%{public}@)", &v38, 0x16u);
  }

  backingAccountInfo3 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  parentAccount3 = [backingAccountInfo3 parentAccount];
  if ([parentAccount3 supportsAuthentication])
  {
    backingAccountInfo4 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
    parentAccount4 = [backingAccountInfo4 parentAccount];
    isAuthenticated = [parentAccount4 isAuthenticated];

    if ((isAuthenticated & 1) == 0)
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

  backingAccountInfo5 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  parentAccount5 = [backingAccountInfo5 parentAccount];
  if (([parentAccount5 supportsAuthentication] & 1) == 0)
  {

    goto LABEL_15;
  }

  backingAccountInfo6 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  parentAccount6 = [backingAccountInfo6 parentAccount];
  isAuthenticated2 = [parentAccount6 isAuthenticated];

  if (isAuthenticated2)
  {
    goto LABEL_15;
  }

  v12 = DALoggingwithCategory();
  v13 = _CPLog_to_os_log_type[4];
  if (os_log_type_enabled(v12, v13))
  {
LABEL_13:
    accountDescription2 = [(CardDAVDelegateiCloudDaemonAccount *)self accountDescription];
    backingAccountInfo7 = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
    parentAccount7 = [backingAccountInfo7 parentAccount];
    identifier2 = [parentAccount7 identifier];
    v38 = 138412546;
    v39 = accountDescription2;
    v40 = 2114;
    v41 = identifier2;
    _os_log_impl(&dword_0, v12, v13, "Not attempting request for account %@ because the parent account credential isn't authed %{public}@", &v38, 0x16u);
  }

LABEL_23:

  return 1;
}

- (id)user
{
  backingAccountInfo = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  parentAccount = [backingAccountInfo parentAccount];
  username = [parentAccount username];

  return username;
}

- (id)additionalHeaderValues
{
  v8.receiver = self;
  v8.super_class = CardDAVDelegateiCloudDaemonAccount;
  additionalHeaderValues = [(CardDAVDelegateiCloudDaemonAccount *)&v8 additionalHeaderValues];
  v4 = [additionalHeaderValues mutableCopy];

  if (!v4)
  {
    v4 = [[NSMutableDictionary alloc] initWithCapacity:2];
  }

  grandSlamAppToken = [(CardDAVDelegateiCloudDaemonAccount *)self grandSlamAppToken];
  [v4 setObject:grandSlamAppToken forKeyedSubscript:@"X-APPLE-FAMILY-AUTH-TOKEN"];

  v6 = +[AADeviceInfo clientInfoHeader];
  [v4 setObject:v6 forKeyedSubscript:@"X-MMe-Client-Info"];

  return v4;
}

- (id)grandSlamAppToken
{
  v3 = sharedDAAccountStore();
  backingAccountInfo = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  v5 = [v3 aida_accountForiCloudAccount:backingAccountInfo];

  if (v5)
  {
    v6 = sharedDAAccountStore();
    v7 = [v6 credentialForAccount:v5 serviceID:@"com.apple.gs.icloud.family.auth"];

    token = [v7 token];
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v9, v10))
    {
      accountDescription = [(CardDAVDelegateiCloudDaemonAccount *)self accountDescription];
      publicDescription = [(CardDAVDelegateiCloudDaemonAccount *)self publicDescription];
      v14 = 138412546;
      v15 = accountDescription;
      v16 = 2112;
      v17 = publicDescription;
      _os_log_impl(&dword_0, v9, v10, "Unable to obtain authentication account for account %@ %@{public}", &v14, 0x16u);
    }

    token = 0;
  }

  return token;
}

- (void)noteHomeSetOnDifferentHost:(id)host
{
  hostCopy = host;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v5, v6))
  {
    accountDescription = [(CardDAVDelegateiCloudDaemonAccount *)self accountDescription];
    publicDescription = [(CardDAVDelegateiCloudDaemonAccount *)self publicDescription];
    v11 = 138412546;
    v12 = accountDescription;
    v13 = 2114;
    v14 = publicDescription;
    _os_log_impl(&dword_0, v5, v6, "Home set is on a different host. Updating overrides for account %@ (%{public}@)", &v11, 0x16u);
  }

  host = [hostCopy host];
  [(CardDAViCloudDaemonAccount *)self setHost:host];

  port = [hostCopy port];

  -[CardDAViCloudDaemonAccount setPort:](self, "setPort:", [port integerValue]);
}

- (id)familyDelegateAltDSID
{
  backingAccountInfo = [(CardDAVDelegateiCloudDaemonAccount *)self backingAccountInfo];
  v3 = [CardDAVDelegateInfo altDSIDForAccount:backingAccountInfo];

  return v3;
}

@end