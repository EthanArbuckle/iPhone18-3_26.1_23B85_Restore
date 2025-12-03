@interface CPLLibraryScopeChange
+ (id)sharedCloudKitScopeFromLibraryInfoRecord:(id)record userRecordID:(id)d;
- (void)updateWithLibraryInfoCKRecord:(id)record zone:(id)zone userRecordID:(id)d;
@end

@implementation CPLLibraryScopeChange

- (void)updateWithLibraryInfoCKRecord:(id)record zone:(id)zone userRecordID:(id)d
{
  recordCopy = record;
  zoneCopy = zone;
  dCopy = d;
  v30 = zoneCopy;
  selfCopy = self;
  v38.receiver = self;
  v38.super_class = CPLLibraryScopeChange;
  [(CPLLibraryScopeChange *)&v38 updateWithLibraryInfoCKRecord:recordCopy zone:zoneCopy userRecordID:dCopy];
  v29 = [recordCopy objectForKeyedSubscript:@"linkedShareZoneJoinContinuationToken"];
  v11 = [recordCopy objectForKeyedSubscript:@"linkedShareZoneNameList"];
  v32 = [recordCopy objectForKeyedSubscript:@"linkedShareZoneOwnerList"];
  if ([v11 count])
  {
    v12 = [v11 count];
    if (v12 == [v32 count] && (v13 = objc_msgSend(v11, "count"), v13 == objc_msgSend(v29, "count")))
    {
      v14 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v11, "count")}];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10019E1A4;
      v33[3] = &unk_100274B98;
      v34 = v32;
      v35 = dCopy;
      v36 = v29;
      v15 = v14;
      v37 = v15;
      [v11 enumerateObjectsUsingBlock:v33];
      [(CPLLibraryScopeChange *)selfCopy setRewindAnchorsPerSharingScopes:v15];
    }

    else
    {
      sub_10019E3A4(zoneCopy, recordCopy);
    }
  }

  else
  {
    [(CPLLibraryScopeChange *)selfCopy setRewindAnchorsPerSharingScopes:0];
  }

  v16 = [recordCopy objectForKeyedSubscript:@"quarantinedSharedLibraryExitZoneName"];
  v17 = [recordCopy objectForKeyedSubscript:@"quarantinedSharedLibraryExitZoneOwner"];
  v18 = +[NSUserDefaults standardUserDefaults];
  v19 = [v18 stringForKey:@"CPLSimulateQuarantinedSharedLibraryExitZoneName"];

  if (v19 && [v19 length])
  {
    v20 = v19;

    v16 = v20;
  }

  else if (!v16)
  {
    [(CPLLibraryScopeChange *)selfCopy setProblematicFormerSharedScopeIdentifier:0];
    v16 = 0;
    goto LABEL_16;
  }

  recordID = [v17 recordID];
  recordName = [recordID recordName];
  recordName2 = [dCopy recordName];
  v24 = [recordName isEqualToString:recordName2];

  if (v24)
  {
    v25 = v16;
  }

  else
  {
    v26 = [NSString alloc];
    recordID2 = [v17 recordID];
    recordName3 = [recordID2 recordName];
    v25 = [v26 initWithFormat:@"%@#%@", v16, recordName3];
  }

  [(CPLLibraryScopeChange *)selfCopy setProblematicFormerSharedScopeIdentifier:v25];

LABEL_16:
}

+ (id)sharedCloudKitScopeFromLibraryInfoRecord:(id)record userRecordID:(id)d
{
  dCopy = d;
  recordCopy = record;
  v7 = [recordCopy objectForKeyedSubscript:@"linkedShareZoneNameList"];
  v8 = [recordCopy objectForKeyedSubscript:@"linkedShareZoneOwnerList"];

  if ([v7 count] && (v9 = objc_msgSend(v7, "count"), v9 == objc_msgSend(v8, "count")))
  {
    firstObject = [v7 firstObject];
    firstObject2 = [v8 firstObject];
    recordID = [firstObject2 recordID];
    recordName = [recordID recordName];

    recordName2 = [dCopy recordName];
    v15 = [recordName isEqualToString:recordName2];

    v16 = [CKRecordZoneID alloc];
    if (v15)
    {
      v17 = CKCurrentUserDefaultName;
    }

    else
    {
      v17 = recordName;
    }

    if (v15)
    {
      v18 = 4;
    }

    else
    {
      v18 = 6;
    }

    v19 = [v16 initWithZoneName:firstObject ownerName:v17];
    v20 = [[CPLCloudKitScope alloc] initWithZoneID:v19 options:v18];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end