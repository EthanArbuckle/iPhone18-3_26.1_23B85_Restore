@interface CSAssetController
+ (id)filteredAssetsForAssets:(id)a3 assetType:(unint64_t)a4 language:(id)a5;
+ (id)getAssetTypeStringForType:(unint64_t)a3;
+ (id)getEndpointAssetTypeString;
+ (id)getSpeakerRecognitionAssetTypeString;
+ (id)sharedController;
+ (unint64_t)getEndpointAssetCurrentCompatibilityVersion;
+ (void)addKeyValuePairForQuery:(id *)a3 assetType:(unint64_t)a4;
- (BOOL)_isRetryRecommendedWithResult:(int64_t)a3;
- (BOOL)_notInstalledAssetState:(int64_t)a3 assetType:(unint64_t)a4;
- (CSAssetController)init;
- (id)_assetQueryForAssetType:(unint64_t)a3;
- (id)_defaultDownloadOptions;
- (id)_findLatestInstalledAsset:(id)a3 assetType:(unint64_t)a4;
- (id)_installedAssetOfType:(unint64_t)a3 withLanguage:(id)a4;
- (id)allInstalledAssetsOfType:(unint64_t)a3 language:(id)a4;
- (id)assetOfType:(unint64_t)a3 language:(id)a4;
- (id)installedAssetOfType:(unint64_t)a3 language:(id)a4;
- (id)installedAssetOfType:(unint64_t)a3 withLanguage:(id)a4;
- (void)_cleanUpMobileAssetV1Directory;
- (void)_downloadAsset:(id)a3 withComplete:(id)a4;
- (void)_downloadAssetCatalogForAssetType:(unint64_t)a3 complete:(id)a4;
- (void)_fetchRemoteAssetOfType:(unint64_t)a3 withLanguage:(id)a4 completion:(id)a5;
- (void)_fetchRemoteAssetOfType:(unint64_t)a3 withLanguage:(id)a4 query:(id)a5 completion:(id)a6;
- (void)_installedAssetOfType:(unint64_t)a3 query:(id)a4 withLanguage:(id)a5 completion:(id)a6;
- (void)_installedAssetOfType:(unint64_t)a3 withLanguage:(id)a4 completion:(id)a5;
- (void)_runAssetQuery:(id)a3 completion:(id)a4;
- (void)_setAssetQueryParameters:(id)a3;
- (void)_startDownloadingAsset:(id)a3 progress:(id)a4 completion:(id)a5;
- (void)_updateFromRemoteToLocalAssets:(id)a3 forAssetType:(unint64_t)a4 completion:(id)a5;
- (void)addObserver:(id)a3 forAssetType:(unint64_t)a4;
- (void)assetOfType:(unint64_t)a3 language:(id)a4 compatibilityVersion:(unint64_t)a5 completion:(id)a6;
- (void)assetOfType:(unint64_t)a3 language:(id)a4 completion:(id)a5;
- (void)fetchRemoteMetaOfType:(unint64_t)a3;
- (void)fetchRemoteMetaOfType:(unint64_t)a3 allowRetry:(BOOL)a4;
- (void)installedAssetOfType:(unint64_t)a3 language:(id)a4 completion:(id)a5;
- (void)installedAssetOfType:(unint64_t)a3 withLanguage:(id)a4 completion:(id)a5;
- (void)removeObserver:(id)a3 forAssetType:(unint64_t)a4;
@end

@implementation CSAssetController

