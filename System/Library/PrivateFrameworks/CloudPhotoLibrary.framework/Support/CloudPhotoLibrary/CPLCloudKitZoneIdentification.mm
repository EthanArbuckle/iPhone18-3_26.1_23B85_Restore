@interface CPLCloudKitZoneIdentification
+ (BOOL)isSupportedShare:(id)share;
+ (BOOL)isSupportedShareType:(id)type;
+ (BOOL)isSupportedZoneID:(id)d;
+ (BOOL)shouldIgnoreZoneID:(id)d forMainScopeIdentifier:(id)identifier;
+ (BOOL)shouldProtectZoneIDFromDeletion:(id)deletion;
+ (NSArray)recordNamesForScopeInfo;
+ (id)recordsToFetchToIdentifyZoneID:(id)d proposedScopeType:(int64_t)type currentUserID:(id)iD;
+ (int64_t)_permissionFromCKShare:(id)share;
- (BOOL)_isScopeReadonlyFromCKShare:(id)share;
- (BOOL)isSupportedShare:(id)share;
- (BOOL)isSupportedShareType:(id)type;
- (BOOL)supportsDownloadOfChange:(id)change scopeProvider:(id)provider;
- (BOOL)supportsUploadOfChange:(id)change scopeProvider:(id)provider;
- (CKRecordID)libraryInfoRecordID;
- (CKRecordID)rootRecordID;
- (CKRecordZone)zone;
- (CKRecordZoneID)zoneID;
- (CPLCloudKitZoneIdentification)initWithCloudKitScope:(id)scope engineScope:(id)engineScope;
- (NSString)libraryInfoRecordName;
- (NSString)shareRecordName;
- (id)_baseScopeChange;
- (id)_rootRef;
- (id)newScopeIdentifierRelativeToMainScopeIdentifier:(id)identifier;
- (id)recordIDWithRecordName:(id)name;
- (id)recordsToFetchForScopeInfoWithCurrentUserID:(id)d;
- (id)scopeChangeFromCKRecords:(id)records currentUserID:(id)d previousScopeChange:(id)change;
- (id)scopeFlagsUpdateFromCKRecords:(id)records;
- (id)scopedIdentifierWithIdentifier:(id)identifier;
- (id)shareType;
- (id)shareTypeForScopeChange:(id)change;
- (id)updatedFlagsFromCKRecord:(id)record;
- (id)updatedScopeChangeFromScopeChange:(id)change currentUserID:(id)d withCKRecord:(id)record;
- (int64_t)databaseScope;
- (int64_t)operationType;
- (void)setupRootOnRecord:(id)record;
@end

@implementation CPLCloudKitZoneIdentification

+ (BOOL)shouldProtectZoneIDFromDeletion:(id)deletion
{
  zoneName = [deletion zoneName];
  v4 = [zoneName hasPrefix:CPLPrimaryScopeIdentifier];

  return v4;
}

