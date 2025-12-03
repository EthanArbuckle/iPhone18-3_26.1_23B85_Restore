@interface LakituAccount
+ (id)personaAwareAccountWithDSID:(id)d;
- (LakituAccount)initWithACAccount:(id)account;
- (NSString)altDSID;
- (NSString)authToken;
- (NSString)dsid;
- (NSString)escrowURL;
- (NSString)iCloudEnv;
@end

@implementation LakituAccount

+ (id)personaAwareAccountWithDSID:(id)d
{
  dCopy = d;
  if (!&kAAProtocoliCloudAccountKey)
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AppleAccount.framework is not available", buf, 2u);
    }

    v11 = 0;
    goto LABEL_34;
  }

  if (sub_100042C00())
  {
    userPersonaUniqueString = +[ACAccountStore defaultStore];
    aa_primaryAppleAccount = [userPersonaUniqueString aa_primaryAppleAccount];
    v7 = aa_primaryAppleAccount;
    if (dCopy && (-[NSObject aa_personID](aa_primaryAppleAccount, "aa_personID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [dCopy isEqualToString:v8], v8, !v9))
    {
      v23 = CloudServicesLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v36 = dCopy;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "using non-primary DSID: %{private}@", buf, 0xCu);
      }

      v10 = [userPersonaUniqueString aa_appleAccountWithPersonID:dCopy];
    }

    else
    {
      v10 = v7;
    }

    v22 = v10;
    if (!v10)
    {
      v24 = CloudServicesLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "unable to determine AppleAccount", buf, 2u);
      }
    }

LABEL_31:

    v7 = v22;
    goto LABEL_32;
  }

  v12 = +[UMUserManager sharedManager];
  currentPersona = [v12 currentPersona];

  if (([currentPersona isDataSeparatedPersona] & 1) == 0)
  {

    userPersonaUniqueString = 0;
    goto LABEL_21;
  }

  userPersonaUniqueString = [currentPersona userPersonaUniqueString];

  if (!userPersonaUniqueString)
  {
LABEL_21:
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "unable to determine AppleAccount for current persona", buf, 2u);
    }

LABEL_23:
    v22 = 0;
    goto LABEL_31;
  }

  +[ACAccountStore defaultStore];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = v33 = 0u;
  aa_appleAccounts = [v29 aa_appleAccounts];
  v15 = [aa_appleAccounts countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v15)
  {
LABEL_19:

    goto LABEL_21;
  }

  v16 = v15;
  v17 = *v31;
LABEL_13:
  v18 = 0;
  while (1)
  {
    if (*v31 != v17)
    {
      objc_enumerationMutation(aa_appleAccounts);
    }

    v19 = *(*(&v30 + 1) + 8 * v18);
    personaIdentifier = [v19 personaIdentifier];
    v21 = [userPersonaUniqueString isEqualToString:personaIdentifier];

    if (v21)
    {
      break;
    }

    if (v16 == ++v18)
    {
      v16 = [aa_appleAccounts countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v16)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  v7 = v19;

  if (!v7)
  {
    goto LABEL_21;
  }

  if (dCopy)
  {
    aa_personID = [v7 aa_personID];
    v27 = [dCopy isEqualToString:aa_personID];

    if ((v27 & 1) == 0)
    {
      v28 = CloudServicesLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v36 = dCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "specified DSID %{private}@ does not match current persona", buf, 0xCu);
      }

      goto LABEL_23;
    }
  }

LABEL_32:

  if (v7)
  {
    v11 = [[self alloc] initWithACAccount:v7];
LABEL_34:

    goto LABEL_36;
  }

  v11 = 0;
LABEL_36:

  return v11;
}

- (LakituAccount)initWithACAccount:(id)account
{
  accountCopy = account;
  if (&kAAProtocoliCloudAccountKey)
  {
    v10.receiver = self;
    v10.super_class = LakituAccount;
    v5 = [(LakituAccount *)&v10 init];
    v6 = v5;
    if (v5)
    {
      [(LakituAccount *)v5 setAccount:accountCopy];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AppleAccount.framework is not available", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)dsid
{
  v3 = objc_autoreleasePoolPush();
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getting dsid", &v9, 2u);
  }

  account = [(LakituAccount *)self account];
  if ([account aa_isPrimaryEmailVerified])
  {
    aa_personID = [account aa_personID];
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = aa_personID;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "got dsid: %@", &v9, 0xCu);
    }
  }

  else
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004E7B8();
    }

    aa_personID = 0;
  }

  objc_autoreleasePoolPop(v3);

  return aa_personID;
}

- (NSString)altDSID
{
  v3 = objc_autoreleasePoolPush();
  account = [(LakituAccount *)self account];
  aa_altDSID = [account aa_altDSID];

  objc_autoreleasePoolPop(v3);

  return aa_altDSID;
}

- (NSString)authToken
{
  v3 = objc_autoreleasePoolPush();
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getting auth token", buf, 2u);
  }

  account = [(LakituAccount *)self account];
  if ([account aa_isPrimaryEmailVerified])
  {
    v6 = +[ACAccountStore defaultStore];
    v12 = 0;
    v7 = [v6 credentialForAccount:account error:&v12];
    v8 = v12;
    if (v7)
    {
      token = [v7 token];
      v10 = CloudServicesLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "got auth token", buf, 2u);
      }
    }

    else
    {
      v10 = CloudServicesLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Error accessing auth token: %@", buf, 0xCu);
      }

      token = 0;
    }
  }

  else
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004E7B8();
    }

    token = 0;
  }

  objc_autoreleasePoolPop(v3);

  return token;
}

- (NSString)escrowURL
{
  v3 = objc_autoreleasePoolPush();
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getting escrowURL", buf, 2u);
  }

  account = [(LakituAccount *)self account];
  if ([account aa_isPrimaryEmailVerified])
  {
    v6 = [account propertiesForDataclass:kAccountDataclassKeychainSync];
    v7 = [v6 objectForKey:@"escrowProxyUrl"];

    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "got escrowURL", v10, 2u);
    }
  }

  else
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004E7B8();
    }

    v7 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v7;
}

- (NSString)iCloudEnv
{
  v3 = objc_autoreleasePoolPush();
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getting iCloud env", buf, 2u);
  }

  account = [(LakituAccount *)self account];
  if ([account aa_isPrimaryEmailVerified])
  {
    dataclassProperties = [account dataclassProperties];
    v7 = [dataclassProperties objectForKeyedSubscript:kAAProtocoliCloudAccountKey];
    v8 = [v7 objectForKeyedSubscript:@"iCloudEnv"];

    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "got iCloud env", v11, 2u);
    }
  }

  else
  {
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10004E7B8();
    }

    v8 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v8;
}

@end