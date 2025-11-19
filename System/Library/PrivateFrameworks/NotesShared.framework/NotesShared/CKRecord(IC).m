@interface CKRecord(IC)
+ (CKRecordSystemFieldsTransformer)ic_systemFieldsValueTransformer;
+ (id)ic_assetKeyForKeyPrefix:()IC;
+ (id)ic_encryptedDataKeyForAssetKey:()IC;
+ (id)ic_encryptedKeyForKeyPrefix:()IC;
- (BOOL)ic_hasMetadata;
- (BOOL)ic_shouldUseAssetForInlineableDataAsset:()IC approach:;
- (id)assetsByKey;
- (id)ic_copyWithUserFields:()IC;
- (id)ic_encryptedInlineableDataAssetForKeyPrefix:()IC;
- (id)ic_inlineableDataAssetForKeyPrefix:()IC;
- (id)ic_loggingDescription;
- (uint64_t)databaseScope;
- (uint64_t)hasFetchedAssets;
- (uint64_t)hasUnfetchedAssets;
- (uint64_t)ic_isOwnedByCurrentUser;
- (void)ic_inlineDataAssetForKeyPrefix:()IC;
- (void)ic_inlineEncryptedDataAssetForKeyPrefix:()IC;
- (void)ic_setEncryptedInlineableDataAsset:()IC forKeyPrefix:approach:withObject:;
- (void)ic_setInlineableDataAsset:()IC forKeyPrefix:approach:withObject:;
@end

@implementation CKRecord(IC)

+ (CKRecordSystemFieldsTransformer)ic_systemFieldsValueTransformer
{
  v0 = objc_opt_class();
  if (v0 != objc_opt_class())
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[self class] == [CKRecord class]" functionName:"+[CKRecord(IC) ic_systemFieldsValueTransformer]" simulateCrash:1 showAlert:0 format:{@"-ic_systemFieldsValueTransformer must be overridden, and must not call super: %@", objc_opt_class()}];
  }

  v1 = objc_alloc_init(CKRecordSystemFieldsTransformer);

  return v1;
}

- (id)ic_loggingDescription
{
  v2 = MEMORY[0x277CCAB68];
  v3 = [a1 recordType];
  v4 = [a1 recordID];
  v5 = [v4 ic_loggingDescriptionIncludingBrackets:0];
  v6 = [v2 stringWithFormat:@"<%@ %@", v3, v5];

  v7 = [a1 recordChangeTag];
  [v6 appendFormat:@" changeTag=%@", v7];

  v8 = [a1 parent];
  v9 = [v8 recordID];
  v10 = [v9 recordName];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"nil";
  }

  [v6 appendFormat:@" parent=%@", v12];

  v13 = [a1 creationDate];
  v14 = [v13 ic_iso8601Date];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"nil";
  }

  [v6 appendFormat:@" created=%@", v16];

  v17 = [a1 creatorUserRecordID];
  v18 = [v17 recordName];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = @"nil";
  }

  [v6 appendFormat:@" creator=%@", v20];

  v21 = [a1 modificationDate];
  v22 = [v21 ic_iso8601Date];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = @"nil";
  }

  [v6 appendFormat:@" modified=%@", v24];

  v25 = [a1 modifiedByDevice];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = @"nil";
  }

  [v6 appendFormat:@" modifiedByDevice=%@", v27];

  v28 = [a1 share];

  if (v28)
  {
    v29 = [a1 share];
    v30 = [v29 recordID];
    v31 = [v30 recordName];
    [v6 appendFormat:@" share=%@", v31];
  }

  [v6 appendString:@">"];

  return v6;
}

- (uint64_t)databaseScope
{
  v1 = [a1 recordID];
  v2 = [v1 databaseScope];

  return v2;
}

