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
  v2 = [a1 authenticationType];
  if ([v2 isEqualToString:*MEMORY[0x1E6959AC8]])
  {
    v3 = [a1 parentAccount];
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)calServerURL
{
  if ([a1 calIsCalDAVAccount])
  {
    v2 = [a1 calHostname];
    v3 = [a1 _schemeStringForUseSSL:{objc_msgSend(a1, "calUseSSL")}];
    v4 = [a1 calPort];
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DFF8] CDVDefaultPortForScheme:v3];
    }

    if ([v2 length] && v3 && v4)
    {
      v5 = [MEMORY[0x1E695DFF8] CDVURLWithScheme:v3 host:v2 port:v4 path:0];

      goto LABEL_12;
    }
  }

  else if ([a1 calIsExchangeAccount])
  {
    v5 = [a1 objectForKeyedSubscript:*MEMORY[0x1E6959740]];
    goto LABEL_12;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (uint64_t)calIsCalDAVAccount
{
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  v3 = [v2 isEqualToString:*MEMORY[0x1E6959818]];

  return v3;
}

- (id)calHostname
{
  if ([a1 calIsCalDAVAccount])
  {
    v2 = [a1 valueForAccountPropertyKey:*MEMORY[0x1E6959760]];
    if (v2)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v5 = +[CalFoundationLogSubsystem accounts];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [(ACAccount(CalAdditions) *)v2 calHostname];
        }

        v4 = 0;
        goto LABEL_12;
      }
    }

    v3 = v2;
  }

  else
  {
    if (![a1 calIsExchangeAccount])
    {
      v4 = 0;
      goto LABEL_13;
    }

    v2 = [a1 calServerURL];
    v3 = [v2 host];
  }

  v4 = v3;
LABEL_12:

LABEL_13:

  return v4;
}

- (uint64_t)calUseSSL
{
  if ([a1 calIsCalDAVAccount])
  {
    v2 = [a1 valueForAccountPropertyKey:*MEMORY[0x1E69597D0]];
    v3 = [v2 BOOLValue];
  }

  else
  {
    if (![a1 calIsExchangeAccount])
    {
      return 0;
    }

    v2 = [a1 calServerURL];
    v4 = [v2 scheme];
    v3 = [a1 _useSSLForSchemeString:v4];
  }

  return v3;
}

- (id)calPort
{
  if ([a1 calIsCalDAVAccount])
  {
    v2 = [a1 valueForAccountPropertyKey:*MEMORY[0x1E69597A8]];
  }

  else if ([a1 calIsExchangeAccount])
  {
    v3 = [a1 calServerURL];
    v2 = [v3 port];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)calPrincipals
{
  v1 = [a1 valueForAccountPropertyKey:@"CalDAVPrincipals"];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E695DF20] dictionary];
  }

  v4 = v3;

  return v4;
}

- (uint64_t)calIsExchangeAccount
{
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  v3 = [v2 isEqualToString:*MEMORY[0x1E6959840]];

  return v3;
}

- (uint64_t)calIsEnabled
{
  if ([a1 calIsEnabledForCalendar])
  {
    return 1;
  }

  return [a1 calIsEnabledForReminders];
}

- (uint64_t)calUseKerberos
{
  v1 = [a1 valueForAccountPropertyKey:@"kCalDAVUseKerberos"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)calRefreshInterval
{
  v1 = [a1 valueForAccountPropertyKey:@"kCalDAVRefreshIntervalKey"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 900;
  }

  return v3;
}

- (uint64_t)calPushDisabled
{
  v1 = [a1 valueForAccountPropertyKey:@"kCalDAVPushDisabled"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (id)calCalDAVChildAccounts
{
  v1 = [a1 childAccounts];
  v2 = [v1 CalFilter:&__block_literal_global_34];

  return v2;
}

- (uint64_t)calIsGenericCalDAVAccount
{
  v2 = [a1 parentAccount];
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [a1 calIsCalDAVAccount];
  }

  return v3;
}

- (BOOL)calIsRestrictedForCalendar
{
  v2 = [a1 parentAccount];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = a1;
  }

  v5 = v4;

  v6 = [v5 accountType];

  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:*MEMORY[0x1E69597F8]];

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
  v2 = [a1 calMainPrincipalUID];
  v3 = [a1 valueForKey:@"FullName" forPrincipalWithUID:v2];

  return v3;
}

