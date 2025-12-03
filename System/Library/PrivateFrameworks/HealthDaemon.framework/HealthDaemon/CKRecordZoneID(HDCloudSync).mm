@interface CKRecordZoneID(HDCloudSync)
+ (id)hd_individualSyncZoneIDWithSyncCircleIdentifier:()HDCloudSync storeIdentifier:;
+ (id)hd_sharedSummaryZoneIDWithSyncCircleIdentifier:()HDCloudSync userIdentifier:;
+ (id)hd_stateSyncZoneIDForSyncCircleIdentifier:()HDCloudSync domain:;
- (BOOL)hd_isSharedSummaryZoneIDForUserIdentifier:()HDCloudSync syncCircleIdentifier:;
- (id)hd_storeIdentifier;
- (id)hd_syncCircleIdentifier;
- (id)hd_withOwnerName:()HDCloudSync;
- (uint64_t)hd_isIndividualSyncZoneIDForStoreIdentifier:()HDCloudSync syncCircleIdentifier:;
- (uint64_t)hd_isStateSyncZoneIDForSyncCircleIdentifier:()HDCloudSync domain:;
@end

@implementation CKRecordZoneID(HDCloudSync)

+ (id)hd_individualSyncZoneIDWithSyncCircleIdentifier:()HDCloudSync storeIdentifier:
{
  v7 = a4;
  v8 = a3;
  if ([v8 containsString:@":"])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CKRecordZoneID+HDCloudSync.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"![syncCircleIdentifier containsString:RecordZoneIDComponentsSeparator]"}];
  }

  v9 = MEMORY[0x277CCACA8];
  uUIDString = [v7 UUIDString];
  v11 = [v9 stringWithFormat:@"%@%@%@", v8, @":", uUIDString];

  v12 = objc_alloc(MEMORY[0x277CBC5F8]);
  v13 = [v12 initWithZoneName:v11 ownerName:*MEMORY[0x277CBBF28]];

  return v13;
}

- (uint64_t)hd_isIndividualSyncZoneIDForStoreIdentifier:()HDCloudSync syncCircleIdentifier:
{
  zoneName = [self zoneName];
  v7 = [zoneName componentsSeparatedByString:@":"];

  if ([v7 count] == 2 && (v8 = objc_alloc(MEMORY[0x277CCAD78]), objc_msgSend(v7, "objectAtIndexedSubscript:", 1), v9 = objc_claimAutoreleasedReturnValue(), *a3 = objc_msgSend(v8, "initWithUUIDString:", v9), v9, *a3))
  {
    *a4 = [v7 objectAtIndexedSubscript:0];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)hd_sharedSummaryZoneIDWithSyncCircleIdentifier:()HDCloudSync userIdentifier:
{
  v7 = a4;
  v8 = a3;
  if ([v8 containsString:@":"])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CKRecordZoneID+HDCloudSync.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"![syncCircleIdentifier containsString:RecordZoneIDComponentsSeparator]"}];
  }

  v9 = MEMORY[0x277CCACA8];
  uUIDString = [v7 UUIDString];
  v11 = [v9 stringWithFormat:@"%@%@%@%@%@", v8, @":", @"SummarySharing", @":", uUIDString];

  v12 = objc_alloc(MEMORY[0x277CBC5F8]);
  v13 = [v12 initWithZoneName:v11 ownerName:*MEMORY[0x277CBBF28]];

  return v13;
}

- (BOOL)hd_isSharedSummaryZoneIDForUserIdentifier:()HDCloudSync syncCircleIdentifier:
{
  zoneName = [self zoneName];
  v7 = [zoneName componentsSeparatedByString:@":"];

  if ([v7 count] == 3 && (objc_msgSend(v7, "objectAtIndexedSubscript:", 1), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"SummarySharing"), v8, v9))
  {
    *a4 = [v7 objectAtIndexedSubscript:0];
    v10 = objc_alloc(MEMORY[0x277CCAD78]);
    v11 = [v7 objectAtIndexedSubscript:2];
    *a3 = [v10 initWithUUIDString:v11];

    v12 = *a3 != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)hd_stateSyncZoneIDForSyncCircleIdentifier:()HDCloudSync domain:
{
  v7 = a3;
  v8 = a4;
  if ([v7 containsString:@":"])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CKRecordZoneID+HDCloudSync.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"![syncCircleIdentifier containsString:RecordZoneIDComponentsSeparator]"}];
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@%@%@", v7, @":", @"StateSync", @":", v8];
  v10 = objc_alloc(MEMORY[0x277CBC5F8]);
  v11 = [v10 initWithZoneName:v9 ownerName:*MEMORY[0x277CBBF28]];

  return v11;
}