- (void)removeObserver:(id)a3 forAssetType:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100092AB8;
  block[3] = &unk_1002533C8;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)addObserver:(id)a3 forAssetType:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100092C58;
  block[3] = &unk_1002533C8;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)_startDownloadingAsset:(id)a3 progress:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    *buf = 136315650;
    *&buf[4] = "[CSAssetController _startDownloadingAsset:progress:completion:]";
    v29 = 2114;
    v30 = v8;
    v31 = 2050;
    v32 = [v8 state];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Attempting to download asset %{public}@, asset state : %{public}ld", buf, 0x20u);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000930B8;
  v25[3] = &unk_100250210;
  v13 = v9;
  v27 = v13;
  v14 = v8;
  v26 = v14;
  v15 = objc_retainBlock(v25);
  v16 = [v14 state];
  if (v16 > 6)
  {
LABEL_14:
    if (v16)
    {
      v19 = 0;
LABEL_7:
      v20 = 1;
      if (!v10)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    v17 = CSErrorDomain;
    v18 = 808;
LABEL_6:
    v19 = [NSError errorWithDomain:v17 code:v18 userInfo:0];
    goto LABEL_7;
  }

  if (((1 << v16) & 0x6C) != 0)
  {
    v17 = CSErrorDomain;
    v18 = 806;
    goto LABEL_6;
  }

  if (v16 != 1)
  {
    if (v16 == 4)
    {
      v17 = CSErrorDomain;
      v18 = 805;
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  *buf = 0;
  v21 = [v14 spaceCheck:buf];
  if (v21)
  {
    [v14 attachProgressCallBack:v15];
    v22 = [(CSAssetController *)self _defaultDownloadOptions];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10009315C;
    v23[3] = &unk_100250238;
    v24 = v10;
    [v14 startDownload:v22 then:v23];

    v19 = 0;
  }

  else
  {
    v19 = [NSError errorWithDomain:CSErrorDomain code:807 userInfo:0];
  }

  v20 = v21 ^ 1;
  if (v10)
  {
LABEL_8:
    if (v20)
    {
      (*(v10 + 2))(v10, v19);
    }
  }

LABEL_10:
}

- (void)_downloadAsset:(id)a3 withComplete:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSAssetController _downloadAsset:withComplete:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s ::: Start downloading asset", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100093378;
  v11[3] = &unk_1002501E8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(CSAssetController *)self _startDownloadingAsset:v10 progress:&stru_1002501C0 completion:v11];
}

- (id)_defaultDownloadOptions
{
  v2 = objc_opt_new();
  [v2 setAllowsCellularAccess:0];
  [v2 setCanUseLocalCacheServer:0];
  [v2 setDiscretionary:0];

  return v2;
}

- (void)_updateFromRemoteToLocalAssets:(id)a3 forAssetType:(unint64_t)a4 completion:(id)a5
{
  v7 = a3;
  v38 = self;
  v39 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v8 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v53 = "[CSAssetController _updateFromRemoteToLocalAssets:forAssetType:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s ::: Fetching remote asset", buf, 0xCu);
  }

  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v48 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (!v10)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_24;
  }

  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = *v49;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v49 != v15)
      {
        objc_enumerationMutation(v9);
      }

      v17 = *(*(&v48 + 1) + 8 * i);
      if (v14)
      {
        if ([*(*(&v48 + 1) + 8 * i) isLatestCompareTo:v14])
        {
          v18 = v17;

          v14 = v18;
        }
      }

      else
      {
        v14 = v17;
      }

      if ([v17 isCSAssetInstalled])
      {
        if (!v13)
        {
          v13 = v17;
          continue;
        }

        if ([v17 isLatestCompareTo:v13])
        {
          v19 = v13;

          v13 = v17;
        }

        else
        {
          if (![v17 isLatestCompareTo:v12])
          {
            continue;
          }

          v19 = v17;
        }

        v12 = v19;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v48 objects:v57 count:16];
  }

  while (v11);
LABEL_24:

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v20 = v9;
  v21 = [v20 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v45;
    v40 = v20;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v45 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v44 + 1) + 8 * j);
        if (v25 != v14 && v25 != v13 && v25 != v12)
        {
          if ([*(*(&v44 + 1) + 8 * j) isDownloading])
          {
            [v25 cancelDownloadSync];
          }

          else if ([v25 canBePurged])
          {
            v28 = CSLogCategoryAsset;
            if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
            {
              v29 = v28;
              v30 = [v25 path];
              *buf = 136315394;
              v53 = "[CSAssetController _updateFromRemoteToLocalAssets:forAssetType:completion:]";
              v54 = 2114;
              v55 = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s ::: Purging installed asset : %{public}@", buf, 0x16u);
            }

            [v25 purgeSync];
            v31 = +[CSFPreferences sharedPreferences];
            v32 = [v31 getOnDeviceCompilationCacheDirectory];
            v33 = [CSOnDeviceMAAssetCachedIrPurger purgeCachedIrForMAAsset:v25 cachedIrDir:v32];

            v20 = v40;
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v22);
  }

  if (!v14 || v14 == v13)
  {
    v35 = v39;
    if (v13)
    {
      if (v39)
      {
        (*(v39 + 2))(v39, 0);
      }
    }

    else if (v39)
    {
      v36 = [NSError errorWithDomain:CSErrorDomain code:802 userInfo:0];
      (*(v39 + 2))(v39, v36);
    }
  }

  else
  {
    v34 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v53 = "[CSAssetController _updateFromRemoteToLocalAssets:forAssetType:completion:]";
      v54 = 2050;
      v55 = a4;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%s ::: Request downloading remote asset for assetType %{public}lu", buf, 0x16u);
    }

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100093B78;
    v41[3] = &unk_100251038;
    v35 = v39;
    v41[4] = v38;
    v42 = v39;
    v43 = a4;
    [(CSAssetController *)v38 _downloadAsset:v14 withComplete:v41];
  }
}

