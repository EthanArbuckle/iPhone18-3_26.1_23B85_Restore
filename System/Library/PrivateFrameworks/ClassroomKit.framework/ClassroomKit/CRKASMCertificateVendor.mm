@interface CRKASMCertificateVendor
- (BOOL)isEqual:(id)a3;
- (CRKASMCertificateVendor)initWithCredentialStore:(id)a3;
- (id)certificatesForUserIdentifier:(id)a3;
- (id)certificatesForUserIdentifiers:(id)a3;
- (id)manifest;
- (unint64_t)hash;
- (void)forgetPersistentIDs:(id)a3;
@end

@implementation CRKASMCertificateVendor

- (CRKASMCertificateVendor)initWithCredentialStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKASMCertificateVendor;
  v6 = [(CRKASMCertificateVendor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_credentialStore, a3);
  }

  return v7;
}

- (id)certificatesForUserIdentifier:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:a3];
  v5 = [(CRKASMCertificateVendor *)self certificatesForUserIdentifiers:v4];

  return v5;
}

- (id)certificatesForUserIdentifiers:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32 = objc_opt_new();
  v36 = objc_opt_new();
  v37 = self;
  v5 = [(CRKASMCertificateVendor *)self manifest];
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process certificate manifest contents for %lu user identifiers", objc_msgSend(v4, "count")];
  v30 = [CRKExecutionTimer startedTimerWithDescription:?];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [v5 persistentIDs];
  v6 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  v35 = v5;
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    v34 = v4;
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
        v12 = [v5 entryForPersistentID:v10];
        if ([v12 isFullyPopulated])
        {
          v13 = [v12 userIdentifier];
          v14 = [v4 containsObject:v13];

          v15 = [v12 validityInterval];
          v16 = [v15 crk_containsCurrentDate];

          if (v14)
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 1;
          }

          if (!v17)
          {
            v18 = [(CRKASMCertificateVendor *)v37 credentialStore];
            v19 = [v18 certificateWithPersistentID:v10];

            if (!v19)
            {
              goto LABEL_18;
            }

            v20 = [v12 fingerprint];
            if (v20 || ([v19 fingerprint], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v21 = [v12 fingerprint];
              v22 = [v19 fingerprint];
              v23 = [v21 isEqual:v22];

              if (v20)
              {
              }

              else
              {
              }

              v4 = v34;
              v5 = v35;
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

  [(CRKASMCertificateVendor *)v37 forgetPersistentIDs:v36];
  v26 = _CRKLogASM_17();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v30 stop];
    *buf = 138412290;
    v45 = v27;
    _os_log_impl(&dword_243550000, v26, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v28 = [v32 copy];

  return v28;
}

- (id)manifest
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [CRKExecutionTimer startedTimerWithDescription:@"Read certificate manifest"];
  v4 = [(CRKASMCertificateVendor *)self credentialStore];
  v5 = [v4 certificateManifest];

  v6 = _CRKLogASM_17();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v3 stop];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_243550000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v9, 0xCu);
  }

  return v5;
}

- (void)forgetPersistentIDs:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = _CRKLogASM_17();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CRKASMCertificateVendor *)v4 forgetPersistentIDs:v5];
    }

    v6 = [(CRKASMCertificateVendor *)self credentialStore];
    [v6 forgetCertificatesWithPersistentIDs:v4];
  }
}

- (unint64_t)hash
{
  v2 = [(CRKASMCertificateVendor *)self credentialStore];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [@"credentialStore" componentsSeparatedByString:{@", "}];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_15;
  v28[3] = &unk_278DC1280;
  v7 = v6;
  v29 = v7;
  [v7 enumerateObjectsUsingBlock:v28];

  v8 = self;
  v9 = v4;
  v10 = v7;
  if (v8 == v9)
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
          v18 = [(CRKASMCertificateVendor *)v8 valueForKey:v16];
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