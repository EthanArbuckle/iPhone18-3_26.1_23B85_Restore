@interface CPLCloudKitLibraryShareZoneIdentification
+ (BOOL)isSupportedShareType:(id)type;
+ (id)recordsToFetchToIdentifyZoneID:(id)d proposedScopeType:(int64_t)type currentUserID:(id)iD;
+ (id)shareTypes;
+ (id)supportedZonePrefixes;
+ (int64_t)_scopeTypeForCloudKitScope:(id)scope;
- (BOOL)isSupportedShareType:(id)type;
- (BOOL)supportsDownloadOfChange:(id)change scopeProvider:(id)provider;
- (BOOL)supportsDownloadOfRecordClass:(Class)class;
- (BOOL)supportsUploadOfChange:(id)change scopeProvider:(id)provider;
- (id)cloudKitScope;
- (id)proposedStagingZoneIdentificationWithCurrentUserID:(id)d;
- (id)recordsToUpdateFromScopeChange:(id)change currentUserID:(id)d;
- (id)scopeChangeFromCKRecords:(id)records currentUserID:(id)d previousScopeChange:(id)change;
- (id)scopeFlagsUpdateFromCKRecords:(id)records;
- (id)shareRecordIDToDelete;
- (id)updatedFlagsFromCKRecord:(id)record;
- (id)updatedFlagsFromDeletedCKRecordID:(id)d recordType:(id)type;
- (id)updatedScopeChangeFromScopeChange:(id)change currentUserID:(id)d withCKRecord:(id)record;
- (id)updatedScopeChangeFromScopeChange:(id)change currentUserID:(id)d withDeletedCKRecordID:(id)iD recordType:(id)type;
@end

@implementation CPLCloudKitLibraryShareZoneIdentification

+ (id)supportedZonePrefixes
{
  v4[0] = CPLPrimarySharingScopeIdentifierPrefix;
  v4[1] = CPLPrimarySharingScopeIdentifierPrefixForParallelUniverse;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

+ (int64_t)_scopeTypeForCloudKitScope:(id)scope
{
  if ([scope isShared])
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

+ (id)shareTypes
{
  v4 = CKPhotosSharedLibraryShareType;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

+ (BOOL)isSupportedShareType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"shared_library"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CPLCloudKitLibraryShareZoneIdentification;
    v5 = objc_msgSendSuper2(&v7, "isSupportedShareType:", typeCopy);
  }

  return v5;
}

- (BOOL)isSupportedShareType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"shared_library"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CPLCloudKitLibraryShareZoneIdentification;
    v5 = [(CPLCloudKitZoneIdentification *)&v7 isSupportedShareType:typeCopy];
  }

  return v5;
}