- (uint64_t)hd_isStateSyncZoneIDForSyncCircleIdentifier:()HDCloudSync domain:
{
  zoneName = [self zoneName];
  v7 = [zoneName componentsSeparatedByString:@":"];

  if ([v7 count] == 3 && (objc_msgSend(v7, "objectAtIndexedSubscript:", 1), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"StateSync"), v8, v9))
  {
    *a3 = [v7 objectAtIndexedSubscript:0];
    *a4 = [v7 objectAtIndexedSubscript:2];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)hd_syncCircleIdentifier
{
  v34 = 0;
  v2 = [self hd_isMasterZoneIDForSyncCircleIdentifier:&v34];
  v3 = v34;
  v4 = v3;
  if (v2)
  {
    goto LABEL_2;
  }

  v33 = v3;
  v6 = [self hd_isUnifiedSyncZoneIDForSyncCircleIdentifier:&v33];
  v7 = v33;

  if (v6)
  {
    goto LABEL_4;
  }

  v32 = v7;
  v11 = [self hd_isPrivateMetadataZoneIDForSyncCircleIdentifier:&v32];
  v4 = v32;

  if (v11)
  {
LABEL_2:
    v5 = v4;
LABEL_5:
    v8 = v5;
    v9 = v5;
    goto LABEL_6;
  }

  v31 = v4;
  v12 = [self hd_isAttachmentZoneIDForSyncCircleIdentifier:&v31];
  v7 = v31;

  if (v12)
  {
LABEL_4:
    v5 = v7;
    goto LABEL_5;
  }

  v29 = 0;
  v30 = v7;
  v13 = [self hd_isStateSyncZoneIDForSyncCircleIdentifier:&v30 domain:&v29];
  v14 = v30;

  v15 = v29;
  if (v13)
  {
    v16 = v14;
  }

  else
  {
    v28 = v14;
    v17 = [self hd_isContextSyncZoneIDForSyncCircleIdentifier:&v28];
    v18 = v28;

    if (!v17)
    {
      v26 = v18;
      v27 = 0;
      v19 = [self hd_isSharedSummaryZoneIDForUserIdentifier:&v27 syncCircleIdentifier:&v26];
      v20 = v27;
      v21 = v26;

      if (v19)
      {
        v8 = v21;
        v9 = v8;
      }

      else
      {
        v24 = v21;
        v25 = 0;
        v22 = [self hd_isIndividualSyncZoneIDForStoreIdentifier:&v25 syncCircleIdentifier:&v24];
        v23 = v25;
        v9 = v24;

        v8 = 0;
        if (v22)
        {
          v8 = v9;
        }
      }

      goto LABEL_22;
    }

    v16 = v18;
  }

  v8 = v16;
  v9 = v16;
LABEL_22:

LABEL_6:

  return v8;
}

- (id)hd_storeIdentifier
{
  v6 = 0;
  v7 = 0;
  v1 = [self hd_isIndividualSyncZoneIDForStoreIdentifier:&v7 syncCircleIdentifier:&v6];
  v2 = v7;
  v3 = v6;
  v4 = 0;
  if (v1)
  {
    v4 = v2;
  }

  return v4;
}

- (id)hd_withOwnerName:()HDCloudSync
{
  v4 = MEMORY[0x277CBC5F8];
  v5 = a3;
  v6 = [v4 alloc];
  zoneName = [self zoneName];
  v8 = [v6 initWithZoneName:zoneName ownerName:v5];

  return v8;
}

@end