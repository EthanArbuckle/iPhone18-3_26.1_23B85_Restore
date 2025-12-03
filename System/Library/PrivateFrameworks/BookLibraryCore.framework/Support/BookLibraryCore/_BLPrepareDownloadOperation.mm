@interface _BLPrepareDownloadOperation
+ (BOOL)_allowsCellularAccessForAsset:(id)asset policy:(id)policy isCellularAllowedForRestores:(BOOL)restores;
+ (BOOL)_isDTServiceHubIssuedRequest:(id)request;
+ (id)_newDownloadKeyCookieWithValue:(id)value URL:(id)l;
+ (int64_t)_URLSessionTaskPriorityForDownload:(id)download;
+ (int64_t)_URLSessionTaskPriorityForDownloadPriority:(int64_t)priority;
- (BLPrepareDownloadOperation)operation;
- (BOOL)_assetNeedsDecryption:(id)decryption;
- (BOOL)_sendsStoreHeadersForAsset;
- (BOOL)_shouldCancelDownload;
- (BOOL)_shouldFailForDiskSpaceWithAsset:(id)asset dataConsumer:(id)consumer;
- (BOOL)_usesStreamingZipDataConsumerForAsset:(id)asset;
- (NSString)downloadIdentifier;
- (id)_bookManifest;
- (id)_bookPathForBookWithKind:(id)kind adamID:(id)d publicationVersion:(id)version;
- (id)_bookPathWithKind:(id)kind permaLink:(id)link;
- (id)_downloadKeyCookieWithAsset:(id)asset;
- (id)_initWithOperation:(id)operation download:(id)download policy:(id)policy;
- (id)_newDataConsumerWithAsset:(id)asset destinationPath:(id)path;
- (id)_newURLRequestWithAsset:(id)asset;
- (id)outputBlock;
- (int64_t)_assetSizeFromURLResponse:(id)response;
- (int64_t)_loadSizeIfNecessaryForAsset:(id)asset;
- (void)dq_action_requestCachedURL;
- (void)run;
- (void)setOutputBlock:(id)block;
@end

@implementation _BLPrepareDownloadOperation

- (id)_initWithOperation:(id)operation download:(id)download policy:(id)policy
{
  operationCopy = operation;
  downloadCopy = download;
  policyCopy = policy;
  v17.receiver = self;
  v17.super_class = _BLPrepareDownloadOperation;
  v11 = [(_BLPrepareDownloadOperation *)&v17 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    objc_storeWeak(&v11->_operation, operationCopy);
    objc_storeStrong(p_isa + 4, download);
    isRestore = [downloadCopy isRestore];
    bOOLValue = [isRestore BOOLValue];

    if (bOOLValue)
    {
      v15 = +[BLRestoreManager sharedInstance];
      [p_isa setIsCellularAllowedForRestores:{objc_msgSend(v15, "isCellularAllowed")}];
    }

    [p_isa setAllowsCellularAccess:{+[_BLPrepareDownloadOperation _allowsCellularAccessForAsset:policy:isCellularAllowedForRestores:](_BLPrepareDownloadOperation, "_allowsCellularAccessForAsset:policy:isCellularAllowedForRestores:", downloadCopy, policyCopy, objc_msgSend(p_isa, "isCellularAllowedForRestores"))}];
  }

  return p_isa;
}

- (NSString)downloadIdentifier
{
  download = [(_BLPrepareDownloadOperation *)self download];
  downloadID = [download downloadID];

  return downloadID;
}

- (id)outputBlock
{
  v2 = [self->_outputBlock copy];

  return v2;
}

- (void)setOutputBlock:(id)block
{
  if (self->_outputBlock != block)
  {
    self->_outputBlock = [block copy];

    _objc_release_x1();
  }
}

- (id)_bookManifest
{
  if ((+[BLLibraryUtility _isMultiUser]& 1) != 0)
  {
    +[BLBookManifest sharedPurchasedBookManifest];
  }

  else
  {
    +[BLBookManifest purchasedBookManifest];
  }
  v2 = ;

  return v2;
}

