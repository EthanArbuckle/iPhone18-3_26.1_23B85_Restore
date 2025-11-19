@interface BLBookInstallInfo
- (BLBookInstallOperationProgressDelegate)progressDelegate;
- (BOOL)isStoreDownload;
- (NSNumber)storeIdentifier;
- (NSNumber)storePlaylistIdentifier;
- (NSNumber)storePublicationVersion;
- (NSString)libraryItemIdentifier;
- (NSString)permlink;
- (id)_estimatedDownloadSize;
- (id)_manifestEntryWithStoreInfo:(BOOL)a3 withStoreAccountInfo:(BOOL)a4 withFileName:(id)a5;
- (id)assetFlavor;
- (id)storeAccountInfoEntries;
- (id)storeInfoEntries;
- (void)setPlistPath:(id)a3;
@end

@implementation BLBookInstallInfo

- (void)setPlistPath:(id)a3
{
  v10 = a3;
  v4 = [(BLBookInstallInfo *)self plistPath];
  v5 = [v10 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [v10 copy];
    plistPath = self->_plistPath;
    self->_plistPath = v6;

    v8 = objc_autoreleasePoolPush();
    if ([v10 length])
    {
      v9 = [(BLBookInstallInfo *)self _itunesMetadataPlistDictionaryFromPath:v10];
      [(BLBookInstallInfo *)self setItunesMetadata:v9];
    }

    else
    {
      [(BLBookInstallInfo *)self setItunesMetadata:0];
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (NSString)permlink
{
  v2 = [(BLBookInstallInfo *)self itunesMetadata];
  v3 = [v2 objectForKeyedSubscript:@"p0"];

  return v3;
}

- (NSNumber)storeIdentifier
{
  v2 = [(BLBookInstallInfo *)self itunesMetadata];
  v3 = [v2 objectForKeyedSubscript:@"itemId"];

  return v3;
}

- (NSNumber)storePlaylistIdentifier
{
  v2 = [(BLBookInstallInfo *)self itunesMetadata];
  v3 = [v2 objectForKeyedSubscript:@"playlistId"];
  v4 = BLGetNSNumberFromValue();

  return v4;
}

- (NSNumber)storePublicationVersion
{
  v2 = [(BLBookInstallInfo *)self itunesMetadata];
  v3 = [v2 objectForKeyedSubscript:@"publication-version"];

  return v3;
}

- (BOOL)isStoreDownload
{
  v2 = [(BLBookInstallInfo *)self storePublicationVersion];
  v3 = BLGetUnsignedLongLongFromValue() != 0;

  return v3;
}

- (NSString)libraryItemIdentifier
{
  v2 = [(BLBookInstallInfo *)self itunesMetadata];
  v3 = [v2 objectForKeyedSubscript:@"Q"];

  return v3;
}

- (id)assetFlavor
{
  v2 = [(BLBookInstallInfo *)self itunesMetadata];
  v3 = [v2 objectForKeyedSubscript:@"asset-info"];

  if (v3)
  {
    v4 = [v3 objectForKey:@"flavor"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_manifestEntryWithStoreInfo:(BOOL)a3 withStoreAccountInfo:(BOOL)a4 withFileName:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = +[NSMutableDictionary dictionary];
  v10 = [(BLBookInstallInfo *)self itunesMetadata];
  if ([v8 length])
  {
    [v9 setObject:v8 forKey:@"Path"];
  }

  else
  {
    v11 = [(BLBookInstallInfo *)self destinationFilename];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [(BLBookInstallInfo *)self destinationFilename];
      [v9 setObject:v13 forKey:@"Path"];
    }

    else
    {
      v13 = BLBookInstallLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No destination file name available for manifest.", v46, 2u);
      }
    }
  }

  v14 = [(BLBookInstallInfo *)self uniqueID];
  v15 = [v14 length];

  if (v15)
  {
    v16 = [(BLBookInstallInfo *)self uniqueID];
    v17 = +[IMLibraryPlist keyNameForUniqueId];
    [v9 setObject:v16 forKey:v17];
  }

  v18 = [v10 objectForKeyedSubscript:@"isSample"];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &__kCFBooleanFalse;
  }

  [v9 setObject:v20 forKey:@"isSample"];
  v21 = [v10 objectForKeyedSubscript:@"playlistName"];

  if (v21)
  {
    [v9 setObject:v21 forKey:@"Album"];
  }

  v22 = [v10 objectForKeyedSubscript:@"artistName"];

  if (v22)
  {
    [v9 setObject:v22 forKey:@"Artist"];
  }

  v23 = [v10 objectForKeyedSubscript:@"artwork-template-name"];

  if (v23)
  {
    [v9 setObject:v23 forKey:@"artwork-template-name"];
  }

  v24 = [v10 objectForKeyedSubscript:@"genre"];

  if (v24)
  {
    [v9 setObject:v24 forKey:@"Genre"];
  }

  v25 = [v10 objectForKeyedSubscript:@"Q"];

  if (v25)
  {
    [v9 setObject:v25 forKey:@"Persistent ID"];
  }

  if (v6)
  {
    v26 = [(BLBookInstallInfo *)self storeInfoEntries];
    [v9 addEntriesFromDictionary:v26];
  }

  if (v5)
  {
    v27 = [(BLBookInstallInfo *)self storeAccountInfoEntries];
    [v9 addEntriesFromDictionary:v27];
  }

  v28 = [v10 objectForKeyedSubscript:@"p0"];

  if (v28)
  {
    [v9 setObject:v28 forKey:@"iTunesU Permlink"];
  }

  v29 = [v10 objectForKeyedSubscript:@"xid"];

  if (v29)
  {
    [v9 setObject:v29 forKey:@"XID"];
  }

  v30 = [v10 objectForKeyedSubscript:@"itemName"];

  if (v30)
  {
    [v9 setObject:v30 forKey:@"Name"];
  }

  v31 = [v10 objectForKeyedSubscript:@"copyright"];

  if (v31)
  {
    [v9 setObject:v31 forKey:@"Copyright"];
  }

  objc_opt_class();
  v32 = [v10 objectForKeyedSubscript:@"explicit"];
  v33 = BUDynamicCast();

  if ([v33 integerValue] == 1)
  {
    [v9 setObject:&__kCFBooleanTrue forKey:@"isExplicit"];
  }

  v34 = [v10 objectForKeyedSubscript:@"human-friendly-publication-version"];

  if (v34)
  {
    [v9 setObject:v34 forKey:@"Human Readable Publication Version"];
  }

  v35 = [v10 objectForKeyedSubscript:@"languages"];

  if (v35)
  {
    [v9 setObject:v35 forKey:@"Languages"];
  }

  v36 = [v10 objectForKeyedSubscript:@"PageProgression"];

  if (v36)
  {
    [v9 setObject:v36 forKey:@"PageProgression"];
  }

  v37 = [v10 objectForKeyedSubscript:@"page-progression-direction"];

  if (v37)
  {
    [v9 setObject:v37 forKey:@"Page Progression Direction"];
  }

  v38 = [v10 objectForKeyedSubscript:@"publication-version"];

  if (v38)
  {
    [v9 setObject:v38 forKey:@"Publication Version"];
  }

  v39 = [v10 objectForKeyedSubscript:@"releaseDate"];

  if (v39)
  {
    [v9 setObject:v39 forKey:@"Release Date"];
  }

  v40 = [v10 objectForKeyedSubscript:@"sort-artist"];

  if (v40)
  {
    [v9 setObject:v40 forKey:@"Sort Artist"];
  }

  v41 = [v10 objectForKeyedSubscript:@"sort-album"];

  if (v41)
  {
    [v9 setObject:v41 forKey:@"Sort Album"];
  }

  v42 = [v10 objectForKeyedSubscript:@"sort-name"];

  if (v42)
  {
    [v9 setObject:v42 forKey:@"Sort Name"];
  }

  v43 = [(BLBookInstallInfo *)self assetFlavor];

  if (v43)
  {
    [v9 setObject:v43 forKey:@"Flavor"];
  }

  v44 = [(BLBookInstallInfo *)self _estimatedDownloadSize];

  if (v44)
  {
    [v9 setObject:v44 forKey:@"Estimated Download Size"];
  }

  return v9;
}

- (id)storeInfoEntries
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(BLBookInstallInfo *)self itunesMetadata];
  v5 = [v4 objectForKeyedSubscript:@"s"];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"Storefront ID"];
  }

  v6 = [v4 objectForKeyedSubscript:@"itemId"];
  v7 = BLGetUnsignedLongLongFromValue();

  if (v7)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:v7];
    [v3 setObject:v8 forKeyedSubscript:@"s"];
  }

  v9 = [v4 objectForKeyedSubscript:@"playlistId"];

  if (v9)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:BLGetUnsignedLongLongFromValue()];
    [v3 setObject:v10 forKeyedSubscript:@"PlaylistID"];
  }

  return v3;
}

