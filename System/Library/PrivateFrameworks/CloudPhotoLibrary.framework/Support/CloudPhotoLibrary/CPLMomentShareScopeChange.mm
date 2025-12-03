@interface CPLMomentShareScopeChange
- (id)_libraryStateFromRootRecord:(id)record;
- (id)rootRecordUsingTempCKAssetURL:(id)l inZone:(id)zone;
- (void)updateCKShare:(id)share;
- (void)updateWithCKShare:(id)share currentUserID:(id)d;
- (void)updateWithRootCKRecord:(id)record;
@end

@implementation CPLMomentShareScopeChange

- (void)updateWithCKShare:(id)share currentUserID:(id)d
{
  shareCopy = share;
  v10.receiver = self;
  v10.super_class = CPLMomentShareScopeChange;
  [(CPLMomentShareScopeChange *)&v10 updateWithCKShare:shareCopy currentUserID:d];
  v7 = [shareCopy objectForKey:CKShareThumbnailImageDataKey];
  if (v7)
  {
    [(CPLMomentShareScopeChange *)self setThumbnailImageData:v7];
  }

  v8 = [shareCopy objectForKeyedSubscript:CKShareTypeKey];
  v9 = [v8 isEqualToString:@"photos_links"];

  if (v9)
  {
    [(CPLMomentShareScopeChange *)self setHasEPPAssets:1];
  }
}

- (id)rootRecordUsingTempCKAssetURL:(id)l inZone:(id)zone
{
  lCopy = l;
  zoneID = [zone zoneID];
  v8 = [[CKRecordID alloc] initWithRecordName:@"cmm-root" zoneID:zoneID];
  v9 = [[CKRecord alloc] initWithRecordType:@"CMMRoot" recordID:v8];
  creationDate = [(CPLMomentShareScopeChange *)self creationDate];
  v11 = creationDate;
  if (creationDate)
  {
    v12 = creationDate;
  }

  else
  {
    v12 = +[NSDate date];
  }

  v13 = v12;

  [v9 setObject:v13 forKey:@"createDate"];
  startDate = [(CPLMomentShareScopeChange *)self startDate];
  if (startDate)
  {
    [v9 setObject:startDate forKey:@"startDate"];
  }

  endDate = [(CPLMomentShareScopeChange *)self endDate];
  if (endDate)
  {
    [v9 setObject:endDate forKey:@"endDate"];
  }

  v16 = [NSNumber numberWithInteger:[(CPLMomentShareScopeChange *)self promisedAssetCount]];
  [v9 setObject:v16 forKey:@"assetCount"];

  v17 = [NSNumber numberWithInteger:[(CPLMomentShareScopeChange *)self promisedPhotosCount]];
  [v9 setObject:v17 forKey:@"photosCount"];

  v18 = [NSNumber numberWithInteger:[(CPLMomentShareScopeChange *)self promisedVideosCount]];
  [v9 setObject:v18 forKey:@"videosCount"];

  originatingScopeIdentifier = [(CPLMomentShareScopeChange *)self originatingScopeIdentifier];
  if (originatingScopeIdentifier)
  {
    v20 = originatingScopeIdentifier;
    v21 = [originatingScopeIdentifier rangeOfString:@"#_"];
    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = [v20 substringToIndex:v21];

      v20 = v22;
    }

    [v9 cpl_setLegacyEncryptedObject:v20 forKey:@"originatingZoneName"];
  }

  previewImageData = [(CPLMomentShareScopeChange *)self previewImageData];
  if (previewImageData)
  {
    v31 = v8;
    v24 = zoneID;
    v25 = lCopy;
    v26 = [lCopy URLByAppendingPathComponent:@"preview.data" isDirectory:0];
    v32 = 0;
    v27 = [previewImageData writeToURL:v26 options:1 error:&v32];
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

        lCopy = v25;
        zoneID = v24;
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

- (void)updateCKShare:(id)share
{
  shareCopy = share;
  v8.receiver = self;
  v8.super_class = CPLMomentShareScopeChange;
  [(CPLMomentShareScopeChange *)&v8 updateCKShare:shareCopy];
  share = [(CPLMomentShareScopeChange *)self share];
  v6 = share;
  if (share)
  {
    [shareCopy setAllowsAnonymousPublicAccess:{(objc_msgSend(share, "publicPermission") & 0xFFFFFFFFFFFFFFFELL) == 2}];
  }

  thumbnailImageData = [(CPLMomentShareScopeChange *)self thumbnailImageData];
  [shareCopy setObject:thumbnailImageData forKey:CKShareThumbnailImageDataKey];
}

- (id)_libraryStateFromRootRecord:(id)record
{
  recordCopy = record;
  v4 = objc_alloc_init(CPLLibraryState);
  pluginFields = [recordCopy pluginFields];
  v6 = [pluginFields objectForKey:@"expiryDate"];

  if (v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        recordID = [recordCopy recordID];
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
      recordID2 = [recordCopy recordID];
      v12 = 138412290;
      v13 = recordID2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No expiry date found in %@", &v12, 0xCu);
    }
  }

  return v4;
}

- (void)updateWithRootCKRecord:(id)record
{
  recordCopy = record;
  v32.receiver = self;
  v32.super_class = CPLMomentShareScopeChange;
  [(CPLMomentShareScopeChange *)&v32 updateWithRootCKRecord:recordCopy];
  v6 = [(CPLMomentShareScopeChange *)self _libraryStateFromRootRecord:recordCopy];
  [(CPLMomentShareScopeChange *)self setLibraryState:v6];
  [recordCopy objectForKey:@"createDate"];
  objc_claimAutoreleasedReturnValue();
  [sub_100059FA8() setCreationDate:?];

  [recordCopy objectForKey:@"startDate"];
  objc_claimAutoreleasedReturnValue();
  [sub_100059FA8() setStartDate:?];

  [recordCopy objectForKey:@"endDate"];
  objc_claimAutoreleasedReturnValue();
  [sub_100059FA8() setEndDate:?];

  pluginFields = [recordCopy pluginFields];
  v8 = [pluginFields objectForKey:@"expiryDate"];

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

  v10 = [recordCopy objectForKey:@"assetCount"];
  -[CPLMomentShareScopeChange setPromisedAssetCount:](self, "setPromisedAssetCount:", [v10 integerValue]);
  v11 = [recordCopy objectForKey:@"photosCount"];
  -[CPLMomentShareScopeChange setPromisedPhotosCount:](self, "setPromisedPhotosCount:", [v11 integerValue]);
  v12 = [recordCopy objectForKey:@"videosCount"];
  -[CPLMomentShareScopeChange setPromisedVideosCount:](self, "setPromisedVideosCount:", [v12 integerValue]);
  v13 = [recordCopy cpl_legacyDecryptedObjectForKey:@"originatingZoneName" validateClass:objc_opt_class()];
  if (v13)
  {
    [(CPLMomentShareScopeChange *)self setOriginatingScopeIdentifier:v13];
  }

  v14 = [recordCopy objectForKey:@"previewData"];
  fileURL = [v14 fileURL];
  if (fileURL)
  {
    v30 = fileURL;
    +[NSFileManager defaultManager];
    v16 = v29 = v14;
    [v30 path];
    v28 = recordCopy;
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
    recordCopy = v28;

    v14 = v29;
    fileURL = v30;
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
      fileURL = v30;
    }
  }
}

@end