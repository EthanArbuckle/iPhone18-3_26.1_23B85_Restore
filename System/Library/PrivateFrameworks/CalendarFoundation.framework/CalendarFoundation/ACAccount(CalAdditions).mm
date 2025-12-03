@interface ACAccount(CalAdditions)
- (BOOL)calIsMissingParentAccount;
- (BOOL)calIsRestrictedForCalendar;
- (BOOL)removePrincipalWithUID:()CalAdditions;
- (__CFString)_schemeStringForUseSSL:()CalAdditions;
- (id)_accountPropertiesKeys;
- (id)_calDAVDataclassProperties;
- (id)_createExchangeWebServicesURLFromURL:()CalAdditions;
- (id)_diffAccountPropertiesWithAccount:()CalAdditions firstPropertyOnly:;
- (id)_diffPropertiesWithAccount:()CalAdditions firstPropertyOnly:;
- (id)_diffWithAccount:()CalAdditions firstPropertyOnly:;
- (id)_updateURL:()CalAdditions withHost:port:useSSL:;
- (id)calAccountFullName;
- (id)calCalDAVChildAccounts;
- (id)calExchangeWebServicesURL;
- (id)calExternalExchangeWebServicesURL;
- (id)calHostname;
- (id)calPort;
- (id)calPrincipalURLForMainPrincipal;
- (id)calPrincipalURLForPrincipalWithUID:()CalAdditions;
- (id)calPrincipals;
- (id)calServerURL;
- (id)calSyncingAccountUsingChildAccounts:()CalAdditions;
- (id)calTopLevelAccount;
- (id)firstDifferentPropertyWithAccount:()CalAdditions;
- (id)valueForAccountPropertyKey:()CalAdditions;
- (id)valueForKey:()CalAdditions forPrincipalWithUID:;
- (uint64_t)_dataclassIsEnabled:()CalAdditions;
- (uint64_t)_useSSLForSchemeString:()CalAdditions;
- (uint64_t)calAttachmentDownloadHasTakenPlace;
- (uint64_t)calIsCalDAVAccount;
- (uint64_t)calIsDirty;
- (uint64_t)calIsEnabled;
- (uint64_t)calIsExchangeAccount;
- (uint64_t)calIsGenericCalDAVAccount;
- (uint64_t)calIsiCloudCalDAVAccount;
- (uint64_t)calLocalDataMigrationHasTakenPlace;
- (uint64_t)calPushDisabled;
- (uint64_t)calRefreshInterval;
- (uint64_t)calServerSyncHasTakenPlace;
- (uint64_t)calSkipCredentialVerification;
- (uint64_t)calSupportsPush;
- (uint64_t)calUseExternalURL;
- (uint64_t)calUseKerberos;
- (uint64_t)calUseSSL;
- (uint64_t)setCalIsEnabledForReminders:()CalAdditions;
- (uint64_t)setValue:()CalAdditions forKey:forPrincipalWithUID:;
- (void)_setCalInternalValue:()CalAdditions forAccountPropertyKey:;
- (void)_setIsEnabled:()CalAdditions forDataclass:;
- (void)addPrincipal:()CalAdditions withUID:;
- (void)calHostname;
- (void)createDictionaryForPrincipalWithUID:()CalAdditions;
- (void)removeAccountPropertyForKey:()CalAdditions;
- (void)setCalAttachmentDownloadHasTakenPlace:()CalAdditions;
- (void)setCalHostname:()CalAdditions;
- (void)setCalLocalDataMigrationHasTakenPlace:()CalAdditions;
- (void)setCalMainPrincipalUID:()CalAdditions;
- (void)setCalPort:()CalAdditions;
- (void)setCalPushDisabled:()CalAdditions;
- (void)setCalRefreshInterval:()CalAdditions;
- (void)setCalServerSyncHasTakenPlace:()CalAdditions;
- (void)setCalServerURL:()CalAdditions;
- (void)setCalSkipCredentialVerification:()CalAdditions;
- (void)setCalUseExternalURL:()CalAdditions;
- (void)setCalUseKerberos:()CalAdditions;
- (void)setCalUseSSL:()CalAdditions;
@end

@implementation ACAccount(CalAdditions)