- (BOOL)supportsUploadOfChange:(id)change scopeProvider:(id)provider
{
  changeCopy = change;
  providerCopy = provider;
  if ([changeCopy supportsSharing])
  {
    v10.receiver = self;
    v10.super_class = CPLCloudKitLibraryShareZoneIdentification;
    v8 = [(CPLCloudKitZoneIdentification *)&v10 supportsUploadOfChange:changeCopy scopeProvider:providerCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)supportsDownloadOfRecordClass:(Class)class
{
  supportsSharing = [(objc_class *)class supportsSharing];
  if (supportsSharing)
  {
    v7.receiver = self;
    v7.super_class = CPLCloudKitLibraryShareZoneIdentification;
    LOBYTE(supportsSharing) = [(CPLCloudKitZoneIdentification *)&v7 supportsDownloadOfRecordClass:class];
  }

  return supportsSharing;
}

- (BOOL)supportsDownloadOfChange:(id)change scopeProvider:(id)provider
{
  changeCopy = change;
  providerCopy = provider;
  if ([changeCopy supportsSharing])
  {
    v10.receiver = self;
    v10.super_class = CPLCloudKitLibraryShareZoneIdentification;
    v8 = [(CPLCloudKitZoneIdentification *)&v10 supportsDownloadOfChange:changeCopy scopeProvider:providerCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)cloudKitScope
{
  stagingCloudKitScope = self->_stagingCloudKitScope;
  if (stagingCloudKitScope)
  {
    cloudKitScope = stagingCloudKitScope;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CPLCloudKitLibraryShareZoneIdentification;
    cloudKitScope = [(CPLCloudKitZoneIdentification *)&v5 cloudKitScope];
  }

  return cloudKitScope;
}

- (id)shareRecordIDToDelete
{
  if ([(CPLCloudKitZoneIdentification *)self scopeType]== 5)
  {
    v3 = [(CPLCloudKitZoneIdentification *)self recordIDWithRecordName:CKRecordNameZoneWideShare];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)recordsToFetchToIdentifyZoneID:(id)d proposedScopeType:(int64_t)type currentUserID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___CPLCloudKitLibraryShareZoneIdentification;
  v10 = objc_msgSendSuper2(&v16, "recordsToFetchToIdentifyZoneID:proposedScopeType:currentUserID:", dCopy, type, iDCopy);
  v11 = [v10 mutableCopy];

  v12 = [[CKRecordID alloc] initWithRecordName:@"ParticipantExitStates" zoneID:dCopy];
  [v11 addObject:v12];

  v13 = [[CKRecordID alloc] initWithRecordName:@"ExitConfig" zoneID:dCopy];
  [v11 addObject:v13];

  if (+[CPLLibraryShareScopeChange serverSupportsLibraryShareSettingsRecordSyncing])
  {
    v14 = CPLLibraryShareSettingsRecordID(dCopy, iDCopy);
    if (v14)
    {
      [v11 addObject:v14];
    }
  }

  return v11;
}

- (id)scopeChangeFromCKRecords:(id)records currentUserID:(id)d previousScopeChange:(id)change
{
  recordsCopy = records;
  dCopy = d;
  changeCopy = change;
  v28.receiver = self;
  v28.super_class = CPLCloudKitLibraryShareZoneIdentification;
  v12 = [(CPLCloudKitLibraryZoneIdentification *)&v28 scopeChangeFromCKRecords:recordsCopy currentUserID:dCopy previousScopeChange:changeCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1001A9654(self, v12, a2);
  }

  zoneID = [(CPLCloudKitZoneIdentification *)self zoneID];
  v14 = [recordsCopy cplRecordWithName:@"ParticipantExitStates" zonedID:zoneID];

  if (v14)
  {
    recordType = [v14 recordType];
    v16 = [recordType isEqualToString:@"ParticipantExitStates"];

    if (v16)
    {
      [v12 updateWithExitStatesRecord:v14];
    }
  }

  if (self->_stagingCloudKitScope || [(CPLCloudKitZoneIdentification *)self scopeType]== 4)
  {
    zoneID2 = [(CPLCloudKitZoneIdentification *)self zoneID];
    v18 = [recordsCopy cplRecordWithName:@"ExitConfig" zonedID:zoneID2];

    if (v18)
    {
      recordType2 = [v18 recordType];
      v20 = [recordType2 isEqualToString:@"SharedSyncExitConfig"];

      if (v20)
      {
        [v12 updateWithExitConfigRecord:v18];
      }
    }
  }

  else
  {
    [v12 updateExitConfigFromPreviousScopeChange:changeCopy];
  }

  if (+[CPLLibraryShareScopeChange serverSupportsLibraryShareSettingsRecordSyncing])
  {
    zoneID3 = [(CPLCloudKitZoneIdentification *)self zoneID];
    v22 = CPLLibraryShareSettingsRecordID(zoneID3, dCopy);

    if (v22)
    {
      v23 = [recordsCopy objectForKeyedSubscript:v22];
      v24 = v23;
      if (v23)
      {
        recordType3 = [v23 recordType];
        v26 = [recordType3 isEqualToString:@"CPLScopeUserSettings"];

        if (v26)
        {
          [v12 updateLibraryShareSettingsWithCKRecord:v24];
        }
      }
    }
  }

  return v12;
}

- (id)scopeFlagsUpdateFromCKRecords:(id)records
{
  v5.receiver = self;
  v5.super_class = CPLCloudKitLibraryShareZoneIdentification;
  v3 = [(CPLCloudKitZoneIdentification *)&v5 scopeFlagsUpdateFromCKRecords:records];

  return v3;
}

- (id)updatedScopeChangeFromScopeChange:(id)change currentUserID:(id)d withCKRecord:(id)record
{
  changeCopy = change;
  dCopy = d;
  recordCopy = record;
  v28.receiver = self;
  v28.super_class = CPLCloudKitLibraryShareZoneIdentification;
  v12 = [(CPLCloudKitLibraryZoneIdentification *)&v28 updatedScopeChangeFromScopeChange:changeCopy currentUserID:dCopy withCKRecord:recordCopy];
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_1001A9764(self, v12, a2);
    }
  }

  recordType = [recordCopy recordType];
  if ([recordType isEqualToString:@"ParticipantExitStates"])
  {
    recordID = [recordCopy recordID];
    recordName = [recordID recordName];
    v16 = [recordName isEqualToString:@"ParticipantExitStates"];

    if (v16)
    {
      if (!v12)
      {
        v12 = [changeCopy copy];
      }

      [v12 updateWithExitStatesRecord:recordCopy];
      goto LABEL_17;
    }
  }

  else
  {
  }

  recordType2 = [recordCopy recordType];
  if ([recordType2 isEqualToString:@"SharedSyncExitConfig"])
  {
    recordID2 = [recordCopy recordID];
    recordName2 = [recordID2 recordName];
    v20 = [recordName2 isEqualToString:@"ExitConfig"];

    if (v20 && (self->_stagingCloudKitScope || [(CPLCloudKitZoneIdentification *)self scopeType]== 4))
    {
      if (!v12)
      {
        v12 = [changeCopy copy];
      }

      [v12 updateWithExitConfigRecord:recordCopy];
    }
  }

  else
  {
  }

LABEL_17:
  if (+[CPLLibraryShareScopeChange serverSupportsLibraryShareSettingsRecordSyncing])
  {
    recordType3 = [recordCopy recordType];
    v22 = [recordType3 isEqualToString:@"CPLScopeUserSettings"];

    if (v22)
    {
      zoneID = [(CPLCloudKitZoneIdentification *)self zoneID];
      v24 = CPLLibraryShareSettingsRecordID(zoneID, dCopy);

      if (v24)
      {
        recordID3 = [recordCopy recordID];
        v26 = [recordID3 isEqual:v24];

        if (v26)
        {
          if (!v12)
          {
            v12 = [changeCopy copy];
          }

          [v12 updateLibraryShareSettingsWithCKRecord:recordCopy];
        }
      }
    }
  }

  return v12;
}

- (id)updatedFlagsFromCKRecord:(id)record
{
  v5.receiver = self;
  v5.super_class = CPLCloudKitLibraryShareZoneIdentification;
  v3 = [(CPLCloudKitZoneIdentification *)&v5 updatedFlagsFromCKRecord:record];

  return v3;
}

- (id)updatedScopeChangeFromScopeChange:(id)change currentUserID:(id)d withDeletedCKRecordID:(id)iD recordType:(id)type
{
  changeCopy = change;
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  v23.receiver = self;
  v23.super_class = CPLCloudKitLibraryShareZoneIdentification;
  v15 = [(CPLCloudKitZoneIdentification *)&v23 updatedScopeChangeFromScopeChange:changeCopy currentUserID:dCopy withDeletedCKRecordID:iDCopy recordType:typeCopy];
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_1001A9874(self, v15, a2);
    }
  }

  if ([typeCopy isEqualToString:@"ParticipantExitStates"] && (objc_msgSend(iDCopy, "recordName"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"ParticipantExitStates"), v16, v17))
  {
    if (!v15)
    {
      v15 = [changeCopy copy];
    }

    [v15 updateWithExitStatesRecord:0];
  }

  else if ([typeCopy isEqualToString:@"SharedSyncExitConfig"])
  {
    recordName = [iDCopy recordName];
    v19 = [recordName isEqualToString:@"ExitConfig"];

    if (v19)
    {
      if (self->_stagingCloudKitScope || [(CPLCloudKitZoneIdentification *)self scopeType]== 4)
      {
        if (!v15)
        {
          v15 = [changeCopy copy];
        }

        [v15 updateWithExitConfigRecord:0];
      }
    }
  }

  if (+[CPLLibraryShareScopeChange serverSupportsLibraryShareSettingsRecordSyncing](CPLLibraryShareScopeChange, "serverSupportsLibraryShareSettingsRecordSyncing") && [typeCopy isEqualToString:@"CPLScopeUserSettings"])
  {
    zoneID = [(CPLCloudKitZoneIdentification *)self zoneID];
    v21 = CPLLibraryShareSettingsRecordID(zoneID, dCopy);

    if (v21 && [iDCopy isEqual:v21])
    {
      if (!v15)
      {
        v15 = [changeCopy copy];
      }

      [v15 updateLibraryShareSettingsWithCKRecord:0];
    }
  }

  return v15;
}

