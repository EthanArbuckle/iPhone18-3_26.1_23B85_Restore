@interface ACAccount(GameCenter)
- (id)_gkCredentialForEnvironment:()GameCenter;
- (id)_gkCredentialsForEnvironment:()GameCenter;
- (id)_gkModifiedDateForProperty:()GameCenter environment:;
- (id)_gkPerEnvironmentTokens;
- (id)_gkPlayerInternal;
- (id)_gkPropertyForKey:()GameCenter environment:;
- (id)_gkTokenForEnvironment:()GameCenter;
- (uint64_t)_gkIsPrimaryForEnvironment:()GameCenter;
- (void)_gkPlayerInternal;
- (void)_gkSetPlayerInternal:()GameCenter;
- (void)_gkSetProperty:()GameCenter forKey:environment:;
- (void)_gkSetToken:()GameCenter forEnvironment:;
@end

@implementation ACAccount(GameCenter)

- (uint64_t)_gkIsPrimaryForEnvironment:()GameCenter
{
  v5 = [a1 accountPropertyForKey:@"playerID"];
  if (v5)
  {
    v6 = [a1 _gkCredentialsForEnvironment:a3];
    v7 = [v6 firstObject];
    v8 = ([v7 scope] >> 2) & 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_gkTokenForEnvironment:()GameCenter
{
  if (a3 == 5)
  {
    v4 = [a1 credential];
    v5 = [v4 token];
    if ([v5 isEqualToString:@"<gone>"])
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v4 = GKTokenKeyForEnvironment(a3);
    v6 = [a1 accountPropertyForKey:v4];
  }

  return v6;
}

- (void)_gkSetToken:()GameCenter forEnvironment:
{
  v6 = a3;
  v7 = +[GKPreferences shared];
  v8 = [v7 isInternalBuild];

  if (v8)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount(GameCenter) _gkSetToken:forEnvironment:];
    }
  }

  if (a4 == 5)
  {
    v10 = [a1 credential];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x277CB8F38]);
    }

    if (![(__CFString *)v6 length])
    {

      v6 = @"<gone>";
    }

    [v10 setToken:v6];
    [a1 setCredential:v10];
  }

  else
  {
    v10 = GKTokenKeyForEnvironment(a4);
    [a1 setAccountProperty:v6 forKey:v10];
  }
}

- (id)_gkPerEnvironmentTokens
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  for (i = 0; i != 12; ++i)
  {
    v4 = [a1 _gkTokenForEnvironment:i];
    if ([v4 length])
    {
      v5 = [MEMORY[0x277CCABB0] numberWithInteger:i];
      [v2 setObject:v4 forKey:v5];
    }
  }

  return v2;
}

- (id)_gkPlayerInternal
{
  v2 = [a1 accountPropertyForKey:@"GKPlayerInternal"];
  if (!v2)
  {
LABEL_22:
    v13 = [a1 accountPropertyForKey:@"playerID"];
    if (v13)
    {
      v11 = +[(GKInternalRepresentation *)GKLocalPlayerInternal];
      [v11 setPlayerID:v13];
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_26;
  }

  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  v15 = 0;
  v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v5 fromData:v2 error:&v15];
  v7 = v15;
  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_ERROR))
    {
      [ACAccount(GameCenter) _gkPlayerInternal];
    }
  }

  if ([v6 isMemberOfClass:objc_opt_class()])
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount(GameCenter) _gkPlayerInternal];
    }

    v10 = [GKLocalPlayerInternal minimalInternalFromSourcePlayer:v6];
    goto LABEL_15;
  }

  if ([v6 isMemberOfClass:objc_opt_class()])
  {
    v10 = v6;
LABEL_15:
    v11 = v10;
    goto LABEL_21;
  }

  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_ERROR))
  {
    [ACAccount(GameCenter) _gkPlayerInternal];
  }

  v11 = 0;
LABEL_21:

  if (!v11)
  {
    goto LABEL_22;
  }

LABEL_26:

  return v11;
}