- (BOOL)calIsMissingParentAccount
{
  authenticationType = [self authenticationType];
  if ([authenticationType isEqualToString:*MEMORY[0x1E6959AC8]])
  {
    parentAccount = [self parentAccount];
    v4 = parentAccount == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)calServerURL
{
  if ([self calIsCalDAVAccount])
  {
    calHostname = [self calHostname];
    v3 = [self _schemeStringForUseSSL:{objc_msgSend(self, "calUseSSL")}];
    calPort = [self calPort];
    if (!calPort)
    {
      calPort = [MEMORY[0x1E695DFF8] CDVDefaultPortForScheme:v3];
    }

    if ([calHostname length] && v3 && calPort)
    {
      v5 = [MEMORY[0x1E695DFF8] CDVURLWithScheme:v3 host:calHostname port:calPort path:0];

      goto LABEL_12;
    }
  }

  else if ([self calIsExchangeAccount])
  {
    v5 = [self objectForKeyedSubscript:*MEMORY[0x1E6959740]];
    goto LABEL_12;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (uint64_t)calIsCalDAVAccount
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  v3 = [identifier isEqualToString:*MEMORY[0x1E6959818]];

  return v3;
}

- (id)calHostname
{
  if ([self calIsCalDAVAccount])
  {
    calServerURL = [self valueForAccountPropertyKey:*MEMORY[0x1E6959760]];
    if (calServerURL)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v5 = +[CalFoundationLogSubsystem accounts];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [(ACAccount(CalAdditions) *)calServerURL calHostname];
        }

        v4 = 0;
        goto LABEL_12;
      }
    }

    host = calServerURL;
  }

  else
  {
    if (![self calIsExchangeAccount])
    {
      v4 = 0;
      goto LABEL_13;
    }

    calServerURL = [self calServerURL];
    host = [calServerURL host];
  }

  v4 = host;
LABEL_12:

LABEL_13:

  return v4;
}

- (uint64_t)calUseSSL
{
  if ([self calIsCalDAVAccount])
  {
    calServerURL = [self valueForAccountPropertyKey:*MEMORY[0x1E69597D0]];
    bOOLValue = [calServerURL BOOLValue];
  }

  else
  {
    if (![self calIsExchangeAccount])
    {
      return 0;
    }

    calServerURL = [self calServerURL];
    scheme = [calServerURL scheme];
    bOOLValue = [self _useSSLForSchemeString:scheme];
  }

  return bOOLValue;
}

- (id)calPort
{
  if ([self calIsCalDAVAccount])
  {
    port = [self valueForAccountPropertyKey:*MEMORY[0x1E69597A8]];
  }

  else if ([self calIsExchangeAccount])
  {
    calServerURL = [self calServerURL];
    port = [calServerURL port];
  }

  else
  {
    port = 0;
  }

  return port;
}

- (id)calPrincipals
{
  v1 = [self valueForAccountPropertyKey:@"CalDAVPrincipals"];
  v2 = v1;
  if (v1)
  {
    dictionary = v1;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
  }

  v4 = dictionary;

  return v4;
}

- (uint64_t)calIsExchangeAccount
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  v3 = [identifier isEqualToString:*MEMORY[0x1E6959840]];

  return v3;
}

- (uint64_t)calIsEnabled
{
  if ([self calIsEnabledForCalendar])
  {
    return 1;
  }

  return [self calIsEnabledForReminders];
}