- (id)_bookPathForBookWithKind:(id)kind adamID:(id)d publicationVersion:(id)version
{
  kindCopy = kind;
  dCopy = d;
  versionCopy = version;
  if ([BLDownloadKindEBook isEqualToString:kindCopy])
  {
    _bookManifest = [(_BLPrepareDownloadOperation *)self _bookManifest];
    v12 = [_bookManifest bookPathForAdamID:dCopy withPublicationVersion:versionCopy];
  }

  else if ([BLDownloadKindAudiobook isEqualToString:kindCopy])
  {
    v12 = [BLMediaLibraryUtilities pathOfAudiobookTrackWithStoreIdentifier:dCopy];
  }

  else
  {
    v12 = 0;
  }

  if ([v12 length])
  {
    v13 = BLServiceLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412802;
      v16 = dCopy;
      v17 = 2112;
      v18 = versionCopy;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Prepare]: Store book (%@ v%@) already exists on file system at %@. Skipping download and installation.", &v15, 0x20u);
    }
  }

  return v12;
}

- (id)_bookPathWithKind:(id)kind permaLink:(id)link
{
  linkCopy = link;
  if ([BLDownloadKindEBook isEqualToString:kind])
  {
    _bookManifest = [(_BLPrepareDownloadOperation *)self _bookManifest];
    v8 = [_bookManifest bookPathPermalink:linkCopy];
  }

  else
  {
    v8 = 0;
  }

  if ([v8 length])
  {
    v9 = BLServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = linkCopy;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Prepare]: iTunesU book (%@) already exists on file system at %@. Skipping download and installation.", &v11, 0x16u);
    }
  }

  return v8;
}

- (void)run
{
  v3 = [BLPrepareDownloadResponse alloc];
  download = [(_BLPrepareDownloadOperation *)self download];
  v5 = [(BLPrepareDownloadResponse *)v3 initWithDownload:download];

  [(BLPrepareDownloadResponse *)v5 setResult:0];
  downloadIdentifier = [(_BLPrepareDownloadOperation *)self downloadIdentifier];
  v7 = BLServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v58 = downloadIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Preparing download", buf, 0xCu);
  }

  if ([(BLPrepareDownloadResponse *)v5 isLocalCacheServer])
  {
    [(_BLPrepareDownloadOperation *)self dq_action_requestCachedURL];
  }

  download2 = [(_BLPrepareDownloadOperation *)self download];
  permlink = [download2 permlink];
  [(BLPrepareDownloadResponse *)v5 setPermLink:permlink];

  download3 = [(_BLPrepareDownloadOperation *)self download];
  storeIdentifier = [download3 storeIdentifier];

  download4 = [(_BLPrepareDownloadOperation *)self download];
  permlink2 = [download4 permlink];

  download5 = [(_BLPrepareDownloadOperation *)self download];
  publicationVersion = [download5 publicationVersion];

  if (storeIdentifier && [storeIdentifier longLongValue])
  {
    download6 = [(_BLPrepareDownloadOperation *)self download];
    kind = [download6 kind];
    v18 = [(_BLPrepareDownloadOperation *)self _bookPathForBookWithKind:kind adamID:storeIdentifier publicationVersion:publicationVersion];
LABEL_10:
    v19 = v18;

    goto LABEL_12;
  }

  if ([permlink2 length])
  {
    download6 = [(_BLPrepareDownloadOperation *)self download];
    kind = [download6 kind];
    v18 = [(_BLPrepareDownloadOperation *)self _bookPathWithKind:kind permaLink:permlink2];
    goto LABEL_10;
  }

  v19 = 0;
LABEL_12:
  v20 = [v19 length];
  if ([(_BLPrepareDownloadOperation *)self _shouldCancelDownload])
  {
    v21 = BLServiceLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v58 = downloadIdentifier;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Cancel invalid automatic download", buf, 0xCu);
    }

    v22 = v5;
    v23 = 1;
