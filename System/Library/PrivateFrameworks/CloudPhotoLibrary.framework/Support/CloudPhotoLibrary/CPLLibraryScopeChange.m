@interface CPLLibraryScopeChange
+ (id)sharedCloudKitScopeFromLibraryInfoRecord:(id)a3 userRecordID:(id)a4;
- (void)updateWithLibraryInfoCKRecord:(id)a3 zone:(id)a4 userRecordID:(id)a5;
@end

@implementation CPLLibraryScopeChange

- (void)updateWithLibraryInfoCKRecord:(id)a3 zone:(id)a4 userRecordID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30 = v9;
  v31 = self;
  v38.receiver = self;
  v38.super_class = CPLLibraryScopeChange;
  [(CPLLibraryScopeChange *)&v38 updateWithLibraryInfoCKRecord:v8 zone:v9 userRecordID:v10];
  v29 = [v8 objectForKeyedSubscript:@"linkedShareZoneJoinContinuationToken"];
  v11 = [v8 objectForKeyedSubscript:@"linkedShareZoneNameList"];
  v32 = [v8 objectForKeyedSubscript:@"linkedShareZoneOwnerList"];
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
      v35 = v10;
      v36 = v29;
      v15 = v14;
      v37 = v15;
      [v11 enumerateObjectsUsingBlock:v33];
      [(CPLLibraryScopeChange *)v31 setRewindAnchorsPerSharingScopes:v15];
    }

    else
    {
      sub_10019E3A4(v9, v8);
    }
  }

  else
  {
    [(CPLLibraryScopeChange *)v31 setRewindAnchorsPerSharingScopes:0];
  }

  v16 = [v8 objectForKeyedSubscript:@"quarantinedSharedLibraryExitZoneName"];
  v17 = [v8 objectForKeyedSubscript:@"quarantinedSharedLibraryExitZoneOwner"];
  v18 = +[NSUserDefaults standardUserDefaults];
  v19 = [v18 stringForKey:@"CPLSimulateQuarantinedSharedLibraryExitZoneName"];

  if (v19 && [v19 length])
  {
    v20 = v19;

    v16 = v20;
  }

  else if (!v16)
  {
    [(CPLLibraryScopeChange *)v31 setProblematicFormerSharedScopeIdentifier:0];
    v16 = 0;
    goto LABEL_16;
  }

  v21 = [v17 recordID];
  v22 = [v21 recordName];
  v23 = [v10 recordName];
  v24 = [v22 isEqualToString:v23];

  if (v24)
  {
    v25 = v16;
  }

  else
  {
    v26 = [NSString alloc];
    v27 = [v17 recordID];
    v28 = [v27 recordName];
    v25 = [v26 initWithFormat:@"%@#%@", v16, v28];
  }

  [(CPLLibraryScopeChange *)v31 setProblematicFormerSharedScopeIdentifier:v25];

LABEL_16:
}

+ (id)sharedCloudKitScopeFromLibraryInfoRecord:(id)a3 userRecordID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"linkedShareZoneNameList"];
  v8 = [v6 objectForKeyedSubscript:@"linkedShareZoneOwnerList"];

  if ([v7 count] && (v9 = objc_msgSend(v7, "count"), v9 == objc_msgSend(v8, "count")))
  {
    v10 = [v7 firstObject];
    v11 = [v8 firstObject];
    v12 = [v11 recordID];
    v13 = [v12 recordName];

    v14 = [v5 recordName];
    v15 = [v13 isEqualToString:v14];

    v16 = [CKRecordZoneID alloc];
    if (v15)
    {
      v17 = CKCurrentUserDefaultName;
    }

    else
    {
      v17 = v13;
    }

    if (v15)
    {
      v18 = 4;
    }

    else
    {
      v18 = 6;
    }

    v19 = [v16 initWithZoneName:v10 ownerName:v17];
    v20 = [[CPLCloudKitScope alloc] initWithZoneID:v19 options:v18];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end