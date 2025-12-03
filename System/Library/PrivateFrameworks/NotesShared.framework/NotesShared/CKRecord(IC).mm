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
  recordType = [self recordType];
  recordID = [self recordID];
  v5 = [recordID ic_loggingDescriptionIncludingBrackets:0];
  v6 = [v2 stringWithFormat:@"<%@ %@", recordType, v5];

  recordChangeTag = [self recordChangeTag];
  [v6 appendFormat:@" changeTag=%@", recordChangeTag];

  parent = [self parent];
  recordID2 = [parent recordID];
  recordName = [recordID2 recordName];
  v11 = recordName;
  if (recordName)
  {
    v12 = recordName;
  }

  else
  {
    v12 = @"nil";
  }

  [v6 appendFormat:@" parent=%@", v12];

  creationDate = [self creationDate];
  ic_iso8601Date = [creationDate ic_iso8601Date];
  v15 = ic_iso8601Date;
  if (ic_iso8601Date)
  {
    v16 = ic_iso8601Date;
  }

  else
  {
    v16 = @"nil";
  }

  [v6 appendFormat:@" created=%@", v16];

  creatorUserRecordID = [self creatorUserRecordID];
  recordName2 = [creatorUserRecordID recordName];
  v19 = recordName2;
  if (recordName2)
  {
    v20 = recordName2;
  }

  else
  {
    v20 = @"nil";
  }

  [v6 appendFormat:@" creator=%@", v20];

  modificationDate = [self modificationDate];
  ic_iso8601Date2 = [modificationDate ic_iso8601Date];
  v23 = ic_iso8601Date2;
  if (ic_iso8601Date2)
  {
    v24 = ic_iso8601Date2;
  }

  else
  {
    v24 = @"nil";
  }

  [v6 appendFormat:@" modified=%@", v24];

  modifiedByDevice = [self modifiedByDevice];
  v26 = modifiedByDevice;
  if (modifiedByDevice)
  {
    v27 = modifiedByDevice;
  }

  else
  {
    v27 = @"nil";
  }

  [v6 appendFormat:@" modifiedByDevice=%@", v27];

  share = [self share];

  if (share)
  {
    share2 = [self share];
    recordID3 = [share2 recordID];
    recordName3 = [recordID3 recordName];
    [v6 appendFormat:@" share=%@", recordName3];
  }

  [v6 appendString:@">"];

  return v6;
}

- (uint64_t)databaseScope
{
  recordID = [self recordID];
  databaseScope = [recordID databaseScope];

  return databaseScope;
}