- (void)setCalHostname:()CalAdditions
{
  v4 = a3;
  if (![a1 calIsCalDAVAccount])
  {
    if (![a1 calIsExchangeAccount])
    {
      goto LABEL_10;
    }

    v5 = [a1 calServerURL];
    v6 = [a1 _updateURL:v5 withHost:v4 port:0 useSSL:0];
    [a1 setCalServerURL:v6];

LABEL_9:
    goto LABEL_10;
  }

  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = +[CalFoundationLogSubsystem defaultCategory];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ACAccount(CalAdditions) *)a1 setCalHostname:v4, v5];
      }

      goto LABEL_9;
    }
  }

  [a1 _setCalInternalValue:v4 forAccountPropertyKey:*MEMORY[0x1E6959760]];
LABEL_10:
}

- (uint64_t)setCalIsEnabledForReminders:()CalAdditions
{
  result = CalIsReminderBridgeEnabled();
  if ((result & 1) == 0)
  {
    v6 = *MEMORY[0x1E6959B48];

    return [a1 _setIsEnabled:a3 forDataclass:v6];
  }

  return result;
}

- (void)setCalMainPrincipalUID:()CalAdditions
{
  v4 = a3;
  [a1 _setCalInternalValue:v4 forAccountPropertyKey:@"CalDAVMainPrincipalUID"];
  [a1 createDictionaryForPrincipalWithUID:v4];
}

- (void)setCalPort:()CalAdditions
{
  v6 = a3;
  if ([a1 calIsCalDAVAccount])
  {
    [a1 _setCalInternalValue:v6 forAccountPropertyKey:*MEMORY[0x1E69597A8]];
  }

  else if ([a1 calIsExchangeAccount])
  {
    v4 = [a1 calServerURL];
    v5 = [a1 _updateURL:v4 withHost:0 port:v6 useSSL:0];
    [a1 setCalServerURL:v5];
  }
}

- (void)setCalPushDisabled:()CalAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _setCalInternalValue:v2 forAccountPropertyKey:@"kCalDAVPushDisabled"];
}

- (void)setCalRefreshInterval:()CalAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [a1 _setCalInternalValue:v2 forAccountPropertyKey:@"kCalDAVRefreshIntervalKey"];
}

- (void)setCalServerURL:()CalAdditions
{
  v7 = a3;
  if ([a1 calIsCalDAVAccount])
  {
    v4 = [v7 host];
    [a1 setCalHostname:v4];

    v5 = [v7 port];
    [a1 setCalPort:v5];

    v6 = [v7 scheme];
    [a1 setCalUseSSL:{objc_msgSend(a1, "_useSSLForSchemeString:", v6)}];
  }

  else if ([a1 calIsExchangeAccount])
  {
    [a1 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6959740]];
  }
}

- (void)setCalUseSSL:()CalAdditions
{
  if ([a1 calIsCalDAVAccount])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v6 = *MEMORY[0x1E69597D0];
    v9 = v5;
    [a1 _setCalInternalValue:? forAccountPropertyKey:?];
  }

  else
  {
    if (![a1 calIsExchangeAccount])
    {
      return;
    }

    v9 = [a1 calServerURL];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v8 = [a1 _updateURL:v9 withHost:0 port:0 useSSL:v7];
    [a1 setCalServerURL:v8];
  }
}

- (uint64_t)calSupportsPush
{
  v2 = [a1 accountStore];
  v3 = [v2 isPushSupportedForAccount:a1];

  return v3;
}

