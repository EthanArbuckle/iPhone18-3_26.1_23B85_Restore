@interface CPLPersonChange
+ (id)ckValueForRelatedRecord:(id)a3;
- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4;
- (void)fillWithCKRecord:(id)a3;
@end

@implementation CPLPersonChange

+ (id)ckValueForRelatedRecord:(id)a3
{
  v3 = a3;
  v4 = [[CKReference alloc] initWithRecord:v3 action:0];

  return v4;
}

- (void)fillWithCKRecord:(id)a3
{
  v21 = a3;
  v4 = self;
  v5 = [v21 cpl_legacyDecryptedObjectForKey:@"personFullNameEnc" validateClass:objc_opt_class()];
  [(CPLPersonChange *)v4 setFullName:v5];

  v6 = [v21 cpl_objectForKey:@"personType" validateClass:objc_opt_class()];
  v7 = v6;
  if (!v6)
  {
    v6 = &off_10028EE30;
  }

  -[CPLPersonChange setPersonType:](v4, "setPersonType:", [v6 integerValue]);

  v8 = [v21 cpl_objectForKey:@"manualSortOrder" validateClass:objc_opt_class()];
  v9 = v8;
  if (!v8)
  {
    v8 = &off_10028EE30;
  }

  -[CPLPersonChange setManualSortOrder:](v4, "setManualSortOrder:", [v8 integerValue]);

  if (+[CPLPersonChange serverSupportsAssetSortOrder])
  {
    v10 = [v21 cpl_legacyDecryptedObjectForKey:@"sortAscendingEnc" validateClass:objc_opt_class()];
    v11 = v10;
    if (!v10)
    {
      v10 = &off_10028EE30;
    }

    -[CPLPersonChange setAssetSortOrder:](v4, "setAssetSortOrder:", [v10 integerValue]);
  }

  v12 = [v21 cpl_legacyDecryptedObjectForKey:@"displayName" validateClass:objc_opt_class()];
  [(CPLPersonChange *)v4 setDisplayName:v12];

  v13 = [v21 cpl_legacyDecryptedObjectForKey:@"contactDescriptor" validateClass:objc_opt_class()];
  [(CPLPersonChange *)v4 setContactDescriptor:v13];

  if (+[CPLPersonChange serverSupportsGraphPeopleHome])
  {
    v14 = [v21 objectForKey:@"verifiedType"];
    -[CPLPersonChange setVerifiedType:](v4, "setVerifiedType:", [v14 integerValue]);
  }

  if (+[CPLPersonChange serverSupportsDetectionType])
  {
    v15 = [v21 cpl_legacyDecryptedObjectForKey:@"detectionTypeEnc" validateClass:objc_opt_class()];
    v16 = v15;
    if (!v15)
    {
      v15 = &off_10028EE30;
    }

    -[CPLPersonChange setDetectionType:](v4, "setDetectionType:", [v15 integerValue]);
  }

  if (+[CPLPersonChange serverSupportsMergeTargetRef])
  {
    v17 = [v21 objectForKey:@"mergeTargetRef"];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 recordID];
      v20 = [v19 recordName];

      [(CPLPersonChange *)v4 setMergeTargetPersonIdentifier:v20];
    }
  }
}

- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4
{
  v27 = a3;
  v6 = self;
  v7 = [a4 fingerprintContext];
  if ([(CPLPersonChange *)v6 hasChangeType:2])
  {
    if ([(CPLPersonChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"fullName")])
    {
      v8 = [(CPLPersonChange *)v6 fullName];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = &stru_10027C2F0;
      }

      v11 = v10;

      [v27 setLegacyEncryptedObject:v11 forKey:@"personFullNameEnc"];
    }

    if ([(CPLPersonChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"personType")])
    {
      v12 = [NSNumber numberWithInteger:[(CPLPersonChange *)v6 personType]];
      [v27 setObject:v12 forKey:@"personType"];
    }

    if ([(CPLPersonChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"manualSortOrder")])
    {
      v13 = [NSNumber numberWithInteger:[(CPLPersonChange *)v6 manualSortOrder]];
      [v27 setObject:v13 forKey:@"manualSortOrder"];
    }

    if (+[CPLPersonChange serverSupportsAssetSortOrder]&& [(CPLPersonChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"assetSortOrder")])
    {
      v14 = [NSNumber numberWithInteger:[(CPLPersonChange *)v6 assetSortOrder]];
      [v27 setLegacyEncryptedObject:v14 forKey:@"sortAscendingEnc"];
    }

    if ([(CPLPersonChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"displayName")])
    {
      v15 = [(CPLPersonChange *)v6 displayName];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = &stru_10027C2F0;
      }

      v18 = v17;

      [v27 setLegacyEncryptedObject:v18 forKey:@"displayName"];
    }

    if ([(CPLPersonChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"contactDescriptor")])
    {
      v19 = [(CPLPersonChange *)v6 contactDescriptor];
      if (v19)
      {
        [v27 setLegacyEncryptedObject:v19 forKey:@"contactDescriptor"];
      }
    }

    if ([(CPLPersonChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"verifiedType")]&& +[CPLPersonChange serverSupportsGraphPeopleHome]&& [(CPLPersonChange *)v6 verifiedType])
    {
      v20 = [NSNumber numberWithInteger:[(CPLPersonChange *)v6 verifiedType]];
      [v27 setObject:v20 forKey:@"verifiedType"];
    }

    if (+[CPLPersonChange serverSupportsDetectionType]&& [(CPLPersonChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"detectionType")])
    {
      v21 = [NSNumber numberWithShort:[(CPLPersonChange *)v6 detectionType]];
      [v27 setLegacyEncryptedObject:v21 forKey:@"detectionTypeEnc"];
    }

    if ([(CPLPersonChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"mergeTargetPersonIdentifier")])
    {
      if (+[CPLPersonChange serverSupportsMergeTargetRef])
      {
        v22 = [(CPLPersonChange *)v6 mergeTargetPersonIdentifier];
        if (v22)
        {
          v23 = v22;
          v24 = [CPLScopedIdentifier alloc];
          v25 = [(CPLPersonChange *)v6 scopedIdentifier];
          v26 = [v24 initRelativeToScopedIdentifier:v25 identifier:v23];

          if (v26)
          {
            [v27 setCKReferenceWithScopedIdentifier:v26 forKey:@"mergeTargetRef" referenceAction:0];
          }
        }
      }
    }
  }
}

@end