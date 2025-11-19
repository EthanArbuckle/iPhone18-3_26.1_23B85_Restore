@interface CPLCloudKitLibraryZoneIdentification
+ (BOOL)supportsCloudKitScope:(id)a3 engineScope:(id)a4;
+ (id)primaryZoneIDFromProposedZoneIDs:(id)a3;
+ (id)recordNamesForScopeInfo;
+ (int64_t)proposedScopeTypeForCloudKitScope:(id)a3;
+ (int64_t)scopeTypeForCloudKitScope:(id)a3 proposedScopeType:(int64_t)a4 fetchedRecords:(id)a5 currentUserID:(id)a6;
- (BOOL)_simulateExitForScopeIdentifier:(id)a3;
- (BOOL)supportsZoneCreation;
- (id)_libraryStateFromCKRecord:(id)a3;
- (id)scopeChangeFromCKRecords:(id)a3 currentUserID:(id)a4 previousScopeChange:(id)a5;
- (id)updatedScopeChangeFromScopeChange:(id)a3 currentUserID:(id)a4 withCKRecord:(id)a5;
@end

@implementation CPLCloudKitLibraryZoneIdentification

+ (id)primaryZoneIDFromProposedZoneIDs:(id)a3
{
  v3 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v21;
    v8 = CPLPrimaryScopeIdentifier;
    v19 = -1;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 zoneName];
        if ([v11 hasPrefix:v8])
        {
          if ([v11 isEqualToString:v8])
          {
            v12 = 0;
          }

          else
          {
            [v11 substringFromIndex:{objc_msgSend(v8, "length")}];
            v12 = 0x7FFFFFFFFFFFFFFFLL;
            v13 = v6;
            v15 = v14 = v3;
            v16 = [v15 integerValue];
            if (v16)
            {
              v12 = v16;
            }

            v3 = v14;
            v6 = v13;
          }

          if (v12 != 0x7FFFFFFFFFFFFFFFLL && v12 > v19)
          {
            v17 = v10;

            v19 = v12;
            v6 = v17;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)recordNamesForScopeInfo
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CPLCloudKitLibraryZoneIdentification;
  v2 = objc_msgSendSuper2(&v5, "recordNamesForScopeInfo");
  v3 = [v2 arrayByAddingObject:@"PrimarySync-0000-ZS"];

  return v3;
}

+ (int64_t)proposedScopeTypeForCloudKitScope:(id)a3
{
  v4 = a3;
  v5 = [v4 zoneID];
  v6 = [v5 zoneName];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [a1 supportedZonePrefixes];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([v6 hasPrefix:*(*(&v14 + 1) + 8 * v11)])
        {
          v12 = [a1 _scopeTypeForCloudKitScope:v4];
          goto LABEL_11;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

+ (int64_t)scopeTypeForCloudKitScope:(id)a3 proposedScopeType:(int64_t)a4 fetchedRecords:(id)a5 currentUserID:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = [a1 _scopeTypeForCloudKitScope:v9];
  if (v11 != a4)
  {
    if (a4)
    {
      a4 = 0;
      goto LABEL_27;
    }

    v12 = v11;
    v13 = [v9 zoneID];
    if (![a1 isSupportedZoneID:v13])
    {
      a4 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v14 = [a1 shareRecordName];
    if (!v14)
    {
      goto LABEL_9;
    }

    v15 = [v10 cplRecordWithName:v14 zonedID:v13];
    if (v15)
    {
      if ([a1 isSupportedShare:v15])
      {

LABEL_9:
        v16 = [v10 cplRecordWithName:@"PrimarySync-0000-LI" zonedID:v13];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 recordType];
          v19 = [v18 isEqualToString:@"CPLLibraryInfo"];

          if (v19)
          {
            a4 = v12;
          }

          else
          {
            a4 = 0;
          }
        }

        else
        {
          a4 = v12;
        }

        goto LABEL_25;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v20 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v26 = 138543874;
          v27 = v14;
          v28 = 2114;
          v29 = v9;
          v30 = 2112;
          v31 = v15;
          v21 = "Unexpected share record %{public}@ in %{public}@: %@ - zone is broken or unsupported";
          v22 = v20;
          v23 = OS_LOG_TYPE_ERROR;
          v24 = 32;
          goto LABEL_22;
        }

        goto LABEL_23;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v20 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543618;
        v27 = v14;
        v28 = 2114;
        v29 = v9;
        v21 = "Expected share record %{public}@ is not yet found in %{public}@ - zone is not yet ready to be used";
        v22 = v20;
        v23 = OS_LOG_TYPE_DEFAULT;
        v24 = 22;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v22, v23, v21, &v26, v24);
      }

LABEL_23:
    }

    a4 = 0;
LABEL_25:

    goto LABEL_26;
  }

LABEL_27:

  return a4;
}

