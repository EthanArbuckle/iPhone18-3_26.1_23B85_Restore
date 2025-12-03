@interface CRKASMCredentialStore
- (CRKASMCredentialManifest)certificateManifest;
- (CRKASMCredentialManifest)identityManifest;
- (CRKASMCredentialStore)initWithKeychain:(id)keychain accessGroup:(id)group certificateManifestStorageKey:(id)key identityManifestStorageKey:(id)storageKey;
- (NSDictionary)debugInfo;
- (id)addCertificate:(id)certificate entry:(id)entry;
- (id)addCertificate:(id)certificate forUserIdentifier:(id)identifier;
- (id)addCertificates:(id)certificates forUserIdentifier:(id)identifier;
- (id)addEntriesByCertificate:(id)certificate;
- (id)addIdentity:(id)identity entry:(id)entry;
- (id)addIdentity:(id)identity forUserIdentifier:(id)identifier;
- (id)certificateWithPersistentID:(id)d;
- (id)identityWithPersistentID:(id)d;
- (id)makeCertificateWithCommonNamePrefix:(id)prefix userIdentifier:(id)identifier;
- (id)makeEntryWithCertificate:(id)certificate userIdentifier:(id)identifier;
- (id)makeIdentityWithCommonNamePrefix:(id)prefix userIdentifier:(id)identifier;
- (void)clearCertificates;
- (void)clearIdentities;
- (void)forgetCertificatesWithPersistentIDs:(id)ds;
- (void)forgetIdentitiesWithPersistentIDs:(id)ds;
- (void)removeCertificatesWithPersistentIDs:(id)ds;
- (void)removeIdentitiesWithPersistentIDs:(id)ds;
@end

@implementation CRKASMCredentialStore

- (CRKASMCredentialStore)initWithKeychain:(id)keychain accessGroup:(id)group certificateManifestStorageKey:(id)key identityManifestStorageKey:(id)storageKey
{
  keychainCopy = keychain;
  groupCopy = group;
  keyCopy = key;
  storageKeyCopy = storageKey;
  v22.receiver = self;
  v22.super_class = CRKASMCredentialStore;
  v15 = [(CRKASMCredentialStore *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_keychain, keychain);
    v17 = [CRKAnnotatedCredentialStore certificateStoreWithKeychain:keychainCopy accessGroup:groupCopy manifestStorageKey:keyCopy];
    certificateAnnotatedStore = v16->_certificateAnnotatedStore;
    v16->_certificateAnnotatedStore = v17;

    v19 = [CRKAnnotatedCredentialStore identityStoreWithKeychain:keychainCopy accessGroup:groupCopy manifestStorageKey:storageKeyCopy];
    identityAnnotatedStore = v16->_identityAnnotatedStore;
    v16->_identityAnnotatedStore = v19;
  }

  return v16;
}

- (NSDictionary)debugInfo
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"Certificates";
  certificateAnnotatedStore = [(CRKASMCredentialStore *)self certificateAnnotatedStore];
  debugInfo = [certificateAnnotatedStore debugInfo];
  v9[1] = @"Identities";
  v10[0] = debugInfo;
  identityAnnotatedStore = [(CRKASMCredentialStore *)self identityAnnotatedStore];
  debugInfo2 = [identityAnnotatedStore debugInfo];
  v10[1] = debugInfo2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (CRKASMCredentialManifest)certificateManifest
{
  v3 = [CRKASMCredentialManifest alloc];
  certificateAnnotatedStore = [(CRKASMCredentialStore *)self certificateAnnotatedStore];
  manifest = [certificateAnnotatedStore manifest];
  v6 = [(CRKASMCredentialManifest *)v3 initWithAnnotatedManifest:manifest];

  return v6;
}

- (id)certificateWithPersistentID:(id)d
{
  dCopy = d;
  certificateAnnotatedStore = [(CRKASMCredentialStore *)self certificateAnnotatedStore];
  v6 = [certificateAnnotatedStore credentialWithPersistentID:dCopy];

  return v6;
}

- (void)removeCertificatesWithPersistentIDs:(id)ds
{
  dsCopy = ds;
  certificateAnnotatedStore = [(CRKASMCredentialStore *)self certificateAnnotatedStore];
  [certificateAnnotatedStore removeCredentialsWithPersistentIDs:dsCopy];
}