- (BOOL)_isRetryRecommendedWithResult:(int64_t)a3
{
  result = 1;
  if ((a3 - 8) > 0x3F || ((1 << (a3 - 8)) & 0x800000800C410723) == 0)
  {
    return (a3 - 1) < 3;
  }

  return result;
}

- (void)_downloadAssetCatalogForAssetType:(unint64_t)a3 complete:(id)a4
{
  v6 = a4;
  csAssetsDictionary = self->_csAssetsDictionary;
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  v9 = [(NSDictionary *)csAssetsDictionary objectForKeyedSubscript:v8];
  v10 = [(CSAssetController *)self _defaultDownloadOptions];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100093F3C;
  v12[3] = &unk_100250180;
  v13 = v6;
  v14 = a3;
  v12[4] = self;
  v11 = v6;
  [MAAsset startCatalogDownload:v9 options:v10 then:v12];
}

- (void)_fetchRemoteAssetOfType:(unint64_t)a3 withLanguage:(id)a4 query:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [v11 returnTypes:2];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000941C4;
  v16[3] = &unk_1002500E0;
  v16[4] = self;
  v17 = v11;
  v19 = v12;
  v20 = a3;
  v18 = v10;
  v13 = v12;
  v14 = v10;
  v15 = v11;
  [v15 queryMetaData:v16];
}

- (void)_fetchRemoteAssetOfType:(unint64_t)a3 withLanguage:(id)a4 completion:(id)a5
{
  queue = self->_queue;
  v9 = a5;
  v10 = a4;
  dispatch_assert_queue_V2(queue);
  v11 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[CSAssetController _fetchRemoteAssetOfType:withLanguage:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s ::: Request fetching remote asset", &v13, 0xCu);
  }

  v12 = [(CSAssetController *)self _assetQueryForAssetType:a3];
  [(CSAssetController *)self _fetchRemoteAssetOfType:a3 withLanguage:v10 query:v12 completion:v9];
}

- (void)fetchRemoteMetaOfType:(unint64_t)a3 allowRetry:(BOOL)a4
{
  v7 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSAssetController fetchRemoteMetaOfType:allowRetry:]";
    v12 = 1026;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s ::: Request Fetching RemoteMetaData : assetType : %{public}d", buf, 0x12u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000946E8;
  v8[3] = &unk_100250130;
  v8[4] = self;
  v8[5] = a3;
  v9 = a4;
  [(CSAssetController *)self _downloadAssetCatalogForAssetType:a3 complete:v8];
}

- (void)fetchRemoteMetaOfType:(unint64_t)a3
{
  if ([(CSAssetController *)self _isNeededForOTA:?])
  {

    [(CSAssetController *)self fetchRemoteMetaOfType:a3 allowRetry:1];
  }

  else
  {
    v5 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315138;
      v7 = "[CSAssetController fetchRemoteMetaOfType:]";
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Download for MA is deprecated", &v6, 0xCu);
    }
  }
}

- (void)_runAssetQuery:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v14 = "[CSAssetController _runAssetQuery:completion:]";
    v15 = 2082;
    v16 = "[CSAssetController _runAssetQuery:completion:]";
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s ::: %{public}s; query: %{public}@", buf, 0x20u);
  }

  kdebug_trace();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100094B6C;
  v10[3] = &unk_100250108;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v9 queryMetaData:v10];
}

- (void)_setAssetQueryParameters:(id)a3
{
  v3 = a3;
  v4 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSAssetController _setAssetQueryParameters:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s setDoNotBlockBeforeFirstUnlock: YES", &v5, 0xCu);
  }

  [v3 setDoNotBlockBeforeFirstUnlock:1];
}

