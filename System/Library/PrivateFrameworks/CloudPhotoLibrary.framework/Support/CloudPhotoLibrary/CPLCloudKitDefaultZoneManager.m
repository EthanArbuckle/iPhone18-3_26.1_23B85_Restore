@interface CPLCloudKitDefaultZoneManager
+ (CPLCloudKitDefaultZoneManager)sharedInstance;
+ (id)_defaultIdentificationClasses;
- (BOOL)isNewCloudKitScope:(id)a3 compatibleWithOldCloudKitScope:(id)a4;
- (CPLCloudKitDefaultZoneManager)initWithIdentificationClasses:(id)a3;
- (id)init_;
- (id)recordsToFetchToIdentifyCloudKitScope:(id)a3 proposedScopeType:(int64_t)a4 currentUserID:(id)a5;
- (id)scopeIdentifierFromZoneID:(id)a3;
- (id)scopedIdentifierForCKRecordID:(id)a3;
- (id)tentativeZoneIdentificationForZoneID:(id)a3;
- (id)zoneIDFromScopeIdentifier:(id)a3;
- (id)zoneIdentificationForCloudKitScope:(id)a3 engineScope:(id)a4;
- (int64_t)scopeTypeForCloudKitScope:(id)a3 proposedScopeType:(int64_t)a4 fetchedRecords:(id)a5 currentUserID:(id)a6;
@end

@implementation CPLCloudKitDefaultZoneManager

+ (id)_defaultIdentificationClasses
{
  if (qword_1002C5558 != -1)
  {
    sub_1001A9984();
  }

  v3 = qword_1002C5550;

  return v3;
}

+ (CPLCloudKitDefaultZoneManager)sharedInstance
{
  if (qword_1002C5568 != -1)
  {
    sub_1001A9998();
  }

  v3 = qword_1002C5560;

  return v3;
}

- (CPLCloudKitDefaultZoneManager)initWithIdentificationClasses:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPLCloudKitDefaultZoneManager;
  v5 = [(CPLCloudKitDefaultZoneManager *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identificationClasses = v5->_identificationClasses;
    v5->_identificationClasses = v6;
  }

  return v5;
}

- (id)init_
{
  v3 = [objc_opt_class() _defaultIdentificationClasses];
  v4 = [(CPLCloudKitDefaultZoneManager *)self initWithIdentificationClasses:v3];

  return v4;
}

- (id)scopeIdentifierFromZoneID:(id)a3
{
  v3 = a3;
  v4 = [v3 ownerName];
  v5 = [v3 zoneName];

  v6 = CPLPrimaryScopeIdentifier;
  if ([v5 hasPrefix:CPLPrimaryScopeIdentifier])
  {
    v7 = v6;

    v5 = v7;
  }

  if (v4 && ![v4 isEqualToString:CKCurrentUserDefaultName])
  {
    v8 = [CPLScopedIdentifier descriptionWithScopeIdentifier:v4 identifier:v5];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

- (id)scopedIdentifierForCKRecordID:(id)a3
{
  v4 = a3;
  v5 = [v4 zoneID];
  v6 = [(CPLCloudKitDefaultZoneManager *)self scopeIdentifierFromZoneID:v5];
  v7 = [v4 cpl_scopedIdentifierWithScopeIdentifier:v6];

  return v7;
}

- (id)zoneIDFromScopeIdentifier:(id)a3
{
  v3 = a3;
  v4 = CPLPrimaryScopeIdentifier;
  if ([v3 isEqualToString:CPLPrimaryScopeIdentifier])
  {
    v5 = [[CKRecordZoneID alloc] initWithZoneName:v4 ownerName:CKCurrentUserDefaultName];
  }

  else
  {
    v6 = [CPLScopedIdentifier scopedIdentifierWithString:v3 includeScopeIndex:0 defaultScopeIdentifier:CKCurrentUserDefaultName];
    v7 = [CKRecordZoneID alloc];
    v8 = [v6 identifier];
    v9 = [v6 scopeIdentifier];
    v5 = [v7 initWithZoneName:v8 ownerName:v9];
  }

  return v5;
}

- (id)recordsToFetchToIdentifyCloudKitScope:(id)a3 proposedScopeType:(int64_t)a4 currentUserID:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(NSMutableSet);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = self->_identificationClasses;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [v8 zoneID];
        v18 = [v16 recordsToFetchToIdentifyZoneID:v17 proposedScopeType:a4 currentUserID:v9];
        [v10 addObjectsFromArray:v18];
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v19 = [v10 allObjects];

  return v19;
}

- (int64_t)scopeTypeForCloudKitScope:(id)a3 proposedScopeType:(int64_t)a4 fetchedRecords:(id)a5 currentUserID:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = self->_identificationClasses;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    while (2)
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v21 + 1) + 8 * v17) scopeTypeForCloudKitScope:v10 proposedScopeType:a4 fetchedRecords:v11 currentUserID:{v12, v21}];
        if (v18)
        {
          v19 = v18;
          goto LABEL_11;
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_11:

  return v19;
}

