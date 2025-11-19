@interface _BLPrepareDownloadOperation
+ (BOOL)_allowsCellularAccessForAsset:(id)a3 policy:(id)a4 isCellularAllowedForRestores:(BOOL)a5;
+ (BOOL)_isDTServiceHubIssuedRequest:(id)a3;
+ (id)_newDownloadKeyCookieWithValue:(id)a3 URL:(id)a4;
+ (int64_t)_URLSessionTaskPriorityForDownload:(id)a3;
+ (int64_t)_URLSessionTaskPriorityForDownloadPriority:(int64_t)a3;
- (BLPrepareDownloadOperation)operation;
- (BOOL)_assetNeedsDecryption:(id)a3;
- (BOOL)_sendsStoreHeadersForAsset;
- (BOOL)_shouldCancelDownload;
- (BOOL)_shouldFailForDiskSpaceWithAsset:(id)a3 dataConsumer:(id)a4;
- (BOOL)_usesStreamingZipDataConsumerForAsset:(id)a3;
- (NSString)downloadIdentifier;
- (id)_bookManifest;
- (id)_bookPathForBookWithKind:(id)a3 adamID:(id)a4 publicationVersion:(id)a5;
- (id)_bookPathWithKind:(id)a3 permaLink:(id)a4;
- (id)_downloadKeyCookieWithAsset:(id)a3;
- (id)_initWithOperation:(id)a3 download:(id)a4 policy:(id)a5;
- (id)_newDataConsumerWithAsset:(id)a3 destinationPath:(id)a4;
- (id)_newURLRequestWithAsset:(id)a3;
- (id)outputBlock;
- (int64_t)_assetSizeFromURLResponse:(id)a3;
- (int64_t)_loadSizeIfNecessaryForAsset:(id)a3;
- (void)dq_action_requestCachedURL;
- (void)run;
- (void)setOutputBlock:(id)a3;
@end

@implementation _BLPrepareDownloadOperation

- (id)_initWithOperation:(id)a3 download:(id)a4 policy:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = _BLPrepareDownloadOperation;
  v11 = [(_BLPrepareDownloadOperation *)&v17 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    objc_storeWeak(&v11->_operation, v8);
    objc_storeStrong(p_isa + 4, a4);
    v13 = [v9 isRestore];
    v14 = [v13 BOOLValue];

    if (v14)
    {
      v15 = +[BLRestoreManager sharedInstance];
      [p_isa setIsCellularAllowedForRestores:{objc_msgSend(v15, "isCellularAllowed")}];
    }

    [p_isa setAllowsCellularAccess:{+[_BLPrepareDownloadOperation _allowsCellularAccessForAsset:policy:isCellularAllowedForRestores:](_BLPrepareDownloadOperation, "_allowsCellularAccessForAsset:policy:isCellularAllowedForRestores:", v9, v10, objc_msgSend(p_isa, "isCellularAllowedForRestores"))}];
  }

  return p_isa;
}

- (NSString)downloadIdentifier
{
  v2 = [(_BLPrepareDownloadOperation *)self download];
  v3 = [v2 downloadID];

  return v3;
}

- (id)outputBlock
{
  v2 = [self->_outputBlock copy];

  return v2;
}

- (void)setOutputBlock:(id)a3
{
  if (self->_outputBlock != a3)
  {
    self->_outputBlock = [a3 copy];

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

- (id)_bookPathForBookWithKind:(id)a3 adamID:(id)a4 publicationVersion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([BLDownloadKindEBook isEqualToString:v8])
  {
    v11 = [(_BLPrepareDownloadOperation *)self _bookManifest];
    v12 = [v11 bookPathForAdamID:v9 withPublicationVersion:v10];
  }

  else if ([BLDownloadKindAudiobook isEqualToString:v8])
  {
    v12 = [BLMediaLibraryUtilities pathOfAudiobookTrackWithStoreIdentifier:v9];
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
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Prepare]: Store book (%@ v%@) already exists on file system at %@. Skipping download and installation.", &v15, 0x20u);
    }
  }

  return v12;
}

