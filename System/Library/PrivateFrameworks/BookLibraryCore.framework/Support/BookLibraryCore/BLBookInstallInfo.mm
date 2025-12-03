@interface BLBookInstallInfo
- (BLBookInstallOperationProgressDelegate)progressDelegate;
- (BOOL)isStoreDownload;
- (NSNumber)storeIdentifier;
- (NSNumber)storePlaylistIdentifier;
- (NSNumber)storePublicationVersion;
- (NSString)libraryItemIdentifier;
- (NSString)permlink;
- (id)_estimatedDownloadSize;
- (id)_manifestEntryWithStoreInfo:(BOOL)info withStoreAccountInfo:(BOOL)accountInfo withFileName:(id)name;
- (id)assetFlavor;
- (id)storeAccountInfoEntries;
- (id)storeInfoEntries;
- (void)setPlistPath:(id)path;
@end

@implementation BLBookInstallInfo

- (void)setPlistPath:(id)path
{
  pathCopy = path;
  plistPath = [(BLBookInstallInfo *)self plistPath];
  v5 = [pathCopy isEqualToString:plistPath];

  if ((v5 & 1) == 0)
  {
    v6 = [pathCopy copy];
    plistPath = self->_plistPath;
    self->_plistPath = v6;

    v8 = objc_autoreleasePoolPush();
    if ([pathCopy length])
    {
      v9 = [(BLBookInstallInfo *)self _itunesMetadataPlistDictionaryFromPath:pathCopy];
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
  itunesMetadata = [(BLBookInstallInfo *)self itunesMetadata];
  v3 = [itunesMetadata objectForKeyedSubscript:@"p0"];

  return v3;
}

- (NSNumber)storeIdentifier
{
  itunesMetadata = [(BLBookInstallInfo *)self itunesMetadata];
  v3 = [itunesMetadata objectForKeyedSubscript:@"itemId"];

  return v3;
}

- (NSNumber)storePlaylistIdentifier
{
  itunesMetadata = [(BLBookInstallInfo *)self itunesMetadata];
  v3 = [itunesMetadata objectForKeyedSubscript:@"playlistId"];
  v4 = BLGetNSNumberFromValue();

  return v4;
}

- (NSNumber)storePublicationVersion
{
  itunesMetadata = [(BLBookInstallInfo *)self itunesMetadata];
  v3 = [itunesMetadata objectForKeyedSubscript:@"publication-version"];

  return v3;
}

- (BOOL)isStoreDownload
{
  storePublicationVersion = [(BLBookInstallInfo *)self storePublicationVersion];
  v3 = BLGetUnsignedLongLongFromValue() != 0;

  return v3;
}

- (NSString)libraryItemIdentifier
{
  itunesMetadata = [(BLBookInstallInfo *)self itunesMetadata];
  v3 = [itunesMetadata objectForKeyedSubscript:@"Q"];

  return v3;
}

- (id)assetFlavor
{
  itunesMetadata = [(BLBookInstallInfo *)self itunesMetadata];
  v3 = [itunesMetadata objectForKeyedSubscript:@"asset-info"];

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

- (id)_manifestEntryWithStoreInfo:(BOOL)info withStoreAccountInfo:(BOOL)accountInfo withFileName:(id)name
{
  accountInfoCopy = accountInfo;
  infoCopy = info;
  nameCopy = name;
  v9 = +[NSMutableDictionary dictionary];
  itunesMetadata = [(BLBookInstallInfo *)self itunesMetadata];
  if ([nameCopy length])
  {
    [v9 setObject:nameCopy forKey:@"Path"];
  }

  else
  {
    destinationFilename = [(BLBookInstallInfo *)self destinationFilename];
    v12 = [destinationFilename length];

    if (v12)
    {
      destinationFilename2 = [(BLBookInstallInfo *)self destinationFilename];
      [v9 setObject:destinationFilename2 forKey:@"Path"];
    }

    else
    {
      destinationFilename2 = BLBookInstallLog();
      if (os_log_type_enabled(destinationFilename2, OS_LOG_TYPE_ERROR))
      {
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, destinationFilename2, OS_LOG_TYPE_ERROR, "No destination file name available for manifest.", v46, 2u);
      }
    }
  }

  uniqueID = [(BLBookInstallInfo *)self uniqueID];
  v15 = [uniqueID length];

  if (v15)
  {
    uniqueID2 = [(BLBookInstallInfo *)self uniqueID];
    v17 = +[IMLibraryPlist keyNameForUniqueId];
    [v9 setObject:uniqueID2 forKey:v17];
  }

  v18 = [itunesMetadata objectForKeyedSubscript:@"isSample"];
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
  v21 = [itunesMetadata objectForKeyedSubscript:@"playlistName"];

  if (v21)
  {
    [v9 setObject:v21 forKey:@"Album"];
  }

  v22 = [itunesMetadata objectForKeyedSubscript:@"artistName"];

  if (v22)
  {
    [v9 setObject:v22 forKey:@"Artist"];
  }

  v23 = [itunesMetadata objectForKeyedSubscript:@"artwork-template-name"];

  if (v23)
  {
    [v9 setObject:v23 forKey:@"artwork-template-name"];
  }

  v24 = [itunesMetadata objectForKeyedSubscript:@"genre"];

  if (v24)
  {
    [v9 setObject:v24 forKey:@"Genre"];
  }

  v25 = [itunesMetadata objectForKeyedSubscript:@"Q"];

  if (v25)
  {
    [v9 setObject:v25 forKey:@"Persistent ID"];
  }

  if (infoCopy)
  {
    storeInfoEntries = [(BLBookInstallInfo *)self storeInfoEntries];
    [v9 addEntriesFromDictionary:storeInfoEntries];
  }

  if (accountInfoCopy)
  {
    storeAccountInfoEntries = [(BLBookInstallInfo *)self storeAccountInfoEntries];
    [v9 addEntriesFromDictionary:storeAccountInfoEntries];
  }

  v28 = [itunesMetadata objectForKeyedSubscript:@"p0"];

  if (v28)
  {
    [v9 setObject:v28 forKey:@"iTunesU Permlink"];
  }

  v29 = [itunesMetadata objectForKeyedSubscript:@"xid"];

  if (v29)
  {
    [v9 setObject:v29 forKey:@"XID"];
  }

  v30 = [itunesMetadata objectForKeyedSubscript:@"itemName"];

  if (v30)
  {
    [v9 setObject:v30 forKey:@"Name"];
  }

  v31 = [itunesMetadata objectForKeyedSubscript:@"copyright"];

  if (v31)
  {
    [v9 setObject:v31 forKey:@"Copyright"];
  }

  objc_opt_class();
  v32 = [itunesMetadata objectForKeyedSubscript:@"explicit"];
  v33 = BUDynamicCast();

  if ([v33 integerValue] == 1)
  {
    [v9 setObject:&__kCFBooleanTrue forKey:@"isExplicit"];
  }

  v34 = [itunesMetadata objectForKeyedSubscript:@"human-friendly-publication-version"];

  if (v34)
  {
    [v9 setObject:v34 forKey:@"Human Readable Publication Version"];
  }

  v35 = [itunesMetadata objectForKeyedSubscript:@"languages"];

  if (v35)
  {
    [v9 setObject:v35 forKey:@"Languages"];
  }

  v36 = [itunesMetadata objectForKeyedSubscript:@"PageProgression"];

  if (v36)
  {
    [v9 setObject:v36 forKey:@"PageProgression"];
  }

  v37 = [itunesMetadata objectForKeyedSubscript:@"page-progression-direction"];

  if (v37)
  {
    [v9 setObject:v37 forKey:@"Page Progression Direction"];
  }

  v38 = [itunesMetadata objectForKeyedSubscript:@"publication-version"];

  if (v38)
  {
    [v9 setObject:v38 forKey:@"Publication Version"];
  }

  v39 = [itunesMetadata objectForKeyedSubscript:@"releaseDate"];

  if (v39)
  {
    [v9 setObject:v39 forKey:@"Release Date"];
  }

  v40 = [itunesMetadata objectForKeyedSubscript:@"sort-artist"];

  if (v40)
  {
    [v9 setObject:v40 forKey:@"Sort Artist"];
  }

  v41 = [itunesMetadata objectForKeyedSubscript:@"sort-album"];

  if (v41)
  {
    [v9 setObject:v41 forKey:@"Sort Album"];
  }

  v42 = [itunesMetadata objectForKeyedSubscript:@"sort-name"];

  if (v42)
  {
    [v9 setObject:v42 forKey:@"Sort Name"];
  }

  assetFlavor = [(BLBookInstallInfo *)self assetFlavor];

  if (assetFlavor)
  {
    [v9 setObject:assetFlavor forKey:@"Flavor"];
  }

  _estimatedDownloadSize = [(BLBookInstallInfo *)self _estimatedDownloadSize];

  if (_estimatedDownloadSize)
  {
    [v9 setObject:_estimatedDownloadSize forKey:@"Estimated Download Size"];
  }

  return v9;
}

- (id)storeInfoEntries
{
  v3 = +[NSMutableDictionary dictionary];
  itunesMetadata = [(BLBookInstallInfo *)self itunesMetadata];
  v5 = [itunesMetadata objectForKeyedSubscript:@"s"];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"Storefront ID"];
  }

  v6 = [itunesMetadata objectForKeyedSubscript:@"itemId"];
  v7 = BLGetUnsignedLongLongFromValue();

  if (v7)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:v7];
    [v3 setObject:v8 forKeyedSubscript:@"s"];
  }

  v9 = [itunesMetadata objectForKeyedSubscript:@"playlistId"];

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
  itunesMetadata = [(BLBookInstallInfo *)self itunesMetadata];
  objc_opt_class();
  v5 = [itunesMetadata objectForKeyedSubscript:@"com.apple.iTunesStore.downloadInfo"];
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
  assetFileSize = [(BLBookInstallInfo *)self assetFileSize];
  if (assetFileSize)
  {
    artworkFileSize = [(BLBookInstallInfo *)self artworkFileSize];
    if (artworkFileSize)
    {
      v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [assetFileSize unsignedLongLongValue] + objc_msgSend(artworkFileSize, "unsignedLongLongValue"));

      assetFileSize = v5;
    }
  }

  return assetFileSize;
}

- (BLBookInstallOperationProgressDelegate)progressDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_progressDelegate);

  return WeakRetained;
}

@end