- (id)zoneIdentificationForCloudKitScope:(id)a3 engineScope:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_identificationClasses;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = objc_alloc(*(*(&v17 + 1) + 8 * i));
        v14 = [v13 initWithCloudKitScope:v6 engineScope:{v7, v17}];
        if (v14)
        {
          v15 = v14;

          goto LABEL_11;
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = [(CPLCloudKitZoneIdentification *)[CPLCloudKitUnknownIdentification alloc] initWithCloudKitScope:v6 engineScope:v7];
LABEL_11:

  return v15;
}

- (BOOL)isNewCloudKitScope:(id)a3 compatibleWithOldCloudKitScope:(id)a4
{
  v5 = a4;
  v6 = [a3 zoneID];
  v7 = [v6 zoneName];
  v8 = [v6 ownerName];
  v9 = [v5 zoneID];

  v10 = [v9 zoneName];
  v11 = [v9 ownerName];
  v12 = v11;
  if (v11 && v8)
  {
    if (([v11 isEqual:v8] & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_6:
    if (v10 && v7)
    {
      if (([v10 isEqual:v7] & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (v10 | v7)
    {
      goto LABEL_9;
    }

    v17 = 1;
    goto LABEL_16;
  }

  if (!(v11 | v8))
  {
    goto LABEL_6;
  }

LABEL_9:
  if ([v12 isEqualToString:CKCurrentUserDefaultName] && (v13 = CPLPrimaryScopeIdentifier, objc_msgSend(v10, "hasPrefix:", CPLPrimaryScopeIdentifier)) && objc_msgSend(v7, "hasPrefix:", v13))
  {
    v19[0] = v9;
    v19[1] = v6;
    v14 = [NSArray arrayWithObjects:v19 count:2];
    v15 = [CPLCloudKitLibraryZoneIdentification primaryZoneIDFromProposedZoneIDs:v14];

    v16 = [v15 zoneName];
    v17 = [v16 isEqual:v7];
  }

  else
  {
    v17 = 0;
  }

LABEL_16:

  return v17;
}

- (id)tentativeZoneIdentificationForZoneID:(id)a3
{
  v5 = a3;
  v6 = [[CPLCloudKitScope alloc] initWithZoneID:v5];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = self->_identificationClasses;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v25 + 1) + 8 * v11);
      v13 = [v12 proposedScopeTypeForCloudKitScope:v6];
      if (v13)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v13;

    if (v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:

    v14 = 0;
  }

  v12 = objc_opt_class();
LABEL_12:
  v15 = [v5 cpl_zoneName];
  v16 = [[CPLEngineScope alloc] initWithScopeIdentifier:v15 scopeType:v14];
  v17 = [[v12 alloc] initWithCloudKitScope:v6 engineScope:v16];
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v19 = [[CPLEngineScope alloc] initWithScopeIdentifier:v15 scopeType:0];

    v20 = [[v12 alloc] initWithCloudKitScope:v6 engineScope:v19];
    if (!v20)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v22 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v30 = v6;
          v31 = 2112;
          v32 = v19;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Unable to create fallback identification from %@/%@", buf, 0x16u);
        }
      }

      v23 = +[NSAssertionHandler currentHandler];
      v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitZoneIdentification.m"];
      [v23 handleFailureInMethod:a2 object:self file:v24 lineNumber:1576 description:{@"Unable to create fallback identification from %@/%@", v6, v19, v25}];

      abort();
    }

    v18 = v20;
    v16 = v19;
  }

  return v18;
}

@end