LABEL_24:
    [(BLPrepareDownloadResponse *)v22 setResult:v23];
    goto LABEL_25;
  }

  download7 = [(_BLPrepareDownloadOperation *)self download];

  if (!download7)
  {
    v26 = BLServiceLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v58 = downloadIdentifier;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Skip prepare for download with no media asset", buf, 0xCu);
    }

    v22 = v5;
    v23 = 4;
    goto LABEL_24;
  }

  if (v20)
  {
    v25 = BLServiceLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v58 = downloadIdentifier;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Flagging download as finish only, already have asset", buf, 0xCu);
    }

    v22 = v5;
    v23 = 3;
    goto LABEL_24;
  }

  [0 isFileURL];
  download8 = [(_BLPrepareDownloadOperation *)self download];
  v30 = [(_BLPrepareDownloadOperation *)self _loadSizeIfNecessaryForAsset:download8];

  if (v30 >= 1)
  {
    [(BLPrepareDownloadResponse *)v5 setMediaAssetSize:v30];
  }

  download9 = [(_BLPrepareDownloadOperation *)self download];
  assetPath = [download9 assetPath];

  [(BLPrepareDownloadResponse *)v5 setDestinationPath:assetPath];
  if ([(BLPrepareDownloadResponse *)v5 isRestore])
  {
    [(BLPrepareDownloadResponse *)v5 setIsCellularAllowedForRestores:[(_BLPrepareDownloadOperation *)self isCellularAllowedForRestores]];
  }

  [(BLPrepareDownloadResponse *)v5 setAllowsCellularAccess:[(_BLPrepareDownloadOperation *)self allowsCellularAccess]];
  download10 = [(_BLPrepareDownloadOperation *)self download];
  v34 = [(_BLPrepareDownloadOperation *)self _newURLRequestWithAsset:download10];

  v54 = assetPath;
  v56 = v34;
  if (v34)
  {
    download11 = [(_BLPrepareDownloadOperation *)self download];
    v36 = [(_BLPrepareDownloadOperation *)self _newDataConsumerWithAsset:download11 destinationPath:assetPath];

    if ([objc_opt_class() _isDTServiceHubIssuedRequest:v34])
    {
      v37 = BLServiceLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v58 = downloadIdentifier;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Asking data consumer to override progress value", buf, 0xCu);
      }

      [v36 setOverrideProgress:1];
    }

    [(BLPrepareDownloadResponse *)v5 setDataConsumer:v36, v54];
  }

  [(BLPrepareDownloadResponse *)v5 setURLRequest:v34, v54];
  download12 = [(_BLPrepareDownloadOperation *)self download];
  dataConsumer = [(BLPrepareDownloadResponse *)v5 dataConsumer];
  v40 = [(_BLPrepareDownloadOperation *)self _shouldFailForDiskSpaceWithAsset:download12 dataConsumer:dataConsumer];

  if (v40)
  {
    v41 = BLServiceLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v58 = downloadIdentifier;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Prepare]: Fail download without enough disk space", buf, 0xCu);
    }

    v42 = sub_1000A8F44(103, 0, 0);
    [(BLPrepareDownloadResponse *)v5 setError:v42];

    [(BLPrepareDownloadResponse *)v5 setResult:2];
    dataConsumer2 = [(BLPrepareDownloadResponse *)v5 dataConsumer];
    download16 = dataConsumer2;
    v45 = v55;
    v46 = v56;
    if (dataConsumer2)
    {
      [dataConsumer2 suspend];
      [(BLPrepareDownloadResponse *)v5 setDataConsumer:0];
    }
  }

  else
  {
    _clientIdentifier = [(_BLPrepareDownloadOperation *)self _clientIdentifier];
    [(BLPrepareDownloadResponse *)v5 setClientIdentifier:_clientIdentifier];

    [(BLPrepareDownloadResponse *)v5 setRequiresPowerPluggedIn:[(_BLPrepareDownloadOperation *)self _requiresPoweredPluggedIn]];
    download13 = [(_BLPrepareDownloadOperation *)self download];
    [(_BLPrepareDownloadOperation *)self _transferProgressFractionWithAsset:download13];
    [(BLPrepareDownloadResponse *)v5 setTransferProgressFraction:?];

    download14 = [(_BLPrepareDownloadOperation *)self download];
    isAutomaticDownload = [download14 isAutomaticDownload];
    bOOLValue = [isAutomaticDownload BOOLValue];

    [(BLPrepareDownloadResponse *)v5 setAutomaticType:bOOLValue];
    [(BLPrepareDownloadResponse *)v5 setDiscretionary:0];
    download15 = [(_BLPrepareDownloadOperation *)self download];
    LODWORD(download14) = [BLDownloadInfo shouldBeDiscretionary:download15];

    if (download14)
    {
      [(BLPrepareDownloadResponse *)v5 setDiscretionary:1];
    }

    v53 = objc_opt_class();
    download16 = [(_BLPrepareDownloadOperation *)self download];
    -[BLPrepareDownloadResponse setTaskPriority:](v5, "setTaskPriority:", [v53 _URLSessionTaskPriorityForDownload:download16]);
    v45 = v55;
    v46 = v56;
  }

