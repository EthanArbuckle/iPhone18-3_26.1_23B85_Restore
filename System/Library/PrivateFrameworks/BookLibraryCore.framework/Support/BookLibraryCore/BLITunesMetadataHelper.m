@interface BLITunesMetadataHelper
+ (id)_itunesMetadataDictionaryWithMetadata:(id)a3 clientIdentifier:(id)a4;
+ (id)downloaderAccountIdentifierWithSinfsArray:(id)a3 epubRightsInfo:(id)a4;
+ (id)epubRightsInfoWithEpubRightsData:(id)a3;
+ (id)familyAccountIdentifierWithSinfsArray:(id)a3 epubRightsInfo:(id)a4;
+ (id)itunesMetadataPlistDictionaryFromPath:(id)a3;
+ (id)purchaserAccountIdentifierWithSinfsArray:(id)a3 epubRightsInfo:(id)a4;
- (BLITunesMetadataHelper)initWithClientIdentifier:(id)a3 downloadMetadata:(id)a4;
- (id)writePlistWithDownloadID:(id)a3 error:(id *)a4;
@end

@implementation BLITunesMetadataHelper

- (BLITunesMetadataHelper)initWithClientIdentifier:(id)a3 downloadMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BLITunesMetadataHelper;
  v8 = [(BLITunesMetadataHelper *)&v11 init];
  if (v8)
  {
    v9 = [BLITunesMetadataHelper _itunesMetadataDictionaryWithMetadata:v7 clientIdentifier:v6];
    [(BLITunesMetadataHelper *)v8 setPlist:v9];
  }

  return v8;
}

- (id)writePlistWithDownloadID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![v6 length])
  {
    if (a4)
    {
      sub_1000A8F44(23, 0, 0);
      *a4 = v9 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v7 = [BLDownloadManager downloadDirectoryForDownloadID:v6];
  v8 = [v7 URLByAppendingPathComponent:@"iTunesMetadata"];
  v9 = [v8 URLByAppendingPathExtension:@"plist"];

  v10 = BLBookInstallLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 path];
    v19 = 138543618;
    v20 = v6;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [iTunesMetadata-Helper]: Writing plist to %@", &v19, 0x16u);
  }

  v12 = [(BLITunesMetadataHelper *)self plist];
  v13 = [v9 path];
  v14 = [BLLibraryUtility writeBinaryPropertyList:v12 toPath:v13 error:a4];

  if ((v14 & 1) == 0)
  {
    v15 = BLBookInstallLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      if (a4)
      {
        v16 = *a4;
      }

      else
      {
        v16 = 0;
      }

      v19 = 138543618;
      v20 = v6;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [iTunesMetadata-Helper]: Failed to write iTunesMetadata.plist:  %@", &v19, 0x16u);
    }

LABEL_13:
    v9 = 0;
  }

LABEL_14:
  v17 = [v9 path];

  return v17;
}

+ (id)_itunesMetadataDictionaryWithMetadata:(id)a3 clientIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = [v5 valueForMetadataKey:@"metadata"];
  v8 = BUDynamicCast();
  v9 = [v8 mutableCopy];

  v10 = [v5 valueForMetadataKey:@"asset-info"];
  [v9 setObject:v10 forKeyedSubscript:@"asset-info"];

  if ([v5 isSample])
  {
    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isSample]);
    [v9 setObject:v11 forKeyedSubscript:@"isSample"];
  }

  v12 = +[NSMutableDictionary dictionary];
  [v9 setObject:v12 forKeyedSubscript:@"com.apple.iTunesStore.downloadInfo"];
  v13 = [v5 purchaseDate];
  v49 = v12;
  [v12 setObject:v13 forKeyedSubscript:@"purchaseDate"];

  v14 = [v5 sinfs];

  if (v14)
  {
    v15 = [BLDownloadDRM alloc];
    v16 = [v5 sinfs];
    v17 = [(BLDownloadDRM *)v15 initWithSinfArray:v16];

    v18 = [(BLDownloadDRM *)v17 sinfsArray];
    v19 = [v18 copyValueForProperty:@"SinfPropertyAccountIdentifier" error:0];

    if (v19)
    {

LABEL_7:
      v21 = 0;
      goto LABEL_9;
    }

    v20 = [(BLDownloadDRM *)v17 pinfsArray];
    v19 = [v20 copyValueForProperty:@"SinfPropertyAccountIdentifier" error:0];

    if (v19)
    {
      goto LABEL_7;
    }
  }

  v22 = +[BUAccountsProvider sharedProvider];
  v23 = [v22 activeStoreAccount];

  v21 = [v23 username];
  v19 = [v23 ams_DSID];

  if (!v19)
  {
    goto LABEL_25;
  }