- (id)updatedFlagsFromDeletedCKRecordID:(id)d recordType:(id)type
{
  v6.receiver = self;
  v6.super_class = CPLCloudKitLibraryShareZoneIdentification;
  v4 = [(CPLCloudKitZoneIdentification *)&v6 updatedFlagsFromDeletedCKRecordID:d recordType:type];

  return v4;
}

- (id)recordsToUpdateFromScopeChange:(id)change currentUserID:(id)d
{
  changeCopy = change;
  dCopy = d;
  v13.receiver = self;
  v13.super_class = CPLCloudKitLibraryShareZoneIdentification;
  v8 = [(CPLCloudKitZoneIdentification *)&v13 recordsToUpdateFromScopeChange:changeCopy currentUserID:dCopy];
  v9 = [v8 mutableCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    zoneID = [(CPLCloudKitZoneIdentification *)self zoneID];
    v11 = [changeCopy ckRecordForLibraryShareSettingsWithZoneID:zoneID userID:dCopy];

    if (v11)
    {
      [v9 addObject:v11];
    }
  }

  return v9;
}

- (id)proposedStagingZoneIdentificationWithCurrentUserID:(id)d
{
  dCopy = d;
  engineScope = [(CPLCloudKitZoneIdentification *)self engineScope];
  scopeType = [engineScope scopeType];

  if (scopeType == 5)
  {
    cloudKitScope = [(CPLCloudKitLibraryShareZoneIdentification *)self cloudKitScope];
    zoneID = [cloudKitScope zoneID];
    cloudKitScope2 = [(CPLCloudKitLibraryShareZoneIdentification *)self cloudKitScope];
    zoneID2 = [cloudKitScope2 zoneID];
    zoneName = [zoneID2 zoneName];
    v12 = CPLStagingZoneNameFromZoneName(zoneName, dCopy);

    if (v12)
    {
      v13 = [CKRecordZoneID alloc];
      ownerName = [zoneID ownerName];
      v15 = [v13 initWithZoneName:v12 ownerName:ownerName databaseScope:{objc_msgSend(zoneID, "databaseScope")}];

      v16 = -[CPLCloudKitScope initWithZoneID:options:]([CPLCloudKitScope alloc], "initWithZoneID:options:", v15, [cloudKitScope options]);
      v17 = [CPLEngineScope alloc];
      cpl_zoneName = [v15 cpl_zoneName];
      v19 = [v17 initWithScopeIdentifier:cpl_zoneName scopeType:6];

      v20 = [(CPLCloudKitZoneIdentification *)[CPLCloudKitStagingZoneIdentification alloc] initWithCloudKitScope:v16 engineScope:v19];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end