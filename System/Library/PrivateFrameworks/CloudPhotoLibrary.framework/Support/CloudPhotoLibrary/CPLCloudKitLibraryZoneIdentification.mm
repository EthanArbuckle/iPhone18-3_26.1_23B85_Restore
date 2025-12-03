@interface CPLCloudKitLibraryZoneIdentification
+ (BOOL)supportsCloudKitScope:(id)scope engineScope:(id)engineScope;
+ (id)primaryZoneIDFromProposedZoneIDs:(id)ds;
+ (id)recordNamesForScopeInfo;
+ (int64_t)proposedScopeTypeForCloudKitScope:(id)scope;
+ (int64_t)scopeTypeForCloudKitScope:(id)scope proposedScopeType:(int64_t)type fetchedRecords:(id)records currentUserID:(id)d;
- (BOOL)_simulateExitForScopeIdentifier:(id)identifier;
- (BOOL)supportsZoneCreation;
- (id)_libraryStateFromCKRecord:(id)record;
- (id)scopeChangeFromCKRecords:(id)records currentUserID:(id)d previousScopeChange:(id)change;
- (id)updatedScopeChangeFromScopeChange:(id)change currentUserID:(id)d withCKRecord:(id)record;
@end

@implementation CPLCloudKitLibraryZoneIdentification

