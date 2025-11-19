@interface CRKASMCredentialStore
- (CRKASMCredentialManifest)certificateManifest;
- (CRKASMCredentialManifest)identityManifest;
- (CRKASMCredentialStore)initWithKeychain:(id)a3 accessGroup:(id)a4 certificateManifestStorageKey:(id)a5 identityManifestStorageKey:(id)a6;
- (NSDictionary)debugInfo;
- (id)addCertificate:(id)a3 entry:(id)a4;
- (id)addCertificate:(id)a3 forUserIdentifier:(id)a4;
- (id)addCertificates:(id)a3 forUserIdentifier:(id)a4;
- (id)addEntriesByCertificate:(id)a3;
- (id)addIdentity:(id)a3 entry:(id)a4;
- (id)addIdentity:(id)a3 forUserIdentifier:(id)a4;
- (id)certificateWithPersistentID:(id)a3;
- (id)identityWithPersistentID:(id)a3;
- (id)makeCertificateWithCommonNamePrefix:(id)a3 userIdentifier:(id)a4;
- (id)makeEntryWithCertificate:(id)a3 userIdentifier:(id)a4;
- (id)makeIdentityWithCommonNamePrefix:(id)a3 userIdentifier:(id)a4;
- (void)clearCertificates;
- (void)clearIdentities;
- (void)forgetCertificatesWithPersistentIDs:(id)a3;
- (void)forgetIdentitiesWithPersistentIDs:(id)a3;
- (void)removeCertificatesWithPersistentIDs:(id)a3;
- (void)removeIdentitiesWithPersistentIDs:(id)a3;
@end

@implementation CRKASMCredentialStore

- (CRKASMCredentialStore)initWithKeychain:(id)a3 accessGroup:(id)a4 certificateManifestStorageKey:(id)a5 identityManifestStorageKey:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = CRKASMCredentialStore;
  v15 = [(CRKASMCredentialStore *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_keychain, a3);
    v17 = [CRKAnnotatedCredentialStore certificateStoreWithKeychain:v11 accessGroup:v12 manifestStorageKey:v13];
    certificateAnnotatedStore = v16->_certificateAnnotatedStore;
    v16->_certificateAnnotatedStore = v17;

    v19 = [CRKAnnotatedCredentialStore identityStoreWithKeychain:v11 accessGroup:v12 manifestStorageKey:v14];
    identityAnnotatedStore = v16->_identityAnnotatedStore;
    v16->_identityAnnotatedStore = v19;
  }

  return v16;
}

- (NSDictionary)debugInfo
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"Certificates";
  v3 = [(CRKASMCredentialStore *)self certificateAnnotatedStore];
  v4 = [v3 debugInfo];
  v9[1] = @"Identities";
  v10[0] = v4;
  v5 = [(CRKASMCredentialStore *)self identityAnnotatedStore];
  v6 = [v5 debugInfo];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (CRKASMCredentialManifest)certificateManifest
{
  v3 = [CRKASMCredentialManifest alloc];
  v4 = [(CRKASMCredentialStore *)self certificateAnnotatedStore];
  v5 = [v4 manifest];
  v6 = [(CRKASMCredentialManifest *)v3 initWithAnnotatedManifest:v5];

  return v6;
}

- (id)certificateWithPersistentID:(id)a3
{
  v4 = a3;
  v5 = [(CRKASMCredentialStore *)self certificateAnnotatedStore];
  v6 = [v5 credentialWithPersistentID:v4];

  return v6;
}

- (void)removeCertificatesWithPersistentIDs:(id)a3
{
  v4 = a3;
  v5 = [(CRKASMCredentialStore *)self certificateAnnotatedStore];
  [v5 removeCredentialsWithPersistentIDs:v4];
}

- (void)forgetCertificatesWithPersistentIDs:(id)a3
{
  v4 = a3;
  v5 = [(CRKASMCredentialStore *)self certificateAnnotatedStore];
  [v5 forgetCredentialsWithPersistentIDs:v4];
}

- (id)makeCertificateWithCommonNamePrefix:(id)a3 userIdentifier:(id)a4
{
  v4 = [(CRKASMCredentialStore *)self makeIdentityWithCommonNamePrefix:a3 userIdentifier:a4];
  v5 = [v4 certificate];

  return v5;
}

- (void)clearCertificates
{
  v4 = [(CRKASMCredentialStore *)self certificateManifest];
  v3 = [v4 persistentIDs];
  [(CRKASMCredentialStore *)self removeCertificatesWithPersistentIDs:v3];
}

- (id)addCertificate:(id)a3 forUserIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CRKASMCredentialStore addCertificate:forUserIdentifier:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [CRKASMCredentialStore addCertificate:forUserIdentifier:];
LABEL_3:
  v9 = [MEMORY[0x277CBEB98] setWithObject:v6];
  v10 = [(CRKASMCredentialStore *)self addCertificates:v9 forUserIdentifier:v8];
  v11 = [v10 objectForKey:v6];

  return v11;
}

- (id)addCertificates:(id)a3 forUserIdentifier:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [CRKASMCredentialStore addCertificates:forUserIdentifier:];
  }

  v8 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [(CRKASMCredentialStore *)self makeEntryWithCertificate:v14 userIdentifier:v7, v18];
        if (v15)
        {
          [v8 setObject:v15 forKey:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = [(CRKASMCredentialStore *)self addEntriesByCertificate:v8];

  return v16;
}

- (id)addCertificate:(id)a3 entry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CRKASMCredentialStore addCertificate:entry:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [CRKASMCredentialStore addCertificate:entry:];
LABEL_3:
  v9 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  [v9 setObject:v8 forKey:v6];
  v10 = [(CRKASMCredentialStore *)self addEntriesByCertificate:v9];
  v11 = [v10 objectForKey:v6];

  return v11;
}