- (id)_assetQueryForAssetType:(unint64_t)a3
{
  v5 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[CSAssetController _assetQueryForAssetType:]";
    v16 = 2050;
    v17 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s ::: assetType: %{public}lu", buf, 0x16u);
  }

  v6 = [MAAssetQuery alloc];
  csAssetsDictionary = self->_csAssetsDictionary;
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  v9 = [(NSDictionary *)csAssetsDictionary objectForKeyedSubscript:v8];
  v10 = [v6 initWithType:v9];

  v13 = v10;
  [CSAssetController addKeyValuePairForQuery:&v13 assetType:a3];
  v11 = v13;

  [(CSAssetController *)self _setAssetQueryParameters:v11];

  return v11;
}

- (id)_findLatestInstalledAsset:(id)a3 assetType:(unint64_t)a4
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v23;
    *&v7 = 136315394;
    v20 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 state];
        v14 = CSLogCategoryAsset;
        if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v20;
          v27 = "[CSAssetController _findLatestInstalledAsset:assetType:]";
          v28 = 2050;
          v29 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s Asset state : %{public}ld", buf, 0x16u);
        }

        if (![(CSAssetController *)self _notInstalledAssetState:v13 assetType:a4])
        {
          if (v9)
          {
            if ([v12 isLatestCompareTo:v9])
            {
              v15 = v12;

              v9 = v15;
            }
          }

          else
          {
            v9 = v12;
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [v9 attributes];
    *buf = 136315394;
    v27 = "[CSAssetController _findLatestInstalledAsset:assetType:]";
    v28 = 2114;
    v29 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  return v9;
}

- (BOOL)_notInstalledAssetState:(int64_t)a3 assetType:(unint64_t)a4
{
  v5 = [(CSAssetController *)self _isNeededForOTA:a4];
  v6 = (a3 - 7) < 0xFFFFFFFFFFFFFFFELL;
  if (a3 >= 7)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v7 = 0x13u >> a3;
  }

  if (v5)
  {
    return v7;
  }

  return v6;
}

- (void)_installedAssetOfType:(unint64_t)a3 query:(id)a4 withLanguage:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [v10 returnTypes:2];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009534C;
  v16[3] = &unk_1002500E0;
  v20 = v12;
  v21 = a3;
  v17 = v10;
  v18 = v11;
  v19 = self;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  [v15 queryMetaData:v16];
}

- (void)_installedAssetOfType:(unint64_t)a3 withLanguage:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(CSAssetController *)self _assetQueryForAssetType:a3];
  [(CSAssetController *)self _installedAssetOfType:a3 query:v10 withLanguage:v9 completion:v8];
}

- (id)_installedAssetOfType:(unint64_t)a3 withLanguage:(id)a4
{
  v6 = a4;
  v7 = [(CSAssetController *)self _assetQueryForAssetType:a3];
  [v7 returnTypes:2];
  v8 = [v7 queryMetaDataSync];
  v9 = [v7 results];
  v10 = [CSAssetController filteredAssetsForAssets:v9 assetType:a3 language:v6];

  v11 = CSLogCategoryAsset;
  if ((v8 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315906;
      v18 = "[CSAssetController _installedAssetOfType:withLanguage:]";
      v19 = 2050;
      v20 = a3;
      v21 = 2114;
      v22 = v7;
      v23 = 2050;
      v24 = v8;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Error running asset-query for assetType:%{public}lu, query: %{public}@, error: %{public}lu", &v17, 0x2Au);
    }

    v12 = 0;
  }

  else
  {
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v11;
      v14 = [v10 count];
      v15 = [v7 queryParams];
      v17 = 136315906;
      v18 = "[CSAssetController _installedAssetOfType:withLanguage:]";
      v19 = 2050;
      v20 = v14;
      v21 = 2050;
      v22 = a3;
      v23 = 2114;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s ::: found %{public}lu assets for assetType=%{public}lu, matching query: %{public}@", &v17, 0x2Au);
    }

    v12 = [(CSAssetController *)self _findLatestInstalledAsset:v10 assetType:a3];
  }

  return v12;
}