- (id)_bookPathWithKind:(id)a3 permaLink:(id)a4
{
  v6 = a4;
  if ([BLDownloadKindEBook isEqualToString:a3])
  {
    v7 = [(_BLPrepareDownloadOperation *)self _bookManifest];
    v8 = [v7 bookPathPermalink:v6];
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
      v12 = v6;
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
  v4 = [(_BLPrepareDownloadOperation *)self download];
  v5 = [(BLPrepareDownloadResponse *)v3 initWithDownload:v4];

  [(BLPrepareDownloadResponse *)v5 setResult:0];
  v6 = [(_BLPrepareDownloadOperation *)self downloadIdentifier];
  v7 = BLServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v58 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Preparing download", buf, 0xCu);
  }

  if ([(BLPrepareDownloadResponse *)v5 isLocalCacheServer])
  {
    [(_BLPrepareDownloadOperation *)self dq_action_requestCachedURL];
  }

  v8 = [(_BLPrepareDownloadOperation *)self download];
  v9 = [v8 permlink];
  [(BLPrepareDownloadResponse *)v5 setPermLink:v9];

  v10 = [(_BLPrepareDownloadOperation *)self download];
  v11 = [v10 storeIdentifier];

  v12 = [(_BLPrepareDownloadOperation *)self download];
  v13 = [v12 permlink];

  v14 = [(_BLPrepareDownloadOperation *)self download];
  v15 = [v14 publicationVersion];

  if (v11 && [v11 longLongValue])
  {
    v16 = [(_BLPrepareDownloadOperation *)self download];
    v17 = [v16 kind];
    v18 = [(_BLPrepareDownloadOperation *)self _bookPathForBookWithKind:v17 adamID:v11 publicationVersion:v15];
LABEL_10:
    v19 = v18;

    goto LABEL_12;
  }

  if ([v13 length])
  {
    v16 = [(_BLPrepareDownloadOperation *)self download];
    v17 = [v16 kind];
    v18 = [(_BLPrepareDownloadOperation *)self _bookPathWithKind:v17 permaLink:v13];
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
      v58 = v6;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Cancel invalid automatic download", buf, 0xCu);
    }

    v22 = v5;
    v23 = 1;
LABEL_24:
    [(BLPrepareDownloadResponse *)v22 setResult:v23];
    goto LABEL_25;
  }

  v24 = [(_BLPrepareDownloadOperation *)self download];

  if (!v24)
  {
    v26 = BLServiceLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v58 = v6;
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
      v58 = v6;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Flagging download as finish only, already have asset", buf, 0xCu);
    }

    v22 = v5;
    v23 = 3;
    goto LABEL_24;
  }

  [0 isFileURL];
  v29 = [(_BLPrepareDownloadOperation *)self download];
  v30 = [(_BLPrepareDownloadOperation *)self _loadSizeIfNecessaryForAsset:v29];

  if (v30 >= 1)
  {
    [(BLPrepareDownloadResponse *)v5 setMediaAssetSize:v30];
  }

  v31 = [(_BLPrepareDownloadOperation *)self download];
  v32 = [v31 assetPath];

  [(BLPrepareDownloadResponse *)v5 setDestinationPath:v32];
  if ([(BLPrepareDownloadResponse *)v5 isRestore])
  {
    [(BLPrepareDownloadResponse *)v5 setIsCellularAllowedForRestores:[(_BLPrepareDownloadOperation *)self isCellularAllowedForRestores]];
  }

  [(BLPrepareDownloadResponse *)v5 setAllowsCellularAccess:[(_BLPrepareDownloadOperation *)self allowsCellularAccess]];
  v33 = [(_BLPrepareDownloadOperation *)self download];
  v34 = [(_BLPrepareDownloadOperation *)self _newURLRequestWithAsset:v33];

  v54 = v32;
  v56 = v34;
  if (v34)
  {
    v35 = [(_BLPrepareDownloadOperation *)self download];
    v36 = [(_BLPrepareDownloadOperation *)self _newDataConsumerWithAsset:v35 destinationPath:v32];

    if ([objc_opt_class() _isDTServiceHubIssuedRequest:v34])
    {
      v37 = BLServiceLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v58 = v6;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Asking data consumer to override progress value", buf, 0xCu);
      }

      [v36 setOverrideProgress:1];
    }

    [(BLPrepareDownloadResponse *)v5 setDataConsumer:v36, v54];
  }

  [(BLPrepareDownloadResponse *)v5 setURLRequest:v34, v54];
  v38 = [(_BLPrepareDownloadOperation *)self download];
  v39 = [(BLPrepareDownloadResponse *)v5 dataConsumer];
  v40 = [(_BLPrepareDownloadOperation *)self _shouldFailForDiskSpaceWithAsset:v38 dataConsumer:v39];

  if (v40)
  {
    v41 = BLServiceLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v58 = v6;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Prepare]: Fail download without enough disk space", buf, 0xCu);
    }

    v42 = sub_1000A8F44(103, 0, 0);
    [(BLPrepareDownloadResponse *)v5 setError:v42];

    [(BLPrepareDownloadResponse *)v5 setResult:2];
    v43 = [(BLPrepareDownloadResponse *)v5 dataConsumer];
    v44 = v43;
    v45 = v55;
    v46 = v56;
    if (v43)
    {
      [v43 suspend];
      [(BLPrepareDownloadResponse *)v5 setDataConsumer:0];
    }
  }

  else
  {
    v47 = [(_BLPrepareDownloadOperation *)self _clientIdentifier];
    [(BLPrepareDownloadResponse *)v5 setClientIdentifier:v47];

    [(BLPrepareDownloadResponse *)v5 setRequiresPowerPluggedIn:[(_BLPrepareDownloadOperation *)self _requiresPoweredPluggedIn]];
    v48 = [(_BLPrepareDownloadOperation *)self download];
    [(_BLPrepareDownloadOperation *)self _transferProgressFractionWithAsset:v48];
    [(BLPrepareDownloadResponse *)v5 setTransferProgressFraction:?];

    v49 = [(_BLPrepareDownloadOperation *)self download];
    v50 = [v49 isAutomaticDownload];
    v51 = [v50 BOOLValue];

    [(BLPrepareDownloadResponse *)v5 setAutomaticType:v51];
    [(BLPrepareDownloadResponse *)v5 setDiscretionary:0];
    v52 = [(_BLPrepareDownloadOperation *)self download];
    LODWORD(v49) = [BLDownloadInfo shouldBeDiscretionary:v52];

    if (v49)
    {
      [(BLPrepareDownloadResponse *)v5 setDiscretionary:1];
    }

    v53 = objc_opt_class();
    v44 = [(_BLPrepareDownloadOperation *)self download];
    -[BLPrepareDownloadResponse setTaskPriority:](v5, "setTaskPriority:", [v53 _URLSessionTaskPriorityForDownload:v44]);
    v45 = v55;
    v46 = v56;
  }