- (BOOL)ic_hasMetadata
{
  v2 = [a1 creationDate];
  if (v2)
  {
    v3 = [a1 creatorUserRecordID];
    if (v3)
    {
      v4 = [a1 modificationDate];
      if (v4)
      {
        v5 = [a1 lastModifiedUserRecordID];
        v6 = v5 != 0;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)ic_isOwnedByCurrentUser
{
  v1 = [a1 recordID];
  v2 = [v1 ic_isOwnedByCurrentUser];

  return v2;
}

+ (id)ic_assetKeyForKeyPrefix:()IC
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a3 ic_trimmedString];
  v5 = [v3 stringWithFormat:@"%@Asset", v4];

  return v5;
}

+ (id)ic_encryptedKeyForKeyPrefix:()IC
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a3 ic_trimmedString];
  v5 = [v3 stringWithFormat:@"%@Encrypted", v4];

  return v5;
}

+ (id)ic_encryptedDataKeyForAssetKey:()IC
{
  v4 = [a3 ic_stringWithoutSuffix:@"Asset"];
  v5 = [a1 ic_encryptedKeyForKeyPrefix:v4];

  return v5;
}

- (BOOL)ic_shouldUseAssetForInlineableDataAsset:()IC approach:
{
  if (a4 == 1)
  {
    return 0;
  }

  v5 = [a3 length];
  v6 = +[ICCloudConfiguration sharedConfiguration];
  v4 = v5 > [v6 maxInlineAssetSizeBytes];

  return v4;
}