- (void)installedAssetOfType:(unint64_t)a3 withLanguage:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100095984;
  v13[3] = &unk_1002523D0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (id)installedAssetOfType:(unint64_t)a3 withLanguage:(id)a4
{
  v6 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100095C04;
  v23 = sub_100095C14;
  v24 = 0;
  queue = self->_queue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100095C1C;
  v14 = &unk_100252000;
  v17 = &v19;
  v18 = a3;
  v15 = self;
  v8 = v6;
  v16 = v8;
  dispatch_sync(queue, &v11);
  v9 = [v20[5] getCSAssetOfType:{a3, v11, v12, v13, v14, v15}];

  _Block_object_dispose(&v19, 8);

  return v9;
}

- (void)installedAssetOfType:(unint64_t)a3 language:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v10 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[CSAssetController installedAssetOfType:language:completion:]";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s CSAssetController cannot query for nil language", &v12, 0xCu);
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    else if (!v9)
    {
      goto LABEL_6;
    }

    v11 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    v9[2](v9, 0, v11);

    goto LABEL_6;
  }

  [(CSAssetController *)self installedAssetOfType:a3 withLanguage:v8 completion:v9];
LABEL_6:
}

- (id)installedAssetOfType:(unint64_t)a3 language:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(CSAssetController *)self installedAssetOfType:a3 withLanguage:v6];
  }

  else
  {
    v8 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[CSAssetController installedAssetOfType:language:]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s CSAssetController cannot query for nil language", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (void)assetOfType:(unint64_t)a3 language:(id)a4 compatibilityVersion:(unint64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  if (!v10)
  {
    v13 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[CSAssetController assetOfType:language:compatibilityVersion:completion:]";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s CSAssetController cannot query for nil language", buf, 0xCu);
      if (!v11)
      {
        goto LABEL_6;
      }
    }

    else if (!v11)
    {
      goto LABEL_6;
    }

    v14 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    v11[2](v11, 0, v14);

    goto LABEL_6;
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100096064;
  block[3] = &unk_1002500B8;
  block[4] = self;
  v18 = a3;
  v19 = a5;
  v16 = v10;
  v17 = v11;
  dispatch_async(queue, block);

LABEL_6:
}

- (void)assetOfType:(unint64_t)a3 language:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v11 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[CSAssetController assetOfType:language:completion:]";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s CSAssetController cannot query for nil language", buf, 0xCu);
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    else if (!v9)
    {
      goto LABEL_6;
    }

    v12 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    v9[2](v9, 0, v12);

    goto LABEL_6;
  }

  [(CSAssetController *)self installedAssetOfType:a3 withLanguage:v8 completion:v9];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100096454;
  block[3] = &unk_1002533C8;
  block[4] = self;
  v15 = a3;
  v14 = v8;
  dispatch_async(queue, block);

LABEL_6:
}

- (id)allInstalledAssetsOfType:(unint64_t)a3 language:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(CSAssetController *)self _assetQueryForAssetType:a3];
    [v7 returnTypes:2];
    v8 = [v7 queryMetaDataSync];
    v9 = [v7 results];
    v10 = [CSAssetController filteredAssetsForAssets:v9 assetType:a3 language:v6];

    v11 = CSLogCategoryAsset;
    if ((v8 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v25 = "[CSAssetController allInstalledAssetsOfType:language:]";
        v26 = 2050;
        v27 = a3;
        v28 = 2114;
        v29 = v7;
        v30 = 2050;
        v31 = v8;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Error running asset-query for assetType:%{public}lu, query: %{public}@, error: %{public}lu", buf, 0x2Au);
      }

      v12 = 0;
    }

    else
    {
      if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v11;
        v15 = [v10 count];
        v16 = [v7 queryParams];
        *buf = 136315906;
        v25 = "[CSAssetController allInstalledAssetsOfType:language:]";
        v26 = 2050;
        v27 = v15;
        v28 = 2050;
        v29 = a3;
        v30 = 2114;
        v31 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s ::: found %{public}lu installed assets for assetType=%{public}lu, matching query: %{public}@", buf, 0x2Au);
      }

      v17 = [v10 sortedArrayUsingComparator:&stru_100250040];
      +[NSMutableArray array];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100096798;
      v22 = v21[3] = &unk_100250068;
      v23 = a3;
      v21[4] = self;
      v18 = v22;
      [v17 enumerateObjectsUsingBlock:v21];
      if ([v18 count])
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v12 = v19;
    }
  }

  else
  {
    v13 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[CSAssetController allInstalledAssetsOfType:language:]";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s CSAssetController cannot query for nil language", buf, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (id)assetOfType:(unint64_t)a3 language:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(CSAssetController *)self installedAssetOfType:a3 withLanguage:v6];
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000969DC;
    block[3] = &unk_1002533C8;
    block[4] = self;
    v13 = a3;
    v12 = v6;
    dispatch_async(queue, block);
  }

  else
  {
    v9 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[CSAssetController assetOfType:language:]";
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s CSAssetController cannot query for nil language", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (void)_cleanUpMobileAssetV1Directory
{
  v2 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSAssetController _cleanUpMobileAssetV1Directory]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  v3 = +[CSAssetController getVoiceTriggerAssetTypeString];
  _MACleanV1Repository();

  v4 = +[CSAssetController getEndpointAssetTypeString];
  _MACleanV1Repository();

  v5 = +[CSAssetController getLanguageDetectorAssetTypeString];
  _MACleanV1Repository();

  v6 = +[CSAssetController getAdBlockerAssetTypeString];
  _MACleanV1Repository();
}

