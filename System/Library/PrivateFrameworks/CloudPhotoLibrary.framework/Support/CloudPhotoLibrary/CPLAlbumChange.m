@interface CPLAlbumChange
+ (id)ckAssetProperties;
+ (id)ckValueForRelatedRecord:(id)a3;
- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4;
- (void)fillMissingCKAssetProperties:(id)a3 withCKRecord:(id)a4;
- (void)fillWithCKRecord:(id)a3;
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

- (void)fillMissingCKAssetProperties:(id)a3 withCKRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CPLAlbumChange;
  [(CPLAlbumChange *)&v12 fillMissingCKAssetProperties:v6 withCKRecord:v7];
  v8 = [v6 objectForKeyedSubscript:@"resProjectDataRes"];
  if (v8)
  {
    v9 = +[CPLFingerprintScheme nonPrivateFingerprintScheme];
    [v7 cplValidateAndWarnIntegrityOfResourceData:v8 withFingerPrintKey:@"resProjectDataFingerprint" andFileSizeKey:@"resProjectDataFileSize" fingerprintScheme:v9];

    [(CPLAlbumChange *)self setProjectData:v8];
  }

  v10 = [v6 objectForKeyedSubscript:@"resProjectPreviewImageDataRes"];
  if (v10)
  {
    v11 = +[CPLFingerprintScheme nonPrivateFingerprintScheme];
    [v7 cplValidateAndWarnIntegrityOfResourceData:v10 withFingerPrintKey:@"resProjectPreviewImageDataFingerprint" andFileSizeKey:@"resProjectPreviewImageDataFileSize" fingerprintScheme:v11];

    [(CPLAlbumChange *)self setProjectPreviewImageData:v10];
  }
}

+ (id)ckValueForRelatedRecord:(id)a3
{
  v3 = [a3 recordID];
  v4 = [v3 recordName];

  return v4;
}

- (void)fillWithCKRecord:(id)a3
{
  v21 = a3;
  v4 = self;
  v5 = [v21 objectForKey:@"parentId"];
  [(CPLAlbumChange *)v4 setParentIdentifier:v5];

  v6 = [v21 cpl_legacyDecryptedObjectForKey:@"albumNameEnc" validateClass:objc_opt_class()];
  [(CPLAlbumChange *)v4 setName:v6];

  v7 = [v21 cpl_objectForKey:@"position" validateClass:objc_opt_class()];
  v8 = v7;
  if (!v7)
  {
    v7 = &off_10028EE18;
  }

  -[CPLAlbumChange setPosition:](v4, "setPosition:", [v7 integerValue]);

  v9 = [v21 cpl_objectForKey:@"albumType" validateClass:objc_opt_class()];
  v10 = v9;
  if (!v9)
  {
    v9 = &off_10028EE30;
  }

  -[CPLAlbumChange setAlbumType:](v4, "setAlbumType:", [v9 unsignedIntegerValue]);

  v11 = [v21 cpl_legacyDecryptedObjectForKey:@"importedByBundleIdentifierEnc" validateClass:objc_opt_class()];
  [(CPLAlbumChange *)v4 setImportedByBundleIdentifier:v11];

  v12 = [v21 objectForKeyedSubscript:@"sortType"];
  v13 = v12;
  if (v12 && [v12 unsignedIntegerValue])
  {
    v14 = [v13 unsignedIntegerValue];
  }

  else
  {
    v15 = [v21 objectForKeyedSubscript:@"sortTypeExt"];
    v16 = v15;
    if (v15 && [v15 unsignedIntegerValue])
    {
      v14 = [v16 unsignedIntegerValue];
    }

    else
    {
      v14 = 0;
    }
  }

  [(CPLAlbumChange *)v4 setAlbumSortType:v14];

  v17 = [v21 cpl_objectForKey:@"sortAscending" validateClass:objc_opt_class()];
  v18 = v17;
  if (!v17)
  {
    v17 = &__kCFBooleanFalse;
  }

  -[CPLAlbumChange setAlbumSortAscending:](v4, "setAlbumSortAscending:", [v17 BOOLValue]);

  v19 = [v21 objectForKey:@"userModificationDate"];
  [(CPLAlbumChange *)v4 setUserModificationDate:v19];

  v20 = [v21 cpl_legacyDecryptedObjectForKey:@"projectDocumentTypeEnc" validateClass:objc_opt_class()];
  [(CPLAlbumChange *)v4 setProjectDocumentType:v20];
}

- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = [a4 fingerprintContext];
  if ([(CPLAlbumChange *)v7 hasChangeType:2])
  {
    if ([(CPLAlbumChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"parentIdentifier")])
    {
      v9 = [(CPLAlbumChange *)v7 parentIdentifier];
      [v6 setObject:v9 forKey:@"parentId"];
    }

    if ([(CPLAlbumChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"name")])
    {
      v10 = [(CPLAlbumChange *)v7 name];
      [v6 setLegacyEncryptedObject:v10 forKey:@"albumNameEnc"];
    }

    if ([(CPLAlbumChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"position")])
    {
      v11 = [NSNumber numberWithInteger:[(CPLAlbumChange *)v7 position]];
      [v6 setObject:v11 forKey:@"position"];
    }

    if ([(CPLAlbumChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"albumType")])
    {
      v12 = [NSNumber numberWithUnsignedInteger:[(CPLAlbumChange *)v7 albumType]];
      [v6 setObject:v12 forKey:@"albumType"];
    }

    if ([(CPLAlbumChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"importedByBundleIdentifier")])
    {
      v13 = [(CPLAlbumChange *)v7 importedByBundleIdentifier];
      [v6 setLegacyEncryptedObject:v13 forKey:@"importedByBundleIdentifierEnc"];
    }

    if ([(CPLAlbumChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"albumSortType")])
    {
      v14 = [(CPLAlbumChange *)v7 albumSortType];
      v15 = v14;
      if (v14 < 7 || v14 == 100)
      {
        v16 = [NSNumber numberWithUnsignedInteger:v14];
        [v6 setObject:v16 forKey:@"sortType"];

        [v6 setObject:&off_10028EE30 forKey:@"sortTypeExt"];
      }

      else
      {
        [v6 setObject:&off_10028EE30 forKey:@"sortType"];
        v22 = [NSNumber numberWithUnsignedInteger:v15];
        [v6 setObject:v22 forKey:@"sortTypeExt"];
      }
    }

    if ([(CPLAlbumChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"albumSortAscending")])
    {
      v17 = [NSNumber numberWithBool:[(CPLAlbumChange *)v7 albumSortAscending]];
      [v6 setObject:v17 forKey:@"sortAscending"];
    }

    if ([(CPLAlbumChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"userModificationDate")])
    {
      v18 = [(CPLAlbumChange *)v7 userModificationDate];
      [v6 setObject:v18 forKey:@"userModificationDate"];
    }

    if ([(CPLAlbumChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"projectDocumentType")])
    {
      v19 = [(CPLAlbumChange *)v7 projectDocumentType];
      [v6 setLegacyEncryptedObject:v19 forKey:@"projectDocumentTypeEnc"];
    }

    if ([(CPLAlbumChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"projectData")])
    {
      v20 = [(CPLAlbumChange *)v7 projectData];
      if (v20)
      {
        sub_1001ABE40();
      }

      else
      {
        [v6 setObject:0 forKey:@"resProjectDataFingerprint"];
        [v6 setObject:0 forKey:@"resProjectDataRes"];
        [v6 setObject:0 forKey:@"resProjectDataFileSize"];
      }
    }

    if ([(CPLAlbumChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"projectPreviewImageData")])
    {
      v21 = [(CPLAlbumChange *)v7 projectPreviewImageData];
      if (v21)
      {
        sub_1001ABFBC();
      }

      else
      {
        [v6 setObject:0 forKey:@"resProjectPreviewImageDataFingerprint"];
        [v6 setObject:0 forKey:@"resProjectPreviewImageDataRes"];
        [v6 setObject:0 forKey:@"resProjectPreviewImageDataFileSize"];
      }
    }
  }
}

@end