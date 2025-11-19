@interface CPLMomentShareScopeChange
- (id)_libraryStateFromRootRecord:(id)a3;
- (id)rootRecordUsingTempCKAssetURL:(id)a3 inZone:(id)a4;
- (void)updateCKShare:(id)a3;
- (void)updateWithCKShare:(id)a3 currentUserID:(id)a4;
- (void)updateWithRootCKRecord:(id)a3;
@end

@implementation CPLMomentShareScopeChange

- (void)updateWithCKShare:(id)a3 currentUserID:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CPLMomentShareScopeChange;
  [(CPLMomentShareScopeChange *)&v10 updateWithCKShare:v6 currentUserID:a4];
  v7 = [v6 objectForKey:CKShareThumbnailImageDataKey];
  if (v7)
  {
    [(CPLMomentShareScopeChange *)self setThumbnailImageData:v7];
  }

  v8 = [v6 objectForKeyedSubscript:CKShareTypeKey];
  v9 = [v8 isEqualToString:@"photos_links"];

  if (v9)
  {
    [(CPLMomentShareScopeChange *)self setHasEPPAssets:1];
  }
}

- (id)rootRecordUsingTempCKAssetURL:(id)a3 inZone:(id)a4
{
  v6 = a3;
  v7 = [a4 zoneID];
  v8 = [[CKRecordID alloc] initWithRecordName:@"cmm-root" zoneID:v7];
  v9 = [[CKRecord alloc] initWithRecordType:@"CMMRoot" recordID:v8];
  v10 = [(CPLMomentShareScopeChange *)self creationDate];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = +[NSDate date];
  }

  v13 = v12;

  [v9 setObject:v13 forKey:@"createDate"];
  v14 = [(CPLMomentShareScopeChange *)self startDate];
  if (v14)
  {
    [v9 setObject:v14 forKey:@"startDate"];
  }

  v15 = [(CPLMomentShareScopeChange *)self endDate];
  if (v15)
  {
    [v9 setObject:v15 forKey:@"endDate"];
  }

  v16 = [NSNumber numberWithInteger:[(CPLMomentShareScopeChange *)self promisedAssetCount]];
  [v9 setObject:v16 forKey:@"assetCount"];

  v17 = [NSNumber numberWithInteger:[(CPLMomentShareScopeChange *)self promisedPhotosCount]];
  [v9 setObject:v17 forKey:@"photosCount"];

  v18 = [NSNumber numberWithInteger:[(CPLMomentShareScopeChange *)self promisedVideosCount]];
  [v9 setObject:v18 forKey:@"videosCount"];

  v19 = [(CPLMomentShareScopeChange *)self originatingScopeIdentifier];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 rangeOfString:@"#_"];
    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = [v20 substringToIndex:v21];

      v20 = v22;
    }

    [v9 cpl_setLegacyEncryptedObject:v20 forKey:@"originatingZoneName"];
  }

  v23 = [(CPLMomentShareScopeChange *)self previewImageData];
  if (v23)
  {
    v31 = v8;
    v24 = v7;
    v25 = v6;
    v26 = [v6 URLByAppendingPathComponent:@"preview.data" isDirectory:0];
    v32 = 0;
    v27 = [v23 writeToURL:v26 options:1 error:&v32];
    v28 = v32;
    if (v27)
    {
      v29 = [[CKAsset alloc] initWithFileURL:v26];
      [v29 setItemTypeHint:@"fxd"];
      [v9 setObject:v29 forKey:@"previewData"];
    }

    else
    {
      if (_CPLSilentLogging)
      {
LABEL_19:

        v6 = v25;
        v7 = v24;
        v8 = v31;
        goto LABEL_20;
      }

      v29 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v34 = v26;
        v35 = 2112;
        v36 = v28;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to write resource data to %@: %@", buf, 0x16u);
      }
    }

    goto LABEL_19;
  }

LABEL_20:

  return v9;
}

