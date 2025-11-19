@interface CPLCloudKitStagingZoneIdentification
+ (id)recordsToFetchToIdentifyZoneID:(id)a3 proposedScopeType:(int64_t)a4 currentUserID:(id)a5;
+ (int64_t)proposedScopeTypeForCloudKitScope:(id)a3;
+ (int64_t)scopeTypeForCloudKitScope:(id)a3 proposedScopeType:(int64_t)a4 fetchedRecords:(id)a5 currentUserID:(id)a6;
- (id)scopeChangeFromCKRecords:(id)a3 currentUserID:(id)a4 previousScopeChange:(id)a5;
@end

@implementation CPLCloudKitStagingZoneIdentification

+ (id)recordsToFetchToIdentifyZoneID:(id)a3 proposedScopeType:(int64_t)a4 currentUserID:(id)a5
{
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___CPLCloudKitStagingZoneIdentification;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v12, "recordsToFetchToIdentifyZoneID:proposedScopeType:currentUserID:", v7, a4, a5);
  v9 = [v8 mutableCopy];

  v10 = [[CKRecordID alloc] initWithRecordName:@"ExitConfig" zoneID:v7];
  [v9 addObject:v10];

  return v9;
}

+ (int64_t)proposedScopeTypeForCloudKitScope:(id)a3
{
  v3 = [a3 zoneID];
  v4 = [v3 zoneName];

  if (CPLIsStagedZoneName(v4, v5))
  {
    v6 = 6;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)scopeTypeForCloudKitScope:(id)a3 proposedScopeType:(int64_t)a4 fetchedRecords:(id)a5 currentUserID:(id)a6
{
  if (a4)
  {
    if (a4 == 6)
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = a6;
    v9 = [a3 zoneID];
    v10 = [v9 zoneName];
    v11 = CPLStagedZoneNameFromStagingZoneName(v10, v8);

    if (v11)
    {
      v6 = 6;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)scopeChangeFromCKRecords:(id)a3 currentUserID:(id)a4 previousScopeChange:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v36.receiver = self;
  v36.super_class = CPLCloudKitStagingZoneIdentification;
  v11 = [(CPLCloudKitZoneIdentification *)&v36 scopeChangeFromCKRecords:v8 currentUserID:v9 previousScopeChange:v10];
  v12 = [(CPLCloudKitZoneIdentification *)self zoneID];
  v13 = [v12 zoneName];
  v14 = CPLStagedZoneNameFromStagingZoneName(v13, v9);

  if (v14)
  {
    v15 = [CKRecordZoneID alloc];
    v16 = [(CPLCloudKitZoneIdentification *)self zoneID];
    v17 = [v16 ownerName];
    v18 = [v15 initWithZoneName:v14 ownerName:v17];

    v19 = [CPLCloudKitScope alloc];
    v20 = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
    v35 = v18;
    v21 = -[CPLCloudKitScope initWithZoneID:options:](v19, "initWithZoneID:options:", v18, [v20 options]);

    v22 = [CPLEngineScope alloc];
    v23 = [v18 cpl_zoneName];
    v34 = [v22 initWithScopeIdentifier:v23 scopeType:5];

    v24 = [(CPLCloudKitZoneIdentification *)[CPLCloudKitLibraryShareZoneIdentification alloc] initWithCloudKitScope:v21 engineScope:v34];
    v25 = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
    [(CPLCloudKitLibraryShareZoneIdentification *)v24 setStagingCloudKitScope:v25];

    v26 = [(CPLCloudKitLibraryShareZoneIdentification *)v24 scopeChangeFromCKRecords:v8 currentUserID:v9 previousScopeChange:v10];
    [v9 recordName];
    v27 = v10;
    v29 = v28 = v11;
    v37 = v29;
    [NSArray arrayWithObjects:&v37 count:1];
    v31 = v30 = v8;
    [v26 setExitingUserIdentifiers:v31];

    v11 = v28;
    v10 = v27;
    [v11 setStagedScopeChange:v26];
    v32 = [(CPLCloudKitScope *)v21 transportScope];
    [v11 setStagedTransportScope:v32];

    v8 = v30;
  }

  return v11;
}

@end