- (id)storeAccountInfoEntries
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(BLBookInstallInfo *)self itunesMetadata];
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:@"com.apple.iTunesStore.downloadInfo"];
  v6 = BUDynamicCast();

  objc_opt_class();
  v7 = [v6 objectForKeyedSubscript:@"accountInfo"];
  v8 = BUDynamicCast();

  v9 = [v8 objectForKeyedSubscript:@"DSPersonID"];
  if (v9)
  {
    [v3 setObject:v9 forKeyedSubscript:@"DSID"];
  }

  v10 = [v8 objectForKeyedSubscript:@"AppleID"];
  if (v10)
  {
    [v3 setObject:v10 forKeyedSubscript:@"AppleID"];
  }

  if (+[BLLibraryUtility _isMultiUser])
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"usesSharedAsset"];
  }

  return v3;
}

- (id)_estimatedDownloadSize
{
  v3 = [(BLBookInstallInfo *)self assetFileSize];
  if (v3)
  {
    v4 = [(BLBookInstallInfo *)self artworkFileSize];
    if (v4)
    {
      v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 unsignedLongLongValue] + objc_msgSend(v4, "unsignedLongLongValue"));

      v3 = v5;
    }
  }

  return v3;
}

- (BLBookInstallOperationProgressDelegate)progressDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_progressDelegate);

  return WeakRetained;
}

@end