- (void)updateCKShare:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CPLMomentShareScopeChange;
  [(CPLMomentShareScopeChange *)&v8 updateCKShare:v4];
  v5 = [(CPLMomentShareScopeChange *)self share];
  v6 = v5;
  if (v5)
  {
    [v4 setAllowsAnonymousPublicAccess:{(objc_msgSend(v5, "publicPermission") & 0xFFFFFFFFFFFFFFFELL) == 2}];
  }

  v7 = [(CPLMomentShareScopeChange *)self thumbnailImageData];
  [v4 setObject:v7 forKey:CKShareThumbnailImageDataKey];
}

- (id)_libraryStateFromRootRecord:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CPLLibraryState);
  v5 = [v3 pluginFields];
  v6 = [v5 objectForKey:@"expiryDate"];

  if (v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v3 recordID];
        sub_100059FB8();
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got expiryDate from %@ to %@", &v12, 0x16u);
      }
    }

    [v4 setDeleteDate:v6];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v3 recordID];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No expiry date found in %@", &v12, 0xCu);
    }
  }

  return v4;
}

- (void)updateWithRootCKRecord:(id)a3
{
  v5 = a3;
  v32.receiver = self;
  v32.super_class = CPLMomentShareScopeChange;
  [(CPLMomentShareScopeChange *)&v32 updateWithRootCKRecord:v5];
  v6 = [(CPLMomentShareScopeChange *)self _libraryStateFromRootRecord:v5];
  [(CPLMomentShareScopeChange *)self setLibraryState:v6];
  [v5 objectForKey:@"createDate"];
  objc_claimAutoreleasedReturnValue();
  [sub_100059FA8() setCreationDate:?];

  [v5 objectForKey:@"startDate"];
  objc_claimAutoreleasedReturnValue();
  [sub_100059FA8() setStartDate:?];

  [v5 objectForKey:@"endDate"];
  objc_claimAutoreleasedReturnValue();
  [sub_100059FA8() setEndDate:?];

  v7 = [v5 pluginFields];
  v8 = [v7 objectForKey:@"expiryDate"];

  if (v8)
  {
    [(CPLMomentShareScopeChange *)self setExpiryDate:v8];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to get expiryDate from server", buf, 2u);
    }
  }

  v10 = [v5 objectForKey:@"assetCount"];
  -[CPLMomentShareScopeChange setPromisedAssetCount:](self, "setPromisedAssetCount:", [v10 integerValue]);
  v11 = [v5 objectForKey:@"photosCount"];
  -[CPLMomentShareScopeChange setPromisedPhotosCount:](self, "setPromisedPhotosCount:", [v11 integerValue]);
  v12 = [v5 objectForKey:@"videosCount"];
  -[CPLMomentShareScopeChange setPromisedVideosCount:](self, "setPromisedVideosCount:", [v12 integerValue]);
  v13 = [v5 cpl_legacyDecryptedObjectForKey:@"originatingZoneName" validateClass:objc_opt_class()];
  if (v13)
  {
    [(CPLMomentShareScopeChange *)self setOriginatingScopeIdentifier:v13];
  }

  v14 = [v5 objectForKey:@"previewData"];
  v15 = [v14 fileURL];
  if (v15)
  {
    v30 = v15;
    +[NSFileManager defaultManager];
    v16 = v29 = v14;
    [v30 path];
    v28 = v5;
    v17 = v13;
    v18 = v12;
    v19 = v11;
    v20 = v10;
    v21 = v8;
    v23 = v22 = v6;
    v24 = [v16 fileExistsAtPath:v23];

    v6 = v22;
    v8 = v21;
    v10 = v20;
    v11 = v19;
    v12 = v18;
    v13 = v17;
    v5 = v28;

    v14 = v29;
    v15 = v30;
    if (v24)
    {
      v31 = 0;
      v25 = [NSData dataWithContentsOfURL:v30 options:1 error:&v31];
      v26 = v31;
      if (v26)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v27 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v34 = v30;
            v35 = 2112;
            v36 = v26;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to read previewData from %@: %@", buf, 0x16u);
          }
        }
      }

      else
      {
        [(CPLMomentShareScopeChange *)self setPreviewImageData:v25];
      }

      v14 = v29;
      v15 = v30;
    }
  }
}

@end