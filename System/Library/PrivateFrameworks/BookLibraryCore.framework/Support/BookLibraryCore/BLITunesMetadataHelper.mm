@interface BLITunesMetadataHelper
+ (id)_itunesMetadataDictionaryWithMetadata:(id)metadata clientIdentifier:(id)identifier;
+ (id)downloaderAccountIdentifierWithSinfsArray:(id)array epubRightsInfo:(id)info;
+ (id)epubRightsInfoWithEpubRightsData:(id)data;
+ (id)familyAccountIdentifierWithSinfsArray:(id)array epubRightsInfo:(id)info;
+ (id)itunesMetadataPlistDictionaryFromPath:(id)path;
+ (id)purchaserAccountIdentifierWithSinfsArray:(id)array epubRightsInfo:(id)info;
- (BLITunesMetadataHelper)initWithClientIdentifier:(id)identifier downloadMetadata:(id)metadata;
- (id)writePlistWithDownloadID:(id)d error:(id *)error;
@end

@implementation BLITunesMetadataHelper

- (BLITunesMetadataHelper)initWithClientIdentifier:(id)identifier downloadMetadata:(id)metadata
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  v11.receiver = self;
  v11.super_class = BLITunesMetadataHelper;
  v8 = [(BLITunesMetadataHelper *)&v11 init];
  if (v8)
  {
    v9 = [BLITunesMetadataHelper _itunesMetadataDictionaryWithMetadata:metadataCopy clientIdentifier:identifierCopy];
    [(BLITunesMetadataHelper *)v8 setPlist:v9];
  }

  return v8;
}

- (id)writePlistWithDownloadID:(id)d error:(id *)error
{
  dCopy = d;
  if (![dCopy length])
  {
    if (error)
    {
      sub_1000A8F44(23, 0, 0);
      *error = v9 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v7 = [BLDownloadManager downloadDirectoryForDownloadID:dCopy];
  v8 = [v7 URLByAppendingPathComponent:@"iTunesMetadata"];
  v9 = [v8 URLByAppendingPathExtension:@"plist"];

  v10 = BLBookInstallLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    path = [v9 path];
    v19 = 138543618;
    v20 = dCopy;
    v21 = 2112;
    v22 = path;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [iTunesMetadata-Helper]: Writing plist to %@", &v19, 0x16u);
  }

  plist = [(BLITunesMetadataHelper *)self plist];
  path2 = [v9 path];
  v14 = [BLLibraryUtility writeBinaryPropertyList:plist toPath:path2 error:error];

  if ((v14 & 1) == 0)
  {
    v15 = BLBookInstallLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      if (error)
      {
        v16 = *error;
      }

      else
      {
        v16 = 0;
      }

      v19 = 138543618;
      v20 = dCopy;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [iTunesMetadata-Helper]: Failed to write iTunesMetadata.plist:  %@", &v19, 0x16u);
    }

LABEL_13:
    v9 = 0;
  }

LABEL_14:
  path3 = [v9 path];

  return path3;
}

+ (id)_itunesMetadataDictionaryWithMetadata:(id)metadata clientIdentifier:(id)identifier
{
  metadataCopy = metadata;
  identifierCopy = identifier;
  objc_opt_class();
  v7 = [metadataCopy valueForMetadataKey:@"metadata"];
  v8 = BUDynamicCast();
  v9 = [v8 mutableCopy];

  v10 = [metadataCopy valueForMetadataKey:@"asset-info"];
  [v9 setObject:v10 forKeyedSubscript:@"asset-info"];

  if ([metadataCopy isSample])
  {
    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [metadataCopy isSample]);
    [v9 setObject:v11 forKeyedSubscript:@"isSample"];
  }

  v12 = +[NSMutableDictionary dictionary];
  [v9 setObject:v12 forKeyedSubscript:@"com.apple.iTunesStore.downloadInfo"];
  purchaseDate = [metadataCopy purchaseDate];
  v49 = v12;
  [v12 setObject:purchaseDate forKeyedSubscript:@"purchaseDate"];

  sinfs = [metadataCopy sinfs];

  if (sinfs)
  {
    v15 = [BLDownloadDRM alloc];
    sinfs2 = [metadataCopy sinfs];
    v17 = [(BLDownloadDRM *)v15 initWithSinfArray:sinfs2];

    sinfsArray = [(BLDownloadDRM *)v17 sinfsArray];
    ams_DSID = [sinfsArray copyValueForProperty:@"SinfPropertyAccountIdentifier" error:0];

    if (ams_DSID)
    {

LABEL_7:
      username = 0;
      goto LABEL_9;
    }

    pinfsArray = [(BLDownloadDRM *)v17 pinfsArray];
    ams_DSID = [pinfsArray copyValueForProperty:@"SinfPropertyAccountIdentifier" error:0];

    if (ams_DSID)
    {
      goto LABEL_7;
    }
  }

  v22 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v22 activeStoreAccount];

  username = [activeStoreAccount username];
  ams_DSID = [activeStoreAccount ams_DSID];

  if (!ams_DSID)
  {
    goto LABEL_25;
  }

