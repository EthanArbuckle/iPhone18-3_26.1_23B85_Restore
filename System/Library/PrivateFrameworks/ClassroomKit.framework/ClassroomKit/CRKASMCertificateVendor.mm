@interface CRKASMCertificateVendor
- (BOOL)isEqual:(id)equal;
- (CRKASMCertificateVendor)initWithCredentialStore:(id)store;
- (id)certificatesForUserIdentifier:(id)identifier;
- (id)certificatesForUserIdentifiers:(id)identifiers;
- (id)manifest;
- (unint64_t)hash;
- (void)forgetPersistentIDs:(id)ds;
@end

@implementation CRKASMCertificateVendor

- (CRKASMCertificateVendor)initWithCredentialStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = CRKASMCertificateVendor;
  v6 = [(CRKASMCertificateVendor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_credentialStore, store);
  }

  return v7;
}

- (id)certificatesForUserIdentifier:(id)identifier
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:identifier];
  v5 = [(CRKASMCertificateVendor *)self certificatesForUserIdentifiers:v4];

  return v5;
}

- (id)certificatesForUserIdentifiers:(id)identifiers
{
  v47 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v32 = objc_opt_new();
  v36 = objc_opt_new();
  selfCopy = self;
  manifest = [(CRKASMCertificateVendor *)self manifest];
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process certificate manifest contents for %lu user identifiers", objc_msgSend(identifiersCopy, "count")];
  v30 = [CRKExecutionTimer startedTimerWithDescription:?];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [manifest persistentIDs];
  v6 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  v35 = manifest;
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    v34 = identifiersCopy;
    do
    {
      v9 = 0;
      v38 = v7;
      do
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v40 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [manifest entryForPersistentID:v10];
        if ([v12 isFullyPopulated])
        {
          userIdentifier = [v12 userIdentifier];
          v14 = [identifiersCopy containsObject:userIdentifier];

          validityInterval = [v12 validityInterval];
          crk_containsCurrentDate = [validityInterval crk_containsCurrentDate];

          if (v14)
          {
            v17 = crk_containsCurrentDate == 0;
          }

          else
          {
            v17 = 1;
          }

          if (!v17)
          {
            credentialStore = [(CRKASMCertificateVendor *)selfCopy credentialStore];
            v19 = [credentialStore certificateWithPersistentID:v10];

            if (!v19)
            {
              goto LABEL_18;
            }

            fingerprint = [v12 fingerprint];
            if (fingerprint || ([v19 fingerprint], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              fingerprint2 = [v12 fingerprint];
              fingerprint3 = [v19 fingerprint];
              v23 = [fingerprint2 isEqual:fingerprint3];

              if (fingerprint)
              {
              }

              else
              {
              }

              identifiersCopy = v34;
              manifest = v35;
              if ((v23 & 1) == 0)
              {
LABEL_18:
                v24 = v36;
                v25 = v10;
                goto LABEL_21;
              }
            }

            else
            {
              v33 = 0;
            }

            v24 = v32;
            v25 = v19;
LABEL_21:
            [v24 addObject:v25];
          }

          v7 = v38;
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v7);
  }

  [(CRKASMCertificateVendor *)selfCopy forgetPersistentIDs:v36];
  v26 = _CRKLogASM_17();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    stop = [v30 stop];
    *buf = 138412290;
    v45 = stop;
    _os_log_impl(&dword_243550000, v26, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v28 = [v32 copy];

  return v28;
}

- (id)manifest
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [CRKExecutionTimer startedTimerWithDescription:@"Read certificate manifest"];
  credentialStore = [(CRKASMCertificateVendor *)self credentialStore];
  certificateManifest = [credentialStore certificateManifest];

  v6 = _CRKLogASM_17();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    stop = [v3 stop];
    v9 = 138412290;
    v10 = stop;
    _os_log_impl(&dword_243550000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v9, 0xCu);
  }

  return certificateManifest;
}

- (void)forgetPersistentIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v5 = _CRKLogASM_17();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CRKASMCertificateVendor *)dsCopy forgetPersistentIDs:v5];
    }

    credentialStore = [(CRKASMCertificateVendor *)self credentialStore];
    [credentialStore forgetCertificatesWithPersistentIDs:dsCopy];
  }
}

- (unint64_t)hash
{
  credentialStore = [(CRKASMCertificateVendor *)self credentialStore];
  v3 = [credentialStore hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  v30 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v5 = [@"credentialStore" componentsSeparatedByString:{@", "}];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_15;
  v28[3] = &unk_278DC1280;
  v7 = v6;
  v29 = v7;
  [v7 enumerateObjectsUsingBlock:v28];

  selfCopy = self;
  v9 = equalCopy;
  v10 = v7;
  if (selfCopy == v9)
  {
    v21 = 1;
  }

  else if ([(CRKASMCertificateVendor *)v9 isMemberOfClass:objc_opt_class()])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v23 = v10;
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = v9;
          v18 = [(CRKASMCertificateVendor *)selfCopy valueForKey:v16];
          v19 = [(CRKASMCertificateVendor *)v17 valueForKey:v16];

          if (v18 | v19)
          {
            v20 = [v18 isEqual:v19];

            if (!v20)
            {
              v21 = 0;
              goto LABEL_16;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v21 = 1;
LABEL_16:
      v10 = v23;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)forgetPersistentIDs:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Found %lu invalid trusted user certificates", &v3, 0xCu);
}

@end