@interface CPLCloudKitCMMZoneIdentification
+ (id)shareTypes;
+ (id)supportedZonePrefixes;
+ (int64_t)proposedScopeTypeForCloudKitScope:(id)scope;
+ (int64_t)scopeTypeForCloudKitScope:(id)scope proposedScopeType:(int64_t)type fetchedRecords:(id)records currentUserID:(id)d;
- (BOOL)supportsDeletionOfRecord:(id)record scopeProvider:(id)provider;
- (BOOL)supportsDeletionOfRecordClass:(Class)class;
- (BOOL)supportsDirectDeletionOfRecord:(id)record scopeProvider:(id)provider;
- (BOOL)supportsDirectDeletionOfRecordClass:(Class)class;
- (BOOL)supportsDownloadOfChange:(id)change scopeProvider:(id)provider;
- (BOOL)supportsDownloadOfRecordClass:(Class)class;
- (BOOL)supportsUploadOfChange:(id)change scopeProvider:(id)provider;
- (BOOL)supportsUploadOfRecordClass:(Class)class;
- (id)shareRecordIDToDelete;
- (id)shareTypeForScopeChange:(id)change;
@end

@implementation CPLCloudKitCMMZoneIdentification

+ (id)supportedZonePrefixes
{
  v4 = CPLScopeIdentifierPrefixForMomentShare;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

+ (int64_t)proposedScopeTypeForCloudKitScope:(id)scope
{
  scopeCopy = scope;
  zoneID = [scopeCopy zoneID];
  zoneName = [zoneID zoneName];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  supportedZonePrefixes = [self supportedZonePrefixes];
  v8 = [supportedZonePrefixes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(supportedZonePrefixes);
        }

        if ([zoneName hasPrefix:*(*(&v12 + 1) + 8 * i)])
        {
          if ([scopeCopy isShared])
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

      v8 = [supportedZonePrefixes countByEnumeratingWithState:&v12 objects:v16 count:16];
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

+ (int64_t)scopeTypeForCloudKitScope:(id)scope proposedScopeType:(int64_t)type fetchedRecords:(id)records currentUserID:(id)d
{
  scopeCopy = scope;
  recordsCopy = records;
  dCopy = d;
  if ((type - 2) >= 2)
  {
    if (!type)
    {
      zoneID = [scopeCopy zoneID];
      if (![self isSupportedZoneID:zoneID])
      {
        type = 0;
LABEL_18:

        goto LABEL_19;
      }

      v14 = [recordsCopy cplRecordWithName:@"cmm-share" zonedID:zoneID];
      v15 = [recordsCopy cplRecordWithName:@"cmm-root" zonedID:zoneID];
      if (v14 && ([self isSupportedShare:v14] & 1) == 0)
      {

        v14 = 0;
      }

      if (v15)
      {
        recordType = [v15 recordType];
        v17 = [recordType isEqualToString:@"CMMRoot"];

        if (v17)
        {
          if (v14)
          {
            if ([scopeCopy isShared])
            {
              type = 3;
            }

            else
            {
              type = 2;
            }

            goto LABEL_17;
          }
        }

        else
        {

          v15 = 0;
        }
      }

      type = 0;
LABEL_17:

      goto LABEL_18;
    }

    type = 0;
  }

LABEL_19:

  return type;
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

- (id)shareTypeForScopeChange:(id)change
{
  changeCopy = change;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1001A9560(a2, self, changeCopy);
  }

  if (+[CPLFingerprintScheme alwaysCreateEPPMomentShares](CPLFingerprintScheme, "alwaysCreateEPPMomentShares") & 1) != 0 || ([changeCopy hasEPPAssets])
  {
    v6 = @"photos_links";
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CPLCloudKitCMMZoneIdentification;
    v6 = [(CPLCloudKitZoneIdentification *)&v8 shareTypeForScopeChange:changeCopy];
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

- (BOOL)supportsUploadOfChange:(id)change scopeProvider:(id)provider
{
  changeCopy = change;
  providerCopy = provider;
  v8 = sub_10008C178();
  if ([v8 containsObject:{objc_msgSend(changeCopy, "recordClass")}])
  {
    v11.receiver = self;
    v11.super_class = CPLCloudKitCMMZoneIdentification;
    v9 = [(CPLCloudKitZoneIdentification *)&v11 supportsUploadOfChange:changeCopy scopeProvider:providerCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)supportsDownloadOfChange:(id)change scopeProvider:(id)provider
{
  changeCopy = change;
  providerCopy = provider;
  v8 = sub_10008C178();
  if ([v8 containsObject:{objc_msgSend(changeCopy, "recordClass")}])
  {
    v11.receiver = self;
    v11.super_class = CPLCloudKitCMMZoneIdentification;
    v9 = [(CPLCloudKitZoneIdentification *)&v11 supportsDownloadOfChange:changeCopy scopeProvider:providerCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)supportsDirectDeletionOfRecord:(id)record scopeProvider:(id)provider
{
  recordCopy = record;
  providerCopy = provider;
  v8 = sub_10008C178();
  if ([v8 containsObject:{objc_msgSend(recordCopy, "recordClass")}])
  {
    v11.receiver = self;
    v11.super_class = CPLCloudKitCMMZoneIdentification;
    v9 = [(CPLCloudKitZoneIdentification *)&v11 supportsDirectDeletionOfRecord:recordCopy scopeProvider:providerCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)supportsDeletionOfRecord:(id)record scopeProvider:(id)provider
{
  recordCopy = record;
  providerCopy = provider;
  v8 = sub_10008C178();
  if ([v8 containsObject:{objc_msgSend(recordCopy, "recordClass")}])
  {
    v11.receiver = self;
    v11.super_class = CPLCloudKitCMMZoneIdentification;
    v9 = [(CPLCloudKitZoneIdentification *)&v11 supportsDeletionOfRecord:recordCopy scopeProvider:providerCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)supportsUploadOfRecordClass:(Class)class
{
  v5 = sub_10008C178();
  if ([v5 containsObject:class])
  {
    v8.receiver = self;
    v8.super_class = CPLCloudKitCMMZoneIdentification;
    v6 = [(CPLCloudKitZoneIdentification *)&v8 supportsUploadOfRecordClass:class];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)supportsDownloadOfRecordClass:(Class)class
{
  v5 = sub_10008C178();
  if ([v5 containsObject:class])
  {
    v8.receiver = self;
    v8.super_class = CPLCloudKitCMMZoneIdentification;
    v6 = [(CPLCloudKitZoneIdentification *)&v8 supportsDownloadOfRecordClass:class];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)supportsDirectDeletionOfRecordClass:(Class)class
{
  v5 = sub_10008C178();
  if ([v5 containsObject:class])
  {
    v8.receiver = self;
    v8.super_class = CPLCloudKitCMMZoneIdentification;
    v6 = [(CPLCloudKitZoneIdentification *)&v8 supportsDirectDeletionOfRecordClass:class];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)supportsDeletionOfRecordClass:(Class)class
{
  v5 = sub_10008C178();
  if ([v5 containsObject:class])
  {
    v8.receiver = self;
    v8.super_class = CPLCloudKitCMMZoneIdentification;
    v6 = [(CPLCloudKitZoneIdentification *)&v8 supportsDeletionOfRecordClass:class];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end