LABEL_9:
  v48 = v9;
  v24 = [ACAccount bu_storeAccountWithDSID:ams_DSID];
  v25 = objc_alloc_init(NSMutableDictionary);
  ams_DSID2 = [v24 ams_DSID];
  v27 = ams_DSID2;
  if (ams_DSID2)
  {
    v28 = ams_DSID2;
  }

  else
  {
    v28 = ams_DSID;
  }

  [v25 setObject:v28 forKey:@"DSPersonID"];
  v45 = v24;
  username2 = [v24 username];
  v44 = username2;
  if (username2)
  {
    v30 = username2;

    username = v30;
LABEL_15:
    [v25 setObject:username forKey:@"AppleID"];
    goto LABEL_16;
  }

  if (username)
  {
    goto LABEL_15;
  }

LABEL_16:
  v46 = identifierCopy;
  context = objc_autoreleasePoolPush();
  sinfsArray2 = [0 sinfsArray];
  epubRightsData = [metadataCopy epubRightsData];
  v33 = [self epubRightsInfoWithEpubRightsData:epubRightsData];

  v34 = [self downloaderAccountIdentifierWithSinfsArray:sinfsArray2 epubRightsInfo:v33];
  if (v34)
  {
    [v25 setObject:v34 forKey:@"DownloaderID"];
  }

  v35 = [self familyAccountIdentifierWithSinfsArray:sinfsArray2 epubRightsInfo:v33];
  if (v35)
  {
    [v25 setObject:v35 forKey:@"FamilyID"];
  }

  v36 = [self purchaserAccountIdentifierWithSinfsArray:sinfsArray2 epubRightsInfo:v33];
  if (v36)
  {
    [v25 setObject:v36 forKey:@"PurchaserID"];
  }

  objc_autoreleasePoolPop(context);
  [v49 setObject:v25 forKey:@"accountInfo"];
  if ([username length])
  {
    [v48 setObject:username forKey:@"appleId"];
  }

  identifierCopy = v46;
  v9 = v48;
LABEL_25:
  v37 = BLSSDownloadMetadataKeyIsPurchaseRedownload;
  v38 = [v9 objectForKey:BLSSDownloadMetadataKeyIsPurchaseRedownload];

  if (!v38)
  {
    v39 = [metadataCopy valueForMetadataKey:v37];
    bOOLValue = [v39 BOOLValue];

    if (bOOLValue)
    {
      [v9 setObject:&__kCFBooleanTrue forKey:@"is-purchased-redownload"];
    }
  }

  v41 = [v9 objectForKey:@"sourceApp"];

  if (!v41 && [identifierCopy length])
  {
    [v9 setObject:identifierCopy forKey:@"sourceApp"];
  }

  return v9;
}

+ (id)epubRightsInfoWithEpubRightsData:(id)data
{
  dataCopy = data;
  v4 = [[BLEpubRightsDataParser alloc] initWithXMLData:dataCopy];

  sinfData = [(BLEpubRightsDataParser *)v4 sinfData];
  if (sinfData)
  {
    v6 = [BLSinfsArray alloc];
    sinfData2 = [(BLEpubRightsDataParser *)v4 sinfData];
    v11 = sinfData2;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    v9 = [(BLSinfsArray *)v6 initWithSINFs:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)purchaserAccountIdentifierWithSinfsArray:(id)array epubRightsInfo:(id)info
{
  infoCopy = info;
  v6 = [array copyValueForField:2 error:0];
  if (!v6)
  {
    v6 = [infoCopy copyValueForField:2 error:0];
  }

  return v6;
}

+ (id)downloaderAccountIdentifierWithSinfsArray:(id)array epubRightsInfo:(id)info
{
  infoCopy = info;
  v6 = [array copyValueForField:3 error:0];
  if (!v6)
  {
    v6 = [infoCopy copyValueForField:3 error:0];
  }

  return v6;
}

+ (id)familyAccountIdentifierWithSinfsArray:(id)array epubRightsInfo:(id)info
{
  infoCopy = info;
  v6 = [array copyValueForField:4 error:0];
  if (!v6)
  {
    v6 = [infoCopy copyValueForField:4 error:0];
  }

  return v6;
}

+ (id)itunesMetadataPlistDictionaryFromPath:(id)path
{
  pathCopy = path;
  v4 = [NSURL fileURLWithPath:pathCopy];
  v14 = 0;
  v5 = [NSData dataWithContentsOfURL:v4 options:1 error:&v14];
  v6 = v14;

  if (v5)
  {
    objc_opt_class();
    v13 = 0;
    v7 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:&v13];
    v8 = v13;

    v9 = BUDynamicCast();

    if (v9)
    {
      goto LABEL_9;
    }

    v10 = BLBookInstallLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v16 = pathCopy;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to parse iTunesMetadata.plist from %{public}@.  %@", buf, 0x16u);
    }
  }

  else
  {
    v10 = BLBookInstallLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v16 = pathCopy;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to read iTunesMetadata.plist from %{public}@.  %@", buf, 0x16u);
    }

    v8 = v6;
  }

  v9 = 0;
LABEL_9:
  v11 = [v9 mutableCopy];

  return v11;
}

@end