LABEL_25:
  if (+[BLLibraryUtility _isMultiUser])
  {
    [(BLPrepareDownloadResponse *)v5 result];
  }

  outputBlock = [(_BLPrepareDownloadOperation *)self outputBlock];
  if (outputBlock)
  {
    operation = [(_BLPrepareDownloadOperation *)self operation];
    (outputBlock)[2](outputBlock, operation, v5);

    [(_BLPrepareDownloadOperation *)self setOutputBlock:0];
  }
}

+ (BOOL)_isDTServiceHubIssuedRequest:(id)request
{
  v3 = [request URL];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    host = [v3 host];
    v5 = [host isEqualToString:@"localhost"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_allowsCellularAccessForAsset:(id)asset policy:(id)policy isCellularAllowedForRestores:(BOOL)restores
{
  assetCopy = asset;
  policyCopy = policy;
  downloadID = [assetCopy downloadID];
  v10 = +[BLNetworkMonitor defaultMonitor];
  v33 = 0;
  v11 = [v10 copyCellularNetworkIdentityWithError:&v33];
  v12 = v33;

  if (v12)
  {
    v13 = BLServiceLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v35 = downloadID;
      v36 = 2112;
      v37 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Prepare]: Error determining cellular identity, error: %@", buf, 0x16u);
    }
  }

  v14 = [BUCellularSettings settingsForIdentity:v11];
  allowAutomaticDownloads = [v14 allowAutomaticDownloads];
  isAutomaticDownload = [assetCopy isAutomaticDownload];
  bOOLValue = [isAutomaticDownload BOOLValue];

  if (!bOOLValue || allowAutomaticDownloads)
  {
    isRestore = [assetCopy isRestore];
    bOOLValue2 = [isRestore BOOLValue];

    if ((bOOLValue2 & 1) == 0)
    {
      if ([policyCopy hasCellularResult])
      {
        cellularResult = [policyCopy cellularResult];
        restores = (cellularResult & 0xFFFFFFFFFFFFFFFDLL) == 1;
        kind = BLServiceLog();
        if (os_log_type_enabled(kind, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v35 = downloadID;
          v36 = 2048;
          v37 = cellularResult;
          v38 = 1024;
          LODWORD(v39) = (cellularResult & 0xFFFFFFFFFFFFFFFDLL) == 1;
          _os_log_impl(&_mh_execute_header, kind, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Cellular evaluation result is %ld, setting allowsCellularAccess to %d", buf, 0x1Cu);
        }
      }

      else
      {
        v22 = BLServiceLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v35 = downloadID;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Cellular evaluation result not found, fallback to use hard download limit for cellular", buf, 0xCu);
        }

        fileSize = [assetCopy fileSize];
        kind = [assetCopy kind];
        if (kind)
        {
          v30 = +[BUBag defaultBag];
          v24 = [AMSNetworkConstraints networkConstraintsForMediaType:kind withBag:?];
          v32 = 0;
          v25 = [v24 resultWithError:&v32];
          v31 = v32;
          if (v25)
          {
            v26 = [v25 sizeLimitForNetworkType:AMSNetworkTypeCellular];
            restores = v26 != AMSSizeLimitDisabled && (v26 == AMSSizeLimitNoLimit || fileSize <= v26);
          }

          else
          {
            v27 = BLServiceLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              v35 = downloadID;
              v36 = 2114;
              v37 = kind;
              v38 = 2112;
              v39 = v31;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Prepare]: Constraints not found in bag, downloadKind: %{public}@, error:  %@", buf, 0x20u);
            }

            restores = 1;
          }
        }

        else
        {
          restores = 1;
        }
      }
    }
  }

  else
  {
    restores = 0;
  }

  return restores;
}

- (BOOL)_assetNeedsDecryption:(id)decryption
{
  dpInfo = [decryption dpInfo];
  v4 = dpInfo != 0;

  return v4;
}