- (uint64_t)calUseKerberos
{
  v1 = [self valueForAccountPropertyKey:@"kCalDAVUseKerberos"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)calRefreshInterval
{
  v1 = [self valueForAccountPropertyKey:@"kCalDAVRefreshIntervalKey"];
  v2 = v1;
  if (v1)
  {
    integerValue = [v1 integerValue];
  }

  else
  {
    integerValue = 900;
  }

  return integerValue;
}

- (uint64_t)calPushDisabled
{
  v1 = [self valueForAccountPropertyKey:@"kCalDAVPushDisabled"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (id)calCalDAVChildAccounts
{
  childAccounts = [self childAccounts];
  v2 = [childAccounts CalFilter:&__block_literal_global_34];

  return v2;
}

- (uint64_t)calIsGenericCalDAVAccount
{
  parentAccount = [self parentAccount];
  if (parentAccount)
  {
    calIsCalDAVAccount = 0;
  }

  else
  {
    calIsCalDAVAccount = [self calIsCalDAVAccount];
  }

  return calIsCalDAVAccount;
}

- (BOOL)calIsRestrictedForCalendar
{
  parentAccount = [self parentAccount];
  v3 = parentAccount;
  if (parentAccount)
  {
    selfCopy = parentAccount;
  }

  else
  {
    selfCopy = self;
  }

  v5 = selfCopy;

  accountType = [v5 accountType];

  identifier = [accountType identifier];
  v8 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  if (!v8)
  {
    return 0;
  }

  v9 = CFPreferencesCopyAppValue(@"DisableCalendariCloudSetting", @"com.apple.icloud.managed");
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = CFGetTypeID(v9);
  v12 = v11 == CFBooleanGetTypeID() && CFBooleanGetValue(v10) != 0;
  CFRelease(v10);
  return v12;
}

- (id)calAccountFullName
{
  calMainPrincipalUID = [self calMainPrincipalUID];
  v3 = [self valueForKey:@"FullName" forPrincipalWithUID:calMainPrincipalUID];

  return v3;
}

- (void)setCalHostname:()CalAdditions
{
  v4 = a3;
  if (![self calIsCalDAVAccount])
  {
    if (![self calIsExchangeAccount])
    {
      goto LABEL_10;
    }

    calServerURL = [self calServerURL];
    v6 = [self _updateURL:calServerURL withHost:v4 port:0 useSSL:0];
    [self setCalServerURL:v6];

LABEL_9:
    goto LABEL_10;
  }

  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      calServerURL = +[CalFoundationLogSubsystem defaultCategory];
      if (os_log_type_enabled(calServerURL, OS_LOG_TYPE_FAULT))
      {
        [(ACAccount(CalAdditions) *)self setCalHostname:v4, calServerURL];
      }

      goto LABEL_9;
    }
  }

  [self _setCalInternalValue:v4 forAccountPropertyKey:*MEMORY[0x1E6959760]];
LABEL_10:
}

- (uint64_t)setCalIsEnabledForReminders:()CalAdditions
{
  result = CalIsReminderBridgeEnabled();
  if ((result & 1) == 0)
  {
    v6 = *MEMORY[0x1E6959B48];

    return [self _setIsEnabled:a3 forDataclass:v6];
  }

  return result;
}

- (void)setCalMainPrincipalUID:()CalAdditions
{
  v4 = a3;
  [self _setCalInternalValue:v4 forAccountPropertyKey:@"CalDAVMainPrincipalUID"];
  [self createDictionaryForPrincipalWithUID:v4];
}

- (void)setCalPort:()CalAdditions
{
  v6 = a3;
  if ([self calIsCalDAVAccount])
  {
    [self _setCalInternalValue:v6 forAccountPropertyKey:*MEMORY[0x1E69597A8]];
  }

  else if ([self calIsExchangeAccount])
  {
    calServerURL = [self calServerURL];
    v5 = [self _updateURL:calServerURL withHost:0 port:v6 useSSL:0];
    [self setCalServerURL:v5];
  }
}

- (void)setCalPushDisabled:()CalAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _setCalInternalValue:v2 forAccountPropertyKey:@"kCalDAVPushDisabled"];
}

- (void)setCalRefreshInterval:()CalAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [self _setCalInternalValue:v2 forAccountPropertyKey:@"kCalDAVRefreshIntervalKey"];
}

- (void)setCalServerURL:()CalAdditions
{
  v7 = a3;
  if ([self calIsCalDAVAccount])
  {
    host = [v7 host];
    [self setCalHostname:host];

    port = [v7 port];
    [self setCalPort:port];

    scheme = [v7 scheme];
    [self setCalUseSSL:{objc_msgSend(self, "_useSSLForSchemeString:", scheme)}];
  }

  else if ([self calIsExchangeAccount])
  {
    [self setObject:v7 forKeyedSubscript:*MEMORY[0x1E6959740]];
  }
}

- (void)setCalUseSSL:()CalAdditions
{
  if ([self calIsCalDAVAccount])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v6 = *MEMORY[0x1E69597D0];
    calServerURL = v5;
    [self _setCalInternalValue:? forAccountPropertyKey:?];
  }

  else
  {
    if (![self calIsExchangeAccount])
    {
      return;
    }

    calServerURL = [self calServerURL];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v8 = [self _updateURL:calServerURL withHost:0 port:0 useSSL:v7];
    [self setCalServerURL:v8];
  }
}

- (uint64_t)calSupportsPush
{
  accountStore = [self accountStore];
  v3 = [accountStore isPushSupportedForAccount:self];

  return v3;
}

- (uint64_t)calLocalDataMigrationHasTakenPlace
{
  v1 = [self valueForAccountPropertyKey:@"CalAccountPropertyCalDAVLocalDataMigrationHasTakenPlace"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)calServerSyncHasTakenPlace
{
  v1 = [self valueForAccountPropertyKey:@"CalAccountPropertyCalDAVSyncHasTakenPlace"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)calAttachmentDownloadHasTakenPlace
{
  v1 = [self valueForAccountPropertyKey:@"CalAccountPropertyCalDAVAttachmentDownloadHasTakenPlace"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)calSkipCredentialVerification
{
  v1 = [self valueForAccountPropertyKey:@"CalAccountPropertyCalDAVSkipCredentialVerification"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setCalLocalDataMigrationHasTakenPlace:()CalAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _setCalInternalValue:v2 forAccountPropertyKey:@"CalAccountPropertyCalDAVLocalDataMigrationHasTakenPlace"];
}

- (void)setCalServerSyncHasTakenPlace:()CalAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _setCalInternalValue:v2 forAccountPropertyKey:@"CalAccountPropertyCalDAVSyncHasTakenPlace"];
}

- (void)setCalAttachmentDownloadHasTakenPlace:()CalAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _setCalInternalValue:v2 forAccountPropertyKey:@"CalAccountPropertyCalDAVAttachmentDownloadHasTakenPlace"];
}