- (BOOL)ic_hasMetadata
{
  creationDate = [self creationDate];
  if (creationDate)
  {
    creatorUserRecordID = [self creatorUserRecordID];
    if (creatorUserRecordID)
    {
      modificationDate = [self modificationDate];
      if (modificationDate)
      {
        lastModifiedUserRecordID = [self lastModifiedUserRecordID];
        v6 = lastModifiedUserRecordID != 0;
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
  recordID = [self recordID];
  ic_isOwnedByCurrentUser = [recordID ic_isOwnedByCurrentUser];

  return ic_isOwnedByCurrentUser;
}

+ (id)ic_assetKeyForKeyPrefix:()IC
{
  v3 = MEMORY[0x277CCACA8];
  ic_trimmedString = [a3 ic_trimmedString];
  v5 = [v3 stringWithFormat:@"%@Asset", ic_trimmedString];

  return v5;
}

+ (id)ic_encryptedKeyForKeyPrefix:()IC
{
  v3 = MEMORY[0x277CCACA8];
  ic_trimmedString = [a3 ic_trimmedString];
  v5 = [v3 stringWithFormat:@"%@Encrypted", ic_trimmedString];

  return v5;
}

+ (id)ic_encryptedDataKeyForAssetKey:()IC
{
  v4 = [a3 ic_stringWithoutSuffix:@"Asset"];
  v5 = [self ic_encryptedKeyForKeyPrefix:v4];

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
  valuesByKey = [self valuesByKey];
  v6 = [objc_opt_class() ic_valueKeyForKeyPrefix:v4];
  v7 = [valuesByKey objectForKeyedSubscript:v6];
  v8 = ICCheckedDynamicCast();

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    objc_opt_class();
    valuesByKey2 = [self valuesByKey];
    v11 = [objc_opt_class() ic_assetKeyForKeyPrefix:v4];
    v12 = [valuesByKey2 objectForKeyedSubscript:v11];
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

  managedObjectContext = [v10 managedObjectContext];
  v16 = [ICAssetSignature shouldWriteAssetIfNeededToKey:v13 inRecord:self forObject:v10 context:managedObjectContext];

  if ([self ic_shouldUseAssetForInlineableDataAsset:v23 approach:a5])
  {
    if (!v16)
    {
      goto LABEL_6;
    }

    encryptedValues2 = [ICCloudSyncingObject assetForData:v23];
    valuesByKey = [self valuesByKey];
    [valuesByKey setObject:0 forKeyedSubscript:v12];

    valuesByKey2 = [self valuesByKey];
    [valuesByKey2 setObject:encryptedValues2 forKeyedSubscript:v13];

    encryptedValues = [self encryptedValues];
    [encryptedValues setObject:0 forKeyedSubscript:v14];
  }

  else
  {
    valuesByKey3 = [self valuesByKey];
    [valuesByKey3 setObject:v23 forKeyedSubscript:v12];

    valuesByKey4 = [self valuesByKey];
    [valuesByKey4 setObject:0 forKeyedSubscript:v13];

    encryptedValues2 = [self encryptedValues];
    [encryptedValues2 setObject:0 forKeyedSubscript:v14];
  }

LABEL_6:
}

- (id)ic_encryptedInlineableDataAssetForKeyPrefix:()IC
{
  v4 = a3;
  objc_opt_class();
  encryptedValues = [self encryptedValues];
  v6 = [objc_opt_class() ic_encryptedKeyForKeyPrefix:v4];
  v7 = [encryptedValues objectForKeyedSubscript:v6];
  v8 = ICCheckedDynamicCast();

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    objc_opt_class();
    valuesByKey = [self valuesByKey];
    v11 = [objc_opt_class() ic_assetKeyForKeyPrefix:v4];
    v12 = [valuesByKey objectForKeyedSubscript:v11];
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

  managedObjectContext = [v10 managedObjectContext];
  v16 = [ICAssetSignature shouldWriteAssetIfNeededToKey:v13 inRecord:self forObject:v10 context:managedObjectContext];

  if ([self ic_shouldUseAssetForInlineableDataAsset:v23 approach:a5])
  {
    if (!v16)
    {
      goto LABEL_6;
    }

    encryptedValues2 = [ICCloudSyncingObject assetForData:v23];
    valuesByKey = [self valuesByKey];
    [valuesByKey setObject:0 forKeyedSubscript:v12];

    valuesByKey2 = [self valuesByKey];
    [valuesByKey2 setObject:encryptedValues2 forKeyedSubscript:v13];

    encryptedValues = [self encryptedValues];
    [encryptedValues setObject:0 forKeyedSubscript:v14];
  }

  else
  {
    valuesByKey3 = [self valuesByKey];
    [valuesByKey3 setObject:0 forKeyedSubscript:v12];

    valuesByKey4 = [self valuesByKey];
    [valuesByKey4 setObject:0 forKeyedSubscript:v13];

    encryptedValues2 = [self encryptedValues];
    [encryptedValues2 setObject:v23 forKeyedSubscript:v14];
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
  valuesByKey = [self valuesByKey];
  v8 = [valuesByKey objectForKeyedSubscript:v5];
  v9 = ICCheckedDynamicCast();

  if (v9)
  {
    v10 = [ICCloudSyncingObject dataForAsset:v9];
    valuesByKey2 = [self valuesByKey];
    [valuesByKey2 setObject:v10 forKeyedSubscript:v14];

    valuesByKey3 = [self valuesByKey];
    [valuesByKey3 setObject:0 forKeyedSubscript:v5];

    encryptedValues = [self encryptedValues];
    [encryptedValues setObject:0 forKeyedSubscript:v6];
  }
}

- (void)ic_inlineEncryptedDataAssetForKeyPrefix:()IC
{
  v4 = a3;
  v14 = [objc_opt_class() ic_valueKeyForKeyPrefix:v4];
  v5 = [objc_opt_class() ic_assetKeyForKeyPrefix:v4];
  v6 = [objc_opt_class() ic_encryptedKeyForKeyPrefix:v4];

  objc_opt_class();
  valuesByKey = [self valuesByKey];
  v8 = [valuesByKey objectForKeyedSubscript:v5];
  v9 = ICCheckedDynamicCast();

  if (v9)
  {
    valuesByKey2 = [self valuesByKey];
    [valuesByKey2 setObject:0 forKeyedSubscript:v14];

    valuesByKey3 = [self valuesByKey];
    [valuesByKey3 setObject:0 forKeyedSubscript:v5];

    v12 = [ICCloudSyncingObject dataForAsset:v9];
    encryptedValues = [self encryptedValues];
    [encryptedValues setObject:v12 forKeyedSubscript:v6];
  }
}

- (id)ic_copyWithUserFields:()IC
{
  v3 = [self copyWithZone:0 userFields:a3];

  return v3;
}

- (uint64_t)hasFetchedAssets
{
  selfCopy = self;
  v37 = *MEMORY[0x277D85DE8];
  assetsByKey = [self assetsByKey];
  allKeys = [assetsByKey allKeys];

  if ([allKeys count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v4 = allKeys;
    v24 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v24)
    {
      v5 = *v31;
      v6 = 0x277CBE000uLL;
      v22 = *v31;
      v23 = selfCopy;
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
          v9 = [selfCopy objectForKeyedSubscript:v8];
          v10 = ICDynamicCast();

          if (v10)
          {
            v35 = v10;
            v11 = [*(v6 + 2656) arrayWithObjects:&v35 count:1];
          }

          else
          {
            objc_opt_class();
            v12 = [selfCopy objectForKeyedSubscript:v8];
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
                isFetched = [v18 isFetched];

                if (isFetched)
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
          selfCopy = v23;
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
  selfCopy = self;
  v37 = *MEMORY[0x277D85DE8];
  assetsByKey = [self assetsByKey];
  allKeys = [assetsByKey allKeys];

  if ([allKeys count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v4 = allKeys;
    v24 = [v4 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v24)
    {
      v5 = *v31;
      v6 = 0x277CBE000uLL;
      v22 = *v31;
      v23 = selfCopy;
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
          v9 = [selfCopy objectForKeyedSubscript:v8];
          v10 = ICDynamicCast();

          if (v10)
          {
            v35 = v10;
            v11 = [*(v6 + 2656) arrayWithObjects:&v35 count:1];
          }

          else
          {
            objc_opt_class();
            v12 = [selfCopy objectForKeyedSubscript:v8];
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
                isUnfetched = [v18 isUnfetched];

                if (isUnfetched)
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
          selfCopy = v23;
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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allKeys = [self allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        objc_opt_class();
        v9 = [self objectForKeyedSubscript:v8];
        v10 = ICDynamicCast();

        if (v10)
        {
          [dictionary setObject:v10 forKeyedSubscript:v8];
        }

        else
        {
          objc_opt_class();
          v11 = [self objectForKeyedSubscript:v8];
          v12 = ICDynamicCast();

          if ([v12 count])
          {
            objc_opt_class();
            [v12 objectAtIndexedSubscript:0];
            selfCopy = self;
            v14 = v6;
            v15 = dictionary;
            v17 = v16 = allKeys;
            v18 = ICDynamicCast();

            allKeys = v16;
            dictionary = v15;
            v6 = v14;
            self = selfCopy;
            if (v18)
            {
              [dictionary setObject:v12 forKeyedSubscript:v8];
            }
          }

          v5 = v21;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v19 = [dictionary copy];

  return v19;
}

@end