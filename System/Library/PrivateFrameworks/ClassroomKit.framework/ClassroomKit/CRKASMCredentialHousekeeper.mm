@interface CRKASMCredentialHousekeeper
- (BOOL)isEntryValid:(id)valid allowedUserIdentifiers:(id)identifiers;
- (CRKASMCredentialHousekeeper)initWithRoster:(id)roster credentialStore:(id)store;
- (id)entriesInManifest:(id)manifest forPersistentIDs:(id)ds;
- (id)knownTrustedUserIdentifiers;
- (id)knownUserIdentifiers;
- (void)housekeep;
- (void)housekeepTrustedUserCertificates;
- (void)housekeepUserIdentities;
- (void)removeAllUserIdentitiesInManifest:(id)manifest;
- (void)removeTrustedUserCertificates:(id)certificates manifest:(id)manifest;
- (void)removeUserIdentities:(id)identities manifest:(id)manifest;
@end

@implementation CRKASMCredentialHousekeeper

- (CRKASMCredentialHousekeeper)initWithRoster:(id)roster credentialStore:(id)store
{
  rosterCopy = roster;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = CRKASMCredentialHousekeeper;
  v9 = [(CRKASMCredentialHousekeeper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_roster, roster);
    objc_storeStrong(&v10->_credentialStore, store);
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
    stop = [v3 stop];
    v6 = 138412290;
    v7 = stop;
    _os_log_impl(&dword_243550000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }
}

- (void)housekeepUserIdentities
{
  v23 = *MEMORY[0x277D85DE8];
  credentialStore = [(CRKASMCredentialHousekeeper *)self credentialStore];
  identityManifest = [credentialStore identityManifest];

  roster = [(CRKASMCredentialHousekeeper *)self roster];
  courses = [roster courses];
  v7 = [courses count];

  knownUserIdentifiers = [(CRKASMCredentialHousekeeper *)self knownUserIdentifiers];
  v9 = knownUserIdentifiers;
  if (v7 && [knownUserIdentifiers count])
  {
    v10 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    persistentIDs = [identityManifest persistentIDs];
    v12 = [persistentIDs countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(persistentIDs);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          v17 = [identityManifest entryForPersistentID:v16];
          if (![(CRKASMCredentialHousekeeper *)self isEntryValid:v17 allowedUserIdentifiers:v9])
          {
            [v10 addObject:v16];
          }
        }

        v13 = [persistentIDs countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    [(CRKASMCredentialHousekeeper *)self removeUserIdentities:v10 manifest:identityManifest];
  }

  else
  {
    [(CRKASMCredentialHousekeeper *)self removeAllUserIdentitiesInManifest:identityManifest];
  }
}

- (id)knownUserIdentifiers
{
  roster = [(CRKASMCredentialHousekeeper *)self roster];
  user = [roster user];
  identifier = [user identifier];

  if (identifier)
  {
    v5 = [MEMORY[0x277CBEB98] setWithObject:identifier];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  return v6;
}

- (void)removeAllUserIdentitiesInManifest:(id)manifest
{
  manifestCopy = manifest;
  persistentIDs = [manifestCopy persistentIDs];
  [(CRKASMCredentialHousekeeper *)self removeUserIdentities:persistentIDs manifest:manifestCopy];
}

- (void)removeUserIdentities:(id)identities manifest:(id)manifest
{
  identitiesCopy = identities;
  manifestCopy = manifest;
  if ([identitiesCopy count])
  {
    v8 = [(CRKASMCredentialHousekeeper *)self entriesInManifest:manifestCopy forPersistentIDs:identitiesCopy];
    v9 = _CRKLogASM_18();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CRKASMCredentialHousekeeper removeUserIdentities:identitiesCopy manifest:?];
    }

    credentialStore = [(CRKASMCredentialHousekeeper *)self credentialStore];
    [credentialStore removeIdentitiesWithPersistentIDs:identitiesCopy];
  }
}

- (void)housekeepTrustedUserCertificates
{
  v19 = *MEMORY[0x277D85DE8];
  knownTrustedUserIdentifiers = [(CRKASMCredentialHousekeeper *)self knownTrustedUserIdentifiers];
  v4 = objc_opt_new();
  credentialStore = [(CRKASMCredentialHousekeeper *)self credentialStore];
  certificateManifest = [credentialStore certificateManifest];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  persistentIDs = [certificateManifest persistentIDs];
  v8 = [persistentIDs countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(persistentIDs);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [certificateManifest entryForPersistentID:v12];
        if (![(CRKASMCredentialHousekeeper *)self isEntryValid:v13 allowedUserIdentifiers:knownTrustedUserIdentifiers])
        {
          [v4 addObject:v12];
        }
      }

      v9 = [persistentIDs countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(CRKASMCredentialHousekeeper *)self removeTrustedUserCertificates:v4 manifest:certificateManifest];
}

- (void)removeTrustedUserCertificates:(id)certificates manifest:(id)manifest
{
  certificatesCopy = certificates;
  manifestCopy = manifest;
  if ([certificatesCopy count])
  {
    v8 = [(CRKASMCredentialHousekeeper *)self entriesInManifest:manifestCopy forPersistentIDs:certificatesCopy];
    v9 = _CRKLogASM_18();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CRKASMCredentialHousekeeper removeTrustedUserCertificates:certificatesCopy manifest:?];
    }

    credentialStore = [(CRKASMCredentialHousekeeper *)self credentialStore];
    [credentialStore removeCertificatesWithPersistentIDs:certificatesCopy];
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
  roster = [(CRKASMCredentialHousekeeper *)self roster];
  courses = [roster courses];

  v6 = [courses countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(courses);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        trustedUsers = [v10 trustedUsers];
        v12 = [trustedUsers countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                objc_enumerationMutation(trustedUsers);
              }

              identifier = [*(*(&v19 + 1) + 8 * j) identifier];
              [v3 addObject:identifier];
            }

            v13 = [trustedUsers countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v13);
        }
      }

      v7 = [courses countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v17 = [v3 copy];

  return v17;
}

- (id)entriesInManifest:(id)manifest forPersistentIDs:(id)ds
{
  v25 = *MEMORY[0x277D85DE8];
  manifestCopy = manifest;
  dsCopy = ds;
  v7 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = dsCopy;
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

        v13 = [manifestCopy entryForPersistentID:{*(*(&v20 + 1) + 8 * i), v20}];
        stringValue = [v13 stringValue];
        v15 = stringValue;
        if (stringValue)
        {
          v16 = stringValue;
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

- (BOOL)isEntryValid:(id)valid allowedUserIdentifiers:(id)identifiers
{
  validCopy = valid;
  identifiersCopy = identifiers;
  if ([validCopy isFullyPopulated])
  {
    validityInterval = [validCopy validityInterval];
    if ([validityInterval crk_containsCurrentDate])
    {
      userIdentifier = [validCopy userIdentifier];
      v9 = [identifiersCopy containsObject:userIdentifier];
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