- (int64_t)_assetSizeFromURLResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = responseCopy;
    statusCode = [v4 statusCode];
    if (statusCode == 206)
    {
      allHeaderFields = [v4 allHeaderFields];
      v7 = [allHeaderFields objectForKey:@"Content-Range"];

      if (!v7 || (+[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @"/"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 rangeOfCharacterFromSet:v8], v8, v9 == 0x7FFFFFFFFFFFFFFFLL) || (v10 = v9 + 1, v10 >= objc_msgSend(v7, "length")))
      {
        longLongValue = -1;
      }

      else
      {
        v11 = [v7 substringFromIndex:v10];
        longLongValue = [v11 longLongValue];
      }
    }

    else if ((statusCode - 200) > 0x63)
    {
      longLongValue = -1;
    }

    else
    {
      longLongValue = [v4 expectedContentLength];
    }
  }

  else
  {
    longLongValue = -1;
  }

  return longLongValue;
}

- (void)dq_action_requestCachedURL
{
  download = [(_BLPrepareDownloadOperation *)self download];
  v3 = [download url];

  if (v3)
  {
    v4 = [[NSURL alloc] initWithString:v3];
    if (v4)
    {
      v5 = v4;
      v6 = dispatch_semaphore_create(0);
      v8 = v3;
      v7 = v6;
      ACSLocateCachingServer();
      dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

+ (id)_newDownloadKeyCookieWithValue:(id)value URL:(id)l
{
  lCopy = l;
  valueCopy = value;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = [NSNumber numberWithInteger:604800];
  [v7 setObject:v8 forKey:NSHTTPCookieMaximumAge];

  host = [lCopy host];
  [v7 setObject:host forKey:NSHTTPCookieDomain];

  [v7 setObject:@"downloadKey" forKey:NSHTTPCookieName];
  path = [lCopy path];
  [v7 setObject:path forKey:NSHTTPCookiePath];

  [v7 setObject:lCopy forKey:NSHTTPCookieOriginURL];
  [v7 setObject:valueCopy forKey:NSHTTPCookieValue];

  v11 = [[NSHTTPCookie alloc] initWithProperties:v7];
  return v11;
}

- (id)_downloadKeyCookieWithAsset:(id)asset
{
  assetCopy = asset;
  v4 = [assetCopy url];
  if (v4)
  {
    downloadKey = [assetCopy downloadKey];
    if ([downloadKey length])
    {
      v6 = [[NSURL alloc] initWithString:v4];
      v7 = [objc_opt_class() _newDownloadKeyCookieWithValue:downloadKey URL:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_loadSizeIfNecessaryForAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy fileSize] <= 0)
  {
    v6 = [assetCopy url];
    if (!v6)
    {
      v5 = -1;
LABEL_22:

      goto LABEL_23;
    }

    v7 = BLServiceLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      downloadID = [assetCopy downloadID];
      *buf = 138543362;
      v36 = downloadID;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Prepare request to load asset size", buf, 0xCu);
    }

    v9 = [AMSURLRequest alloc];
    v10 = [NSURL URLWithString:v6];
    v11 = [v9 initWithURL:v10];

    [v11 setHTTPMethod:@"HEAD"];
    [v11 setCachePolicy:1];
    [v11 setTimeoutInterval:30.0];
    [v11 setValue:@"identity" forHTTPHeaderField:@"Accept-Encoding"];
    v12 = [(_BLPrepareDownloadOperation *)self _downloadKeyCookieWithAsset:assetCopy];
    if (v12)
    {
      v13 = [NSString alloc];
      name = [v12 name];
      value = [v12 value];
      v16 = [v13 initWithFormat:@"%@=%@", name, value];

      [v11 setValue:v16 forHTTPHeaderField:AMSHTTPHeaderCookie];
    }

    v17 = objc_alloc_init(AMSURLRequestEncoder);
    [v17 setUrlKnownToBeTrusted:1];
    v18 = [v17 requestByEncodingRequest:v11 parameters:0];
    v34 = 0;
    v19 = [v18 resultWithError:&v34];
    v20 = v34;

    if (!v20)
    {
      v20 = +[AMSURLSession defaultSession];
      v32 = v19;
      v21 = [v20 dataTaskPromiseWithRequest:v19];
      v33 = 0;
      v22 = [v21 resultWithError:&v33];
      v23 = v33;
      if (!v23)
      {
        response = [v22 response];
        v5 = [(_BLPrepareDownloadOperation *)self _assetSizeFromURLResponse:response];

        v19 = v32;
LABEL_14:

        v26 = BLServiceLog();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        if (v5 < 1)
        {
          if (v27)
          {
            downloadID2 = [assetCopy downloadID];
            *buf = 138543362;
            v36 = downloadID2;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Failed to find size for download", buf, 0xCu);
          }
        }

        else
        {
          if (v27)
          {
            downloadID3 = [assetCopy downloadID];
            *buf = 138543618;
            v36 = downloadID3;
            v37 = 2048;
            v38 = v5;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Found size: %lld for download", buf, 0x16u);
          }

          [assetCopy setFileSize:v5];
        }

        goto LABEL_22;
      }

      v24 = v23;

      v20 = v24;
      v19 = v32;
    }

    v21 = BLServiceLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      downloadID4 = [assetCopy downloadID];
      *buf = 138543874;
      v36 = downloadID4;
      v37 = 2114;
      v38 = v6;
      v39 = 2112;
      v40 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Prepare]: Error sending HEAD request to %{public}@ for download. error:  %@", buf, 0x20u);
    }

    v5 = -1;
    goto LABEL_14;
  }

  v5 = -1;
LABEL_23:

  return v5;
}

- (id)_newDataConsumerWithAsset:(id)asset destinationPath:(id)path
{
  assetCopy = asset;
  pathCopy = path;
  numberOfBytesToHash = [assetCopy numberOfBytesToHash];
  if (numberOfBytesToHash < 1)
  {
    v10 = 0;
  }

  else
  {
    md5HashStrings = [assetCopy md5HashStrings];
    v10 = [md5HashStrings componentsSeparatedByString:{@", "}];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v10 count])
    {

      v10 = 0;
      numberOfBytesToHash = 0;
    }
  }

  if ([(_BLPrepareDownloadOperation *)self _usesStreamingZipDataConsumerForAsset:assetCopy])
  {
    hashType = [assetCopy hashType];
    v12 = [BLStreamingZipHandler optionsWithHashes:v10 type:hashType size:numberOfBytesToHash];

    v13 = [[BLStreamingZipDownloadDataConsumer alloc] initWithPath:pathCopy options:v12];
  }

  else
  {
    v13 = [[BLFilesystemDownloadDataConsumer alloc] initWithPath:pathCopy MD5Hashes:v10 numberOfBytesToHash:numberOfBytesToHash];
  }

  return v13;
}