- (void)setCalSkipCredentialVerification:()CalAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _setCalInternalValue:v2 forAccountPropertyKey:@"CalAccountPropertyCalDAVSkipCredentialVerification"];
}

- (void)setCalUseKerberos:()CalAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _setCalInternalValue:v2 forAccountPropertyKey:@"kCalDAVUseKerberos"];
}

- (uint64_t)calIsiCloudCalDAVAccount
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x1E6959818]];

  if (!v4)
  {
    return 0;
  }

  parentAccount = [self parentAccount];
  v6 = parentAccount;
  if (parentAccount)
  {
    accountType2 = [parentAccount accountType];
    identifier2 = [accountType2 identifier];
    v9 = [identifier2 isEqualToString:*MEMORY[0x1E69597F8]];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)calExchangeWebServicesURL
{
  calServerURL = [self calServerURL];
  v3 = [self _createExchangeWebServicesURLFromURL:calServerURL];

  return v3;
}

- (id)calExternalExchangeWebServicesURL
{
  calExternalURL = [self calExternalURL];
  v3 = [self _createExchangeWebServicesURLFromURL:calExternalURL];

  return v3;
}

- (uint64_t)calIsDirty
{
  if ([self isDirty])
  {
    return 1;
  }

  dirtyAccountProperties = [self dirtyAccountProperties];
  v2 = [dirtyAccountProperties count] != 0;

  return v2;
}

- (uint64_t)calUseExternalURL
{
  v1 = [self valueForAccountPropertyKey:@"CalAccountPropertyExchangeUseExternalURL"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setCalUseExternalURL:()CalAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _setCalInternalValue:v2 forAccountPropertyKey:@"CalAccountPropertyExchangeUseExternalURL"];
}

- (void)addPrincipal:()CalAdditions withUID:
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && [v7 length])
  {
    v9 = MEMORY[0x1E695DF90];
    calPrincipals = [self calPrincipals];
    v11 = [v9 dictionaryWithDictionary:calPrincipals];

    [v11 setObject:v6 forKeyedSubscript:v8];
    [self setCalPrincipals:v11];
  }

  else
  {
    v12 = +[CalFoundationLogSubsystem accounts];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ACAccount(CalAdditions) addPrincipal:withUID:];
    }
  }
}

- (id)calPrincipalURLForMainPrincipal
{
  calMainPrincipalUID = [self calMainPrincipalUID];
  v3 = [self calPrincipalURLForPrincipalWithUID:calMainPrincipalUID];

  return v3;
}

- (id)calPrincipalURLForPrincipalWithUID:()CalAdditions
{
  v4 = [self valueForKey:@"PrincipalPath" forPrincipalWithUID:a3];
  calServerURL = [self calServerURL];
  if (calServerURL && [v4 length])
  {
    v6 = [calServerURL CDVURLWithPath:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)createDictionaryForPrincipalWithUID:()CalAdditions
{
  v6 = a3;
  calPrincipals = [self calPrincipals];
  v5 = [calPrincipals objectForKeyedSubscript:v6];

  if (!v5)
  {
    [self addPrincipal:MEMORY[0x1E695E0F8] withUID:v6];
  }
}

- (id)firstDifferentPropertyWithAccount:()CalAdditions
{
  v3 = [self _diffWithAccount:a3 firstPropertyOnly:1];
  anyObject = [v3 anyObject];

  return anyObject;
}

- (void)removeAccountPropertyForKey:()CalAdditions
{
  v12 = a3;
  if (([self calIsExchangeAccount] & 1) != 0 || (objc_msgSend(self, "_calDAVDataclassProperties"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "containsObject:", v12), v4, v5))
  {
    v6 = *MEMORY[0x1E6959AE0];
    v7 = [self propertiesForDataclass:*MEMORY[0x1E6959AE0]];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0x1E695DF90];
      v10 = [self propertiesForDataclass:v6];
      v11 = [v9 dictionaryWithDictionary:v10];

      if (v11)
      {
        [v11 removeObjectForKey:v12];
        [self setProperties:v11 forDataclass:v6];
      }
    }
  }

  else if ([self calIsCalDAVAccount])
  {
    [self setObject:0 forKeyedSubscript:v12];
  }
}