- (CSAssetController)init
{
  v22.receiver = self;
  v22.super_class = CSAssetController;
  v2 = [(CSAssetController *)&v22 init];
  if (v2)
  {
    v3 = +[CSAssetController getVoiceTriggerAssetTypeString];
    v4 = +[CSAssetController getEndpointAssetTypeString];
    v5 = +[CSAssetController getLanguageDetectorAssetTypeString];
    v6 = +[CSAssetController getAdBlockerAssetTypeString];
    v7 = +[CSAssetController getSpeakerRecognitionAssetTypeString];
    v8 = +[NSMutableDictionary dictionary];
    observers = v2->_observers;
    v2->_observers = v8;

    v27[0] = &off_10025E1F8;
    v27[1] = &off_10025E210;
    v28[0] = v3;
    v28[1] = v4;
    v27[2] = &off_10025E228;
    v27[3] = &off_10025E240;
    v28[2] = v5;
    v28[3] = v7;
    v27[4] = &off_10025E258;
    v27[5] = &off_10025E270;
    v28[4] = v6;
    v28[5] = @"com.apple.MobileAsset.VoiceTriggerAssetsStudioDisplay";
    v27[6] = &off_10025E288;
    v28[6] = @"com.apple.MobileAsset.VoiceTriggerAssetsMac";
    v10 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:7];
    csAssetsDictionary = v2->_csAssetsDictionary;
    v2->_csAssetsDictionary = v10;

    v12 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v2->_csAssetsDictionary;
      *buf = 136315394;
      v24 = "[CSAssetController init]";
      v25 = 2114;
      v26 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s _csAssetsDictionary = %{public}@", buf, 0x16u);
    }

    v14 = dispatch_queue_create("Serial CSAssetController queue", 0);
    queue = v2->_queue;
    v2->_queue = v14;

    v16 = dispatch_queue_create("V1 Assets Clean-up queue", 0);
    assetsMigrationQueue = v2->_assetsMigrationQueue;
    v2->_assetsMigrationQueue = v16;

    v18 = v2->_assetsMigrationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100096DA4;
    block[3] = &unk_100253C20;
    v21 = v2;
    dispatch_async(v18, block);
  }

  return v2;
}

+ (id)getAssetTypeStringForType:(unint64_t)a3
{
  v3 = 0;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v3 = +[CSAssetController getEndpointAssetTypeString];
      }

      else if (a3 == 2)
      {
        v3 = +[CSAssetController getLanguageDetectorAssetTypeString];
      }
    }

    else
    {
      v3 = +[CSAssetController getVoiceTriggerAssetTypeString];
    }
  }

  else if (a3 > 4)
  {
    v4 = @"com.apple.MobileAsset.VoiceTriggerAssetsMac";
    if (a3 != 7)
    {
      v4 = 0;
    }

    if (a3 == 5)
    {
      v3 = @"com.apple.MobileAsset.VoiceTriggerAssetsStudioDisplay";
    }

    else
    {
      v3 = v4;
    }
  }

  else
  {
    if (a3 == 3)
    {
      +[CSAssetController getSpeakerRecognitionAssetTypeString];
    }

    else
    {
      +[CSAssetController getAdBlockerAssetTypeString];
    }
    v3 = ;
  }

  return v3;
}

+ (id)sharedController
{
  if (qword_10029E1C8 != -1)
  {
    dispatch_once(&qword_10029E1C8, &stru_100250000);
  }

  v3 = qword_10029E1C0;

  return v3;
}