- (uint64_t)calLocalDataMigrationHasTakenPlace
{
  v1 = [a1 valueForAccountPropertyKey:@"CalAccountPropertyCalDAVLocalDataMigrationHasTakenPlace"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)calServerSyncHasTakenPlace
{
  v1 = [a1 valueForAccountPropertyKey:@"CalAccountPropertyCalDAVSyncHasTakenPlace"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)calAttachmentDownloadHasTakenPlace
{
  v1 = [a1 valueForAccountPropertyKey:@"CalAccountPropertyCalDAVAttachmentDownloadHasTakenPlace"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)calSkipCredentialVerification
{
  v1 = [a1 valueForAccountPropertyKey:@"CalAccountPropertyCalDAVSkipCredentialVerification"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setCalLocalDataMigrationHasTakenPlace:()CalAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _setCalInternalValue:v2 forAccountPropertyKey:@"CalAccountPropertyCalDAVLocalDataMigrationHasTakenPlace"];
}

- (void)setCalServerSyncHasTakenPlace:()CalAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _setCalInternalValue:v2 forAccountPropertyKey:@"CalAccountPropertyCalDAVSyncHasTakenPlace"];
}

- (void)setCalAttachmentDownloadHasTakenPlace:()CalAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _setCalInternalValue:v2 forAccountPropertyKey:@"CalAccountPropertyCalDAVAttachmentDownloadHasTakenPlace"];
}

- (void)setCalSkipCredentialVerification:()CalAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _setCalInternalValue:v2 forAccountPropertyKey:@"CalAccountPropertyCalDAVSkipCredentialVerification"];
}

- (void)setCalUseKerberos:()CalAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _setCalInternalValue:v2 forAccountPropertyKey:@"kCalDAVUseKerberos"];
}

- (uint64_t)calIsiCloudCalDAVAccount
{
  v2 = [a1 accountType];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x1E6959818]];

  if (!v4)
  {
    return 0;
  }

  v5 = [a1 parentAccount];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 accountType];
    v8 = [v7 identifier];
    v9 = [v8 isEqualToString:*MEMORY[0x1E69597F8]];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)calExchangeWebServicesURL
{
  v2 = [a1 calServerURL];
  v3 = [a1 _createExchangeWebServicesURLFromURL:v2];

  return v3;
}

- (id)calExternalExchangeWebServicesURL
{
  v2 = [a1 calExternalURL];
  v3 = [a1 _createExchangeWebServicesURLFromURL:v2];

  return v3;
}

- (uint64_t)calIsDirty
{
  if ([a1 isDirty])
  {
    return 1;
  }

  v3 = [a1 dirtyAccountProperties];
  v2 = [v3 count] != 0;

  return v2;
}

- (uint64_t)calUseExternalURL
{
  v1 = [a1 valueForAccountPropertyKey:@"CalAccountPropertyExchangeUseExternalURL"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setCalUseExternalURL:()CalAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _setCalInternalValue:v2 forAccountPropertyKey:@"CalAccountPropertyExchangeUseExternalURL"];
}

- (void)addPrincipal:()CalAdditions withUID:
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && [v7 length])
  {
    v9 = MEMORY[0x1E695DF90];
    v10 = [a1 calPrincipals];
    v11 = [v9 dictionaryWithDictionary:v10];

    [v11 setObject:v6 forKeyedSubscript:v8];
    [a1 setCalPrincipals:v11];
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
  v2 = [a1 calMainPrincipalUID];
  v3 = [a1 calPrincipalURLForPrincipalWithUID:v2];

  return v3;
}

