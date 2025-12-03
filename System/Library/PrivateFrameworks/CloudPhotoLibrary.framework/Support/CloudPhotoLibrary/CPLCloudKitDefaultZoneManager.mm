@interface CPLCloudKitDefaultZoneManager
+ (CPLCloudKitDefaultZoneManager)sharedInstance;
+ (id)_defaultIdentificationClasses;
- (BOOL)isNewCloudKitScope:(id)scope compatibleWithOldCloudKitScope:(id)kitScope;
- (CPLCloudKitDefaultZoneManager)initWithIdentificationClasses:(id)classes;
- (id)init_;
- (id)recordsToFetchToIdentifyCloudKitScope:(id)scope proposedScopeType:(int64_t)type currentUserID:(id)d;
- (id)scopeIdentifierFromZoneID:(id)d;
- (id)scopedIdentifierForCKRecordID:(id)d;
- (id)tentativeZoneIdentificationForZoneID:(id)d;
- (id)zoneIDFromScopeIdentifier:(id)identifier;
- (id)zoneIdentificationForCloudKitScope:(id)scope engineScope:(id)engineScope;
- (int64_t)scopeTypeForCloudKitScope:(id)scope proposedScopeType:(int64_t)type fetchedRecords:(id)records currentUserID:(id)d;
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

- (CPLCloudKitDefaultZoneManager)initWithIdentificationClasses:(id)classes
{
  classesCopy = classes;
  v9.receiver = self;
  v9.super_class = CPLCloudKitDefaultZoneManager;
  v5 = [(CPLCloudKitDefaultZoneManager *)&v9 init];
  if (v5)
  {
    v6 = [classesCopy copy];
    identificationClasses = v5->_identificationClasses;
    v5->_identificationClasses = v6;
  }

  return v5;
}

- (id)init_
{
  _defaultIdentificationClasses = [objc_opt_class() _defaultIdentificationClasses];
  v4 = [(CPLCloudKitDefaultZoneManager *)self initWithIdentificationClasses:_defaultIdentificationClasses];

  return v4;
}

- (id)scopeIdentifierFromZoneID:(id)d
{
  dCopy = d;
  ownerName = [dCopy ownerName];
  zoneName = [dCopy zoneName];

  v6 = CPLPrimaryScopeIdentifier;
  if ([zoneName hasPrefix:CPLPrimaryScopeIdentifier])
  {
    v7 = v6;

    zoneName = v7;
  }

  if (ownerName && ![ownerName isEqualToString:CKCurrentUserDefaultName])
  {
    v8 = [CPLScopedIdentifier descriptionWithScopeIdentifier:ownerName identifier:zoneName];
  }

  else
  {
    v8 = zoneName;
  }

  v9 = v8;

  return v9;
}

- (id)scopedIdentifierForCKRecordID:(id)d
{
  dCopy = d;
  zoneID = [dCopy zoneID];
  v6 = [(CPLCloudKitDefaultZoneManager *)self scopeIdentifierFromZoneID:zoneID];
  v7 = [dCopy cpl_scopedIdentifierWithScopeIdentifier:v6];

  return v7;
}

- (id)zoneIDFromScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = CPLPrimaryScopeIdentifier;
  if ([identifierCopy isEqualToString:CPLPrimaryScopeIdentifier])
  {
    v5 = [[CKRecordZoneID alloc] initWithZoneName:v4 ownerName:CKCurrentUserDefaultName];
  }

  else
  {
    v6 = [CPLScopedIdentifier scopedIdentifierWithString:identifierCopy includeScopeIndex:0 defaultScopeIdentifier:CKCurrentUserDefaultName];
    v7 = [CKRecordZoneID alloc];
    identifier = [v6 identifier];
    scopeIdentifier = [v6 scopeIdentifier];
    v5 = [v7 initWithZoneName:identifier ownerName:scopeIdentifier];
  }

  return v5;
}

- (id)recordsToFetchToIdentifyCloudKitScope:(id)scope proposedScopeType:(int64_t)type currentUserID:(id)d
{
  scopeCopy = scope;
  dCopy = d;
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
        zoneID = [scopeCopy zoneID];
        v18 = [v16 recordsToFetchToIdentifyZoneID:zoneID proposedScopeType:type currentUserID:dCopy];
        [v10 addObjectsFromArray:v18];
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  allObjects = [v10 allObjects];

  return allObjects;
}

- (int64_t)scopeTypeForCloudKitScope:(id)scope proposedScopeType:(int64_t)type fetchedRecords:(id)records currentUserID:(id)d
{
  scopeCopy = scope;
  recordsCopy = records;
  dCopy = d;
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

        v18 = [*(*(&v21 + 1) + 8 * v17) scopeTypeForCloudKitScope:scopeCopy proposedScopeType:type fetchedRecords:recordsCopy currentUserID:{dCopy, v21}];
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

- (id)zoneIdentificationForCloudKitScope:(id)scope engineScope:(id)engineScope
{
  scopeCopy = scope;
  engineScopeCopy = engineScope;
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
        v14 = [v13 initWithCloudKitScope:scopeCopy engineScope:{engineScopeCopy, v17}];
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

  v15 = [(CPLCloudKitZoneIdentification *)[CPLCloudKitUnknownIdentification alloc] initWithCloudKitScope:scopeCopy engineScope:engineScopeCopy];
LABEL_11:

  return v15;
}

- (BOOL)isNewCloudKitScope:(id)scope compatibleWithOldCloudKitScope:(id)kitScope
{
  kitScopeCopy = kitScope;
  zoneID = [scope zoneID];
  zoneName = [zoneID zoneName];
  ownerName = [zoneID ownerName];
  zoneID2 = [kitScopeCopy zoneID];

  zoneName2 = [zoneID2 zoneName];
  ownerName2 = [zoneID2 ownerName];
  v12 = ownerName2;
  if (ownerName2 && ownerName)
  {
    if (([ownerName2 isEqual:ownerName] & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_6:
    if (zoneName2 && zoneName)
    {
      if (([zoneName2 isEqual:zoneName] & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (zoneName2 | zoneName)
    {
      goto LABEL_9;
    }

    v17 = 1;
    goto LABEL_16;
  }

  if (!(ownerName2 | ownerName))
  {
    goto LABEL_6;
  }

LABEL_9:
  if ([v12 isEqualToString:CKCurrentUserDefaultName] && (v13 = CPLPrimaryScopeIdentifier, objc_msgSend(zoneName2, "hasPrefix:", CPLPrimaryScopeIdentifier)) && objc_msgSend(zoneName, "hasPrefix:", v13))
  {
    v19[0] = zoneID2;
    v19[1] = zoneID;
    v14 = [NSArray arrayWithObjects:v19 count:2];
    v15 = [CPLCloudKitLibraryZoneIdentification primaryZoneIDFromProposedZoneIDs:v14];

    zoneName3 = [v15 zoneName];
    v17 = [zoneName3 isEqual:zoneName];
  }

  else
  {
    v17 = 0;
  }

LABEL_16:

  return v17;
}

- (id)tentativeZoneIdentificationForZoneID:(id)d
{
  dCopy = d;
  v6 = [[CPLCloudKitScope alloc] initWithZoneID:dCopy];
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
  cpl_zoneName = [dCopy cpl_zoneName];
  v16 = [[CPLEngineScope alloc] initWithScopeIdentifier:cpl_zoneName scopeType:v14];
  v17 = [[v12 alloc] initWithCloudKitScope:v6 engineScope:v16];
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v19 = [[CPLEngineScope alloc] initWithScopeIdentifier:cpl_zoneName scopeType:0];

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