LABEL_25:
  if (+[BLLibraryUtility _isMultiUser])
  {
    [(BLPrepareDownloadResponse *)v5 result];
  }

  v27 = [(_BLPrepareDownloadOperation *)self outputBlock];
  if (v27)
  {
    v28 = [(_BLPrepareDownloadOperation *)self operation];
    (v27)[2](v27, v28, v5);

    [(_BLPrepareDownloadOperation *)self setOutputBlock:0];
  }
}

+ (BOOL)_isDTServiceHubIssuedRequest:(id)a3
{
  v3 = [a3 URL];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 host];
    v5 = [v4 isEqualToString:@"localhost"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_allowsCellularAccessForAsset:(id)a3 policy:(id)a4 isCellularAllowedForRestores:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 downloadID];
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
      v35 = v9;
      v36 = 2112;
      v37 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Prepare]: Error determining cellular identity, error: %@", buf, 0x16u);
    }
  }

  v14 = [BUCellularSettings settingsForIdentity:v11];
  v15 = [v14 allowAutomaticDownloads];
  v16 = [v7 isAutomaticDownload];
  v17 = [v16 BOOLValue];

  if (!v17 || v15)
  {
    v18 = [v7 isRestore];
    v19 = [v18 BOOLValue];

    if ((v19 & 1) == 0)
    {
      if ([v8 hasCellularResult])
      {
        v20 = [v8 cellularResult];
        a5 = (v20 & 0xFFFFFFFFFFFFFFFDLL) == 1;
        v21 = BLServiceLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v35 = v9;
          v36 = 2048;
          v37 = v20;
          v38 = 1024;
          LODWORD(v39) = (v20 & 0xFFFFFFFFFFFFFFFDLL) == 1;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Cellular evaluation result is %ld, setting allowsCellularAccess to %d", buf, 0x1Cu);
        }
      }

      else
      {
        v22 = BLServiceLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v35 = v9;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Cellular evaluation result not found, fallback to use hard download limit for cellular", buf, 0xCu);
        }

        v23 = [v7 fileSize];
        v21 = [v7 kind];
        if (v21)
        {
          v30 = +[BUBag defaultBag];
          v24 = [AMSNetworkConstraints networkConstraintsForMediaType:v21 withBag:?];
          v32 = 0;
          v25 = [v24 resultWithError:&v32];
          v31 = v32;
          if (v25)
          {
            v26 = [v25 sizeLimitForNetworkType:AMSNetworkTypeCellular];
            a5 = v26 != AMSSizeLimitDisabled && (v26 == AMSSizeLimitNoLimit || v23 <= v26);
          }

          else
          {
            v27 = BLServiceLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              v35 = v9;
              v36 = 2114;
              v37 = v21;
              v38 = 2112;
              v39 = v31;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Prepare]: Constraints not found in bag, downloadKind: %{public}@, error:  %@", buf, 0x20u);
            }

            a5 = 1;
          }
        }

        else
        {
          a5 = 1;
        }
      }
    }
  }

  else
  {
    a5 = 0;
  }

  return a5;
}

