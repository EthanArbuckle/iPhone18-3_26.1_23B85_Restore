@interface CPLCloudKitZoneIdentification
+ (BOOL)isSupportedShare:(id)a3;
+ (BOOL)isSupportedShareType:(id)a3;
+ (BOOL)isSupportedZoneID:(id)a3;
+ (BOOL)shouldIgnoreZoneID:(id)a3 forMainScopeIdentifier:(id)a4;
+ (BOOL)shouldProtectZoneIDFromDeletion:(id)a3;
+ (NSArray)recordNamesForScopeInfo;
+ (id)recordsToFetchToIdentifyZoneID:(id)a3 proposedScopeType:(int64_t)a4 currentUserID:(id)a5;
+ (int64_t)_permissionFromCKShare:(id)a3;
- (BOOL)_isScopeReadonlyFromCKShare:(id)a3;
- (BOOL)isSupportedShare:(id)a3;
- (BOOL)isSupportedShareType:(id)a3;
- (BOOL)supportsDownloadOfChange:(id)a3 scopeProvider:(id)a4;
- (BOOL)supportsUploadOfChange:(id)a3 scopeProvider:(id)a4;
- (CKRecordID)libraryInfoRecordID;
- (CKRecordID)rootRecordID;
- (CKRecordZone)zone;
- (CKRecordZoneID)zoneID;
- (CPLCloudKitZoneIdentification)initWithCloudKitScope:(id)a3 engineScope:(id)a4;
- (NSString)libraryInfoRecordName;
- (NSString)shareRecordName;
- (id)_baseScopeChange;
- (id)_rootRef;
- (id)newScopeIdentifierRelativeToMainScopeIdentifier:(id)a3;
- (id)recordIDWithRecordName:(id)a3;
- (id)recordsToFetchForScopeInfoWithCurrentUserID:(id)a3;
- (id)scopeChangeFromCKRecords:(id)a3 currentUserID:(id)a4 previousScopeChange:(id)a5;
- (id)scopeFlagsUpdateFromCKRecords:(id)a3;
- (id)scopedIdentifierWithIdentifier:(id)a3;
- (id)shareType;
- (id)shareTypeForScopeChange:(id)a3;
- (id)updatedFlagsFromCKRecord:(id)a3;
- (id)updatedScopeChangeFromScopeChange:(id)a3 currentUserID:(id)a4 withCKRecord:(id)a5;
- (int64_t)databaseScope;
- (int64_t)operationType;
- (void)setupRootOnRecord:(id)a3;
@end

@implementation CPLCloudKitZoneIdentification

+ (BOOL)shouldProtectZoneIDFromDeletion:(id)a3
{
  v3 = [a3 zoneName];
  v4 = [v3 hasPrefix:CPLPrimaryScopeIdentifier];

  return v4;
}