- (void)_gkSetPlayerInternal:()GameCenter
{
  v4 = a3;
  v5 = [v4 contactsAssociationID];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "contactsIntegrationConsent")}];
  v7 = [v4 serviceLastUpdatedTimestamp];
  v8 = [v4 minimalInternal];

  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "Updating contacts assocationID", v16, 2u);
    }

    if ([v5 length])
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    [a1 setAccountProperty:v11 forKey:@"GKContactsAssociationID"];
    [a1 setAccountProperty:v6 forKey:@"GKContactsSharingState"];
    [a1 setAccountProperty:v7 forKey:@"GKContactsLastUpdated"];
  }

  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
  [a1 setAccountProperty:v12 forKey:@"GKPlayerInternal"];
  v13 = [v8 playerID];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_283AFD1E0;
  }

  [a1 setAccountProperty:v15 forKey:@"playerID"];
}

- (id)_gkCredentialsForEnvironment:()GameCenter
{
  v5 = [a1 credential];
  if (v5)
  {
    v6 = [a1 accountPropertyForKey:@"playerID"];
    if ([v6 length])
    {
      v7 = [a1 _gkPerEnvironmentTokens];
      if ([v7 count])
      {
        v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:8];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __54__ACAccount_GameCenter___gkCredentialsForEnvironment___block_invoke;
        v22[3] = &unk_2785E07F8;
        v25 = a3;
        v22[4] = a1;
        v23 = v6;
        v9 = v8;
        v24 = v9;
        [v7 enumerateKeysAndObjectsUsingBlock:v22];
        v10 = v24;
        v11 = v9;
      }

      else
      {
        v18 = +[GKPreferences shared];
        v19 = [v18 isInternalBuild];

        if (v19)
        {
          if (!os_log_GKGeneral)
          {
            v20 = GKOSLoggers();
          }

          if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
          {
            [ACAccount(GameCenter) _gkCredentialsForEnvironment:];
          }
        }

        v11 = 0;
      }
    }

    else
    {
      v15 = +[GKPreferences shared];
      v16 = [v15 isInternalBuild];

      if (v16)
      {
        if (!os_log_GKGeneral)
        {
          v17 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
        {
          [ACAccount(GameCenter) _gkCredentialsForEnvironment:];
        }
      }

      v11 = 0;
    }
  }

  else
  {
    v12 = +[GKPreferences shared];
    v13 = [v12 isInternalBuild];

    if (v13)
    {
      if (!os_log_GKGeneral)
      {
        v14 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
      {
        [ACAccount(GameCenter) _gkCredentialsForEnvironment:];
      }
    }

    v11 = 0;
  }

  return v11;
}

- (id)_gkCredentialForEnvironment:()GameCenter
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__11;
  v12 = __Block_byref_object_dispose__11;
  v13 = 0;
  v4 = [a1 _gkCredentials];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ACAccount_GameCenter___gkCredentialForEnvironment___block_invoke;
  v7[3] = &unk_2785E0820;
  v7[4] = &v8;
  v7[5] = a3;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)_gkModifiedDateForProperty:()GameCenter environment:
{
  v5 = [a3 stringByAppendingFormat:@"-%d-mod-date", a4];
  v6 = [a1 accountPropertyForKey:v5];

  return v6;
}

- (id)_gkPropertyForKey:()GameCenter environment:
{
  v5 = [a3 stringByAppendingFormat:@"-%d", a4];
  v6 = [a1 accountPropertyForKey:v5];

  return v6;
}

- (void)_gkSetProperty:()GameCenter forKey:environment:
{
  v8 = a4;
  v9 = a3;
  v10 = [v8 stringByAppendingFormat:@"-%d", a5];
  [a1 setAccountProperty:v9 forKey:v10];

  v12 = [v8 stringByAppendingFormat:@"-%d-mod-date", a5];

  v11 = [MEMORY[0x277CBEAA8] date];
  [a1 setAccountProperty:v11 forKey:v12];
}

- (void)_gkSetToken:()GameCenter forEnvironment:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_gkPlayerInternal
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  v4 = v0;
  _os_log_error_impl(&dword_227904000, v1, OS_LOG_TYPE_ERROR, "error while decoding playerInternal archive:%@ and playerInternal:%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_gkCredentialsForEnvironment:()GameCenter .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_6(&dword_227904000, v0, v1, "LOADING ACCOUNT:%@: No auth tokens", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_gkCredentialsForEnvironment:()GameCenter .cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_6(&dword_227904000, v0, v1, "LOADING ACCOUNT:%@: no player ID in this account", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_gkCredentialsForEnvironment:()GameCenter .cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_6(&dword_227904000, v0, v1, "LOADING ACCOUNT:%@: no credential", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end