- (id)calPrincipalURLForPrincipalWithUID:()CalAdditions
{
  v4 = [a1 valueForKey:@"PrincipalPath" forPrincipalWithUID:a3];
  v5 = [a1 calServerURL];
  if (v5 && [v4 length])
  {
    v6 = [v5 CDVURLWithPath:v4];
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
  v4 = [a1 calPrincipals];
  v5 = [v4 objectForKeyedSubscript:v6];

  if (!v5)
  {
    [a1 addPrincipal:MEMORY[0x1E695E0F8] withUID:v6];
  }
}

- (id)firstDifferentPropertyWithAccount:()CalAdditions
{
  v3 = [a1 _diffWithAccount:a3 firstPropertyOnly:1];
  v4 = [v3 anyObject];

  return v4;
}

- (void)removeAccountPropertyForKey:()CalAdditions
{
  v12 = a3;
  if (([a1 calIsExchangeAccount] & 1) != 0 || (objc_msgSend(a1, "_calDAVDataclassProperties"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "containsObject:", v12), v4, v5))
  {
    v6 = *MEMORY[0x1E6959AE0];
    v7 = [a1 propertiesForDataclass:*MEMORY[0x1E6959AE0]];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0x1E695DF90];
      v10 = [a1 propertiesForDataclass:v6];
      v11 = [v9 dictionaryWithDictionary:v10];

      if (v11)
      {
        [v11 removeObjectForKey:v12];
        [a1 setProperties:v11 forDataclass:v6];
      }
    }
  }

  else if ([a1 calIsCalDAVAccount])
  {
    [a1 setObject:0 forKeyedSubscript:v12];
  }
}

