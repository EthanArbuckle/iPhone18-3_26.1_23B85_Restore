@interface CPLCloudKitStagingZoneIdentification
+ (id)recordsToFetchToIdentifyZoneID:(id)d proposedScopeType:(int64_t)type currentUserID:(id)iD;
+ (int64_t)proposedScopeTypeForCloudKitScope:(id)scope;
+ (int64_t)scopeTypeForCloudKitScope:(id)scope proposedScopeType:(int64_t)type fetchedRecords:(id)records currentUserID:(id)d;
- (id)scopeChangeFromCKRecords:(id)records currentUserID:(id)d previousScopeChange:(id)change;
@end

@implementation CPLCloudKitStagingZoneIdentification

+ (id)recordsToFetchToIdentifyZoneID:(id)d proposedScopeType:(int64_t)type currentUserID:(id)iD
{
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___CPLCloudKitStagingZoneIdentification;
  dCopy = d;
  v8 = objc_msgSendSuper2(&v12, "recordsToFetchToIdentifyZoneID:proposedScopeType:currentUserID:", dCopy, type, iD);
  v9 = [v8 mutableCopy];

  v10 = [[CKRecordID alloc] initWithRecordName:@"ExitConfig" zoneID:dCopy];
  [v9 addObject:v10];

  return v9;
}

+ (int64_t)proposedScopeTypeForCloudKitScope:(id)scope
{
  zoneID = [scope zoneID];
  zoneName = [zoneID zoneName];

  if (CPLIsStagedZoneName(zoneName, v5))
  {
    v6 = 6;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)scopeTypeForCloudKitScope:(id)scope proposedScopeType:(int64_t)type fetchedRecords:(id)records currentUserID:(id)d
{
  if (type)
  {
    if (type == 6)
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
    dCopy = d;
    zoneID = [scope zoneID];
    zoneName = [zoneID zoneName];
    v11 = CPLStagedZoneNameFromStagingZoneName(zoneName, dCopy);

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

- (id)scopeChangeFromCKRecords:(id)records currentUserID:(id)d previousScopeChange:(id)change
{
  recordsCopy = records;
  dCopy = d;
  changeCopy = change;
  v36.receiver = self;
  v36.super_class = CPLCloudKitStagingZoneIdentification;
  v11 = [(CPLCloudKitZoneIdentification *)&v36 scopeChangeFromCKRecords:recordsCopy currentUserID:dCopy previousScopeChange:changeCopy];
  zoneID = [(CPLCloudKitZoneIdentification *)self zoneID];
  zoneName = [zoneID zoneName];
  v14 = CPLStagedZoneNameFromStagingZoneName(zoneName, dCopy);

  if (v14)
  {
    v15 = [CKRecordZoneID alloc];
    zoneID2 = [(CPLCloudKitZoneIdentification *)self zoneID];
    ownerName = [zoneID2 ownerName];
    v18 = [v15 initWithZoneName:v14 ownerName:ownerName];

    v19 = [CPLCloudKitScope alloc];
    cloudKitScope = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
    v35 = v18;
    v21 = -[CPLCloudKitScope initWithZoneID:options:](v19, "initWithZoneID:options:", v18, [cloudKitScope options]);

    v22 = [CPLEngineScope alloc];
    cpl_zoneName = [v18 cpl_zoneName];
    v34 = [v22 initWithScopeIdentifier:cpl_zoneName scopeType:5];

    v24 = [(CPLCloudKitZoneIdentification *)[CPLCloudKitLibraryShareZoneIdentification alloc] initWithCloudKitScope:v21 engineScope:v34];
    cloudKitScope2 = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
    [(CPLCloudKitLibraryShareZoneIdentification *)v24 setStagingCloudKitScope:cloudKitScope2];

    v26 = [(CPLCloudKitLibraryShareZoneIdentification *)v24 scopeChangeFromCKRecords:recordsCopy currentUserID:dCopy previousScopeChange:changeCopy];
    [dCopy recordName];
    v27 = changeCopy;
    v29 = v28 = v11;
    v37 = v29;
    [NSArray arrayWithObjects:&v37 count:1];
    v31 = v30 = recordsCopy;
    [v26 setExitingUserIdentifiers:v31];

    v11 = v28;
    changeCopy = v27;
    [v11 setStagedScopeChange:v26];
    transportScope = [(CPLCloudKitScope *)v21 transportScope];
    [v11 setStagedTransportScope:transportScope];

    recordsCopy = v30;
  }

  return v11;
}

@end