@interface ICAssetSignature
+ (BOOL)hasFetchedAssets:(id)a3;
+ (BOOL)hasLocallyStoredAssetsInObject:(id)a3 context:(id)a4;
+ (BOOL)shouldWriteAssetIfNeededToKey:(id)a3 inRecord:(id)a4 forObject:(id)a5 context:(id)a6;
+ (id)allAssetSignaturesForCloudSyncingObject:(id)a3 context:(id)a4;
+ (id)assetSignatureForCloudKitRecordKey:(id)a3 isUserSpecificRecordKey:(BOOL)a4 cloudSyncingObject:(id)a5 context:(id)a6;
+ (id)assetSignatureHashFromAssets:(id)a3;
+ (id)assetSignaturesMatchingPredicate:(id)a3 context:(id)a4;
+ (id)commonAssetSignaturesForCloudSyncingObject:(id)a3 context:(id)a4;
+ (id)makeAssetSignatureIfNeededWithCloudKitRecordKey:(id)a3 isUserSpecificRecordKey:(BOOL)a4 cloudSyncingObject:(id)a5 account:(id)a6 context:(id)a7;
+ (id)makeAssetSignatureWithCloudKitRecordKey:(id)a3 fetchedLocalAssetSignatureHash:(id)a4 lastKnownServerAssetSignatureHash:(id)a5 isUserSpecificRecordKey:(BOOL)a6 cloudSyncingObject:(id)a7 account:(id)a8 context:(id)a9;
+ (id)userSpecificAssetSignaturesForCloudSyncingObject:(id)a3 context:(id)a4;
+ (void)mergeIncomingAssetsFromRecord:(id)a3 forObject:(id)a4 account:(id)a5 context:(id)a6;
- (BOOL)outOfDate;
@end

@implementation ICAssetSignature

+ (id)makeAssetSignatureWithCloudKitRecordKey:(id)a3 fetchedLocalAssetSignatureHash:(id)a4 lastKnownServerAssetSignatureHash:(id)a5 isUserSpecificRecordKey:(BOOL)a6 cloudSyncingObject:(id)a7 account:(id)a8 context:(id)a9
{
  if (a9)
  {
    v11 = a6;
    v15 = a9;
    v16 = a8;
    v17 = a7;
    v18 = a5;
    v19 = a4;
    v20 = a3;
    objc_opt_class();
    v21 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"ICAssetSignature" inManagedObjectContext:v15];
    v22 = ICCheckedDynamicCast();

    v23 = [v16 persistentStore];

    [v15 assignObject:v22 toPersistentStore:v23];
    [v22 setCloudKitRecordKey:v20];

    [v22 setFetchedLocalAssetSignatureHash:v19];
    [v22 setLastKnownServerAssetSignatureHash:v18];

    [v22 setIsUserSpecificRecordKey:v11];
    [v22 setCloudSyncingObject:v17];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)makeAssetSignatureIfNeededWithCloudKitRecordKey:(id)a3 isUserSpecificRecordKey:(BOOL)a4 cloudSyncingObject:(id)a5 account:(id)a6 context:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v15)
  {
    v16 = [a1 assetSignatureForCloudKitRecordKey:v12 isUserSpecificRecordKey:v10 cloudSyncingObject:v13 context:v15];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [a1 makeAssetSignatureWithCloudKitRecordKey:v12 fetchedLocalAssetSignatureHash:0 lastKnownServerAssetSignatureHash:0 isUserSpecificRecordKey:v10 cloudSyncingObject:v13 account:v14 context:v15];
    }

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)assetSignatureForCloudKitRecordKey:(id)a3 isUserSpecificRecordKey:(BOOL)a4 cloudSyncingObject:(id)a5 context:(id)a6
{
  v24[3] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v7 = a4;
    v10 = MEMORY[0x277CCA920];
    v11 = MEMORY[0x277CCAC30];
    v12 = a6;
    v13 = a5;
    v14 = [v11 predicateWithFormat:@"cloudKitRecordKey == %@", a3];
    v24[0] = v14;
    v15 = MEMORY[0x277CCAC30];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v17 = [v15 predicateWithFormat:@"isUserSpecificRecordKey == %@", v16];
    v24[1] = v17;
    v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"cloudSyncingObject == %@", v13];

    v24[2] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
    v20 = [v10 andPredicateWithSubpredicates:v19];

    v21 = [a1 assetSignaturesMatchingPredicate:v20 context:v12];

    v22 = [v21 firstObject];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)allAssetSignaturesForCloudSyncingObject:(id)a3 context:(id)a4
{
  if (a4)
  {
    v6 = MEMORY[0x277CCAC30];
    v7 = a4;
    v8 = [v6 predicateWithFormat:@"cloudSyncingObject == %@", a3];
    v9 = [a1 assetSignaturesMatchingPredicate:v8 context:v7];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

+ (id)userSpecificAssetSignaturesForCloudSyncingObject:(id)a3 context:(id)a4
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v6 = MEMORY[0x277CCA920];
    v7 = MEMORY[0x277CCAC30];
    v8 = a4;
    v9 = a3;
    v10 = [v7 predicateWithFormat:@"isUserSpecificRecordKey == %@", MEMORY[0x277CBEC38]];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"cloudSyncingObject == %@", v9, v10];

    v16[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v13 = [v6 andPredicateWithSubpredicates:v12];

    v14 = [a1 assetSignaturesMatchingPredicate:v13 context:v8];
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  return v14;
}

+ (id)commonAssetSignaturesForCloudSyncingObject:(id)a3 context:(id)a4
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v6 = MEMORY[0x277CCA920];
    v7 = MEMORY[0x277CCAC30];
    v8 = a4;
    v9 = a3;
    v10 = [v7 predicateWithFormat:@"isUserSpecificRecordKey == %@", MEMORY[0x277CBEC28]];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"cloudSyncingObject == %@", v9, v10];

    v16[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v13 = [v6 andPredicateWithSubpredicates:v12];

    v14 = [a1 assetSignaturesMatchingPredicate:v13 context:v8];
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  return v14;
}

