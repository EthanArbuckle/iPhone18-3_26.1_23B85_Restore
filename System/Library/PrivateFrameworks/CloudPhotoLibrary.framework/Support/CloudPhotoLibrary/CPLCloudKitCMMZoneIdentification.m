@interface CPLCloudKitCMMZoneIdentification
+ (id)shareTypes;
+ (id)supportedZonePrefixes;
+ (int64_t)proposedScopeTypeForCloudKitScope:(id)a3;
+ (int64_t)scopeTypeForCloudKitScope:(id)a3 proposedScopeType:(int64_t)a4 fetchedRecords:(id)a5 currentUserID:(id)a6;
- (BOOL)supportsDeletionOfRecord:(id)a3 scopeProvider:(id)a4;
- (BOOL)supportsDeletionOfRecordClass:(Class)a3;
- (BOOL)supportsDirectDeletionOfRecord:(id)a3 scopeProvider:(id)a4;
- (BOOL)supportsDirectDeletionOfRecordClass:(Class)a3;
- (BOOL)supportsDownloadOfChange:(id)a3 scopeProvider:(id)a4;
- (BOOL)supportsDownloadOfRecordClass:(Class)a3;
- (BOOL)supportsUploadOfChange:(id)a3 scopeProvider:(id)a4;
- (BOOL)supportsUploadOfRecordClass:(Class)a3;
- (id)shareRecordIDToDelete;
- (id)shareTypeForScopeChange:(id)a3;
@end

@implementation CPLCloudKitCMMZoneIdentification

+ (id)supportedZonePrefixes
{
  v4 = CPLScopeIdentifierPrefixForMomentShare;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

+ (int64_t)proposedScopeTypeForCloudKitScope:(id)a3
{
  v4 = a3;
  v5 = [v4 zoneID];
  v6 = [v5 zoneName];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [a1 supportedZonePrefixes];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([v6 hasPrefix:*(*(&v12 + 1) + 8 * i)])
        {
          if ([v4 isShared])
          {
            v8 = 3;
          }

          else
          {
            v8 = 2;
          }

          goto LABEL_13;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v8;
}

+ (int64_t)scopeTypeForCloudKitScope:(id)a3 proposedScopeType:(int64_t)a4 fetchedRecords:(id)a5 currentUserID:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ((a4 - 2) >= 2)
  {
    if (!a4)
    {
      v13 = [v10 zoneID];
      if (![a1 isSupportedZoneID:v13])
      {
        a4 = 0;
LABEL_18:

        goto LABEL_19;
      }

      v14 = [v11 cplRecordWithName:@"cmm-share" zonedID:v13];
      v15 = [v11 cplRecordWithName:@"cmm-root" zonedID:v13];
      if (v14 && ([a1 isSupportedShare:v14] & 1) == 0)
      {

        v14 = 0;
      }

      if (v15)
      {
        v16 = [v15 recordType];
        v17 = [v16 isEqualToString:@"CMMRoot"];

        if (v17)
        {
          if (v14)
          {
            if ([v10 isShared])
            {
              a4 = 3;
            }

            else
            {
              a4 = 2;
            }

            goto LABEL_17;
          }
        }

        else
        {

          v15 = 0;
        }
      }

      a4 = 0;
LABEL_17:

      goto LABEL_18;
    }

    a4 = 0;
  }

LABEL_19:

  return a4;
}

+ (id)shareTypes
{
  if (+[CPLFingerprintScheme supportsEPP])
  {
    return &off_1002913F8;
  }

  else
  {
    return &off_100291410;
  }
}

- (id)shareTypeForScopeChange:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1001A9560(a2, self, v5);
  }

  if (+[CPLFingerprintScheme alwaysCreateEPPMomentShares](CPLFingerprintScheme, "alwaysCreateEPPMomentShares") & 1) != 0 || ([v5 hasEPPAssets])
  {
    v6 = @"photos_links";
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CPLCloudKitCMMZoneIdentification;
    v6 = [(CPLCloudKitZoneIdentification *)&v8 shareTypeForScopeChange:v5];
  }

  return v6;
}

- (id)shareRecordIDToDelete
{
  if ([(CPLCloudKitZoneIdentification *)self scopeType]== 3)
  {
    v3 = [(CPLCloudKitZoneIdentification *)self recordIDWithRecordName:@"cmm-share"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)supportsUploadOfChange:(id)a3 scopeProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10008C178();
  if ([v8 containsObject:{objc_msgSend(v6, "recordClass")}])
  {
    v11.receiver = self;
    v11.super_class = CPLCloudKitCMMZoneIdentification;
    v9 = [(CPLCloudKitZoneIdentification *)&v11 supportsUploadOfChange:v6 scopeProvider:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)supportsDownloadOfChange:(id)a3 scopeProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10008C178();
  if ([v8 containsObject:{objc_msgSend(v6, "recordClass")}])
  {
    v11.receiver = self;
    v11.super_class = CPLCloudKitCMMZoneIdentification;
    v9 = [(CPLCloudKitZoneIdentification *)&v11 supportsDownloadOfChange:v6 scopeProvider:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)supportsDirectDeletionOfRecord:(id)a3 scopeProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10008C178();
  if ([v8 containsObject:{objc_msgSend(v6, "recordClass")}])
  {
    v11.receiver = self;
    v11.super_class = CPLCloudKitCMMZoneIdentification;
    v9 = [(CPLCloudKitZoneIdentification *)&v11 supportsDirectDeletionOfRecord:v6 scopeProvider:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)supportsDeletionOfRecord:(id)a3 scopeProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10008C178();
  if ([v8 containsObject:{objc_msgSend(v6, "recordClass")}])
  {
    v11.receiver = self;
    v11.super_class = CPLCloudKitCMMZoneIdentification;
    v9 = [(CPLCloudKitZoneIdentification *)&v11 supportsDeletionOfRecord:v6 scopeProvider:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)supportsUploadOfRecordClass:(Class)a3
{
  v5 = sub_10008C178();
  if ([v5 containsObject:a3])
  {
    v8.receiver = self;
    v8.super_class = CPLCloudKitCMMZoneIdentification;
    v6 = [(CPLCloudKitZoneIdentification *)&v8 supportsUploadOfRecordClass:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)supportsDownloadOfRecordClass:(Class)a3
{
  v5 = sub_10008C178();
  if ([v5 containsObject:a3])
  {
    v8.receiver = self;
    v8.super_class = CPLCloudKitCMMZoneIdentification;
    v6 = [(CPLCloudKitZoneIdentification *)&v8 supportsDownloadOfRecordClass:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)supportsDirectDeletionOfRecordClass:(Class)a3
{
  v5 = sub_10008C178();
  if ([v5 containsObject:a3])
  {
    v8.receiver = self;
    v8.super_class = CPLCloudKitCMMZoneIdentification;
    v6 = [(CPLCloudKitZoneIdentification *)&v8 supportsDirectDeletionOfRecordClass:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)supportsDeletionOfRecordClass:(Class)a3
{
  v5 = sub_10008C178();
  if ([v5 containsObject:a3])
  {
    v8.receiver = self;
    v8.super_class = CPLCloudKitCMMZoneIdentification;
    v6 = [(CPLCloudKitZoneIdentification *)&v8 supportsDeletionOfRecordClass:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end