- (BOOL)removePrincipalWithUID:()CalAdditions
{
  v4 = a3;
  calPrincipals = [self calPrincipals];
  v6 = [calPrincipals objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = MEMORY[0x1E695DF90];
    calPrincipals2 = [self calPrincipals];
    v9 = [v7 dictionaryWithDictionary:calPrincipals2];

    [v9 removeObjectForKey:v4];
    [self setCalPrincipals:v9];
  }

  return v6 != 0;
}

- (uint64_t)setValue:()CalAdditions forKey:forPrincipalWithUID:
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 length])
  {
    v11 = [self valueForKey:v9 forPrincipalWithUID:v10];
    v12 = [v11 isEqual:v8];

    if (!v12)
    {
      [self createDictionaryForPrincipalWithUID:v10];
      v15 = MEMORY[0x1E695DF90];
      calPrincipals = [self calPrincipals];
      v17 = [calPrincipals objectForKeyedSubscript:v10];
      v18 = [v15 dictionaryWithDictionary:v17];

      [v18 setObject:v8 forKeyedSubscript:v9];
      [self addPrincipal:v18 withUID:v10];

      v14 = 1;
      goto LABEL_9;
    }

    v13 = +[CalFoundationLogSubsystem accounts];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412802;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1B990D000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to set %@ on principal with UID %@ by using its current value. This is a no-op change, and we won't dirty the account by making it. %@", &v21, 0x20u);
    }
  }

  else
  {
    v13 = +[CalFoundationLogSubsystem accounts];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412802;
      v22 = v8;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      selfCopy2 = self;
      _os_log_error_impl(&dword_1B990D000, v13, OS_LOG_TYPE_ERROR, "Attempting to set %@ on principal with UID %@ by using a nil key. %@", &v21, 0x20u);
    }
  }

  v14 = 0;