- (void)forgetCertificatesWithPersistentIDs:(id)ds
{
  dsCopy = ds;
  certificateAnnotatedStore = [(CRKASMCredentialStore *)self certificateAnnotatedStore];
  [certificateAnnotatedStore forgetCredentialsWithPersistentIDs:dsCopy];
}

- (id)makeCertificateWithCommonNamePrefix:(id)prefix userIdentifier:(id)identifier
{
  v4 = [(CRKASMCredentialStore *)self makeIdentityWithCommonNamePrefix:prefix userIdentifier:identifier];
  certificate = [v4 certificate];

  return certificate;
}

- (void)clearCertificates
{
  certificateManifest = [(CRKASMCredentialStore *)self certificateManifest];
  persistentIDs = [certificateManifest persistentIDs];
  [(CRKASMCredentialStore *)self removeCertificatesWithPersistentIDs:persistentIDs];
}

- (id)addCertificate:(id)certificate forUserIdentifier:(id)identifier
{
  certificateCopy = certificate;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (certificateCopy)
  {
    if (identifierCopy)
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
  v9 = [MEMORY[0x277CBEB98] setWithObject:certificateCopy];
  v10 = [(CRKASMCredentialStore *)self addCertificates:v9 forUserIdentifier:v8];
  v11 = [v10 objectForKey:certificateCopy];

  return v11;
}

- (id)addCertificates:(id)certificates forUserIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  certificatesCopy = certificates;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [CRKASMCredentialStore addCertificates:forUserIdentifier:];
  }

  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = certificatesCopy;
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
        v15 = [(CRKASMCredentialStore *)self makeEntryWithCertificate:v14 userIdentifier:identifierCopy, v18];
        if (v15)
        {
          [strongToStrongObjectsMapTable setObject:v15 forKey:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = [(CRKASMCredentialStore *)self addEntriesByCertificate:strongToStrongObjectsMapTable];

  return v16;
}

- (id)addCertificate:(id)certificate entry:(id)entry
{
  certificateCopy = certificate;
  entryCopy = entry;
  v8 = entryCopy;
  if (certificateCopy)
  {
    if (entryCopy)
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
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  [strongToStrongObjectsMapTable setObject:v8 forKey:certificateCopy];
  v10 = [(CRKASMCredentialStore *)self addEntriesByCertificate:strongToStrongObjectsMapTable];
  v11 = [v10 objectForKey:certificateCopy];

  return v11;
}

- (id)addEntriesByCertificate:(id)certificate
{
  v26 = *MEMORY[0x277D85DE8];
  certificateCopy = certificate;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  keyEnumerator = [certificateCopy keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v19 objects:v25 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [certificateCopy objectForKey:v10];
        v12 = v11;
        if (v11)
        {
          dictionaryValue = [v11 dictionaryValue];
          v14 = [[CRKAnnotatedCredential alloc] initWithCredential:v10 annotation:dictionaryValue];
          [v4 addObject:v14];
        }

        else
        {
          dictionaryValue = _CRKLogASM_6();
          if (os_log_type_enabled(dictionaryValue, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v24 = v10;
            _os_log_error_impl(&dword_243550000, dictionaryValue, OS_LOG_TYPE_ERROR, "No entry found for certificate %@", buf, 0xCu);
          }
        }
      }

      v7 = [keyEnumerator countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  certificateAnnotatedStore = [(CRKASMCredentialStore *)self certificateAnnotatedStore];
  v16 = [certificateAnnotatedStore addCredentials:v4];

  return v16;
}

- (CRKASMCredentialManifest)identityManifest
{
  v3 = [CRKASMCredentialManifest alloc];
  identityAnnotatedStore = [(CRKASMCredentialStore *)self identityAnnotatedStore];
  manifest = [identityAnnotatedStore manifest];
  v6 = [(CRKASMCredentialManifest *)v3 initWithAnnotatedManifest:manifest];

  return v6;
}

- (id)identityWithPersistentID:(id)d
{
  dCopy = d;
  identityAnnotatedStore = [(CRKASMCredentialStore *)self identityAnnotatedStore];
  v6 = [identityAnnotatedStore credentialWithPersistentID:dCopy];

  return v6;
}

- (void)removeIdentitiesWithPersistentIDs:(id)ds
{
  dsCopy = ds;
  identityAnnotatedStore = [(CRKASMCredentialStore *)self identityAnnotatedStore];
  [identityAnnotatedStore removeCredentialsWithPersistentIDs:dsCopy];
}

- (void)forgetIdentitiesWithPersistentIDs:(id)ds
{
  dsCopy = ds;
  identityAnnotatedStore = [(CRKASMCredentialStore *)self identityAnnotatedStore];
  [identityAnnotatedStore forgetCredentialsWithPersistentIDs:dsCopy];
}

- (id)makeIdentityWithCommonNamePrefix:(id)prefix userIdentifier:(id)identifier
{
  identifierCopy = identifier;
  prefixCopy = prefix;
  v8 = [[CRKASMCertificateCommonName alloc] initWithPrefix:prefixCopy userIdentifier:identifierCopy];

  v9 = [CRKIdentityConfiguration alloc];
  stringValue = [(CRKASMCertificateCommonName *)v8 stringValue];
  v11 = [(CRKIdentityConfiguration *)v9 initWithCommonName:stringValue];

  keychain = [(CRKASMCredentialStore *)self keychain];
  v13 = [keychain makeIdentityWithConfiguration:v11];

  return v13;
}

- (void)clearIdentities
{
  identityManifest = [(CRKASMCredentialStore *)self identityManifest];
  persistentIDs = [identityManifest persistentIDs];
  [(CRKASMCredentialStore *)self removeIdentitiesWithPersistentIDs:persistentIDs];
}

- (id)addIdentity:(id)identity forUserIdentifier:(id)identifier
{
  identityCopy = identity;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (identityCopy)
  {
    if (identifierCopy)
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
  certificate = [identityCopy certificate];
  v10 = [(CRKASMCredentialStore *)self makeEntryWithCertificate:certificate userIdentifier:v8];

  if (v10)
  {
    v11 = [(CRKASMCredentialStore *)self addIdentity:identityCopy entry:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)addIdentity:(id)identity entry:(id)entry
{
  identityCopy = identity;
  entryCopy = entry;
  v8 = entryCopy;
  if (identityCopy)
  {
    if (entryCopy)
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
  dictionaryValue = [v8 dictionaryValue];
  v10 = [[CRKAnnotatedCredential alloc] initWithCredential:identityCopy annotation:dictionaryValue];
  identityAnnotatedStore = [(CRKASMCredentialStore *)self identityAnnotatedStore];
  v12 = [MEMORY[0x277CBEB98] setWithObject:v10];
  v13 = [identityAnnotatedStore addCredentials:v12];
  v14 = [v13 objectForKey:identityCopy];

  return v14;
}

- (id)makeEntryWithCertificate:(id)certificate userIdentifier:(id)identifier
{
  certificateCopy = certificate;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    validityDateInterval = _CRKLogASM_6();
    if (os_log_type_enabled(validityDateInterval, OS_LOG_TYPE_ERROR))
    {
      [CRKASMCredentialStore makeEntryWithCertificate:userIdentifier:];
    }

    goto LABEL_13;
  }

  if (!certificateCopy)
  {
    validityDateInterval = _CRKLogASM_6();
    if (os_log_type_enabled(validityDateInterval, OS_LOG_TYPE_ERROR))
    {
      [CRKASMCredentialStore makeEntryWithCertificate:userIdentifier:];
    }

LABEL_13:
    v10 = 0;
    goto LABEL_18;
  }

  validityDateInterval = [certificateCopy validityDateInterval];
  if (validityDateInterval)
  {
    fingerprint = [certificateCopy fingerprint];
    if (!fingerprint)
    {
      v9 = _CRKLogASM_6();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CRKASMCredentialStore makeEntryWithCertificate:userIdentifier:];
      }
    }

    v10 = [[CRKASMCredentialManifestEntry alloc] initWithUserIdentifier:identifierCopy validityInterval:validityDateInterval fingerprint:fingerprint];
  }

  else
  {
    fingerprint = _CRKLogASM_6();
    if (os_log_type_enabled(fingerprint, OS_LOG_TYPE_ERROR))
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