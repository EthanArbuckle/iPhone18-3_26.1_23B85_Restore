@interface CRKASMCredentialHousekeeper
- (BOOL)isEntryValid:(id)a3 allowedUserIdentifiers:(id)a4;
- (CRKASMCredentialHousekeeper)initWithRoster:(id)a3 credentialStore:(id)a4;
- (id)entriesInManifest:(id)a3 forPersistentIDs:(id)a4;
- (id)knownTrustedUserIdentifiers;
- (id)knownUserIdentifiers;
- (void)housekeep;
- (void)housekeepTrustedUserCertificates;
- (void)housekeepUserIdentities;
- (void)removeAllUserIdentitiesInManifest:(id)a3;
- (void)removeTrustedUserCertificates:(id)a3 manifest:(id)a4;
- (void)removeUserIdentities:(id)a3 manifest:(id)a4;
@end

@implementation CRKASMCredentialHousekeeper

- (CRKASMCredentialHousekeeper)initWithRoster:(id)a3 credentialStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRKASMCredentialHousekeeper;
  v9 = [(CRKASMCredentialHousekeeper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_roster, a3);
    objc_storeStrong(&v10->_credentialStore, a4);
  }

  return v10;
}

- (void)housekeep
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [CRKExecutionTimer startedTimerWithDescription:@"Housekeep ASM credentials"];
  [(CRKASMCredentialHousekeeper *)self housekeepUserIdentities];
  [(CRKASMCredentialHousekeeper *)self housekeepTrustedUserCertificates];
  v4 = _CRKLogASM_18();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 stop];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_243550000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }
}

- (void)housekeepUserIdentities
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(CRKASMCredentialHousekeeper *)self credentialStore];
  v4 = [v3 identityManifest];

  v5 = [(CRKASMCredentialHousekeeper *)self roster];
  v6 = [v5 courses];
  v7 = [v6 count];

  v8 = [(CRKASMCredentialHousekeeper *)self knownUserIdentifiers];
  v9 = v8;
  if (v7 && [v8 count])
  {
    v10 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = [v4 persistentIDs];
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          v17 = [v4 entryForPersistentID:v16];
          if (![(CRKASMCredentialHousekeeper *)self isEntryValid:v17 allowedUserIdentifiers:v9])
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    [(CRKASMCredentialHousekeeper *)self removeUserIdentities:v10 manifest:v4];
  }

  else
  {
    [(CRKASMCredentialHousekeeper *)self removeAllUserIdentitiesInManifest:v4];
  }
}

- (id)knownUserIdentifiers
{
  v2 = [(CRKASMCredentialHousekeeper *)self roster];
  v3 = [v2 user];
  v4 = [v3 identifier];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEB98] setWithObject:v4];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  return v6;
}

- (void)removeAllUserIdentitiesInManifest:(id)a3
{
  v4 = a3;
  v5 = [v4 persistentIDs];
  [(CRKASMCredentialHousekeeper *)self removeUserIdentities:v5 manifest:v4];
}

- (void)removeUserIdentities:(id)a3 manifest:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(CRKASMCredentialHousekeeper *)self entriesInManifest:v7 forPersistentIDs:v6];
    v9 = _CRKLogASM_18();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CRKASMCredentialHousekeeper removeUserIdentities:v6 manifest:?];
    }

    v10 = [(CRKASMCredentialHousekeeper *)self credentialStore];
    [v10 removeIdentitiesWithPersistentIDs:v6];
  }
}

- (void)housekeepTrustedUserCertificates
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(CRKASMCredentialHousekeeper *)self knownTrustedUserIdentifiers];
  v4 = objc_opt_new();
  v5 = [(CRKASMCredentialHousekeeper *)self credentialStore];
  v6 = [v5 certificateManifest];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 persistentIDs];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [v6 entryForPersistentID:v12];
        if (![(CRKASMCredentialHousekeeper *)self isEntryValid:v13 allowedUserIdentifiers:v3])
        {
          [v4 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(CRKASMCredentialHousekeeper *)self removeTrustedUserCertificates:v4 manifest:v6];
}

- (void)removeTrustedUserCertificates:(id)a3 manifest:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(CRKASMCredentialHousekeeper *)self entriesInManifest:v7 forPersistentIDs:v6];
    v9 = _CRKLogASM_18();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CRKASMCredentialHousekeeper removeTrustedUserCertificates:v6 manifest:?];
    }

    v10 = [(CRKASMCredentialHousekeeper *)self credentialStore];
    [v10 removeCertificatesWithPersistentIDs:v6];
  }
}

- (id)knownTrustedUserIdentifiers
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [(CRKASMCredentialHousekeeper *)self roster];
  v5 = [v4 courses];

  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = [v10 trustedUsers];
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v19 + 1) + 8 * j) identifier];
              [v3 addObject:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v13);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v17 = [v3 copy];

  return v17;
}

- (id)entriesInManifest:(id)a3 forPersistentIDs:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v5 entryForPersistentID:{*(*(&v20 + 1) + 8 * i), v20}];
        v14 = [v13 stringValue];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = @"no_entry_found";
        }

        v17 = v16;

        [v7 addObject:v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = [v7 copy];

  return v18;
}

- (BOOL)isEntryValid:(id)a3 allowedUserIdentifiers:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isFullyPopulated])
  {
    v7 = [v5 validityInterval];
    if ([v7 crk_containsCurrentDate])
    {
      v8 = [v5 userIdentifier];
      v9 = [v6 containsObject:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)removeUserIdentities:(void *)a1 manifest:.cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_2(&dword_243550000, v1, v2, "Housekeeping %lu user identities. Manifest entries: %@", v3, v4, v5, v6, v7);
}

- (void)removeTrustedUserCertificates:(void *)a1 manifest:.cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_2(&dword_243550000, v1, v2, "Housekeeping %lu trusted user certificates. Manifest entries: %@", v3, v4, v5, v6, v7);
}

@end