+ (id)assetSignaturesMatchingPredicate:(id)a3 context:(id)a4
{
  v4 = MEMORY[0x277CBEBF8];
  if (a4)
  {
    v5 = [ICAssetSignature ic_objectsMatchingPredicate:a3 context:?];
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

+ (void)mergeIncomingAssetsFromRecord:(id)a3 forObject:(id)a4 account:(id)a5 context:(id)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v38 = a4;
  v37 = a5;
  v40 = a6;
  if (v40)
  {
    v11 = [v10 assetsByKey];
    v33 = v10;
    v12 = [v10 recordID];
    v35 = [ICUserSpecificRecordIDParser isUserSpecificRecordID:v12];

    v36 = [MEMORY[0x277CBEB58] set];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = [v11 allKeys];
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
          v17 = [v11 objectForKeyedSubscript:v16];
          v18 = ICDynamicCast();

          objc_opt_class();
          v19 = [v11 objectForKeyedSubscript:v16];
          v20 = ICDynamicCast();

          if (v18)
          {
            v21 = [MEMORY[0x277CBEA60] arrayWithObject:v18];

            v20 = v21;
          }

          v22 = [a1 assetSignatureHashFromAssets:v20];
          if (v22)
          {
            v23 = [a1 hasFetchedAssets:v20];
            [v36 ic_addNonNilObject:v16];
            v24 = [ICAssetSignature makeAssetSignatureIfNeededWithCloudKitRecordKey:v16 isUserSpecificRecordKey:v35 cloudSyncingObject:v38 account:v37 context:v40];
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
      [a1 userSpecificAssetSignaturesForCloudSyncingObject:v38 context:v40];
    }

    else
    {
      [a1 commonAssetSignaturesForCloudSyncingObject:v38 context:v40];
    }

    v10 = v33;
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
          v31 = [v30 cloudKitRecordKey];
          v32 = [v36 containsObject:v31];

          if ((v32 & 1) == 0)
          {
            [v40 deleteObject:v30];
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
  v3 = [(ICAssetSignature *)self lastKnownServerAssetSignatureHash];
  if (v3)
  {
    v4 = [(ICAssetSignature *)self fetchedLocalAssetSignatureHash];
    if (v4)
    {
      v5 = [(ICAssetSignature *)self fetchedLocalAssetSignatureHash];
      v6 = [(ICAssetSignature *)self lastKnownServerAssetSignatureHash];
      v7 = [v5 isEqualToString:v6] ^ 1;
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

+ (BOOL)hasLocallyStoredAssetsInObject:(id)a3 context:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    [a1 allAssetSignaturesForCloudSyncingObject:a3 context:?];
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

          v8 = [*(*(&v10 + 1) + 8 * i) fetchedLocalAssetSignatureHash];

          if (v8)
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

+ (BOOL)shouldWriteAssetIfNeededToKey:(id)a3 inRecord:(id)a4 forObject:(id)a5 context:(id)a6
{
  v6 = 1;
  if (a5 && a6)
  {
    v11 = a6;
    v12 = a5;
    v13 = a3;
    v14 = [a4 recordID];
    v15 = [ICUserSpecificRecordIDParser isUserSpecificRecordID:v14];

    v16 = [a1 assetSignatureForCloudKitRecordKey:v13 isUserSpecificRecordKey:v15 cloudSyncingObject:v12 context:v11];

    v17 = [v16 fetchedLocalAssetSignatureHash];
    v18 = [v16 lastKnownServerAssetSignatureHash];
    v19 = v18;
    if (v17 | v18)
    {
      v6 = 0;
      if (v17 && v18)
      {
        v6 = [v17 isEqualToString:v18];
      }
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

+ (id)assetSignatureHashFromAssets:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x277CBEB28] data];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
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
            v12 = [v10 signature];
            [v4 appendData:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v13 = [v4 ic_sha256];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)hasFetchedAssets:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
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

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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