+ (BOOL)supportsCloudKitScope:(id)a3 engineScope:(id)a4
{
  v6 = a3;
  v7 = [a4 scopeType];
  v8 = [a1 _scopeTypeForCloudKitScope:v6];

  return v7 == v8;
}

- (id)_libraryStateFromCKRecord:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"enabled"];
  v5 = v4;
  if (v4 && ([v4 BOOLValue] & 1) == 0)
  {
    v9 = [v3 objectForKey:@"disabledTime"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = +[NSDate date];
    }

    v7 = v11;

    v12 = [v3 objectForKey:@"deleteTime"];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v7 dateByAddingTimeInterval:2592000.0];
    }

    v8 = v14;

    v6 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v15 = objc_alloc_init(CPLLibraryState);
  [v15 setDisabled:v6];
  [v15 setDisabledDate:v7];
  [v15 setDeleteDate:v8];

  return v15;
}

- (BOOL)_simulateExitForScopeIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:CPLPrimaryScopeIdentifier])
  {
    v4 = 0;
  }

  else
  {
    v5 = CPLUniverseNameFromMainScopeIdentifier();
    if (v5)
    {
      v6 = [[NSString alloc] initWithFormat:@"CPLSimulateExitFor%@", v5];
      v7 = +[NSUserDefaults standardUserDefaults];
      v4 = [v7 BOOLForKey:v6];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)scopeChangeFromCKRecords:(id)a3 currentUserID:(id)a4 previousScopeChange:(id)a5
{
  v23.receiver = self;
  v23.super_class = CPLCloudKitLibraryZoneIdentification;
  v8 = a3;
  v9 = [(CPLCloudKitZoneIdentification *)&v23 scopeChangeFromCKRecords:v8 currentUserID:a4 previousScopeChange:a5];
  v10 = [(CPLCloudKitZoneIdentification *)self zoneID:v23.receiver];
  v11 = [v8 cplRecordWithName:@"PrimarySync-0000-ZS" zonedID:v10];

  if (!v11 || ([v11 recordType], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"CPLZoneState"), v12, !v13))
  {
    v15 = 0;
    goto LABEL_7;
  }

  v14 = [(CPLCloudKitLibraryZoneIdentification *)self _libraryStateFromCKRecord:v11];
  v15 = v14;
  if (!v14)
  {
LABEL_7:
    v16 = 1;
    goto LABEL_8;
  }

  if ([v14 isDisabled])
  {
    goto LABEL_12;
  }

  v16 = 0;
LABEL_8:
  v17 = [(CPLCloudKitZoneIdentification *)self scopeIdentifier];
  v18 = [(CPLCloudKitLibraryZoneIdentification *)self _simulateExitForScopeIdentifier:v17];

  if (v18)
  {
    if (v16)
    {
      v15 = objc_alloc_init(CPLLibraryState);
    }

    [v15 setDisabled:1];
    v19 = +[NSDate date];
    [v15 setDisabledDate:v19];

    v20 = [v15 disabledDate];
    v21 = [v20 dateByAddingTimeInterval:2592000.0];
    [v15 setDeleteDate:v21];
  }

LABEL_12:
  [v9 setLibraryState:v15];

  return v9;
}

- (id)updatedScopeChangeFromScopeChange:(id)a3 currentUserID:(id)a4 withCKRecord:(id)a5
{
  v8 = a3;
  v9 = a5;
  v23.receiver = self;
  v23.super_class = CPLCloudKitLibraryZoneIdentification;
  v10 = [(CPLCloudKitZoneIdentification *)&v23 updatedScopeChangeFromScopeChange:v8 currentUserID:a4 withCKRecord:v9];
  v11 = [v9 recordType];
  if ([v11 isEqualToString:@"CPLZoneState"])
  {
    v12 = [v9 recordID];
    v13 = [v12 recordName];
    v14 = [v13 isEqualToString:@"PrimarySync-0000-ZS"];

    if (v14)
    {
      v15 = [(CPLCloudKitLibraryZoneIdentification *)self _libraryStateFromCKRecord:v9];
      if (v15)
      {
        v16 = v15;
        if (!v10)
        {
          v10 = [v8 copy];
        }

        if (([v16 isDisabled] & 1) == 0)
        {
          v17 = [(CPLCloudKitZoneIdentification *)self scopeIdentifier];
          v18 = [(CPLCloudKitLibraryZoneIdentification *)self _simulateExitForScopeIdentifier:v17];

          if (v18)
          {
            [v16 setDisabled:1];
            v19 = +[NSDate date];
            [v16 setDisabledDate:v19];

            v20 = [v16 disabledDate];
            v21 = [v20 dateByAddingTimeInterval:2592000.0];
            [v16 setDeleteDate:v21];
          }
        }

        [v10 setLibraryState:v16];
      }
    }
  }

  return v10;
}

- (BOOL)supportsZoneCreation
{
  v2 = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
  v3 = [v2 isShared];

  return v3 ^ 1;
}

@end