- (id)ic_inlineableDataAssetForKeyPrefix:()IC
{
  v4 = a3;
  objc_opt_class();
  v5 = [a1 valuesByKey];
  v6 = [objc_opt_class() ic_valueKeyForKeyPrefix:v4];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = ICCheckedDynamicCast();

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    objc_opt_class();
    v10 = [a1 valuesByKey];
    v11 = [objc_opt_class() ic_assetKeyForKeyPrefix:v4];
    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = ICCheckedDynamicCast();

    if (v13)
    {
      v9 = [ICCloudSyncingObject dataForAsset:v13];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)ic_setInlineableDataAsset:()IC forKeyPrefix:approach:withObject:
{
  v23 = a3;
  v10 = a6;
  v11 = a4;
  v12 = [objc_opt_class() ic_valueKeyForKeyPrefix:v11];
  v13 = [objc_opt_class() ic_assetKeyForKeyPrefix:v11];
  v14 = [objc_opt_class() ic_encryptedKeyForKeyPrefix:v11];

  v15 = [v10 managedObjectContext];
  v16 = [ICAssetSignature shouldWriteAssetIfNeededToKey:v13 inRecord:a1 forObject:v10 context:v15];

  if ([a1 ic_shouldUseAssetForInlineableDataAsset:v23 approach:a5])
  {
    if (!v16)
    {
      goto LABEL_6;
    }

    v17 = [ICCloudSyncingObject assetForData:v23];
    v18 = [a1 valuesByKey];
    [v18 setObject:0 forKeyedSubscript:v12];

    v19 = [a1 valuesByKey];
    [v19 setObject:v17 forKeyedSubscript:v13];

    v20 = [a1 encryptedValues];
    [v20 setObject:0 forKeyedSubscript:v14];
  }

  else
  {
    v21 = [a1 valuesByKey];
    [v21 setObject:v23 forKeyedSubscript:v12];

    v22 = [a1 valuesByKey];
    [v22 setObject:0 forKeyedSubscript:v13];

    v17 = [a1 encryptedValues];
    [v17 setObject:0 forKeyedSubscript:v14];
  }

LABEL_6:
}

- (id)ic_encryptedInlineableDataAssetForKeyPrefix:()IC
{
  v4 = a3;
  objc_opt_class();
  v5 = [a1 encryptedValues];
  v6 = [objc_opt_class() ic_encryptedKeyForKeyPrefix:v4];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = ICCheckedDynamicCast();

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    objc_opt_class();
    v10 = [a1 valuesByKey];
    v11 = [objc_opt_class() ic_assetKeyForKeyPrefix:v4];
    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = ICCheckedDynamicCast();

    if (v13)
    {
      v9 = [ICCloudSyncingObject dataForAsset:v13];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)ic_setEncryptedInlineableDataAsset:()IC forKeyPrefix:approach:withObject:
{
  v23 = a3;
  v10 = a6;
  v11 = a4;
  v12 = [objc_opt_class() ic_valueKeyForKeyPrefix:v11];
  v13 = [objc_opt_class() ic_assetKeyForKeyPrefix:v11];
  v14 = [objc_opt_class() ic_encryptedKeyForKeyPrefix:v11];

  v15 = [v10 managedObjectContext];
  v16 = [ICAssetSignature shouldWriteAssetIfNeededToKey:v13 inRecord:a1 forObject:v10 context:v15];

  if ([a1 ic_shouldUseAssetForInlineableDataAsset:v23 approach:a5])
  {
    if (!v16)
    {
      goto LABEL_6;
    }

    v17 = [ICCloudSyncingObject assetForData:v23];
    v18 = [a1 valuesByKey];
    [v18 setObject:0 forKeyedSubscript:v12];

    v19 = [a1 valuesByKey];
    [v19 setObject:v17 forKeyedSubscript:v13];

    v20 = [a1 encryptedValues];
    [v20 setObject:0 forKeyedSubscript:v14];
  }

  else
  {
    v21 = [a1 valuesByKey];
    [v21 setObject:0 forKeyedSubscript:v12];

    v22 = [a1 valuesByKey];
    [v22 setObject:0 forKeyedSubscript:v13];

    v17 = [a1 encryptedValues];
    [v17 setObject:v23 forKeyedSubscript:v14];
  }

LABEL_6:
}

- (void)ic_inlineDataAssetForKeyPrefix:()IC
{
  v4 = a3;
  v14 = [objc_opt_class() ic_valueKeyForKeyPrefix:v4];
  v5 = [objc_opt_class() ic_assetKeyForKeyPrefix:v4];
  v6 = [objc_opt_class() ic_encryptedKeyForKeyPrefix:v4];

  objc_opt_class();
  v7 = [a1 valuesByKey];
  v8 = [v7 objectForKeyedSubscript:v5];
  v9 = ICCheckedDynamicCast();

  if (v9)
  {
    v10 = [ICCloudSyncingObject dataForAsset:v9];
    v11 = [a1 valuesByKey];
    [v11 setObject:v10 forKeyedSubscript:v14];

    v12 = [a1 valuesByKey];
    [v12 setObject:0 forKeyedSubscript:v5];

    v13 = [a1 encryptedValues];
    [v13 setObject:0 forKeyedSubscript:v6];
  }
}

- (void)ic_inlineEncryptedDataAssetForKeyPrefix:()IC
{
  v4 = a3;
  v14 = [objc_opt_class() ic_valueKeyForKeyPrefix:v4];
  v5 = [objc_opt_class() ic_assetKeyForKeyPrefix:v4];
  v6 = [objc_opt_class() ic_encryptedKeyForKeyPrefix:v4];

  objc_opt_class();
  v7 = [a1 valuesByKey];
  v8 = [v7 objectForKeyedSubscript:v5];
  v9 = ICCheckedDynamicCast();

  if (v9)
  {
    v10 = [a1 valuesByKey];
    [v10 setObject:0 forKeyedSubscript:v14];

    v11 = [a1 valuesByKey];
    [v11 setObject:0 forKeyedSubscript:v5];

    v12 = [ICCloudSyncingObject dataForAsset:v9];
    v13 = [a1 encryptedValues];
    [v13 setObject:v12 forKeyedSubscript:v6];
  }
}

- (id)ic_copyWithUserFields:()IC
{
  v3 = [a1 copyWithZone:0 userFields:a3];

  return v3;
}

- (uint64_t)hasFetchedAssets
{
  v1 = a1;
  v37 = *MEMORY[0x277D85DE8];
  v2 = [a1 assetsByKey];
  v3 = [v2 allKeys];

  if ([v3 count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v4 = v3;
    v24 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v24)
    {
      v5 = *v31;
      v6 = 0x277CBE000uLL;
      v22 = *v31;
      v23 = v1;
      v25 = v4;
      do
      {
        v7 = 0;
        do
        {
          if (*v31 != v5)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v30 + 1) + 8 * v7);
          objc_opt_class();
          v9 = [v1 objectForKeyedSubscript:v8];
          v10 = ICDynamicCast();

          if (v10)
          {
            v35 = v10;
            v11 = [*(v6 + 2656) arrayWithObjects:&v35 count:1];
          }

          else
          {
            objc_opt_class();
            v12 = [v1 objectForKeyedSubscript:v8];
            v11 = ICDynamicCast();
          }

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v13 = v11;
          v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v27;
            while (2)
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                objc_opt_class();
                v18 = ICDynamicCast();
                v19 = [v18 isFetched];

                if (v19)
                {

                  v20 = 1;
                  v4 = v25;
                  goto LABEL_24;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          ++v7;
          v1 = v23;
          v4 = v25;
          v5 = v22;
          v6 = 0x277CBE000;
        }

        while (v7 != v24);
        v20 = 0;
        v24 = [v25 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v24);
    }

    else
    {
      v20 = 0;
    }

LABEL_24:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (uint64_t)hasUnfetchedAssets
{
  v1 = a1;
  v37 = *MEMORY[0x277D85DE8];
  v2 = [a1 assetsByKey];
  v3 = [v2 allKeys];

  if ([v3 count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v4 = v3;
    v24 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v24)
    {
      v5 = *v31;
      v6 = 0x277CBE000uLL;
      v22 = *v31;
      v23 = v1;
      v25 = v4;
      do
      {
        v7 = 0;
        do
        {
          if (*v31 != v5)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v30 + 1) + 8 * v7);
          objc_opt_class();
          v9 = [v1 objectForKeyedSubscript:v8];
          v10 = ICDynamicCast();

          if (v10)
          {
            v35 = v10;
            v11 = [*(v6 + 2656) arrayWithObjects:&v35 count:1];
          }

          else
          {
            objc_opt_class();
            v12 = [v1 objectForKeyedSubscript:v8];
            v11 = ICDynamicCast();
          }

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v13 = v11;
          v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v27;
            while (2)
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                objc_opt_class();
                v18 = ICDynamicCast();
                v19 = [v18 isUnfetched];

                if (v19)
                {

                  v20 = 1;
                  v4 = v25;
                  goto LABEL_24;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          ++v7;
          v1 = v23;
          v4 = v25;
          v5 = v22;
          v6 = 0x277CBE000;
        }

        while (v7 != v24);
        v20 = 0;
        v24 = [v25 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v24);
    }

    else
    {
      v20 = 0;
    }

LABEL_24:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)assetsByKey
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [a1 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      v21 = v5;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        objc_opt_class();
        v9 = [a1 objectForKeyedSubscript:v8];
        v10 = ICDynamicCast();

        if (v10)
        {
          [v2 setObject:v10 forKeyedSubscript:v8];
        }

        else
        {
          objc_opt_class();
          v11 = [a1 objectForKeyedSubscript:v8];
          v12 = ICDynamicCast();

          if ([v12 count])
          {
            objc_opt_class();
            [v12 objectAtIndexedSubscript:0];
            v13 = a1;
            v14 = v6;
            v15 = v2;
            v17 = v16 = v3;
            v18 = ICDynamicCast();

            v3 = v16;
            v2 = v15;
            v6 = v14;
            a1 = v13;
            if (v18)
            {
              [v2 setObject:v12 forKeyedSubscript:v8];
            }
          }

          v5 = v21;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v19 = [v2 copy];

  return v19;
}

@end