- (CPLCloudKitZoneIdentification)initWithCloudKitScope:(id)scope engineScope:(id)engineScope
{
  scopeCopy = scope;
  engineScopeCopy = engineScope;
  if ([objc_opt_class() supportsCloudKitScope:scopeCopy engineScope:engineScopeCopy])
  {
    v26.receiver = self;
    v26.super_class = CPLCloudKitZoneIdentification;
    v8 = [(CPLCloudKitZoneIdentification *)&v26 init];
    if (!v8)
    {
LABEL_17:
      self = v8;
      selfCopy = self;
      goto LABEL_18;
    }

    options = [scopeCopy options];
    v10 = options;
    shareRecordName = [(CPLCloudKitZoneIdentification *)v8 shareRecordName];
    v12 = shareRecordName;
    if (shareRecordName && CKRecordNameZoneWideShare)
    {
      v13 = [shareRecordName isEqual:CKRecordNameZoneWideShare];

      if ((v13 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v15 = shareRecordName | CKRecordNameZoneWideShare;

      if (v15)
      {
LABEL_10:
        zoneID = [scopeCopy zoneID];
        ownerName = [zoneID ownerName];
        v18 = [ownerName isEqualToString:CKCurrentUserDefaultName];

        if (v18)
        {
          v19 = v10;
        }

        else
        {
          v19 = v10 | 2;
        }

        if (v19 == options)
        {
          v20 = scopeCopy;
          cloudKitScope = v8->_cloudKitScope;
          v8->_cloudKitScope = v20;
        }

        else
        {
          v22 = [CPLCloudKitScope alloc];
          cloudKitScope = [scopeCopy zone];
          v23 = [(CPLCloudKitScope *)v22 initWithZone:cloudKitScope options:v19];
          v24 = v8->_cloudKitScope;
          v8->_cloudKitScope = v23;
        }

        objc_storeStrong(&v8->_engineScope, engineScope);
        goto LABEL_17;
      }
    }

    v10 = options | 4;
    goto LABEL_10;
  }

  selfCopy = 0;
LABEL_18:

  return selfCopy;
}

+ (NSArray)recordNamesForScopeInfo
{
  v3 = [[NSMutableArray alloc] initWithCapacity:3];
  rootRecordName = [self rootRecordName];
  if (rootRecordName)
  {
    [v3 addObject:rootRecordName];
  }

  shareRecordName = [self shareRecordName];
  if (shareRecordName)
  {
    [v3 addObject:shareRecordName];
  }

  libraryInfoRecordName = [self libraryInfoRecordName];
  if (libraryInfoRecordName)
  {
    [v3 addObject:libraryInfoRecordName];
  }

  return v3;
}

+ (id)recordsToFetchToIdentifyZoneID:(id)d proposedScopeType:(int64_t)type currentUserID:(id)iD
{
  dCopy = d;
  recordNamesForScopeInfo = [self recordNamesForScopeInfo];
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(recordNamesForScopeInfo, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = recordNamesForScopeInfo;
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
        v16 = [v15 initWithRecordName:v14 zoneID:{dCopy, v18}];
        [v8 addObject:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)recordsToFetchForScopeInfoWithCurrentUserID:(id)d
{
  dCopy = d;
  v5 = objc_opt_class();
  cloudKitScope = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
  zoneID = [cloudKitScope zoneID];
  v8 = [v5 recordsToFetchToIdentifyZoneID:zoneID proposedScopeType:-[CPLEngineScope scopeType](self->_engineScope currentUserID:{"scopeType"), dCopy}];

  return v8;
}

- (id)_baseScopeChange
{
  scopeType = [(CPLEngineScope *)self->_engineScope scopeType];
  scopeIdentifier = [(CPLEngineScope *)self->_engineScope scopeIdentifier];
  v5 = [CPLScopeChange newScopeChangeInferClassWithScopeIdentifier:scopeIdentifier type:scopeType];

  return v5;
}

- (id)scopeChangeFromCKRecords:(id)records currentUserID:(id)d previousScopeChange:(id)change
{
  recordsCopy = records;
  dCopy = d;
  changeCopy = change;
  _baseScopeChange = [(CPLCloudKitZoneIdentification *)self _baseScopeChange];
  libraryInfoRecordName = [(CPLCloudKitZoneIdentification *)self libraryInfoRecordName];
  if (libraryInfoRecordName)
  {
    zoneID = [(CPLCloudKitZoneIdentification *)self zoneID];
    v15 = [recordsCopy cplRecordWithName:libraryInfoRecordName zonedID:zoneID];

    if (v15)
    {
      v16 = [(CPLCloudKitZoneIdentification *)self zone];
      [_baseScopeChange updateWithLibraryInfoCKRecord:v15 zone:v16 userRecordID:dCopy];
    }
  }

  shareRecordName = [(CPLCloudKitZoneIdentification *)self shareRecordName];
  if (shareRecordName)
  {
    zoneID2 = [(CPLCloudKitZoneIdentification *)self zoneID];
    v19 = [recordsCopy cplRecordWithName:shareRecordName zonedID:zoneID2];

    if (v19 && [(CPLCloudKitZoneIdentification *)self isSupportedShare:v19])
    {
      [_baseScopeChange updateWithCKShare:v19 currentUserID:dCopy];
    }
  }

  rootRecordID = [(CPLCloudKitZoneIdentification *)self rootRecordID];
  if (rootRecordID)
  {
    v30 = a2;
    v21 = [recordsCopy objectForKeyedSubscript:rootRecordID];
    rootRecordType = [(CPLCloudKitZoneIdentification *)self rootRecordType];
    if (!rootRecordType)
    {
      sub_1001A9210(self, v30);
    }

    v23 = rootRecordType;
    v31 = libraryInfoRecordName;
    v24 = recordsCopy;
    v25 = dCopy;
    v26 = changeCopy;
    if (v21)
    {
      recordType = [v21 recordType];
      v28 = [recordType isEqualToString:v23];

      if (v28)
      {
        [_baseScopeChange updateWithRootCKRecord:v21];
      }
    }

    changeCopy = v26;
    dCopy = v25;
    recordsCopy = v24;
    libraryInfoRecordName = v31;
  }

  return _baseScopeChange;
}

- (id)updatedScopeChangeFromScopeChange:(id)change currentUserID:(id)d withCKRecord:(id)record
{
  changeCopy = change;
  dCopy = d;
  recordCopy = record;
  if (!changeCopy)
  {
    sub_1001A93B8(self, a2);
  }

  v12 = recordCopy;
  libraryInfoRecordName = [(CPLCloudKitZoneIdentification *)self libraryInfoRecordName];
  if (libraryInfoRecordName)
  {
    v14 = [v12 selfIfMatchesRecordName:libraryInfoRecordName];
    if (v14)
    {
      v15 = [changeCopy copy];
      v16 = [(CPLCloudKitZoneIdentification *)self zone];
      [v15 updateWithLibraryInfoCKRecord:v14 zone:v16 userRecordID:dCopy];
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

  shareRecordName = [(CPLCloudKitZoneIdentification *)self shareRecordName];
  if (shareRecordName)
  {
    v18 = [v12 selfIfMatchesRecordName:shareRecordName];
    if (v18 && [(CPLCloudKitZoneIdentification *)self isSupportedShare:v18])
    {
      if (!v15)
      {
        v15 = [changeCopy copy];
      }

      [v15 updateWithCKShare:v18 currentUserID:dCopy];
    }
  }

  rootRecordID = [(CPLCloudKitZoneIdentification *)self rootRecordID];
  if (rootRecordID)
  {
    v29 = a2;
    recordID = [v12 recordID];
    if ([recordID isEqual:rootRecordID])
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
      rootRecordType = [(CPLCloudKitZoneIdentification *)self rootRecordType];
      if (!rootRecordType)
      {
        sub_1001A92E4(self, v29);
      }

      v24 = rootRecordType;
      v30 = changeCopy;
      v25 = dCopy;
      recordType = [v22 recordType];
      v27 = [recordType isEqualToString:v24];

      if (v27)
      {
        if (!v15)
        {
          v15 = [v30 copy];
        }

        [v15 updateWithRootCKRecord:v22];
      }

      dCopy = v25;

      changeCopy = v30;
    }
  }

  return v15;
}

- (id)scopeFlagsUpdateFromCKRecords:(id)records
{
  recordsCopy = records;
  v6 = objc_alloc_init(CPLEngineScopeFlagsUpdate);
  shareRecordName = [(CPLCloudKitZoneIdentification *)self shareRecordName];
  if (shareRecordName)
  {
    shareTypes = [objc_opt_class() shareTypes];
    if (!shareTypes)
    {
      sub_1001A948C(self, a2);
    }

    v9 = shareTypes;
    zoneID = [(CPLCloudKitZoneIdentification *)self zoneID];
    v11 = [recordsCopy cplRecordWithName:shareRecordName zonedID:zoneID];
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

- (id)updatedFlagsFromCKRecord:(id)record
{
  recordCopy = record;
  shareRecordName = [(CPLCloudKitZoneIdentification *)self shareRecordName];
  if (shareRecordName && ([recordCopy selfIfMatchesRecordName:shareRecordName], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
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

+ (BOOL)isSupportedZoneID:(id)d
{
  zoneName = [d zoneName];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  supportedZonePrefixes = [self supportedZonePrefixes];
  v6 = [supportedZonePrefixes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(supportedZonePrefixes);
        }

        if ([zoneName hasPrefix:*(*(&v10 + 1) + 8 * i)])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [supportedZonePrefixes countByEnumeratingWithState:&v10 objects:v14 count:16];
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

+ (BOOL)isSupportedShareType:(id)type
{
  typeCopy = type;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  shareTypes = [self shareTypes];
  v6 = [shareTypes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(shareTypes);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEqualToString:typeCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [shareTypes countByEnumeratingWithState:&v10 objects:v14 count:16];
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

+ (BOOL)isSupportedShare:(id)share
{
  shareCopy = share;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [shareCopy objectForKey:CKShareTypeKey];
    if (v5)
    {
      v6 = [self isSupportedShareType:v5];
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

- (BOOL)isSupportedShareType:(id)type
{
  typeCopy = type;
  v4 = [objc_opt_class() isSupportedShareType:typeCopy];

  return v4;
}

- (BOOL)isSupportedShare:(id)share
{
  shareCopy = share;
  v4 = [objc_opt_class() isSupportedShare:shareCopy];

  return v4;
}

- (CKRecordID)rootRecordID
{
  rootRecordName = [objc_opt_class() rootRecordName];
  if (rootRecordName)
  {
    v4 = [(CPLCloudKitZoneIdentification *)self recordIDWithRecordName:rootRecordName];
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

- (id)shareTypeForScopeChange:(id)change
{
  shareTypes = [objc_opt_class() shareTypes];
  firstObject = [shareTypes firstObject];

  return firstObject;
}

- (NSString)libraryInfoRecordName
{
  v2 = objc_opt_class();

  return [v2 libraryInfoRecordName];
}

- (CKRecordID)libraryInfoRecordID
{
  libraryInfoRecordName = [(CPLCloudKitZoneIdentification *)self libraryInfoRecordName];
  if (libraryInfoRecordName)
  {
    v4 = [(CPLCloudKitZoneIdentification *)self recordIDWithRecordName:libraryInfoRecordName];
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
    rootRecordID = [(CPLCloudKitZoneIdentification *)self rootRecordID];
    v5 = rootRecordID;
    if (rootRecordID)
    {
      rootRecordID = [[CKReference alloc] initWithRecordID:rootRecordID action:0];
    }

    cachedRootRef = self->_cachedRootRef;
    self->_cachedRootRef = rootRecordID;

    v3 = self->_cachedRootRef;
  }

  return v3;
}

- (int64_t)operationType
{
  cloudKitScope = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
  v3 = CPLCloudKitOperationTypeForScope(cloudKitScope);

  return v3;
}

- (int64_t)databaseScope
{
  cloudKitScope = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
  databaseScope = [cloudKitScope databaseScope];

  return databaseScope;
}

- (void)setupRootOnRecord:(id)record
{
  recordCopy = record;
  _rootRef = [(CPLCloudKitZoneIdentification *)self _rootRef];
  if (_rootRef)
  {
    [recordCopy setParent:_rootRef];
  }
}

- (BOOL)supportsUploadOfChange:(id)change scopeProvider:(id)provider
{
  recordClass = [change recordClass];

  return [(CPLCloudKitZoneIdentification *)self supportsUploadOfRecordClass:recordClass];
}

- (BOOL)supportsDownloadOfChange:(id)change scopeProvider:(id)provider
{
  changeCopy = change;
  providerCopy = provider;
  if ((+[CPLFingerprintScheme supportsEPP]& 1) != 0)
  {
    goto LABEL_2;
  }

  if ([changeCopy isAssetChange])
  {
    relatedIdentifier = [changeCopy relatedIdentifier];

    if (!relatedIdentifier)
    {
      goto LABEL_2;
    }

LABEL_7:
    self = [providerCopy fingerprintContext];
    v9 = [changeCopy fingerprintSchemeWithContext:self];

    LODWORD(self) = [v9 isMMCSv2] ^ 1;
    goto LABEL_8;
  }

  if ([changeCopy isMasterChange])
  {
    goto LABEL_7;
  }

LABEL_2:
  LOBYTE(self) = -[CPLCloudKitZoneIdentification supportsDownloadOfRecordClass:](self, "supportsDownloadOfRecordClass:", [changeCopy recordClass]);
LABEL_8:

  return self;
}

- (id)recordIDWithRecordName:(id)name
{
  nameCopy = name;
  cloudKitScope = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
  v6 = [cloudKitScope recordIDWithRecordName:nameCopy];

  return v6;
}

- (id)scopedIdentifierWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [CPLScopedIdentifier alloc];
  scopeIdentifier = [(CPLEngineScope *)self->_engineScope scopeIdentifier];
  v7 = [v5 initWithScopeIdentifier:scopeIdentifier identifier:identifierCopy];

  return v7;
}

- (CKRecordZoneID)zoneID
{
  cloudKitScope = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
  zoneID = [cloudKitScope zoneID];

  return zoneID;
}

- (CKRecordZone)zone
{
  cloudKitScope = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
  v3 = [cloudKitScope zone];

  return v3;
}

- (id)newScopeIdentifierRelativeToMainScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [objc_opt_class() prefixForNewScopesRelativeToMainScopeIdentifier:identifierCopy];

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
    uUIDString = [v9 UUIDString];
    v8 = [v10 initWithFormat:@"%@%@", v4, uUIDString];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (int64_t)_permissionFromCKShare:(id)share
{
  shareCopy = share;
  currentUserParticipant = [shareCopy currentUserParticipant];
  v5 = currentUserParticipant;
  if (currentUserParticipant)
  {
    permission = [currentUserParticipant permission];
  }

  else
  {
    permission = [shareCopy publicPermission];
  }

  v7 = permission;

  return v7;
}

- (BOOL)_isScopeReadonlyFromCKShare:(id)share
{
  shareCopy = share;
  v5 = [objc_opt_class() isScopeReadonlyFromCKShare:shareCopy];

  if (!v5)
  {
    return 0;
  }

  cloudKitScope = [(CPLCloudKitZoneIdentification *)self cloudKitScope];
  isShared = [cloudKitScope isShared];

  return isShared;
}

+ (BOOL)shouldIgnoreZoneID:(id)d forMainScopeIdentifier:(id)identifier
{
  dCopy = d;
  v7 = [self prefixForNewScopesRelativeToMainScopeIdentifier:identifier];
  if (v7 && [self isSupportedZoneID:dCopy])
  {
    zoneName = [dCopy zoneName];
    v9 = [zoneName hasPrefix:v7] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

@end