- (BOOL)_assetNeedsDecryption:(id)a3
{
  v3 = [a3 dpInfo];
  v4 = v3 != 0;

  return v4;
}

- (int64_t)_assetSizeFromURLResponse:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 statusCode];
    if (v5 == 206)
    {
      v6 = [v4 allHeaderFields];
      v7 = [v6 objectForKey:@"Content-Range"];

      if (!v7 || (+[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @"/"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 rangeOfCharacterFromSet:v8], v8, v9 == 0x7FFFFFFFFFFFFFFFLL) || (v10 = v9 + 1, v10 >= objc_msgSend(v7, "length")))
      {
        v12 = -1;
      }

      else
      {
        v11 = [v7 substringFromIndex:v10];
        v12 = [v11 longLongValue];
      }
    }

    else if ((v5 - 200) > 0x63)
    {
      v12 = -1;
    }

    else
    {
      v12 = [v4 expectedContentLength];
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (void)dq_action_requestCachedURL
{
  v2 = [(_BLPrepareDownloadOperation *)self download];
  v3 = [v2 url];

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

+ (id)_newDownloadKeyCookieWithValue:(id)a3 URL:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = [NSNumber numberWithInteger:604800];
  [v7 setObject:v8 forKey:NSHTTPCookieMaximumAge];

  v9 = [v5 host];
  [v7 setObject:v9 forKey:NSHTTPCookieDomain];

  [v7 setObject:@"downloadKey" forKey:NSHTTPCookieName];
  v10 = [v5 path];
  [v7 setObject:v10 forKey:NSHTTPCookiePath];

  [v7 setObject:v5 forKey:NSHTTPCookieOriginURL];
  [v7 setObject:v6 forKey:NSHTTPCookieValue];

  v11 = [[NSHTTPCookie alloc] initWithProperties:v7];
  return v11;
}

- (id)_downloadKeyCookieWithAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 url];
  if (v4)
  {
    v5 = [v3 downloadKey];
    if ([v5 length])
    {
      v6 = [[NSURL alloc] initWithString:v4];
      v7 = [objc_opt_class() _newDownloadKeyCookieWithValue:v5 URL:v6];
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

- (int64_t)_loadSizeIfNecessaryForAsset:(id)a3
{
  v4 = a3;
  if ([v4 fileSize] <= 0)
  {
    v6 = [v4 url];
    if (!v6)
    {
      v5 = -1;
LABEL_22:

      goto LABEL_23;
    }

    v7 = BLServiceLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 downloadID];
      *buf = 138543362;
      v36 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Prepare request to load asset size", buf, 0xCu);
    }

    v9 = [AMSURLRequest alloc];
    v10 = [NSURL URLWithString:v6];
    v11 = [v9 initWithURL:v10];

    [v11 setHTTPMethod:@"HEAD"];
    [v11 setCachePolicy:1];
    [v11 setTimeoutInterval:30.0];
    [v11 setValue:@"identity" forHTTPHeaderField:@"Accept-Encoding"];
    v12 = [(_BLPrepareDownloadOperation *)self _downloadKeyCookieWithAsset:v4];
    if (v12)
    {
      v13 = [NSString alloc];
      v14 = [v12 name];
      v15 = [v12 value];
      v16 = [v13 initWithFormat:@"%@=%@", v14, v15];

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
        v31 = [v22 response];
        v5 = [(_BLPrepareDownloadOperation *)self _assetSizeFromURLResponse:v31];

        v19 = v32;
LABEL_14:

        v26 = BLServiceLog();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        if (v5 < 1)
        {
          if (v27)
          {
            v29 = [v4 downloadID];
            *buf = 138543362;
            v36 = v29;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Failed to find size for download", buf, 0xCu);
          }
        }

        else
        {
          if (v27)
          {
            v28 = [v4 downloadID];
            *buf = 138543618;
            v36 = v28;
            v37 = 2048;
            v38 = v5;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Found size: %lld for download", buf, 0x16u);
          }

          [v4 setFileSize:v5];
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
      v25 = [v4 downloadID];
      *buf = 138543874;
      v36 = v25;
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

- (id)_newDataConsumerWithAsset:(id)a3 destinationPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 numberOfBytesToHash];
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = [v6 md5HashStrings];
    v10 = [v9 componentsSeparatedByString:{@", "}];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v10 count])
    {

      v10 = 0;
      v8 = 0;
    }
  }

  if ([(_BLPrepareDownloadOperation *)self _usesStreamingZipDataConsumerForAsset:v6])
  {
    v11 = [v6 hashType];
    v12 = [BLStreamingZipHandler optionsWithHashes:v10 type:v11 size:v8];

    v13 = [[BLStreamingZipDownloadDataConsumer alloc] initWithPath:v7 options:v12];
  }

  else
  {
    v13 = [[BLFilesystemDownloadDataConsumer alloc] initWithPath:v7 MD5Hashes:v10 numberOfBytesToHash:v8];
  }

  return v13;
}

