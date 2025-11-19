@interface CPLCloudKitCollectionShareZoneIdentification
+ (id)supportedZonePrefixes;
+ (int64_t)_scopeTypeForCloudKitScope:(id)a3;
+ (int64_t)scopeTypeForCloudKitScope:(id)a3 proposedScopeType:(int64_t)a4 fetchedRecords:(id)a5 currentUserID:(id)a6;
- (BOOL)supportsDownloadOfChange:(id)a3 scopeProvider:(id)a4;
- (BOOL)supportsDownloadOfRecordClass:(Class)a3;
- (BOOL)supportsUploadOfChange:(id)a3 scopeProvider:(id)a4;
- (BOOL)supportsZoneCreation;
- (id)shareRecordIDToDelete;
- (void)finalizeRecord:(id)a3 fromCKRecord:(id)a4 currentUserID:(id)a5;
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

+ (int64_t)_scopeTypeForCloudKitScope:(id)a3
{
  if ([a3 isShared])
  {
    return 8;
  }

  else
  {
    return 7;
  }
}

+ (int64_t)scopeTypeForCloudKitScope:(id)a3 proposedScopeType:(int64_t)a4 fetchedRecords:(id)a5 currentUserID:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (CPLIsCollectionShareFeatureEnabled())
  {
    v15.receiver = a1;
    v15.super_class = &OBJC_METACLASS___CPLCloudKitCollectionShareZoneIdentification;
    v13 = objc_msgSendSuper2(&v15, "scopeTypeForCloudKitScope:proposedScopeType:fetchedRecords:currentUserID:", v10, a4, v11, v12);
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

- (BOOL)supportsUploadOfChange:(id)a3 scopeProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 supportsCollectionShare])
  {
    v10.receiver = self;
    v10.super_class = CPLCloudKitCollectionShareZoneIdentification;
    v8 = [(CPLCloudKitZoneIdentification *)&v10 supportsUploadOfChange:v6 scopeProvider:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)supportsDownloadOfRecordClass:(Class)a3
{
  v5 = [(objc_class *)a3 supportsCollectionShare];
  if (v5)
  {
    v7.receiver = self;
    v7.super_class = CPLCloudKitCollectionShareZoneIdentification;
    LOBYTE(v5) = [(CPLCloudKitZoneIdentification *)&v7 supportsDownloadOfRecordClass:a3];
  }

  return v5;
}

- (BOOL)supportsDownloadOfChange:(id)a3 scopeProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 supportsCollectionShare])
  {
    v10.receiver = self;
    v10.super_class = CPLCloudKitCollectionShareZoneIdentification;
    v8 = [(CPLCloudKitZoneIdentification *)&v10 supportsDownloadOfChange:v6 scopeProvider:v7];
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

- (void)finalizeRecord:(id)a3 fromCKRecord:(id)a4 currentUserID:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = CPLCloudKitCollectionShareZoneIdentification;
  v10 = a4;
  [(CPLCloudKitZoneIdentification *)&v14 finalizeRecord:v8 fromCKRecord:v10 currentUserID:v9];
  v11 = [v10 creatorUserRecordID];

  v12 = [v11 recordName];

  if (v12 && CKCurrentUserDefaultName)
  {
    if (([v12 isEqual:CKCurrentUserDefaultName] & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!(v12 | CKCurrentUserDefaultName))
  {
LABEL_6:
    v13 = [v9 recordName];

    v12 = v13;
  }

LABEL_7:
  [v8 setContributorUserIdentifier:v12];
}

@end