LABEL_9:
  v48 = v9;
  v24 = [ACAccount bu_storeAccountWithDSID:v19];
  v25 = objc_alloc_init(NSMutableDictionary);
  v26 = [v24 ams_DSID];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v19;
  }

  [v25 setObject:v28 forKey:@"DSPersonID"];
  v45 = v24;
  v29 = [v24 username];
  v44 = v29;
  if (v29)
  {
    v30 = v29;

    v21 = v30;
LABEL_15:
    [v25 setObject:v21 forKey:@"AppleID"];
    goto LABEL_16;
  }

  if (v21)
  {
    goto LABEL_15;
  }

LABEL_16:
  v46 = v6;
  context = objc_autoreleasePoolPush();
  v31 = [0 sinfsArray];
  v32 = [v5 epubRightsData];
  v33 = [a1 epubRightsInfoWithEpubRightsData:v32];

  v34 = [a1 downloaderAccountIdentifierWithSinfsArray:v31 epubRightsInfo:v33];
  if (v34)
  {
    [v25 setObject:v34 forKey:@"DownloaderID"];
  }

  v35 = [a1 familyAccountIdentifierWithSinfsArray:v31 epubRightsInfo:v33];
  if (v35)
  {
    [v25 setObject:v35 forKey:@"FamilyID"];
  }

  v36 = [a1 purchaserAccountIdentifierWithSinfsArray:v31 epubRightsInfo:v33];
  if (v36)
  {
    [v25 setObject:v36 forKey:@"PurchaserID"];
  }

  objc_autoreleasePoolPop(context);
  [v49 setObject:v25 forKey:@"accountInfo"];
  if ([v21 length])
  {
    [v48 setObject:v21 forKey:@"appleId"];
  }

  v6 = v46;
  v9 = v48;
LABEL_25:
  v37 = BLSSDownloadMetadataKeyIsPurchaseRedownload;
  v38 = [v9 objectForKey:BLSSDownloadMetadataKeyIsPurchaseRedownload];

  if (!v38)
  {
    v39 = [v5 valueForMetadataKey:v37];
    v40 = [v39 BOOLValue];

    if (v40)
    {
      [v9 setObject:&__kCFBooleanTrue forKey:@"is-purchased-redownload"];
    }
  }

  v41 = [v9 objectForKey:@"sourceApp"];

  if (!v41 && [v6 length])
  {
    [v9 setObject:v6 forKey:@"sourceApp"];
  }

  return v9;
}

+ (id)epubRightsInfoWithEpubRightsData:(id)a3
{
  v3 = a3;
  v4 = [[BLEpubRightsDataParser alloc] initWithXMLData:v3];

  v5 = [(BLEpubRightsDataParser *)v4 sinfData];
  if (v5)
  {
    v6 = [BLSinfsArray alloc];
    v7 = [(BLEpubRightsDataParser *)v4 sinfData];
    v11 = v7;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    v9 = [(BLSinfsArray *)v6 initWithSINFs:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)purchaserAccountIdentifierWithSinfsArray:(id)a3 epubRightsInfo:(id)a4
{
  v5 = a4;
  v6 = [a3 copyValueForField:2 error:0];
  if (!v6)
  {
    v6 = [v5 copyValueForField:2 error:0];
  }

  return v6;
}

+ (id)downloaderAccountIdentifierWithSinfsArray:(id)a3 epubRightsInfo:(id)a4
{
  v5 = a4;
  v6 = [a3 copyValueForField:3 error:0];
  if (!v6)
  {
    v6 = [v5 copyValueForField:3 error:0];
  }

  return v6;
}

+ (id)familyAccountIdentifierWithSinfsArray:(id)a3 epubRightsInfo:(id)a4
{
  v5 = a4;
  v6 = [a3 copyValueForField:4 error:0];
  if (!v6)
  {
    v6 = [v5 copyValueForField:4 error:0];
  }

  return v6;
}

+ (id)itunesMetadataPlistDictionaryFromPath:(id)a3
{
  v3 = a3;
  v4 = [NSURL fileURLWithPath:v3];
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
      v16 = v3;
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
      v16 = v3;
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