+ (id)getSpeakerRecognitionAssetTypeString
{
  if (CSIsASMacWithAOP())
  {
    return @"com.apple.MobileAsset.SpeakerRecognitionASMacAssets";
  }

  else
  {
    return @"com.apple.MobileAsset.SpeakerRecognitionAssets";
  }
}

+ (unint64_t)getEndpointAssetCurrentCompatibilityVersion
{
  if (CSIsWatch())
  {
    return 3;
  }

  if (CSIsTV())
  {
    return 5;
  }

  if ((+[CSUtils shouldUseHorsemanSpeechEndpointAssets]& 1) != 0)
  {
    return 2;
  }

  if (CSIsOSX())
  {
    return 6;
  }

  return 3;
}

+ (id)getEndpointAssetTypeString
{
  if (CSIsWatch())
  {
    return @"com.apple.MobileAsset.SpeechEndpointAssetsWatch";
  }

  if (CSIsTV())
  {
    return @"com.apple.MobileAsset.SpeechEndpointAssetsTV";
  }

  if ((+[CSUtils shouldUseHorsemanSpeechEndpointAssets]& 1) != 0)
  {
    return @"com.apple.MobileAsset.SpeechEndpointMarshAssets";
  }

  if (CSIsOSX())
  {
    return @"com.apple.MobileAsset.SpeechEndpointMacOSAssets";
  }

  return @"com.apple.MobileAsset.SpeechEndpointAssets";
}

+ (void)addKeyValuePairForQuery:(id *)a3 assetType:(unint64_t)a4
{
  v5 = *a3;
  if (a4 <= 2)
  {
    switch(a4)
    {
      case 0uLL:
        v6 = +[CSAssetController getVoiceTriggerAssetCurrentCompatibilityVersion];
        goto LABEL_19;
      case 1uLL:
        v6 = +[CSAssetController getEndpointAssetCurrentCompatibilityVersion];
        goto LABEL_19;
      case 2uLL:
        v6 = +[CSAssetController getLanguageDetectorCurrentCompatibilityVersion];
        goto LABEL_19;
    }
  }

  else
  {
    if (a4 <= 4)
    {
      if (a4 == 3)
      {
        v6 = +[CSAssetController getSpeakerRecognitionCurrentCompatibilityVersion];
      }

      else
      {
        v6 = +[CSAssetController getAdBlockerCurrentCompatibilityVersion];
      }

      goto LABEL_19;
    }

    if (a4 == 5)
    {
      v6 = 14;
      goto LABEL_19;
    }

    if (a4 == 7)
    {
      v6 = 15;
      goto LABEL_19;
    }
  }

  v7 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "+[CSAssetController(Utils) addKeyValuePairForQuery:assetType:]";
    v12 = 2050;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s ERR: Unknown AssetType: %{public}lu", buf, 0x16u);
  }

  v6 = 0;
LABEL_19:
  v8 = ASAttributeCompatibilityVersion;
  v9 = [NSString stringWithFormat:@"%lu", v6];
  [v5 addKeyValuePair:v8 with:v9];
}

+ (id)filteredAssetsForAssets:(id)a3 assetType:(unint64_t)a4 language:(id)a5
{
  v7 = a3;
  v8 = a5;
  v30 = objc_alloc_init(NSMutableArray);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    v13 = kCSAssetLanguageKey;
    v28 = kCSAssetFootprintKey;
    v27 = kCSAssetPremiumKey;
    v29 = v8;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        v16 = [v15 attributes];
        v17 = [v16 valueForKey:v13];
        v18 = v17;
        if (!v8 || [v17 containsObject:v8])
        {
          if (a4 <= 7 && ((1 << a4) & 0xA1) != 0 && (+[CSUtils supportPremiumAssets]& 1) == 0)
          {
            v19 = v11;
            v20 = v13;
            v21 = a4;
            v22 = v12;
            v23 = v9;
            v24 = [v16 objectForKey:v28];
            v25 = v24;
            if (!v24 || ([v24 isEqualToString:v27] & 1) == 0)
            {
              [v30 addObject:v15];
            }

            v9 = v23;
            v12 = v22;
            a4 = v21;
            v13 = v20;
            v11 = v19;
            v8 = v29;
          }

          else
          {
            [v30 addObject:v15];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }

  return v30;
}

@end