- (id)_newURLRequestWithAsset:(id)asset
{
  assetCopy = asset;
  v5 = [assetCopy url];
  if (v5)
  {
    v6 = [[NSURL alloc] initWithString:v5];
    v7 = [[NSMutableURLRequest alloc] initWithURL:v6];
    [v7 setCachePolicy:1];
    allowsCellularAccess = [(_BLPrepareDownloadOperation *)self allowsCellularAccess];
    v9 = BLServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      downloadID = [assetCopy downloadID];
      v18 = 138543618;
      v19 = downloadID;
      v20 = 1024;
      v21 = allowsCellularAccess;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare] allowsCellularAccess = %d", &v18, 0x12u);
    }

    [v7 setAllowsCellularAccess:allowsCellularAccess];
    isRestore = [assetCopy isRestore];
    bOOLValue = [isRestore BOOLValue];

    if (bOOLValue & allowsCellularAccess)
    {
      [v7 setAllowsExpensiveNetworkAccess:0];
    }

    v13 = AMSHTTPHeaderUserAgent;
    v14 = [v7 valueForHTTPHeaderField:AMSHTTPHeaderUserAgent];

    if (!v14)
    {
      v15 = +[AMSProcessInfo currentProcess];
      v16 = [AMSUserAgent userAgentForProcessInfo:v15];

      if (v16)
      {
        [v7 setValue:v16 forHTTPHeaderField:v13];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_sendsStoreHeadersForAsset
{
  download = [(_BLPrepareDownloadOperation *)self download];
  storeIdentifier = [download storeIdentifier];
  v4 = [storeIdentifier longLongValue] != 0;

  return v4;
}

- (BOOL)_shouldCancelDownload
{
  v3 = +[BURestrictionsProvider sharedInstance];
  isBookStoreAllowed = [v3 isBookStoreAllowed];

  if (isBookStoreAllowed)
  {
    return 0;
  }

  download = [(_BLPrepareDownloadOperation *)self download];
  isPurchase = [download isPurchase];
  bOOLValue = [isPurchase BOOLValue];

  return bOOLValue;
}

- (BOOL)_shouldFailForDiskSpaceWithAsset:(id)asset dataConsumer:(id)consumer
{
  assetCopy = asset;
  consumerCopy = consumer;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  fileSize = [assetCopy fileSize];
  downloadIdentifier = [(_BLPrepareDownloadOperation *)self downloadIdentifier];
  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 BOOLForKey:@"BKSimulateDeviceOutOfSpace"];

  if (v11)
  {
    v12 = BLServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = downloadIdentifier;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Simulating a device out of space situation", buf, 0xCu);
    }

    v13 = 1;
    *(v31 + 24) = 1;
  }

  else
  {
    v14 = BLServiceLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v35 = downloadIdentifier;
      v36 = 2048;
      v37 = fileSize;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Determined asset size to be %llu bytes", buf, 0x16u);
    }

    if (consumerCopy)
    {
      diskUsage = [consumerCopy diskUsage];
      v16 = diskUsage;
      if (diskUsage <= fileSize)
      {
        v17 = diskUsage;
      }

      else
      {
        v17 = 0;
      }

      v18 = BLServiceLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v35 = downloadIdentifier;
        v36 = 2048;
        v37 = v16;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Discovered %llu bytes already transfered", buf, 0x16u);
      }

      fileSize -= v17;
    }

    assetPath = [assetCopy assetPath];
    v20 = assetPath;
    if (fileSize && assetPath)
    {
      v21 = [NSURL fileURLWithPath:assetPath];
      v22 = dispatch_semaphore_create(0);
      v23 = +[BLStorage sharedInstance];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100098708;
      v26[3] = &unk_10011E1D8;
      v29 = &v30;
      v27 = downloadIdentifier;
      v24 = v22;
      v28 = v24;
      [v23 requestFreeSpace:fileSize atPath:v21 withOptions:0 completionBlock:v26];

      dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
    }

    v13 = *(v31 + 24);
  }

  _Block_object_dispose(&v30, 8);
  return v13 & 1;
}

