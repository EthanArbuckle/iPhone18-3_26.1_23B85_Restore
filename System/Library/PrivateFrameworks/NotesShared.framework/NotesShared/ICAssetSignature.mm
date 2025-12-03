@interface ICAssetSignature
+ (BOOL)hasFetchedAssets:(id)assets;
+ (BOOL)hasLocallyStoredAssetsInObject:(id)object context:(id)context;
+ (BOOL)shouldWriteAssetIfNeededToKey:(id)key inRecord:(id)record forObject:(id)object context:(id)context;
+ (id)allAssetSignaturesForCloudSyncingObject:(id)object context:(id)context;
+ (id)assetSignatureForCloudKitRecordKey:(id)key isUserSpecificRecordKey:(BOOL)recordKey cloudSyncingObject:(id)object context:(id)context;
+ (id)assetSignatureHashFromAssets:(id)assets;
+ (id)assetSignaturesMatchingPredicate:(id)predicate context:(id)context;
+ (id)commonAssetSignaturesForCloudSyncingObject:(id)object context:(id)context;
+ (id)makeAssetSignatureIfNeededWithCloudKitRecordKey:(id)key isUserSpecificRecordKey:(BOOL)recordKey cloudSyncingObject:(id)object account:(id)account context:(id)context;
+ (id)makeAssetSignatureWithCloudKitRecordKey:(id)key fetchedLocalAssetSignatureHash:(id)hash lastKnownServerAssetSignatureHash:(id)signatureHash isUserSpecificRecordKey:(BOOL)recordKey cloudSyncingObject:(id)object account:(id)account context:(id)context;
+ (id)userSpecificAssetSignaturesForCloudSyncingObject:(id)object context:(id)context;
+ (void)mergeIncomingAssetsFromRecord:(id)record forObject:(id)object account:(id)account context:(id)context;
- (BOOL)outOfDate;
@end

@implementation ICAssetSignature