- (id)addEntriesByCertificate:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v3 keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v3 objectForKey:v10];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 dictionaryValue];
          v14 = [[CRKAnnotatedCredential alloc] initWithCredential:v10 annotation:v13];
          [v4 addObject:v14];
        }

        else
        {
          v13 = _CRKLogASM_6();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v24 = v10;
            _os_log_error_impl(&dword_243550000, v13, OS_LOG_TYPE_ERROR, "No entry found for certificate %@", buf, 0xCu);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  v15 = [(CRKASMCredentialStore *)self certificateAnnotatedStore];
  v16 = [v15 addCredentials:v4];

  return v16;
}

- (CRKASMCredentialManifest)identityManifest
{
  v3 = [CRKASMCredentialManifest alloc];
  v4 = [(CRKASMCredentialStore *)self identityAnnotatedStore];
  v5 = [v4 manifest];
  v6 = [(CRKASMCredentialManifest *)v3 initWithAnnotatedManifest:v5];

  return v6;
}

- (id)identityWithPersistentID:(id)a3
{
  v4 = a3;
  v5 = [(CRKASMCredentialStore *)self identityAnnotatedStore];
  v6 = [v5 credentialWithPersistentID:v4];

  return v6;
}

- (void)removeIdentitiesWithPersistentIDs:(id)a3
{
  v4 = a3;
  v5 = [(CRKASMCredentialStore *)self identityAnnotatedStore];
  [v5 removeCredentialsWithPersistentIDs:v4];
}

- (void)forgetIdentitiesWithPersistentIDs:(id)a3
{
  v4 = a3;
  v5 = [(CRKASMCredentialStore *)self identityAnnotatedStore];
  [v5 forgetCredentialsWithPersistentIDs:v4];
}

- (id)makeIdentityWithCommonNamePrefix:(id)a3 userIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CRKASMCertificateCommonName alloc] initWithPrefix:v7 userIdentifier:v6];

  v9 = [CRKIdentityConfiguration alloc];
  v10 = [(CRKASMCertificateCommonName *)v8 stringValue];
  v11 = [(CRKIdentityConfiguration *)v9 initWithCommonName:v10];

  v12 = [(CRKASMCredentialStore *)self keychain];
  v13 = [v12 makeIdentityWithConfiguration:v11];

  return v13;
}

- (void)clearIdentities
{
  v4 = [(CRKASMCredentialStore *)self identityManifest];
  v3 = [v4 persistentIDs];
  [(CRKASMCredentialStore *)self removeIdentitiesWithPersistentIDs:v3];
}

- (id)addIdentity:(id)a3 forUserIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CRKASMCredentialStore addIdentity:forUserIdentifier:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [CRKASMCredentialStore addIdentity:forUserIdentifier:];
LABEL_3:
  v9 = [v6 certificate];
  v10 = [(CRKASMCredentialStore *)self makeEntryWithCertificate:v9 userIdentifier:v8];

  if (v10)
  {
    v11 = [(CRKASMCredentialStore *)self addIdentity:v6 entry:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)addIdentity:(id)a3 entry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CRKASMCredentialStore addIdentity:entry:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [CRKASMCredentialStore addIdentity:entry:];
LABEL_3:
  v9 = [v8 dictionaryValue];
  v10 = [[CRKAnnotatedCredential alloc] initWithCredential:v6 annotation:v9];
  v11 = [(CRKASMCredentialStore *)self identityAnnotatedStore];
  v12 = [MEMORY[0x277CBEB98] setWithObject:v10];
  v13 = [v11 addCredentials:v12];
  v14 = [v13 objectForKey:v6];

  return v14;
}

- (id)makeEntryWithCertificate:(id)a3 userIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = _CRKLogASM_6();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CRKASMCredentialStore makeEntryWithCertificate:userIdentifier:];
    }

    goto LABEL_13;
  }

  if (!v5)
  {
    v7 = _CRKLogASM_6();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CRKASMCredentialStore makeEntryWithCertificate:userIdentifier:];
    }

LABEL_13:
    v10 = 0;
    goto LABEL_18;
  }

  v7 = [v5 validityDateInterval];
  if (v7)
  {
    v8 = [v5 fingerprint];
    if (!v8)
    {
      v9 = _CRKLogASM_6();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CRKASMCredentialStore makeEntryWithCertificate:userIdentifier:];
      }
    }

    v10 = [[CRKASMCredentialManifestEntry alloc] initWithUserIdentifier:v6 validityInterval:v7 fingerprint:v8];
  }

  else
  {
    v8 = _CRKLogASM_6();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CRKASMCredentialStore makeEntryWithCertificate:userIdentifier:];
    }

    v10 = 0;
  }

LABEL_18:

  return v10;
}

- (void)addCertificate:forUserIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"certificate" object:? file:? lineNumber:? description:?];
}

- (void)addCertificate:forUserIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"userIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)addCertificates:forUserIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"userIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)addCertificate:entry:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"certificate" object:? file:? lineNumber:? description:?];
}

- (void)addCertificate:entry:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"entry" object:? file:? lineNumber:? description:?];
}

- (void)addIdentity:forUserIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"identity" object:? file:? lineNumber:? description:?];
}

- (void)addIdentity:forUserIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"userIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)addIdentity:entry:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"identity" object:? file:? lineNumber:? description:?];
}

- (void)addIdentity:entry:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"entry" object:? file:? lineNumber:? description:?];
}

@end