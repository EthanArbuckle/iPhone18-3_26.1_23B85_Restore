@interface CPLAlbumChange
+ (id)ckAssetProperties;
+ (id)ckValueForRelatedRecord:(id)record;
- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider;
- (void)fillMissingCKAssetProperties:(id)properties withCKRecord:(id)record;
- (void)fillWithCKRecord:(id)record;
@end

@implementation CPLAlbumChange

+ (id)ckAssetProperties
{
  if (qword_1002C55C0 != -1)
  {
    sub_1001AAD34();
  }

  v3 = qword_1002C55C8;

  return v3;
}

- (void)fillMissingCKAssetProperties:(id)properties withCKRecord:(id)record
{
  propertiesCopy = properties;
  recordCopy = record;
  v12.receiver = self;
  v12.super_class = CPLAlbumChange;
  [(CPLAlbumChange *)&v12 fillMissingCKAssetProperties:propertiesCopy withCKRecord:recordCopy];
  v8 = [propertiesCopy objectForKeyedSubscript:@"resProjectDataRes"];
  if (v8)
  {
    v9 = +[CPLFingerprintScheme nonPrivateFingerprintScheme];
    [recordCopy cplValidateAndWarnIntegrityOfResourceData:v8 withFingerPrintKey:@"resProjectDataFingerprint" andFileSizeKey:@"resProjectDataFileSize" fingerprintScheme:v9];

    [(CPLAlbumChange *)self setProjectData:v8];
  }

  v10 = [propertiesCopy objectForKeyedSubscript:@"resProjectPreviewImageDataRes"];
  if (v10)
  {
    v11 = +[CPLFingerprintScheme nonPrivateFingerprintScheme];
    [recordCopy cplValidateAndWarnIntegrityOfResourceData:v10 withFingerPrintKey:@"resProjectPreviewImageDataFingerprint" andFileSizeKey:@"resProjectPreviewImageDataFileSize" fingerprintScheme:v11];

    [(CPLAlbumChange *)self setProjectPreviewImageData:v10];
  }
}

+ (id)ckValueForRelatedRecord:(id)record
{
  recordID = [record recordID];
  recordName = [recordID recordName];

  return recordName;
}