- (CPLCloudKitZoneIdentification)initWithCloudKitScope:(id)a3 engineScope:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([objc_opt_class() supportsCloudKitScope:v6 engineScope:v7])
  {
    v26.receiver = self;
    v26.super_class = CPLCloudKitZoneIdentification;
    v8 = [(CPLCloudKitZoneIdentification *)&v26 init];
    if (!v8)
    {
LABEL_17:
      self = v8;
      v14 = self;
      goto LABEL_18;
    }

    v9 = [v6 options];
    v10 = v9;
    v11 = [(CPLCloudKitZoneIdentification *)v8 shareRecordName];
    v12 = v11;
    if (v11 && CKRecordNameZoneWideShare)
    {
      v13 = [v11 isEqual:CKRecordNameZoneWideShare];

      if ((v13 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v15 = v11 | CKRecordNameZoneWideShare;

      if (v15)
      {
LABEL_10:
        v16 = [v6 zoneID];
        v17 = [v16 ownerName];
        v18 = [v17 isEqualToString:CKCurrentUserDefaultName];

        if (v18)
        {
          v19 = v10;
        }

        else
        {
          v19 = v10 | 2;
        }

        if (v19 == v9)
        {
          v20 = v6;
          cloudKitScope = v8->_cloudKitScope;
          v8->_cloudKitScope = v20;
        }

        else
        {
          v22 = [CPLCloudKitScope alloc];
          cloudKitScope = [v6 zone];
          v23 = [(CPLCloudKitScope *)v22 initWithZone:cloudKitScope options:v19];
          v24 = v8->_cloudKitScope;
          v8->_cloudKitScope = v23;
        }

        objc_storeStrong(&v8->_engineScope, a4);
        goto LABEL_17;
      }
    }

    v10 = v9 | 4;
    goto LABEL_10;
  }

  v14 = 0;
LABEL_18:

  return v14;
}

+ (NSArray)recordNamesForScopeInfo
{
  v3 = [[NSMutableArray alloc] initWithCapacity:3];
  v4 = [a1 rootRecordName];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [a1 shareRecordName];
  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [a1 libraryInfoRecordName];
  if (v6)
  {
    [v3 addObject:v6];
  }

  return v3;
}

+ (id)recordsToFetchToIdentifyZoneID:(id)a3 proposedScopeType:(int64_t)a4 currentUserID:(id)a5
{
  v6 = a3;
  v7 = [a1 recordNamesForScopeInfo];
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [CKRecordID alloc];
        v16 = [v15 initWithRecordName:v14 zoneID:{v6, v18}];
        [v8 addObject:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)recordsToFetchForScopeInfoWithCurrentUserID:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
  v7 = [v6 zoneID];
  v8 = [v5 recordsToFetchToIdentifyZoneID:v7 proposedScopeType:-[CPLEngineScope scopeType](self->_engineScope currentUserID:{"scopeType"), v4}];

  return v8;
}

- (id)_baseScopeChange
{
  v3 = [(CPLEngineScope *)self->_engineScope scopeType];
  v4 = [(CPLEngineScope *)self->_engineScope scopeIdentifier];
  v5 = [CPLScopeChange newScopeChangeInferClassWithScopeIdentifier:v4 type:v3];

  return v5;
}

- (id)scopeChangeFromCKRecords:(id)a3 currentUserID:(id)a4 previousScopeChange:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(CPLCloudKitZoneIdentification *)self _baseScopeChange];
  v13 = [(CPLCloudKitZoneIdentification *)self libraryInfoRecordName];
  if (v13)
  {
    v14 = [(CPLCloudKitZoneIdentification *)self zoneID];
    v15 = [v9 cplRecordWithName:v13 zonedID:v14];

    if (v15)
    {
      v16 = [(CPLCloudKitZoneIdentification *)self zone];
      [v12 updateWithLibraryInfoCKRecord:v15 zone:v16 userRecordID:v10];
    }
  }

  v17 = [(CPLCloudKitZoneIdentification *)self shareRecordName];
  if (v17)
  {
    v18 = [(CPLCloudKitZoneIdentification *)self zoneID];
    v19 = [v9 cplRecordWithName:v17 zonedID:v18];

    if (v19 && [(CPLCloudKitZoneIdentification *)self isSupportedShare:v19])
    {
      [v12 updateWithCKShare:v19 currentUserID:v10];
    }
  }

  v20 = [(CPLCloudKitZoneIdentification *)self rootRecordID];
  if (v20)
  {
    v30 = a2;
    v21 = [v9 objectForKeyedSubscript:v20];
    v22 = [(CPLCloudKitZoneIdentification *)self rootRecordType];
    if (!v22)
    {
      sub_1001A9210(self, v30);
    }

    v23 = v22;
    v31 = v13;
    v24 = v9;
    v25 = v10;
    v26 = v11;
    if (v21)
    {
      v27 = [v21 recordType];
      v28 = [v27 isEqualToString:v23];

      if (v28)
      {
        [v12 updateWithRootCKRecord:v21];
      }
    }

    v11 = v26;
    v10 = v25;
    v9 = v24;
    v13 = v31;
  }

  return v12;
}

