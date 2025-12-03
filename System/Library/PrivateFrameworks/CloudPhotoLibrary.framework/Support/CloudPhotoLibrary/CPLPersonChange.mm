@interface CPLPersonChange
+ (id)ckValueForRelatedRecord:(id)record;
- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider;
- (void)fillWithCKRecord:(id)record;
@end

@implementation CPLPersonChange

+ (id)ckValueForRelatedRecord:(id)record
{
  recordCopy = record;
  v4 = [[CKReference alloc] initWithRecord:recordCopy action:0];

  return v4;
}

- (void)fillWithCKRecord:(id)record
{
  recordCopy = record;
  selfCopy = self;
  v5 = [recordCopy cpl_legacyDecryptedObjectForKey:@"personFullNameEnc" validateClass:objc_opt_class()];
  [(CPLPersonChange *)selfCopy setFullName:v5];

  v6 = [recordCopy cpl_objectForKey:@"personType" validateClass:objc_opt_class()];
  v7 = v6;
  if (!v6)
  {
    v6 = &off_10028EE30;
  }

  -[CPLPersonChange setPersonType:](selfCopy, "setPersonType:", [v6 integerValue]);

  v8 = [recordCopy cpl_objectForKey:@"manualSortOrder" validateClass:objc_opt_class()];
  v9 = v8;
  if (!v8)
  {
    v8 = &off_10028EE30;
  }

  -[CPLPersonChange setManualSortOrder:](selfCopy, "setManualSortOrder:", [v8 integerValue]);

  if (+[CPLPersonChange serverSupportsAssetSortOrder])
  {
    v10 = [recordCopy cpl_legacyDecryptedObjectForKey:@"sortAscendingEnc" validateClass:objc_opt_class()];
    v11 = v10;
    if (!v10)
    {
      v10 = &off_10028EE30;
    }

    -[CPLPersonChange setAssetSortOrder:](selfCopy, "setAssetSortOrder:", [v10 integerValue]);
  }

  v12 = [recordCopy cpl_legacyDecryptedObjectForKey:@"displayName" validateClass:objc_opt_class()];
  [(CPLPersonChange *)selfCopy setDisplayName:v12];

  v13 = [recordCopy cpl_legacyDecryptedObjectForKey:@"contactDescriptor" validateClass:objc_opt_class()];
  [(CPLPersonChange *)selfCopy setContactDescriptor:v13];

  if (+[CPLPersonChange serverSupportsGraphPeopleHome])
  {
    v14 = [recordCopy objectForKey:@"verifiedType"];
    -[CPLPersonChange setVerifiedType:](selfCopy, "setVerifiedType:", [v14 integerValue]);
  }

  if (+[CPLPersonChange serverSupportsDetectionType])
  {
    v15 = [recordCopy cpl_legacyDecryptedObjectForKey:@"detectionTypeEnc" validateClass:objc_opt_class()];
    v16 = v15;
    if (!v15)
    {
      v15 = &off_10028EE30;
    }

    -[CPLPersonChange setDetectionType:](selfCopy, "setDetectionType:", [v15 integerValue]);
  }

  if (+[CPLPersonChange serverSupportsMergeTargetRef])
  {
    v17 = [recordCopy objectForKey:@"mergeTargetRef"];
    v18 = v17;
    if (v17)
    {
      recordID = [v17 recordID];
      recordName = [recordID recordName];

      [(CPLPersonChange *)selfCopy setMergeTargetPersonIdentifier:recordName];
    }
  }
}

- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider
{
  builderCopy = builder;
  selfCopy = self;
  fingerprintContext = [provider fingerprintContext];
  if ([(CPLPersonChange *)selfCopy hasChangeType:2])
  {
    if ([(CPLPersonChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"fullName")])
    {
      fullName = [(CPLPersonChange *)selfCopy fullName];
      v9 = fullName;
      if (fullName)
      {
        v10 = fullName;
      }

      else
      {
        v10 = &stru_10027C2F0;
      }

      v11 = v10;

      [builderCopy setLegacyEncryptedObject:v11 forKey:@"personFullNameEnc"];
    }

    if ([(CPLPersonChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"personType")])
    {
      v12 = [NSNumber numberWithInteger:[(CPLPersonChange *)selfCopy personType]];
      [builderCopy setObject:v12 forKey:@"personType"];
    }

    if ([(CPLPersonChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"manualSortOrder")])
    {
      v13 = [NSNumber numberWithInteger:[(CPLPersonChange *)selfCopy manualSortOrder]];
      [builderCopy setObject:v13 forKey:@"manualSortOrder"];
    }

    if (+[CPLPersonChange serverSupportsAssetSortOrder]&& [(CPLPersonChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"assetSortOrder")])
    {
      v14 = [NSNumber numberWithInteger:[(CPLPersonChange *)selfCopy assetSortOrder]];
      [builderCopy setLegacyEncryptedObject:v14 forKey:@"sortAscendingEnc"];
    }

    if ([(CPLPersonChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"displayName")])
    {
      displayName = [(CPLPersonChange *)selfCopy displayName];
      v16 = displayName;
      if (displayName)
      {
        v17 = displayName;
      }

      else
      {
        v17 = &stru_10027C2F0;
      }

      v18 = v17;

      [builderCopy setLegacyEncryptedObject:v18 forKey:@"displayName"];
    }

    if ([(CPLPersonChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"contactDescriptor")])
    {
      contactDescriptor = [(CPLPersonChange *)selfCopy contactDescriptor];
      if (contactDescriptor)
      {
        [builderCopy setLegacyEncryptedObject:contactDescriptor forKey:@"contactDescriptor"];
      }
    }

    if ([(CPLPersonChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"verifiedType")]&& +[CPLPersonChange serverSupportsGraphPeopleHome]&& [(CPLPersonChange *)selfCopy verifiedType])
    {
      v20 = [NSNumber numberWithInteger:[(CPLPersonChange *)selfCopy verifiedType]];
      [builderCopy setObject:v20 forKey:@"verifiedType"];
    }

    if (+[CPLPersonChange serverSupportsDetectionType]&& [(CPLPersonChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"detectionType")])
    {
      v21 = [NSNumber numberWithShort:[(CPLPersonChange *)selfCopy detectionType]];
      [builderCopy setLegacyEncryptedObject:v21 forKey:@"detectionTypeEnc"];
    }

    if ([(CPLPersonChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"mergeTargetPersonIdentifier")])
    {
      if (+[CPLPersonChange serverSupportsMergeTargetRef])
      {
        mergeTargetPersonIdentifier = [(CPLPersonChange *)selfCopy mergeTargetPersonIdentifier];
        if (mergeTargetPersonIdentifier)
        {
          v23 = mergeTargetPersonIdentifier;
          v24 = [CPLScopedIdentifier alloc];
          scopedIdentifier = [(CPLPersonChange *)selfCopy scopedIdentifier];
          v26 = [v24 initRelativeToScopedIdentifier:scopedIdentifier identifier:v23];

          if (v26)
          {
            [builderCopy setCKReferenceWithScopedIdentifier:v26 forKey:@"mergeTargetRef" referenceAction:0];
          }
        }
      }
    }
  }
}

@end