- (id)_newURLRequestWithAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 url];
  if (v5)
  {
    v6 = [[NSURL alloc] initWithString:v5];
    v7 = [[NSMutableURLRequest alloc] initWithURL:v6];
    [v7 setCachePolicy:1];
    v8 = [(_BLPrepareDownloadOperation *)self allowsCellularAccess];
    v9 = BLServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 downloadID];
      v18 = 138543618;
      v19 = v10;
      v20 = 1024;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare] allowsCellularAccess = %d", &v18, 0x12u);
    }

    [v7 setAllowsCellularAccess:v8];
    v11 = [v4 isRestore];
    v12 = [v11 BOOLValue];

    if (v12 & v8)
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
  v2 = [(_BLPrepareDownloadOperation *)self download];
  v3 = [v2 storeIdentifier];
  v4 = [v3 longLongValue] != 0;

  return v4;
}

- (BOOL)_shouldCancelDownload
{
  v3 = +[BURestrictionsProvider sharedInstance];
  v4 = [v3 isBookStoreAllowed];

  if (v4)
  {
    return 0;
  }

  v6 = [(_BLPrepareDownloadOperation *)self download];
  v7 = [v6 isPurchase];
  v8 = [v7 BOOLValue];

  return v8;
}

- (BOOL)_shouldFailForDiskSpaceWithAsset:(id)a3 dataConsumer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v8 = [v6 fileSize];
  v9 = [(_BLPrepareDownloadOperation *)self downloadIdentifier];
  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 BOOLForKey:@"BKSimulateDeviceOutOfSpace"];

  if (v11)
  {
    v12 = BLServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = v9;
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
      v35 = v9;
      v36 = 2048;
      v37 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Determined asset size to be %llu bytes", buf, 0x16u);
    }

    if (v7)
    {
      v15 = [v7 diskUsage];
      v16 = v15;
      if (v15 <= v8)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      v18 = BLServiceLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v35 = v9;
        v36 = 2048;
        v37 = v16;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Discovered %llu bytes already transfered", buf, 0x16u);
      }

      v8 -= v17;
    }

    v19 = [v6 assetPath];
    v20 = v19;
    if (v8 && v19)
    {
      v21 = [NSURL fileURLWithPath:v19];
      v22 = dispatch_semaphore_create(0);
      v23 = +[BLStorage sharedInstance];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100098708;
      v26[3] = &unk_10011E1D8;
      v29 = &v30;
      v27 = v9;
      v24 = v22;
      v28 = v24;
      [v23 requestFreeSpace:v8 atPath:v21 withOptions:0 completionBlock:v26];

      dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
    }

    v13 = *(v31 + 24);
  }

  _Block_object_dispose(&v30, 8);
  return v13 & 1;
}