+ (id)makeAssetSignatureWithCloudKitRecordKey:(id)key fetchedLocalAssetSignatureHash:(id)hash lastKnownServerAssetSignatureHash:(id)signatureHash isUserSpecificRecordKey:(BOOL)recordKey cloudSyncingObject:(id)object account:(id)account context:(id)context
{
  if (context)
  {
    recordKeyCopy = recordKey;
    contextCopy = context;
    accountCopy = account;
    objectCopy = object;
    signatureHashCopy = signatureHash;
    hashCopy = hash;
    keyCopy = key;
    objc_opt_class();
    v21 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"ICAssetSignature" inManagedObjectContext:contextCopy];
    v22 = ICCheckedDynamicCast();

    persistentStore = [accountCopy persistentStore];

    [contextCopy assignObject:v22 toPersistentStore:persistentStore];
    [v22 setCloudKitRecordKey:keyCopy];

    [v22 setFetchedLocalAssetSignatureHash:hashCopy];
    [v22 setLastKnownServerAssetSignatureHash:signatureHashCopy];

    [v22 setIsUserSpecificRecordKey:recordKeyCopy];
    [v22 setCloudSyncingObject:objectCopy];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)makeAssetSignatureIfNeededWithCloudKitRecordKey:(id)key isUserSpecificRecordKey:(BOOL)recordKey cloudSyncingObject:(id)object account:(id)account context:(id)context
{
  recordKeyCopy = recordKey;
  keyCopy = key;
  objectCopy = object;
  accountCopy = account;
  contextCopy = context;
  if (contextCopy)
  {
    v16 = [self assetSignatureForCloudKitRecordKey:keyCopy isUserSpecificRecordKey:recordKeyCopy cloudSyncingObject:objectCopy context:contextCopy];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [self makeAssetSignatureWithCloudKitRecordKey:keyCopy fetchedLocalAssetSignatureHash:0 lastKnownServerAssetSignatureHash:0 isUserSpecificRecordKey:recordKeyCopy cloudSyncingObject:objectCopy account:accountCopy context:contextCopy];
    }

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)assetSignatureForCloudKitRecordKey:(id)key isUserSpecificRecordKey:(BOOL)recordKey cloudSyncingObject:(id)object context:(id)context
{
  v24[3] = *MEMORY[0x277D85DE8];
  if (context)
  {
    recordKeyCopy = recordKey;
    v10 = MEMORY[0x277CCA920];
    v11 = MEMORY[0x277CCAC30];
    contextCopy = context;
    objectCopy = object;
    v14 = [v11 predicateWithFormat:@"cloudKitRecordKey == %@", key];
    v24[0] = v14;
    v15 = MEMORY[0x277CCAC30];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:recordKeyCopy];
    v17 = [v15 predicateWithFormat:@"isUserSpecificRecordKey == %@", v16];
    v24[1] = v17;
    objectCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"cloudSyncingObject == %@", objectCopy];

    v24[2] = objectCopy;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
    v20 = [v10 andPredicateWithSubpredicates:v19];

    v21 = [self assetSignaturesMatchingPredicate:v20 context:contextCopy];

    firstObject = [v21 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)allAssetSignaturesForCloudSyncingObject:(id)object context:(id)context
{
  if (context)
  {
    v6 = MEMORY[0x277CCAC30];
    contextCopy = context;
    object = [v6 predicateWithFormat:@"cloudSyncingObject == %@", object];
    v9 = [self assetSignaturesMatchingPredicate:object context:contextCopy];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

+ (id)userSpecificAssetSignaturesForCloudSyncingObject:(id)object context:(id)context
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (context)
  {
    v6 = MEMORY[0x277CCA920];
    v7 = MEMORY[0x277CCAC30];
    contextCopy = context;
    objectCopy = object;
    v10 = [v7 predicateWithFormat:@"isUserSpecificRecordKey == %@", MEMORY[0x277CBEC38]];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"cloudSyncingObject == %@", objectCopy, v10];

    v16[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v13 = [v6 andPredicateWithSubpredicates:v12];

    v14 = [self assetSignaturesMatchingPredicate:v13 context:contextCopy];
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  return v14;
}

+ (id)commonAssetSignaturesForCloudSyncingObject:(id)object context:(id)context
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (context)
  {
    v6 = MEMORY[0x277CCA920];
    v7 = MEMORY[0x277CCAC30];
    contextCopy = context;
    objectCopy = object;
    v10 = [v7 predicateWithFormat:@"isUserSpecificRecordKey == %@", MEMORY[0x277CBEC28]];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"cloudSyncingObject == %@", objectCopy, v10];

    v16[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v13 = [v6 andPredicateWithSubpredicates:v12];

    v14 = [self assetSignaturesMatchingPredicate:v13 context:contextCopy];
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  return v14;
}

+ (id)assetSignaturesMatchingPredicate:(id)predicate context:(id)context
{
  v4 = MEMORY[0x277CBEBF8];
  if (context)
  {
    v5 = [ICAssetSignature ic_objectsMatchingPredicate:predicate context:?];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v4 = v7;
  }

  return v4;
}

+ (void)mergeIncomingAssetsFromRecord:(id)record forObject:(id)object account:(id)account context:(id)context
{
  v51 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  objectCopy = object;
  accountCopy = account;
  contextCopy = context;
  if (contextCopy)
  {
    assetsByKey = [recordCopy assetsByKey];
    v33 = recordCopy;
    recordID = [recordCopy recordID];
    v35 = [ICUserSpecificRecordIDParser isUserSpecificRecordID:recordID];

    v36 = [MEMORY[0x277CBEB58] set];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = [assetsByKey allKeys];
    v13 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v13)
    {
      v14 = v13;
      v39 = *v46;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v46 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v45 + 1) + 8 * i);
          objc_opt_class();
          v17 = [assetsByKey objectForKeyedSubscript:v16];
          v18 = ICDynamicCast();

          objc_opt_class();
          v19 = [assetsByKey objectForKeyedSubscript:v16];
          v20 = ICDynamicCast();

          if (v18)
          {
            v21 = [MEMORY[0x277CBEA60] arrayWithObject:v18];

            v20 = v21;
          }

          v22 = [self assetSignatureHashFromAssets:v20];
          if (v22)
          {
            v23 = [self hasFetchedAssets:v20];
            [v36 ic_addNonNilObject:v16];
            v24 = [ICAssetSignature makeAssetSignatureIfNeededWithCloudKitRecordKey:v16 isUserSpecificRecordKey:v35 cloudSyncingObject:objectCopy account:accountCopy context:contextCopy];
            [v24 setLastKnownServerAssetSignatureHash:v22];
            if (v23)
            {
              [v24 setFetchedLocalAssetSignatureHash:v22];
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v14);
    }

    if (v35)
    {
      [self userSpecificAssetSignaturesForCloudSyncingObject:objectCopy context:contextCopy];
    }

    else
    {
      [self commonAssetSignaturesForCloudSyncingObject:objectCopy context:contextCopy];
    }

    recordCopy = v33;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v25 = v42 = 0u;
    v26 = [v25 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v42;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v42 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v41 + 1) + 8 * j);
          cloudKitRecordKey = [v30 cloudKitRecordKey];
          v32 = [v36 containsObject:cloudKitRecordKey];

          if ((v32 & 1) == 0)
          {
            [contextCopy deleteObject:v30];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v27);
    }
  }
}