- (BOOL)removePrincipalWithUID:()CalAdditions
{
  v4 = a3;
  v5 = [a1 calPrincipals];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = MEMORY[0x1E695DF90];
    v8 = [a1 calPrincipals];
    v9 = [v7 dictionaryWithDictionary:v8];

    [v9 removeObjectForKey:v4];
    [a1 setCalPrincipals:v9];
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
    v11 = [a1 valueForKey:v9 forPrincipalWithUID:v10];
    v12 = [v11 isEqual:v8];

    if (!v12)
    {
      [a1 createDictionaryForPrincipalWithUID:v10];
      v15 = MEMORY[0x1E695DF90];
      v16 = [a1 calPrincipals];
      v17 = [v16 objectForKeyedSubscript:v10];
      v18 = [v15 dictionaryWithDictionary:v17];

      [v18 setObject:v8 forKeyedSubscript:v9];
      [a1 addPrincipal:v18 withUID:v10];

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
      v26 = a1;
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
      v26 = a1;
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
  if (([a1 calIsExchangeAccount] & 1) != 0 || (objc_msgSend(a1, "_calDAVDataclassProperties"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", v4), v5, v6))
  {
    v7 = [a1 propertiesForDataclass:*MEMORY[0x1E6959AE0]];
    v8 = [v7 objectForKeyedSubscript:v4];
  }

  else if ([a1 calIsCalDAVAccount])
  {
    v8 = [a1 objectForKeyedSubscript:v4];
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
  v8 = [a1 calPrincipals];
  v9 = [v8 objectForKeyedSubscript:v6];

  v10 = [v9 objectForKeyedSubscript:v7];

  return v10;
}

- (id)calSyncingAccountUsingChildAccounts:()CalAdditions
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 accountType];
  v6 = [v5 syncableDataclasses];
  v7 = *MEMORY[0x1E6959AE0];
  v8 = [v6 containsObject:*MEMORY[0x1E6959AE0]];

  if (v8)
  {
    v9 = a1;
  }

  else
  {
    if (!v4)
    {
      v4 = [a1 childAccounts];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = v4;
    v10 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v4);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v14 accountType];
          v16 = [v15 syncableDataclasses];
          v17 = [v16 containsObject:v7];

          if (v17)
          {
            v9 = v14;

            goto LABEL_17;
          }
        }

        v11 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
      [ACAccount(CalAdditions) calSyncingAccountUsingChildAccounts:a1];
    }

    v9 = 0;
  }

LABEL_17:

  v19 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_accountPropertiesKeys
{
  if ([a1 calIsCalDAVAccount])
  {
    v2 = MEMORY[0x1E695DF70];
    v3 = [a1 _calDAVDataclassProperties];
    v4 = [v3 allObjects];
    v5 = [v2 arrayWithArray:v4];

    v6 = [a1 accountProperties];
    v7 = [v6 allKeys];
    [v5 addObjectsFromArray:v7];
  }

  else
  {
    if (![a1 calIsExchangeAccount])
    {
      goto LABEL_7;
    }

    v6 = [a1 propertiesForDataclass:*MEMORY[0x1E6959AE0]];
    v5 = [v6 allKeys];
  }

  if (v5)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithArray:v5];

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
  v5 = [v4 user];
  if ([v5 length])
  {
    goto LABEL_2;
  }

  v8 = [a1 username];
  v9 = [v8 length];

  v6 = v4;
  if (v9)
  {
    v5 = [v4 resourceSpecifier];
    if ([v5 hasPrefix:@"//"])
    {
      v10 = [v4 scheme];
      v11 = [a1 username];
      v12 = [MEMORY[0x1E696AB08] URLUserAllowedCharacterSet];
      v13 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:v12];

      v14 = [v5 substringFromIndex:2];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@@%@", v10, v13, v14];
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
  v5 = [a1 parentAccount];
  if (v5)
  {
    v6 = [a1 parentAccount];
    v7 = [v6 enabledDataclasses];
  }

  else
  {
    v7 = [a1 enabledDataclasses];
  }

  v8 = [v7 containsObject:v4];
  return v8;
}

- (id)_diffWithAccount:()CalAdditions firstPropertyOnly:
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = [a1 _diffAccountPropertiesWithAccount:v6 firstPropertyOnly:a4];
  [v7 unionSet:v8];

  if (![v7 count] || (a4 & 1) == 0)
  {
    v9 = [a1 _diffPropertiesWithAccount:v6 firstPropertyOnly:a4];
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
  v8 = [a1 _accountPropertiesKeys];
  [v7 unionSet:v8];

  v9 = [v6 _accountPropertiesKeys];
  [v7 unionSet:v9];

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
        v16 = [a1 valueForAccountPropertyKey:v15];
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
    v11 = [a1 accountDescription];
    if (v11 || ([v7 accountDescription], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [a1 accountDescription];
      v13 = [v7 accountDescription];
      v14 = [v12 isEqual:v13];

      if (v11)
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
    v15 = [a1 isActive];
    if (v15 != [v7 isActive])
    {
      [v9 addObject:@"active"];
      v10[2](v10);
    }
  }

  if (*(v62 + 24) == 1)
  {
    v16 = [a1 isAuthenticated];
    if (v16 != [v7 isAuthenticated])
    {
      [v9 addObject:@"authenticated"];
      v10[2](v10);
    }
  }

  if (*(v62 + 24) == 1)
  {
    v17 = [a1 credential];
    if (v17 || ([v7 credential], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v18 = [a1 credential];
      v19 = [v7 credential];
      v20 = [v18 isEqual:v19];

      if (v17)
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
    v21 = [a1 enabledDataclasses];
    if (v21 || ([v7 enabledDataclasses], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v22 = [a1 enabledDataclasses];
      v23 = [v7 enabledDataclasses];
      v24 = [v22 isEqual:v23];

      if (v21)
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
    v25 = [a1 provisionedDataclasses];
    if (v25 || ([v7 provisionedDataclasses], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v26 = [a1 provisionedDataclasses];
      v27 = [v7 provisionedDataclasses];
      v28 = [v26 isEqual:v27];

      if (v25)
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
    v29 = [a1 username];
    if (v29 || ([v7 username], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = [a1 username];
      v31 = [v7 username];
      v32 = [v30 isEqual:v31];

      if (v29)
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
    v33 = [a1 isVisible];
    if (v33 != [v7 isVisible])
    {
      [v9 addObject:@"visible"];
      v10[2](v10);
    }
  }

  if (*(v62 + 24) == 1)
  {
    v34 = [a1 accountType];
    if (v34 || ([v7 accountType], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v35 = [a1 accountType];
      v36 = [v7 accountType];
      v37 = [v35 isEqual:v36];

      if (v34)
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
    v38 = [a1 creationDate];
    if (v38 || ([v7 creationDate], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v39 = [a1 creationDate];
      v40 = [v7 creationDate];
      v41 = [v39 isEqual:v40];

      if (v38)
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
    v42 = [a1 identifier];
    if (v42 || ([v7 identifier], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v43 = [a1 identifier];
      v44 = [v7 identifier];
      v45 = [v43 isEqual:v44];

      if (v42)
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
    v46 = [a1 owningBundleID];
    if (v46 || ([v7 owningBundleID], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v47 = [a1 owningBundleID];
      v48 = [v7 owningBundleID];
      v49 = [v47 isEqual:v48];

      if (v46)
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
    v50 = [a1 parentAccountIdentifier];
    if (v50 || ([v7 parentAccountIdentifier], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v51 = [a1 parentAccountIdentifier];
      v52 = [v7 parentAccountIdentifier];
      v53 = [v51 isEqual:v52];

      if (v50)
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
    v54 = [a1 supportsAuthentication];
    if (v54 != [v7 supportsAuthentication])
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
  v7 = [a1 parentAccount];

  if (v7)
  {
    v8 = +[CalFoundationLogSubsystem accounts];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ACAccount(CalAdditions) *)v6 _setIsEnabled:a1 forDataclass:v8];
    }
  }

  else if ([a1 _dataclassIsEnabled:v6] != a3)
  {
    [a1 setEnabled:a3 forDataclass:v6];
  }
}

- (void)_setCalInternalValue:()CalAdditions forAccountPropertyKey:
{
  v22 = a3;
  v6 = a4;
  if (v22)
  {
    if (([a1 calIsExchangeAccount] & 1) != 0 || (objc_msgSend(a1, "_calDAVDataclassProperties"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", v6), v7, v8))
    {
      v9 = *MEMORY[0x1E6959AE0];
      v10 = [a1 propertiesForDataclass:*MEMORY[0x1E6959AE0]];
      v11 = MEMORY[0x1E695DF90];
      if (v10)
      {
        v12 = [a1 propertiesForDataclass:v9];
        v13 = [v11 dictionaryWithDictionary:v12];
      }

      else
      {
        v13 = [MEMORY[0x1E695DF90] dictionary];
      }

      v14 = [v13 objectForKeyedSubscript:v6];
      if (!v14 || (v15 = v14, [v13 objectForKeyedSubscript:v6], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqual:", v22), v16, v15, (v17 & 1) == 0))
      {
        [v13 setObject:v22 forKeyedSubscript:v6];
        [a1 setProperties:v13 forDataclass:v9];
      }
    }

    else if ([a1 calIsCalDAVAccount])
    {
      v18 = [a1 objectForKeyedSubscript:v6];
      if (!v18 || (v19 = v18, [a1 objectForKeyedSubscript:v6], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqual:", v22), v20, v19, (v21 & 1) == 0))
      {
        [a1 setObject:v22 forKeyedSubscript:v6];
      }
    }
  }

  else
  {
    [a1 removeAccountPropertyForKey:v6];
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
    v15 = [a1 _schemeStringForUseSSL:{objc_msgSend(v12, "BOOLValue")}];
    [v14 setScheme:v15];
  }

  v16 = [v14 URL];

  return v16;
}

- (uint64_t)_useSSLForSchemeString:()CalAdditions
{
  v3 = [a3 lowercaseString];
  v4 = [v3 isEqualToString:@"https"];

  return v4;
}

- (id)calTopLevelAccount
{
  v1 = a1;
  v2 = [v1 parentAccount];

  if (v2)
  {
    do
    {
      v3 = [v1 parentAccount];

      v4 = [v3 parentAccount];

      v1 = v3;
    }

    while (v4);
  }

  else
  {
    v3 = v1;
  }

  return v3;
}

- (void)calHostname
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = [a2 identifier];
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