+ (int64_t)_URLSessionTaskPriorityForDownload:(id)a3
{
  v4 = a3;
  v5 = [v4 isRestore];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = -2;
  }

  else
  {
    v8 = [v4 isAutomaticDownload];
    v9 = [v8 BOOLValue];

    v7 = (v9 << 63) >> 63;
  }

  v10 = [a1 _URLSessionTaskPriorityForDownloadPriority:v7];

  return v10;
}

+ (int64_t)_URLSessionTaskPriorityForDownloadPriority:(int64_t)a3
{
  if ((a3 + 2) >= 4)
  {
    return 400;
  }

  else
  {
    return -100 * a3 + 300;
  }
}

- (BOOL)_usesStreamingZipDataConsumerForAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 isZipStreamable];
  v6 = v5;
  if (v5)
  {
    LOBYTE(v7) = [v5 BOOLValue];
  }

  else
  {
    v8 = [(_BLPrepareDownloadOperation *)self download];
    v9 = [v8 storeIdentifier];
    v10 = [v9 integerValue];

    if (v10)
    {
      v11 = BLDownloadKindAudiobook;
      v12 = [(_BLPrepareDownloadOperation *)self download];
      v13 = [v12 kind];
      v7 = [v11 isEqualToString:v13] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  v14 = ![(_BLPrepareDownloadOperation *)self _assetNeedsDecryption:v4];

  return v14 & v7;
}

- (BLPrepareDownloadOperation)operation
{
  WeakRetained = objc_loadWeakRetained(&self->_operation);

  return WeakRetained;
}

@end