- (BOOL)outOfDate
{
  lastKnownServerAssetSignatureHash = [(ICAssetSignature *)self lastKnownServerAssetSignatureHash];
  if (lastKnownServerAssetSignatureHash)
  {
    fetchedLocalAssetSignatureHash = [(ICAssetSignature *)self fetchedLocalAssetSignatureHash];
    if (fetchedLocalAssetSignatureHash)
    {
      fetchedLocalAssetSignatureHash2 = [(ICAssetSignature *)self fetchedLocalAssetSignatureHash];
      lastKnownServerAssetSignatureHash2 = [(ICAssetSignature *)self lastKnownServerAssetSignatureHash];
      v7 = [fetchedLocalAssetSignatureHash2 isEqualToString:lastKnownServerAssetSignatureHash2] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (BOOL)hasLocallyStoredAssetsInObject:(id)object context:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  if (context)
  {
    [self allAssetSignaturesForCloudSyncingObject:object context:?];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v13 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v4);
          }

          fetchedLocalAssetSignatureHash = [*(*(&v10 + 1) + 8 * i) fetchedLocalAssetSignatureHash];

          if (fetchedLocalAssetSignatureHash)
          {
            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)shouldWriteAssetIfNeededToKey:(id)key inRecord:(id)record forObject:(id)object context:(id)context
{
  v6 = 1;
  if (object && context)
  {
    contextCopy = context;
    objectCopy = object;
    keyCopy = key;
    recordID = [record recordID];
    v15 = [ICUserSpecificRecordIDParser isUserSpecificRecordID:recordID];

    v16 = [self assetSignatureForCloudKitRecordKey:keyCopy isUserSpecificRecordKey:v15 cloudSyncingObject:objectCopy context:contextCopy];

    fetchedLocalAssetSignatureHash = [v16 fetchedLocalAssetSignatureHash];
    lastKnownServerAssetSignatureHash = [v16 lastKnownServerAssetSignatureHash];
    v19 = lastKnownServerAssetSignatureHash;
    if (fetchedLocalAssetSignatureHash | lastKnownServerAssetSignatureHash)
    {
      v6 = 0;
      if (fetchedLocalAssetSignatureHash && lastKnownServerAssetSignatureHash)
      {
        v6 = [fetchedLocalAssetSignatureHash isEqualToString:lastKnownServerAssetSignatureHash];
      }
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

+ (id)assetSignatureHashFromAssets:(id)assets
{
  v20 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    data = [MEMORY[0x277CBEB28] data];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = assetsCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          objc_opt_class();
          v10 = ICDynamicCast();
          v11 = v10;
          if (v10)
          {
            signature = [v10 signature];
            [data appendData:signature];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    ic_sha256 = [data ic_sha256];
  }

  else
  {
    ic_sha256 = 0;
  }

  return ic_sha256;
}

+ (BOOL)hasFetchedAssets:(id)assets
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  assetsCopy = assets;
  v4 = [assetsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(assetsCopy);
        }

        objc_opt_class();
        v7 = ICDynamicCast();
        v8 = v7;
        if (v7 && [v7 isFetched])
        {

          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [assetsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

@end