+ (int64_t)_URLSessionTaskPriorityForDownload:(id)download
{
  downloadCopy = download;
  isRestore = [downloadCopy isRestore];
  bOOLValue = [isRestore BOOLValue];

  if (bOOLValue)
  {
    v7 = -2;
  }

  else
  {
    isAutomaticDownload = [downloadCopy isAutomaticDownload];
    bOOLValue2 = [isAutomaticDownload BOOLValue];

    v7 = (bOOLValue2 << 63) >> 63;
  }

  v10 = [self _URLSessionTaskPriorityForDownloadPriority:v7];

  return v10;
}

+ (int64_t)_URLSessionTaskPriorityForDownloadPriority:(int64_t)priority
{
  if ((priority + 2) >= 4)
  {
    return 400;
  }

  else
  {
    return -100 * priority + 300;
  }
}

- (BOOL)_usesStreamingZipDataConsumerForAsset:(id)asset
{
  assetCopy = asset;
  isZipStreamable = [assetCopy isZipStreamable];
  v6 = isZipStreamable;
  if (isZipStreamable)
  {
    LOBYTE(v7) = [isZipStreamable BOOLValue];
  }

  else
  {
    download = [(_BLPrepareDownloadOperation *)self download];
    storeIdentifier = [download storeIdentifier];
    integerValue = [storeIdentifier integerValue];

    if (integerValue)
    {
      v11 = BLDownloadKindAudiobook;
      download2 = [(_BLPrepareDownloadOperation *)self download];
      kind = [download2 kind];
      v7 = [v11 isEqualToString:kind] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  v14 = ![(_BLPrepareDownloadOperation *)self _assetNeedsDecryption:assetCopy];

  return v14 & v7;
}

- (BLPrepareDownloadOperation)operation
{
  WeakRetained = objc_loadWeakRetained(&self->_operation);

  return WeakRetained;
}

@end