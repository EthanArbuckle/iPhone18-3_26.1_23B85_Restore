@interface CPLCloudKitCollectionShareZoneIdentification
+ (id)supportedZonePrefixes;
+ (int64_t)_scopeTypeForCloudKitScope:(id)scope;
+ (int64_t)scopeTypeForCloudKitScope:(id)scope proposedScopeType:(int64_t)type fetchedRecords:(id)records currentUserID:(id)d;
- (BOOL)supportsDownloadOfChange:(id)change scopeProvider:(id)provider;
- (BOOL)supportsDownloadOfRecordClass:(Class)class;
- (BOOL)supportsUploadOfChange:(id)change scopeProvider:(id)provider;
- (BOOL)supportsZoneCreation;
- (id)shareRecordIDToDelete;
- (void)finalizeRecord:(id)record fromCKRecord:(id)kRecord currentUserID:(id)d;
@end

@implementation CPLCloudKitCollectionShareZoneIdentification

+ (id)supportedZonePrefixes
{
  if (CPLIsCollectionShareFeatureEnabled())
  {
    v4[0] = CPLScopeIdentifierPrefixForCollectionShare;
    v4[1] = CPLScopeIdentifierPrefixForCollectionShareForParallelUniverse;
    v2 = [NSArray arrayWithObjects:v4 count:2];
  }

  else
  {
    v2 = &__NSArray0__struct;
  }

  return v2;
}

+ (int64_t)_scopeTypeForCloudKitScope:(id)scope
{
  if ([scope isShared])
  {
    return 8;
  }

  else
  {
    return 7;
  }
}

+ (int64_t)scopeTypeForCloudKitScope:(id)scope proposedScopeType:(int64_t)type fetchedRecords:(id)records currentUserID:(id)d
{
  scopeCopy = scope;
  recordsCopy = records;
  dCopy = d;
  if (CPLIsCollectionShareFeatureEnabled())
  {
    v15.receiver = self;
    v15.super_class = &OBJC_METACLASS___CPLCloudKitCollectionShareZoneIdentification;
    v13 = objc_msgSendSuper2(&v15, "scopeTypeForCloudKitScope:proposedScopeType:fetchedRecords:currentUserID:", scopeCopy, type, recordsCopy, dCopy);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)supportsZoneCreation
{
  if ([(CPLCloudKitZoneIdentification *)self scopeType]!= 7)
  {
    return 0;
  }

  return CPLIsCollectionShareFeatureEnabled();
}

- (BOOL)supportsUploadOfChange:(id)change scopeProvider:(id)provider
{
  changeCopy = change;
  providerCopy = provider;
  if ([changeCopy supportsCollectionShare])
  {
    v10.receiver = self;
    v10.super_class = CPLCloudKitCollectionShareZoneIdentification;
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
  supportsCollectionShare = [(objc_class *)class supportsCollectionShare];
  if (supportsCollectionShare)
  {
    v7.receiver = self;
    v7.super_class = CPLCloudKitCollectionShareZoneIdentification;
    LOBYTE(supportsCollectionShare) = [(CPLCloudKitZoneIdentification *)&v7 supportsDownloadOfRecordClass:class];
  }

  return supportsCollectionShare;
}

- (BOOL)supportsDownloadOfChange:(id)change scopeProvider:(id)provider
{
  changeCopy = change;
  providerCopy = provider;
  if ([changeCopy supportsCollectionShare])
  {
    v10.receiver = self;
    v10.super_class = CPLCloudKitCollectionShareZoneIdentification;
    v8 = [(CPLCloudKitZoneIdentification *)&v10 supportsDownloadOfChange:changeCopy scopeProvider:providerCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)shareRecordIDToDelete
{
  if ([(CPLCloudKitZoneIdentification *)self scopeType]== 8)
  {
    v3 = [(CPLCloudKitZoneIdentification *)self recordIDWithRecordName:CKRecordNameZoneWideShare];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)finalizeRecord:(id)record fromCKRecord:(id)kRecord currentUserID:(id)d
{
  recordCopy = record;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = CPLCloudKitCollectionShareZoneIdentification;
  kRecordCopy = kRecord;
  [(CPLCloudKitZoneIdentification *)&v14 finalizeRecord:recordCopy fromCKRecord:kRecordCopy currentUserID:dCopy];
  creatorUserRecordID = [kRecordCopy creatorUserRecordID];

  recordName = [creatorUserRecordID recordName];

  if (recordName && CKCurrentUserDefaultName)
  {
    if (([recordName isEqual:CKCurrentUserDefaultName] & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!(recordName | CKCurrentUserDefaultName))
  {
LABEL_6:
    recordName2 = [dCopy recordName];

    recordName = recordName2;
  }

LABEL_7:
  [recordCopy setContributorUserIdentifier:recordName];
}

@end