- (void)fillWithCKRecord:(id)record
{
  recordCopy = record;
  selfCopy = self;
  v5 = [recordCopy objectForKey:@"parentId"];
  [(CPLAlbumChange *)selfCopy setParentIdentifier:v5];

  v6 = [recordCopy cpl_legacyDecryptedObjectForKey:@"albumNameEnc" validateClass:objc_opt_class()];
  [(CPLAlbumChange *)selfCopy setName:v6];

  v7 = [recordCopy cpl_objectForKey:@"position" validateClass:objc_opt_class()];
  v8 = v7;
  if (!v7)
  {
    v7 = &off_10028EE18;
  }

  -[CPLAlbumChange setPosition:](selfCopy, "setPosition:", [v7 integerValue]);

  v9 = [recordCopy cpl_objectForKey:@"albumType" validateClass:objc_opt_class()];
  v10 = v9;
  if (!v9)
  {
    v9 = &off_10028EE30;
  }

  -[CPLAlbumChange setAlbumType:](selfCopy, "setAlbumType:", [v9 unsignedIntegerValue]);

  v11 = [recordCopy cpl_legacyDecryptedObjectForKey:@"importedByBundleIdentifierEnc" validateClass:objc_opt_class()];
  [(CPLAlbumChange *)selfCopy setImportedByBundleIdentifier:v11];

  v12 = [recordCopy objectForKeyedSubscript:@"sortType"];
  v13 = v12;
  if (v12 && [v12 unsignedIntegerValue])
  {
    unsignedIntegerValue = [v13 unsignedIntegerValue];
  }

  else
  {
    v15 = [recordCopy objectForKeyedSubscript:@"sortTypeExt"];
    v16 = v15;
    if (v15 && [v15 unsignedIntegerValue])
    {
      unsignedIntegerValue = [v16 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }
  }

  [(CPLAlbumChange *)selfCopy setAlbumSortType:unsignedIntegerValue];

  v17 = [recordCopy cpl_objectForKey:@"sortAscending" validateClass:objc_opt_class()];
  v18 = v17;
  if (!v17)
  {
    v17 = &__kCFBooleanFalse;
  }

  -[CPLAlbumChange setAlbumSortAscending:](selfCopy, "setAlbumSortAscending:", [v17 BOOLValue]);

  v19 = [recordCopy objectForKey:@"userModificationDate"];
  [(CPLAlbumChange *)selfCopy setUserModificationDate:v19];

  v20 = [recordCopy cpl_legacyDecryptedObjectForKey:@"projectDocumentTypeEnc" validateClass:objc_opt_class()];
  [(CPLAlbumChange *)selfCopy setProjectDocumentType:v20];
}

- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider
{
  builderCopy = builder;
  selfCopy = self;
  fingerprintContext = [provider fingerprintContext];
  if ([(CPLAlbumChange *)selfCopy hasChangeType:2])
  {
    if ([(CPLAlbumChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"parentIdentifier")])
    {
      parentIdentifier = [(CPLAlbumChange *)selfCopy parentIdentifier];
      [builderCopy setObject:parentIdentifier forKey:@"parentId"];
    }

    if ([(CPLAlbumChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"name")])
    {
      name = [(CPLAlbumChange *)selfCopy name];
      [builderCopy setLegacyEncryptedObject:name forKey:@"albumNameEnc"];
    }

    if ([(CPLAlbumChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"position")])
    {
      v11 = [NSNumber numberWithInteger:[(CPLAlbumChange *)selfCopy position]];
      [builderCopy setObject:v11 forKey:@"position"];
    }

    if ([(CPLAlbumChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"albumType")])
    {
      v12 = [NSNumber numberWithUnsignedInteger:[(CPLAlbumChange *)selfCopy albumType]];
      [builderCopy setObject:v12 forKey:@"albumType"];
    }

    if ([(CPLAlbumChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"importedByBundleIdentifier")])
    {
      importedByBundleIdentifier = [(CPLAlbumChange *)selfCopy importedByBundleIdentifier];
      [builderCopy setLegacyEncryptedObject:importedByBundleIdentifier forKey:@"importedByBundleIdentifierEnc"];
    }

    if ([(CPLAlbumChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"albumSortType")])
    {
      albumSortType = [(CPLAlbumChange *)selfCopy albumSortType];
      v15 = albumSortType;
      if (albumSortType < 7 || albumSortType == 100)
      {
        v16 = [NSNumber numberWithUnsignedInteger:albumSortType];
        [builderCopy setObject:v16 forKey:@"sortType"];

        [builderCopy setObject:&off_10028EE30 forKey:@"sortTypeExt"];
      }

      else
      {
        [builderCopy setObject:&off_10028EE30 forKey:@"sortType"];
        v22 = [NSNumber numberWithUnsignedInteger:v15];
        [builderCopy setObject:v22 forKey:@"sortTypeExt"];
      }
    }

    if ([(CPLAlbumChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"albumSortAscending")])
    {
      v17 = [NSNumber numberWithBool:[(CPLAlbumChange *)selfCopy albumSortAscending]];
      [builderCopy setObject:v17 forKey:@"sortAscending"];
    }

    if ([(CPLAlbumChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"userModificationDate")])
    {
      userModificationDate = [(CPLAlbumChange *)selfCopy userModificationDate];
      [builderCopy setObject:userModificationDate forKey:@"userModificationDate"];
    }

    if ([(CPLAlbumChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"projectDocumentType")])
    {
      projectDocumentType = [(CPLAlbumChange *)selfCopy projectDocumentType];
      [builderCopy setLegacyEncryptedObject:projectDocumentType forKey:@"projectDocumentTypeEnc"];
    }

    if ([(CPLAlbumChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"projectData")])
    {
      projectData = [(CPLAlbumChange *)selfCopy projectData];
      if (projectData)
      {
        sub_1001ABE40();
      }

      else
      {
        [builderCopy setObject:0 forKey:@"resProjectDataFingerprint"];
        [builderCopy setObject:0 forKey:@"resProjectDataRes"];
        [builderCopy setObject:0 forKey:@"resProjectDataFileSize"];
      }
    }

    if ([(CPLAlbumChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"projectPreviewImageData")])
    {
      projectPreviewImageData = [(CPLAlbumChange *)selfCopy projectPreviewImageData];
      if (projectPreviewImageData)
      {
        sub_1001ABFBC();
      }

      else
      {
        [builderCopy setObject:0 forKey:@"resProjectPreviewImageDataFingerprint"];
        [builderCopy setObject:0 forKey:@"resProjectPreviewImageDataRes"];
        [builderCopy setObject:0 forKey:@"resProjectPreviewImageDataFileSize"];
      }
    }
  }
}

@end