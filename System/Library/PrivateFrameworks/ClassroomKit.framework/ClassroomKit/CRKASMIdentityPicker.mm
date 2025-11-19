@interface CRKASMIdentityPicker
- (BOOL)isManifestEntryValid:(id)a3 manifest:(id)a4;
- (CRKASMIdentityPicker)initWithCredentialStore:(id)a3 userIdentifier:(id)a4;
- (CRKIdentity)identity;
- (id)arrayBySortingPersistentIDs:(id)a3;
- (id)candidatePersistentIDsInManifest:(id)a3;
- (id)manifest;
- (id)pickIdentityFromCandidates:(id)a3 manifest:(id)a4;
- (id)pickIdentityFromOrderedCandidates:(id)a3 manifest:(id)a4;
@end

@implementation CRKASMIdentityPicker

- (CRKASMIdentityPicker)initWithCredentialStore:(id)a3 userIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CRKASMIdentityPicker;
  v9 = [(CRKASMIdentityPicker *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_credentialStore, a3);
    v11 = [v8 copy];
    userIdentifier = v10->_userIdentifier;
    v10->_userIdentifier = v11;
  }

  return v10;
}

- (CRKIdentity)identity
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(CRKASMIdentityPicker *)self manifest];
  v4 = [CRKExecutionTimer startedTimerWithDescription:@"Process identity manifest contents"];
  v5 = [(CRKASMIdentityPicker *)self candidatePersistentIDsInManifest:v3];
  v6 = [(CRKASMIdentityPicker *)self pickIdentityFromCandidates:v5 manifest:v3];
  v7 = _CRKLogASM_9();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 stop];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_243550000, v7, OS_LOG_TYPE_DEFAULT, "%@", &v10, 0xCu);
  }

  return v6;
}

- (id)manifest
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [CRKExecutionTimer startedTimerWithDescription:@"Read identity manifest"];
  v4 = [(CRKASMIdentityPicker *)self credentialStore];
  v5 = [v4 identityManifest];

  v6 = _CRKLogASM_9();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v3 stop];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_243550000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v9, 0xCu);
  }

  return v5;
}

- (id)candidatePersistentIDsInManifest:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v4 persistentIDs];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v4 entryForPersistentID:v11];
        if ([(CRKASMIdentityPicker *)self isManifestEntryValid:v12 manifest:v4])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (BOOL)isManifestEntryValid:(id)a3 manifest:(id)a4
{
  v6 = a3;
  if ([v6 isFullyPopulated])
  {
    v7 = [v6 userIdentifier];
    if (v7 || ([(CRKASMIdentityPicker *)self userIdentifier], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [v6 userIdentifier];
      v9 = [(CRKASMIdentityPicker *)self userIdentifier];
      v10 = [v8 isEqual:v9];

      if (v7)
      {
LABEL_11:

        v13 = [v6 validityInterval];
        v14 = [v13 crk_containsCurrentDate];

        v12 = v10 & v14;
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_11;
  }

  v11 = _CRKLogASM_9();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [CRKASMIdentityPicker isManifestEntryValid:v11 manifest:?];
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)pickIdentityFromCandidates:(id)a3 manifest:(id)a4
{
  v6 = a4;
  v7 = [(CRKASMIdentityPicker *)self arrayBySortingPersistentIDs:a3];
  v8 = [(CRKASMIdentityPicker *)self pickIdentityFromOrderedCandidates:v7 manifest:v6];

  return v8;
}

- (id)pickIdentityFromOrderedCandidates:(id)a3 manifest:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26 = a4;
  v25 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v24 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v24)
  {
    v23 = *v29;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [v26 entryForPersistentID:v7];
        v10 = [(CRKASMIdentityPicker *)self credentialStore];
        v11 = [v10 identityWithPersistentID:v7];

        if (v11)
        {
          v12 = [v9 fingerprint];
          if (!v12)
          {
            v21 = [v11 certificate];
            v20 = [v21 fingerprint];
            if (!v20)
            {

LABEL_19:
              objc_autoreleasePoolPop(v8);
              goto LABEL_20;
            }
          }

          v13 = [v9 fingerprint];
          v14 = [v11 certificate];
          v15 = [v14 fingerprint];
          v16 = [v13 isEqual:v15];

          if (v12)
          {

            if (v16)
            {
              goto LABEL_19;
            }
          }

          else
          {

            if (v16)
            {
              goto LABEL_19;
            }
          }
        }

        v17 = _CRKLogASM_9();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [(CRKASMIdentityPicker *)v32 pickIdentityFromOrderedCandidates:&v33 manifest:v17];
        }

        [v25 addObject:v7];
        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v24 != v6);
      v24 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_20:

  v18 = [(CRKASMIdentityPicker *)self credentialStore];
  [v18 forgetIdentitiesWithPersistentIDs:v25];

  return v11;
}

- (id)arrayBySortingPersistentIDs:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC98];
  v4 = a3;
  v5 = [v3 sortDescriptorWithKey:@"crk_hexString" ascending:1];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = [v4 sortedArrayUsingDescriptors:v6];

  return v7;
}

- (void)pickIdentityFromOrderedCandidates:(void *)a3 manifest:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 userIdentifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_243550000, a4, OS_LOG_TYPE_ERROR, "Found a repointed persistent ID for user identifier %@. Forgetting it...", a1, 0xCu);
}

@end