+ (id)primaryZoneIDFromProposedZoneIDs:(id)ds
{
  dsCopy = ds;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [dsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(dsCopy);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        zoneName = [v10 zoneName];
        if ([zoneName hasPrefix:v8])
        {
          if ([zoneName isEqualToString:v8])
          {
            v12 = 0;
          }

          else
          {
            [zoneName substringFromIndex:{objc_msgSend(v8, "length")}];
            v12 = 0x7FFFFFFFFFFFFFFFLL;
            v13 = v6;
            v15 = v14 = dsCopy;
            integerValue = [v15 integerValue];
            if (integerValue)
            {
              v12 = integerValue;
            }

            dsCopy = v14;
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

      v5 = [dsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
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
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CPLCloudKitLibraryZoneIdentification;
  v2 = objc_msgSendSuper2(&v5, "recordNamesForScopeInfo");
  v3 = [v2 arrayByAddingObject:@"PrimarySync-0000-ZS"];

  return v3;
}

+ (int64_t)proposedScopeTypeForCloudKitScope:(id)scope
{
  scopeCopy = scope;
  zoneID = [scopeCopy zoneID];
  zoneName = [zoneID zoneName];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  supportedZonePrefixes = [self supportedZonePrefixes];
  v8 = [supportedZonePrefixes countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(supportedZonePrefixes);
        }

        if ([zoneName hasPrefix:*(*(&v14 + 1) + 8 * v11)])
        {
          v12 = [self _scopeTypeForCloudKitScope:scopeCopy];
          goto LABEL_11;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [supportedZonePrefixes countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (int64_t)scopeTypeForCloudKitScope:(id)scope proposedScopeType:(int64_t)type fetchedRecords:(id)records currentUserID:(id)d
{
  scopeCopy = scope;
  recordsCopy = records;
  v11 = [self _scopeTypeForCloudKitScope:scopeCopy];
  if (v11 != type)
  {
    if (type)
    {
      type = 0;
      goto LABEL_27;
    }

    v12 = v11;
    zoneID = [scopeCopy zoneID];
    if (![self isSupportedZoneID:zoneID])
    {
      type = 0;
LABEL_26:

      goto LABEL_27;
    }

    shareRecordName = [self shareRecordName];
    if (!shareRecordName)
    {
      goto LABEL_9;
    }

    v15 = [recordsCopy cplRecordWithName:shareRecordName zonedID:zoneID];
    if (v15)
    {
      if ([self isSupportedShare:v15])
      {

LABEL_9:
        v16 = [recordsCopy cplRecordWithName:@"PrimarySync-0000-LI" zonedID:zoneID];
        v17 = v16;
        if (v16)
        {
          recordType = [v16 recordType];
          v19 = [recordType isEqualToString:@"CPLLibraryInfo"];

          if (v19)
          {
            type = v12;
          }

          else
          {
            type = 0;
          }
        }

        else
        {
          type = v12;
        }

        goto LABEL_25;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v20 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v26 = 138543874;
          v27 = shareRecordName;
          v28 = 2114;
          v29 = scopeCopy;
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
        v27 = shareRecordName;
        v28 = 2114;
        v29 = scopeCopy;
        v21 = "Expected share record %{public}@ is not yet found in %{public}@ - zone is not yet ready to be used";
        v22 = v20;
        v23 = OS_LOG_TYPE_DEFAULT;
        v24 = 22;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v22, v23, v21, &v26, v24);
      }

LABEL_23:
    }

    type = 0;
LABEL_25:

    goto LABEL_26;
  }

LABEL_27:

  return type;
}

+ (BOOL)supportsCloudKitScope:(id)scope engineScope:(id)engineScope
{
  scopeCopy = scope;
  scopeType = [engineScope scopeType];
  v8 = [self _scopeTypeForCloudKitScope:scopeCopy];

  return scopeType == v8;
}

- (id)_libraryStateFromCKRecord:(id)record
{
  recordCopy = record;
  v4 = [recordCopy objectForKey:@"enabled"];
  v5 = v4;
  if (v4 && ([v4 BOOLValue] & 1) == 0)
  {
    v9 = [recordCopy objectForKey:@"disabledTime"];
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

    v12 = [recordCopy objectForKey:@"deleteTime"];
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

- (BOOL)_simulateExitForScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:CPLPrimaryScopeIdentifier])
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

- (id)scopeChangeFromCKRecords:(id)records currentUserID:(id)d previousScopeChange:(id)change
{
  v23.receiver = self;
  v23.super_class = CPLCloudKitLibraryZoneIdentification;
  recordsCopy = records;
  v9 = [(CPLCloudKitZoneIdentification *)&v23 scopeChangeFromCKRecords:recordsCopy currentUserID:d previousScopeChange:change];
  v10 = [(CPLCloudKitZoneIdentification *)self zoneID:v23.receiver];
  v11 = [recordsCopy cplRecordWithName:@"PrimarySync-0000-ZS" zonedID:v10];

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
  scopeIdentifier = [(CPLCloudKitZoneIdentification *)self scopeIdentifier];
  v18 = [(CPLCloudKitLibraryZoneIdentification *)self _simulateExitForScopeIdentifier:scopeIdentifier];

  if (v18)
  {
    if (v16)
    {
      v15 = objc_alloc_init(CPLLibraryState);
    }

    [v15 setDisabled:1];
    v19 = +[NSDate date];
    [v15 setDisabledDate:v19];

    disabledDate = [v15 disabledDate];
    v21 = [disabledDate dateByAddingTimeInterval:2592000.0];
    [v15 setDeleteDate:v21];
  }

LABEL_12:
  [v9 setLibraryState:v15];

  return v9;
}

- (id)updatedScopeChangeFromScopeChange:(id)change currentUserID:(id)d withCKRecord:(id)record
{
  changeCopy = change;
  recordCopy = record;
  v23.receiver = self;
  v23.super_class = CPLCloudKitLibraryZoneIdentification;
  v10 = [(CPLCloudKitZoneIdentification *)&v23 updatedScopeChangeFromScopeChange:changeCopy currentUserID:d withCKRecord:recordCopy];
  recordType = [recordCopy recordType];
  if ([recordType isEqualToString:@"CPLZoneState"])
  {
    recordID = [recordCopy recordID];
    recordName = [recordID recordName];
    v14 = [recordName isEqualToString:@"PrimarySync-0000-ZS"];

    if (v14)
    {
      v15 = [(CPLCloudKitLibraryZoneIdentification *)self _libraryStateFromCKRecord:recordCopy];
      if (v15)
      {
        v16 = v15;
        if (!v10)
        {
          v10 = [changeCopy copy];
        }

        if (([v16 isDisabled] & 1) == 0)
        {
          scopeIdentifier = [(CPLCloudKitZoneIdentification *)self scopeIdentifier];
          v18 = [(CPLCloudKitLibraryZoneIdentification *)self _simulateExitForScopeIdentifier:scopeIdentifier];

          if (v18)
          {
            [v16 setDisabled:1];
            v19 = +[NSDate date];
            [v16 setDisabledDate:v19];

            disabledDate = [v16 disabledDate];
            v21 = [disabledDate dateByAddingTimeInterval:2592000.0];
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
  cloudKitScope = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
  isShared = [cloudKitScope isShared];

  return isShared ^ 1;
}

@end