LABEL_9:

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)valueForAccountPropertyKey:()CalAdditions
{
  v4 = a3;
  if (([self calIsExchangeAccount] & 1) != 0 || (objc_msgSend(self, "_calDAVDataclassProperties"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", v4), v5, v6))
  {
    v7 = [self propertiesForDataclass:*MEMORY[0x1E6959AE0]];
    v8 = [v7 objectForKeyedSubscript:v4];
  }

  else if ([self calIsCalDAVAccount])
  {
    v8 = [self objectForKeyedSubscript:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)valueForKey:()CalAdditions forPrincipalWithUID:
{
  v6 = a4;
  v7 = a3;
  calPrincipals = [self calPrincipals];
  v9 = [calPrincipals objectForKeyedSubscript:v6];

  v10 = [v9 objectForKeyedSubscript:v7];

  return v10;
}

- (id)calSyncingAccountUsingChildAccounts:()CalAdditions
{
  v26 = *MEMORY[0x1E69E9840];
  childAccounts = a3;
  accountType = [self accountType];
  syncableDataclasses = [accountType syncableDataclasses];
  v7 = *MEMORY[0x1E6959AE0];
  v8 = [syncableDataclasses containsObject:*MEMORY[0x1E6959AE0]];

  if (v8)
  {
    selfCopy = self;
  }

  else
  {
    if (!childAccounts)
    {
      childAccounts = [self childAccounts];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    childAccounts = childAccounts;
    v10 = [childAccounts countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(childAccounts);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          accountType2 = [v14 accountType];
          syncableDataclasses2 = [accountType2 syncableDataclasses];
          v17 = [syncableDataclasses2 containsObject:v7];

          if (v17)
          {
            selfCopy = v14;

            goto LABEL_17;
          }
        }

        v11 = [childAccounts countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v18 = +[CalFoundationLogSubsystem accounts];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ACAccount(CalAdditions) calSyncingAccountUsingChildAccounts:self];
    }

    selfCopy = 0;
  }

LABEL_17:

  v19 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (id)_accountPropertiesKeys
{
  if ([self calIsCalDAVAccount])
  {
    v2 = MEMORY[0x1E695DF70];
    _calDAVDataclassProperties = [self _calDAVDataclassProperties];
    allObjects = [_calDAVDataclassProperties allObjects];
    allKeys2 = [v2 arrayWithArray:allObjects];

    accountProperties = [self accountProperties];
    allKeys = [accountProperties allKeys];
    [allKeys2 addObjectsFromArray:allKeys];
  }

  else
  {
    if (![self calIsExchangeAccount])
    {
      goto LABEL_7;
    }

    accountProperties = [self propertiesForDataclass:*MEMORY[0x1E6959AE0]];
    allKeys2 = [accountProperties allKeys];
  }

  if (allKeys2)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithArray:allKeys2];

    goto LABEL_8;
  }

LABEL_7:
  v8 = 0;
LABEL_8:

  return v8;
}

- (id)_createExchangeWebServicesURLFromURL:()CalAdditions
{
  v4 = a3;
  user = [v4 user];
  if ([user length])
  {
    goto LABEL_2;
  }

  username = [self username];
  v9 = [username length];

  v6 = v4;
  if (v9)
  {
    user = [v4 resourceSpecifier];
    if ([user hasPrefix:@"//"])
    {
      scheme = [v4 scheme];
      username2 = [self username];
      uRLUserAllowedCharacterSet = [MEMORY[0x1E696AB08] URLUserAllowedCharacterSet];
      v13 = [username2 stringByAddingPercentEncodingWithAllowedCharacters:uRLUserAllowedCharacterSet];

      v14 = [user substringFromIndex:2];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@@%@", scheme, v13, v14];
      v6 = [MEMORY[0x1E695DFF8] URLWithString:v15];

      goto LABEL_3;
    }

LABEL_2:
    v6 = v4;
LABEL_3:
  }

  return v6;
}

- (uint64_t)_dataclassIsEnabled:()CalAdditions
{
  v4 = a3;
  parentAccount = [self parentAccount];
  if (parentAccount)
  {
    parentAccount2 = [self parentAccount];
    enabledDataclasses = [parentAccount2 enabledDataclasses];
  }

  else
  {
    enabledDataclasses = [self enabledDataclasses];
  }

  v8 = [enabledDataclasses containsObject:v4];
  return v8;
}

- (id)_diffWithAccount:()CalAdditions firstPropertyOnly:
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = [self _diffAccountPropertiesWithAccount:v6 firstPropertyOnly:a4];
  [v7 unionSet:v8];

  if (![v7 count] || (a4 & 1) == 0)
  {
    v9 = [self _diffPropertiesWithAccount:v6 firstPropertyOnly:a4];
    [v7 unionSet:v9];
  }

  return v7;
}

- (id)_diffAccountPropertiesWithAccount:()CalAdditions firstPropertyOnly:
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v20 = [MEMORY[0x1E695DFA8] set];
  v7 = [MEMORY[0x1E695DFA8] set];
  _accountPropertiesKeys = [self _accountPropertiesKeys];
  [v7 unionSet:_accountPropertiesKeys];

  _accountPropertiesKeys2 = [v6 _accountPropertiesKeys];
  [v7 unionSet:_accountPropertiesKeys2];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [self valueForAccountPropertyKey:v15];
        v17 = [v6 valueForAccountPropertyKey:v15];
        if (v16 | v17)
        {
          if (([v16 isEqual:v17] & 1) == 0)
          {
            [v20 addObject:v15];
            if (a4)
            {

              goto LABEL_13;
            }
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v18 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_diffPropertiesWithAccount:()CalAdditions firstPropertyOnly:
{
  v7 = a3;
  v8 = [MEMORY[0x1E695DFA8] set];
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__ACAccount_CalAdditions___diffPropertiesWithAccount_firstPropertyOnly___block_invoke;
  aBlock[3] = &unk_1E7EC76E8;
  v59 = &v61;
  v9 = v8;
  v58 = v9;
  v60 = a4;
  v10 = _Block_copy(aBlock);
  if (*(v62 + 24) == 1)
  {
    accountDescription = [self accountDescription];
    if (accountDescription || ([v7 accountDescription], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      accountDescription2 = [self accountDescription];
      accountDescription3 = [v7 accountDescription];
      v14 = [accountDescription2 isEqual:accountDescription3];

      if (accountDescription)
      {

        if (v14)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      if ((v14 & 1) == 0)
      {
LABEL_8:
        [v9 addObject:@"accountDescription"];
        v10[2](v10);
      }
    }
  }

LABEL_9:
  if (*(v62 + 24) == 1)
  {
    isActive = [self isActive];
    if (isActive != [v7 isActive])
    {
      [v9 addObject:@"active"];
      v10[2](v10);
    }
  }

  if (*(v62 + 24) == 1)
  {
    isAuthenticated = [self isAuthenticated];
    if (isAuthenticated != [v7 isAuthenticated])
    {
      [v9 addObject:@"authenticated"];
      v10[2](v10);
    }
  }

  if (*(v62 + 24) == 1)
  {
    credential = [self credential];
    if (credential || ([v7 credential], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      credential2 = [self credential];
      credential3 = [v7 credential];
      v20 = [credential2 isEqual:credential3];

      if (credential)
      {

        if (v20)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if ((v20 & 1) == 0)
      {
LABEL_22:
        [v9 addObject:@"credential"];
        v10[2](v10);
      }
    }
  }

LABEL_23:
  if (*(v62 + 24) == 1)
  {
    enabledDataclasses = [self enabledDataclasses];
    if (enabledDataclasses || ([v7 enabledDataclasses], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      enabledDataclasses2 = [self enabledDataclasses];
      enabledDataclasses3 = [v7 enabledDataclasses];
      v24 = [enabledDataclasses2 isEqual:enabledDataclasses3];

      if (enabledDataclasses)
      {

        if (v24)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if ((v24 & 1) == 0)
      {
LABEL_30:
        [v9 addObject:@"enabledDataclasses"];
        v10[2](v10);
      }
    }
  }

LABEL_31:
  if (*(v62 + 24) == 1)
  {
    provisionedDataclasses = [self provisionedDataclasses];
    if (provisionedDataclasses || ([v7 provisionedDataclasses], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      provisionedDataclasses2 = [self provisionedDataclasses];
      provisionedDataclasses3 = [v7 provisionedDataclasses];
      v28 = [provisionedDataclasses2 isEqual:provisionedDataclasses3];

      if (provisionedDataclasses)
      {

        if (v28)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      if ((v28 & 1) == 0)
      {
LABEL_38:
        [v9 addObject:@"provisionedDataclasses"];
        v10[2](v10);
      }
    }
  }

LABEL_39:
  if (*(v62 + 24) == 1)
  {
    username = [self username];
    if (username || ([v7 username], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      username2 = [self username];
      username3 = [v7 username];
      v32 = [username2 isEqual:username3];

      if (username)
      {

        if (v32)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if ((v32 & 1) == 0)
      {
LABEL_46:
        [v9 addObject:@"username"];
        v10[2](v10);
      }
    }
  }

LABEL_47:
  if (*(v62 + 24) == 1)
  {
    isVisible = [self isVisible];
    if (isVisible != [v7 isVisible])
    {
      [v9 addObject:@"visible"];
      v10[2](v10);
    }
  }

  if (*(v62 + 24) == 1)
  {
    accountType = [self accountType];
    if (accountType || ([v7 accountType], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      accountType2 = [self accountType];
      accountType3 = [v7 accountType];
      v37 = [accountType2 isEqual:accountType3];

      if (accountType)
      {

        if (v37)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }

      if ((v37 & 1) == 0)
      {
LABEL_57:
        [v9 addObject:@"accountType"];
        v10[2](v10);
      }
    }
  }

LABEL_58:
  if (*(v62 + 24) == 1)
  {
    creationDate = [self creationDate];
    if (creationDate || ([v7 creationDate], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      creationDate2 = [self creationDate];
      creationDate3 = [v7 creationDate];
      v41 = [creationDate2 isEqual:creationDate3];

      if (creationDate)
      {

        if (v41)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      }

      if ((v41 & 1) == 0)
      {
LABEL_65:
        [v9 addObject:@"creationDate"];
        v10[2](v10);
      }
    }
  }

LABEL_66:
  if (*(v62 + 24) == 1)
  {
    identifier = [self identifier];
    if (identifier || ([v7 identifier], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      identifier2 = [self identifier];
      identifier3 = [v7 identifier];
      v45 = [identifier2 isEqual:identifier3];

      if (identifier)
      {

        if (v45)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      if ((v45 & 1) == 0)
      {
LABEL_73:
        [v9 addObject:@"identifier"];
        v10[2](v10);
      }
    }
  }

LABEL_74:
  if (*(v62 + 24) == 1)
  {
    owningBundleID = [self owningBundleID];
    if (owningBundleID || ([v7 owningBundleID], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      owningBundleID2 = [self owningBundleID];
      owningBundleID3 = [v7 owningBundleID];
      v49 = [owningBundleID2 isEqual:owningBundleID3];

      if (owningBundleID)
      {

        if (v49)
        {
          goto LABEL_82;
        }

        goto LABEL_81;
      }

      if ((v49 & 1) == 0)
      {
LABEL_81:
        [v9 addObject:@"owningBundleID"];
        v10[2](v10);
      }
    }
  }

LABEL_82:
  if (*(v62 + 24) == 1)
  {
    parentAccountIdentifier = [self parentAccountIdentifier];
    if (parentAccountIdentifier || ([v7 parentAccountIdentifier], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      parentAccountIdentifier2 = [self parentAccountIdentifier];
      parentAccountIdentifier3 = [v7 parentAccountIdentifier];
      v53 = [parentAccountIdentifier2 isEqual:parentAccountIdentifier3];

      if (parentAccountIdentifier)
      {

        if (v53)
        {
          goto LABEL_90;
        }

        goto LABEL_89;
      }

      if ((v53 & 1) == 0)
      {
LABEL_89:
        [v9 addObject:@"parentAccountIdentifier"];
        v10[2](v10);
      }
    }
  }

LABEL_90:
  if (*(v62 + 24) == 1)
  {
    supportsAuthentication = [self supportsAuthentication];
    if (supportsAuthentication != [v7 supportsAuthentication])
    {
      [v9 addObject:@"supportsAuthentication"];
      v10[2](v10);
    }
  }

  v55 = v9;

  _Block_object_dispose(&v61, 8);

  return v55;
}

- (__CFString)_schemeStringForUseSSL:()CalAdditions
{
  if (a3)
  {
    return @"https";
  }

  else
  {
    return @"http";
  }
}

- (void)_setIsEnabled:()CalAdditions forDataclass:
{
  v6 = a4;
  parentAccount = [self parentAccount];

  if (parentAccount)
  {
    v8 = +[CalFoundationLogSubsystem accounts];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ACAccount(CalAdditions) *)v6 _setIsEnabled:self forDataclass:v8];
    }
  }

  else if ([self _dataclassIsEnabled:v6] != a3)
  {
    [self setEnabled:a3 forDataclass:v6];
  }
}

- (void)_setCalInternalValue:()CalAdditions forAccountPropertyKey:
{
  v22 = a3;
  v6 = a4;
  if (v22)
  {
    if (([self calIsExchangeAccount] & 1) != 0 || (objc_msgSend(self, "_calDAVDataclassProperties"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", v6), v7, v8))
    {
      v9 = *MEMORY[0x1E6959AE0];
      v10 = [self propertiesForDataclass:*MEMORY[0x1E6959AE0]];
      v11 = MEMORY[0x1E695DF90];
      if (v10)
      {
        v12 = [self propertiesForDataclass:v9];
        dictionary = [v11 dictionaryWithDictionary:v12];
      }

      else
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
      }

      v14 = [dictionary objectForKeyedSubscript:v6];
      if (!v14 || (v15 = v14, [dictionary objectForKeyedSubscript:v6], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqual:", v22), v16, v15, (v17 & 1) == 0))
      {
        [dictionary setObject:v22 forKeyedSubscript:v6];
        [self setProperties:dictionary forDataclass:v9];
      }
    }

    else if ([self calIsCalDAVAccount])
    {
      v18 = [self objectForKeyedSubscript:v6];
      if (!v18 || (v19 = v18, [self objectForKeyedSubscript:v6], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqual:", v22), v20, v19, (v21 & 1) == 0))
      {
        [self setObject:v22 forKeyedSubscript:v6];
      }
    }
  }

  else
  {
    [self removeAccountPropertyForKey:v6];
  }
}

- (id)_calDAVDataclassProperties
{
  if (_calDAVDataclassProperties_onceToken != -1)
  {
    [ACAccount(CalAdditions) _calDAVDataclassProperties];
  }

  v1 = _calDAVDataclassProperties_calDAVDataclassProperties;

  return v1;
}

- (id)_updateURL:()CalAdditions withHost:port:useSSL:
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E696AF20] componentsWithURL:a3 resolvingAgainstBaseURL:0];
  v14 = v13;
  if (v10)
  {
    [v13 setHost:v10];
  }

  if (v11)
  {
    [v14 setPort:v11];
  }

  if (v12)
  {
    v15 = [self _schemeStringForUseSSL:{objc_msgSend(v12, "BOOLValue")}];
    [v14 setScheme:v15];
  }

  v16 = [v14 URL];

  return v16;
}

- (uint64_t)_useSSLForSchemeString:()CalAdditions
{
  lowercaseString = [a3 lowercaseString];
  v4 = [lowercaseString isEqualToString:@"https"];

  return v4;
}

- (id)calTopLevelAccount
{
  selfCopy = self;
  parentAccount = [selfCopy parentAccount];

  if (parentAccount)
  {
    do
    {
      parentAccount2 = [selfCopy parentAccount];

      v3ParentAccount = [parentAccount2 parentAccount];

      selfCopy = parentAccount2;
    }

    while (v3ParentAccount);
  }

  else
  {
    parentAccount2 = selfCopy;
  }

  return parentAccount2;
}

- (void)calHostname
{
  v9 = *MEMORY[0x1E69E9840];
  identifier = [a2 identifier];
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setCalHostname:()CalAdditions .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 identifier];
  objc_opt_class();
  OUTLINED_FUNCTION_1_5();
  v9 = 2114;
  v10 = v5;
  v6 = v5;
  _os_log_fault_impl(&dword_1B990D000, a3, OS_LOG_TYPE_FAULT, "Ignoring attempt to set Hostname for account %{public}@ to something that's not a string (%@, which is a %{public}@)", v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)addPrincipal:()CalAdditions withUID:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)calSyncingAccountUsingChildAccounts:()CalAdditions .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 identifier];
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_setIsEnabled:()CalAdditions forDataclass:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B990D000, log, OS_LOG_TYPE_ERROR, "Attempting to enable/disable %@ on a child account %@.", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end