- (id)updatedScopeChangeFromScopeChange:(id)a3 currentUserID:(id)a4 withCKRecord:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    sub_1001A93B8(self, a2);
  }

  v12 = v11;
  v13 = [(CPLCloudKitZoneIdentification *)self libraryInfoRecordName];
  if (v13)
  {
    v14 = [v12 selfIfMatchesRecordName:v13];
    if (v14)
    {
      v15 = [v9 copy];
      v16 = [(CPLCloudKitZoneIdentification *)self zone];
      [v15 updateWithLibraryInfoCKRecord:v14 zone:v16 userRecordID:v10];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = [(CPLCloudKitZoneIdentification *)self shareRecordName];
  if (v17)
  {
    v18 = [v12 selfIfMatchesRecordName:v17];
    if (v18 && [(CPLCloudKitZoneIdentification *)self isSupportedShare:v18])
    {
      if (!v15)
      {
        v15 = [v9 copy];
      }

      [v15 updateWithCKShare:v18 currentUserID:v10];
    }
  }

  v19 = [(CPLCloudKitZoneIdentification *)self rootRecordID];
  if (v19)
  {
    v29 = a2;
    v20 = [v12 recordID];
    if ([v20 isEqual:v19])
    {
      v21 = v12;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    if (v22)
    {
      v23 = [(CPLCloudKitZoneIdentification *)self rootRecordType];
      if (!v23)
      {
        sub_1001A92E4(self, v29);
      }

      v24 = v23;
      v30 = v9;
      v25 = v10;
      v26 = [v22 recordType];
      v27 = [v26 isEqualToString:v24];

      if (v27)
      {
        if (!v15)
        {
          v15 = [v30 copy];
        }

        [v15 updateWithRootCKRecord:v22];
      }

      v10 = v25;

      v9 = v30;
    }
  }

  return v15;
}

- (id)scopeFlagsUpdateFromCKRecords:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(CPLEngineScopeFlagsUpdate);
  v7 = [(CPLCloudKitZoneIdentification *)self shareRecordName];
  if (v7)
  {
    v8 = [objc_opt_class() shareTypes];
    if (!v8)
    {
      sub_1001A948C(self, a2);
    }

    v9 = v8;
    v10 = [(CPLCloudKitZoneIdentification *)self zoneID];
    v11 = [v5 cplRecordWithName:v7 zonedID:v10];
    if (v11)
    {
      v12 = v11;
      if ([(CPLCloudKitZoneIdentification *)self isSupportedShare:v11])
      {
        [v6 setValue:-[CPLCloudKitZoneIdentification _isScopeReadonlyFromCKShare:](self forFlag:{"_isScopeReadonlyFromCKShare:", v12), 1}];
      }
    }
  }

  return v6;
}

- (id)updatedFlagsFromCKRecord:(id)a3
{
  v4 = a3;
  v5 = [(CPLCloudKitZoneIdentification *)self shareRecordName];
  if (v5 && ([v4 selfIfMatchesRecordName:v5], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    if ([(CPLCloudKitZoneIdentification *)self isSupportedShare:v6])
    {
      v8 = objc_alloc_init(CPLEngineScopeFlagsUpdate);
      [v8 setValue:-[CPLCloudKitZoneIdentification _isScopeReadonlyFromCKShare:](self forFlag:{"_isScopeReadonlyFromCKShare:", v7), 1}];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isSupportedZoneID:(id)a3
{
  v4 = [a3 zoneName];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a1 supportedZonePrefixes];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([v4 hasPrefix:*(*(&v10 + 1) + 8 * i)])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (BOOL)isSupportedShareType:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a1 shareTypes];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEqualToString:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (BOOL)isSupportedShare:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKey:CKShareTypeKey];
    if (v5)
    {
      v6 = [a1 isSupportedShareType:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isSupportedShareType:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() isSupportedShareType:v3];

  return v4;
}

- (BOOL)isSupportedShare:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() isSupportedShare:v3];

  return v4;
}

- (CKRecordID)rootRecordID
{
  v3 = [objc_opt_class() rootRecordName];
  if (v3)
  {
    v4 = [(CPLCloudKitZoneIdentification *)self recordIDWithRecordName:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)shareRecordName
{
  v2 = objc_opt_class();

  return [v2 shareRecordName];
}

- (id)shareType
{
  v2 = objc_opt_class();

  return [v2 shareType];
}

- (id)shareTypeForScopeChange:(id)a3
{
  v3 = [objc_opt_class() shareTypes];
  v4 = [v3 firstObject];

  return v4;
}

- (NSString)libraryInfoRecordName
{
  v2 = objc_opt_class();

  return [v2 libraryInfoRecordName];
}

- (CKRecordID)libraryInfoRecordID
{
  v3 = [(CPLCloudKitZoneIdentification *)self libraryInfoRecordName];
  if (v3)
  {
    v4 = [(CPLCloudKitZoneIdentification *)self recordIDWithRecordName:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_rootRef
{
  if (self->_hasCachedRootRef)
  {
    v3 = self->_cachedRootRef;
  }

  else
  {
    self->_hasCachedRootRef = 1;
    v4 = [(CPLCloudKitZoneIdentification *)self rootRecordID];
    v5 = v4;
    if (v4)
    {
      v4 = [[CKReference alloc] initWithRecordID:v4 action:0];
    }

    cachedRootRef = self->_cachedRootRef;
    self->_cachedRootRef = v4;

    v3 = self->_cachedRootRef;
  }

  return v3;
}

- (int64_t)operationType
{
  v2 = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
  v3 = CPLCloudKitOperationTypeForScope(v2);

  return v3;
}

- (int64_t)databaseScope
{
  v2 = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
  v3 = [v2 databaseScope];

  return v3;
}

- (void)setupRootOnRecord:(id)a3
{
  v5 = a3;
  v4 = [(CPLCloudKitZoneIdentification *)self _rootRef];
  if (v4)
  {
    [v5 setParent:v4];
  }
}

- (BOOL)supportsUploadOfChange:(id)a3 scopeProvider:(id)a4
{
  v5 = [a3 recordClass];

  return [(CPLCloudKitZoneIdentification *)self supportsUploadOfRecordClass:v5];
}

- (BOOL)supportsDownloadOfChange:(id)a3 scopeProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((+[CPLFingerprintScheme supportsEPP]& 1) != 0)
  {
    goto LABEL_2;
  }

  if ([v6 isAssetChange])
  {
    v8 = [v6 relatedIdentifier];

    if (!v8)
    {
      goto LABEL_2;
    }

LABEL_7:
    self = [v7 fingerprintContext];
    v9 = [v6 fingerprintSchemeWithContext:self];

    LODWORD(self) = [v9 isMMCSv2] ^ 1;
    goto LABEL_8;
  }

  if ([v6 isMasterChange])
  {
    goto LABEL_7;
  }

LABEL_2:
  LOBYTE(self) = -[CPLCloudKitZoneIdentification supportsDownloadOfRecordClass:](self, "supportsDownloadOfRecordClass:", [v6 recordClass]);
LABEL_8:

  return self;
}

- (id)recordIDWithRecordName:(id)a3
{
  v4 = a3;
  v5 = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
  v6 = [v5 recordIDWithRecordName:v4];

  return v6;
}

- (id)scopedIdentifierWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [CPLScopedIdentifier alloc];
  v6 = [(CPLEngineScope *)self->_engineScope scopeIdentifier];
  v7 = [v5 initWithScopeIdentifier:v6 identifier:v4];

  return v7;
}

- (CKRecordZoneID)zoneID
{
  v2 = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
  v3 = [v2 zoneID];

  return v3;
}

- (CKRecordZone)zone
{
  v2 = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
  v3 = [v2 zone];

  return v3;
}

- (id)newScopeIdentifierRelativeToMainScopeIdentifier:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() prefixForNewScopesRelativeToMainScopeIdentifier:v3];

  if (v4)
  {
    v5 = CPLSharingScopeUUID();
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = +[NSUUID UUID];
    }

    v9 = v7;

    v10 = [NSString alloc];
    v11 = [v9 UUIDString];
    v8 = [v10 initWithFormat:@"%@%@", v4, v11];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (int64_t)_permissionFromCKShare:(id)a3
{
  v3 = a3;
  v4 = [v3 currentUserParticipant];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 permission];
  }

  else
  {
    v6 = [v3 publicPermission];
  }

  v7 = v6;

  return v7;
}

- (BOOL)_isScopeReadonlyFromCKShare:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() isScopeReadonlyFromCKShare:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
  v7 = [v6 isShared];

  return v7;
}

+ (BOOL)shouldIgnoreZoneID:(id)a3 forMainScopeIdentifier:(id)a4
{
  v6 = a3;
  v7 = [a1 prefixForNewScopesRelativeToMainScopeIdentifier:a4];
  if (v7 && [a1 isSupportedZoneID:v6])
  {
    v8 = [v6 zoneName];
    v9 = [v8 hasPrefix:v7] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

@end