@interface ASAsset
- (ASAsset)initWithAssetType:(id)type attributes:(id)attributes;
- (ASAsset)initWithMAAsset:(id)asset;
- (BOOL)cancelDownloadAndReturnError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPresentOnDisk;
- (BOOL)pauseDownloadAndReturnError:(id *)error;
- (BOOL)purgeAndReturnError:(id *)error;
- (BOOL)requiredDiskSpaceIsAvailable:(int64_t *)available error:(id *)error;
- (BOOL)requiredDiskSpaceIsAvailableForDownloadOptions:(id)options requiredBytes:(int64_t *)bytes error:(id *)error;
- (BOOL)resumeDownloadAndReturnError:(id *)error;
- (NSDate)installDate;
- (NSDictionary)attributes;
- (NSDictionary)fullAttributes;
- (id)_getLocalAttribute:(id)attribute;
- (id)assetServerUrl;
- (id)identifier;
- (int64_t)assetStateForStateString:(id)string;
- (int64_t)garbageCollectionBehavior;
- (int64_t)state;
- (unint64_t)hash;
- (void)_downloadWithOptions:(id)options shouldFireCallback:(BOOL)callback;
- (void)adjustDownloadOptions:(id)options completion:(id)completion;
- (void)cancelDownload:(id)download;
- (void)pauseDownload:(id)download;
- (void)purge:(id)purge;
- (void)resumeDownload:(id)download;
- (void)setClientName:(id)name;
- (void)setGarbageCollectionBehavior:(int64_t)behavior;
@end

@implementation ASAsset

- (unint64_t)hash
{
  identifier = [(ASAsset *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(assetType) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      maAsset = [(ASAsset *)self maAsset];
      maAsset2 = [(ASAsset *)equalCopy maAsset];
      v7 = maAsset2;
      LOBYTE(assetType) = 0;
      if (self->maAsset)
      {
        if (maAsset2)
        {
          assetType = [maAsset assetType];
          if (assetType)
          {
            assetType2 = [v7 assetType];
            assetType3 = [maAsset assetType];
            v11 = [assetType2 isEqualToString:assetType3];

            if (!v11)
            {
              goto LABEL_12;
            }

            assetId = [maAsset assetId];
            if (!assetId)
            {
              goto LABEL_12;
            }

            v13 = assetId;
            assetId2 = [v7 assetId];
            assetId3 = [maAsset assetId];
            v16 = [assetId2 isEqualToString:assetId3];

            if (v16)
            {
              LOBYTE(assetType) = 1;
            }

            else
            {
LABEL_12:
              LOBYTE(assetType) = 0;
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(assetType) = 0;
    }
  }

  return assetType;
}

- (id)assetServerUrl
{
  v3 = [(NSDictionary *)self->_attributes objectForKey:@"__RelativePath"];
  if (v3)
  {
    v4 = [(NSDictionary *)self->_attributes objectForKey:@"__BaseURL"];
    if (v4)
    {
      v5 = v4;
LABEL_7:
      v8 = [MEMORY[0x1E695DFF8] URLWithString:v5];
      v6 = [v8 URLByAppendingPathComponent:v3];

      goto LABEL_8;
    }

    assetType = self->_assetType;
    v11 = 0;
    MAGetServerUrl(assetType, &v11);
    v5 = v11;
    if (v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_8:
  v9 = v6;

  return v6;
}

- (NSDictionary)attributes
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSDictionary *)self->_attributes allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 hasPrefix:@"__"] & 1) == 0)
        {
          v10 = [(NSDictionary *)self->_attributes objectForKey:v9];
          [v3 setObject:v10 forKey:v9];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (int64_t)assetStateForStateString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy && ([stringCopy isEqualToString:@"NotDownloaded"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"Downloaded"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"Paused"])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:@"Stalled"])
    {
      v5 = 4;
    }

    else if ([v4 isEqualToString:@"Downloading"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"Verifying") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"Unarchiving") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", 0x1F0C23428))
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:0x1F0C23448])
    {
      v5 = 5;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)state
{
  v3 = [(ASAsset *)self _getLocalAttribute:@"__DownloadState"];
  v4 = [(ASAsset *)self assetStateForStateString:v3];

  return v4;
}

- (int64_t)garbageCollectionBehavior
{
  v2 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_197AD5000, v2, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", v4, 2u);
  }

  return 1;
}

- (void)setGarbageCollectionBehavior:(int64_t)behavior
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_197AD5000, v3, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", &v7, 2u);
  }

  v4 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = _ASErrorForV1Deprecation(@"setGarbageCollectionBehavior");
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_197AD5000, v4, OS_LOG_TYPE_DEFAULT, "Could not send garbage collection behavior message: %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (NSDate)installDate
{
  v2 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_197AD5000, v2, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", v5, 2u);
  }

  v3 = objc_opt_new();

  return v3;
}

- (BOOL)requiredDiskSpaceIsAvailable:(int64_t *)available error:(id *)error
{
  maAsset = [(ASAsset *)self maAsset];
  v7 = [maAsset spaceCheck:available];

  if (error)
  {
    *error = 0;
  }

  return v7;
}

- (BOOL)requiredDiskSpaceIsAvailableForDownloadOptions:(id)options requiredBytes:(int64_t *)bytes error:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", &v11, 2u);
  }

  v7 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _ASErrorForV1Deprecation(@"requiredDiskSpaceIsAvailableForDownloadOptions");
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_197AD5000, v7, OS_LOG_TYPE_DEFAULT, "Could not get space available for downloading as downloading an ASAsset is deprecated, use MAAsset: %{public}@", &v11, 0xCu);
  }

  if (error)
  {
    *error = _ASErrorForV1Deprecation(@"requiredDiskSpaceIsAvailableForDownloadOptions");
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)adjustDownloadOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  v5 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", v7, 2u);
  }

  if (completionCopy)
  {
    v6 = _ASErrorForV1Deprecation(@"adjustDownloadOptions");
    completionCopy[2](completionCopy, v6);
  }
}

- (void)_downloadWithOptions:(id)options shouldFireCallback:(BOOL)callback
{
  v5 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", buf, 2u);
  }

  if (self->_maAsset)
  {
    v6 = objc_opt_new();
    [v6 setDiscretionary:{-[ASAsset userInitiatedDownload](self, "userInitiatedDownload") ^ 1}];
    identifier = [(ASAsset *)self identifier];
    maAsset = self->_maAsset;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__ASAsset__downloadWithOptions_shouldFireCallback___block_invoke;
    v10[3] = &unk_1E74CA608;
    v10[4] = self;
    v11 = identifier;
    v9 = identifier;
    [(MAAsset *)maAsset startDownload:v6 completionWithError:v10];
  }
}

void __51__ASAsset__downloadWithOptions_shouldFireCallback___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x19A8EC5D0](*(*(a1 + 32) + 40));
  if (v5)
  {
    v6 = _MAClientLog(@"V2");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_DEFAULT, "Deprecated V1 download failed", buf, 2u);
      }

      v8 = progressDictionaryForAssetIdAndState(*(a1 + 40), [*(*(a1 + 32) + 48) state]);
      v9 = _ASErrorForMAError(v4);
      (v5)[2](v5, v8, v9);
    }

    else
    {
      if (v7)
      {
        *v10 = 0;
        _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_DEFAULT, "Deprecated V1 download succeeded using V2", v10, 2u);
      }

      v8 = progressDictionaryForAssetIdAndState(*(a1 + 40), 2uLL);
      (v5)[2](v5, v8, 0);
    }
  }
}

- (void)pauseDownload:(id)download
{
  downloadCopy = download;
  v4 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_197AD5000, v4, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", buf, 2u);
  }

  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__ASAsset_pauseDownload___block_invoke;
  block[3] = &unk_1E74CA590;
  v8 = downloadCopy;
  v6 = downloadCopy;
  dispatch_async(v5, block);
}

void __25__ASAsset_pauseDownload___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = _ASErrorForV1Deprecation(@"pauseDownload");
    (*(v1 + 16))(v1, v2);
  }
}

- (BOOL)pauseDownloadAndReturnError:(id *)error
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_197AD5000, v4, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", &v10, 2u);
  }

  v5 = _ASErrorForV1Deprecation(@"pauseDownloadAndReturnError");
  v6 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_ERROR, "[WARNING] Could not pause asset download: %{public}@", &v10, 0xCu);
  }

  if (error)
  {
    v7 = v5;
    *error = v5;
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)resumeDownload:(id)download
{
  downloadCopy = download;
  v4 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_197AD5000, v4, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", buf, 2u);
  }

  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__ASAsset_resumeDownload___block_invoke;
  block[3] = &unk_1E74CA590;
  v8 = downloadCopy;
  v6 = downloadCopy;
  dispatch_async(v5, block);
}

void __26__ASAsset_resumeDownload___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = _ASErrorForV1Deprecation(@"resumeDownload");
    (*(v1 + 16))(v1, v2);
  }
}

- (BOOL)resumeDownloadAndReturnError:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_197AD5000, v4, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", &v11, 2u);
  }

  v5 = _ASErrorForV1Deprecation(@"resumeDownloadAndReturnError");
  v6 = v5;
  if (error)
  {
    v7 = v5;
    *error = v6;
  }

  v8 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_ERROR, "[WARNING] Could not resume asset download: %{public}@", &v11, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)cancelDownload:(id)download
{
  downloadCopy = download;
  v5 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", buf, 2u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __26__ASAsset_cancelDownload___block_invoke;
  v8[3] = &unk_1E74C9928;
  v8[4] = self;
  v9 = downloadCopy;
  v7 = downloadCopy;
  dispatch_async(v6, v8);
}

void __26__ASAsset_cancelDownload___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  if (v1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __26__ASAsset_cancelDownload___block_invoke_2;
    v4[3] = &unk_1E74CA630;
    v5 = *(a1 + 40);
    [v1 cancelDownload:v4];
  }

  else
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = _ASErrorForV1Deprecation(@"cancelDownload");
      (*(v2 + 16))(v2, v3);
    }
  }
}

void __26__ASAsset_cancelDownload___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = MAIsCancelDownloadResultFailure(a2);
  v5 = _MAClientLog(@"V2");
  v6 = v5;
  if (v4)
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v7 = MAStringForMACancelDownloadResult(a2);
    v14 = 134218242;
    v15 = a2;
    v16 = 2114;
    v17 = v7;
    v8 = "[WARNING] Could not cancel v1 download: %lld %{public}@";
    v9 = v6;
    v10 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v7 = MAStringForMACancelDownloadResult(a2);
    v14 = 134218242;
    v15 = a2;
    v16 = 2114;
    v17 = v7;
    v8 = "Successful cancel v1 download: %lld %{public}@";
    v9 = v6;
    v10 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_197AD5000, v9, v10, v8, &v14, 0x16u);

LABEL_7:
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = _ASErrorForV1Deprecation(@"cancelDownload");
    (*(v11 + 16))(v11, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)cancelDownloadAndReturnError:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", &v19, 2u);
  }

  v6 = _ASErrorForV1Deprecation(@"cancelDownloadAndReturnError");
  maAsset = self->maAsset;
  if (maAsset)
  {
    cancelDownloadSync = [(MAAsset *)maAsset cancelDownloadSync];
    v9 = MAIsCancelDownloadResultFailure(cancelDownloadSync);
    v10 = _MAClientLog(@"V2");
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = MAStringForMACancelDownloadResult(cancelDownloadSync);
        v19 = 134218242;
        v20 = cancelDownloadSync;
        v21 = 2114;
        v22 = v12;
        v13 = "[WARNING] Could not cancel v1 download: %lld %{public}@";
        v14 = v11;
        v15 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_197AD5000, v14, v15, v13, &v19, 0x16u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = MAStringForMACancelDownloadResult(cancelDownloadSync);
      v19 = 134218242;
      v20 = cancelDownloadSync;
      v21 = 2114;
      v22 = v12;
      v13 = "Successful cancel v1 download: %lld %{public}@";
      v14 = v11;
      v15 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_9;
    }
  }

  if (error)
  {
    v16 = v6;
    *error = v6;
  }

  v17 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)purge:(id)purge
{
  purgeCopy = purge;
  v4 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_197AD5000, v4, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", buf, 2u);
  }

  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __17__ASAsset_purge___block_invoke;
  block[3] = &unk_1E74CA590;
  v8 = purgeCopy;
  v6 = purgeCopy;
  dispatch_async(v5, block);
}

void __17__ASAsset_purge___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = _ASErrorForV1Deprecation(@"purge");
    (*(v1 + 16))(v1, v2);
  }
}

- (BOOL)purgeAndReturnError:(id *)error
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = _ASErrorForV1Deprecation(@"purgeAndReturnError");
  v5 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_ERROR, "[WARNING] Could not purge asset: %{public}@", &v9, 0xCu);
  }

  if (error)
  {
    v6 = v4;
    *error = v4;
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)_getLocalAttribute:(id)attribute
{
  v17 = *MEMORY[0x1E69E9840];
  attributeCopy = attribute;
  maAsset = [(ASAsset *)self maAsset];

  if (maAsset)
  {
    maAsset2 = [(ASAsset *)self maAsset];
    attributes = [maAsset2 attributes];
    maAsset = [attributes objectForKeyedSubscript:attributeCopy];
  }

  if ([attributeCopy isEqualToString:@"LocalURL"])
  {
    maAsset3 = [(ASAsset *)self maAsset];
    getLocalFileUrl = [maAsset3 getLocalFileUrl];

    maAsset = getLocalFileUrl;
  }

  if (!maAsset && ([attributeCopy isEqualToString:@"__DownloadState"] & 1) == 0)
  {
    v10 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = attributeCopy;
      v15 = 2114;
      v16 = @"MAAsset did have have attribute";
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, "Could not get attribute '%{public}@': %{public}@", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return maAsset;
}

- (ASAsset)initWithAssetType:(id)type attributes:(id)attributes
{
  typeCopy = type;
  attributesCopy = attributes;
  v13.receiver = self;
  v13.super_class = ASAsset;
  v9 = [(ASAsset *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetType, type);
    objc_storeStrong(&v10->_attributes, attributes);
    v11 = [[MAAsset alloc] initWithAttributes:attributesCopy];
    [(ASAsset *)v10 setMaAsset:v11];
  }

  return v10;
}

- (ASAsset)initWithMAAsset:(id)asset
{
  assetCopy = asset;
  v15.receiver = self;
  v15.super_class = ASAsset;
  v5 = [(ASAsset *)&v15 init];
  v6 = v5;
  if (v5)
  {
    [(ASAsset *)v5 setMaAsset:assetCopy];
    assetType = [assetCopy assetType];
    assetType = v6->_assetType;
    v6->_assetType = assetType;

    v9 = MEMORY[0x1E695DF90];
    attributes = [(MAAsset *)v6->maAsset attributes];
    v11 = [v9 dictionaryWithDictionary:attributes];

    if ([assetCopy wasLocal])
    {
      v12 = @"Downloaded";
    }

    else if ([assetCopy state] == 4)
    {
      v12 = @"Downloading";
    }

    else
    {
      v12 = @"NotDownloaded";
    }

    [(NSDictionary *)v11 setObject:v12 forKeyedSubscript:@"__DownloadState"];
    attributes = v6->_attributes;
    v6->_attributes = v11;
  }

  return v6;
}

- (void)setClientName:(id)name
{
  nameCopy = name;
  clientName = self->_clientName;
  p_clientName = &self->_clientName;
  if (clientName != nameCopy)
  {
    v8 = nameCopy;
    objc_storeStrong(p_clientName, name);
    nameCopy = v8;
  }
}

- (NSDictionary)fullAttributes
{
  v11 = *MEMORY[0x1E69E9840];
  maAsset = [(ASAsset *)self maAsset];

  if (maAsset)
  {
    maAsset2 = [(ASAsset *)self maAsset];
    attributes = [maAsset2 attributes];
  }

  else
  {
    v6 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = 0;
      _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_DEFAULT, "Could not get asset attributes: %{public}@", &v9, 0xCu);
    }

    attributes = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return attributes;
}

- (id)identifier
{
  maAsset = [(ASAsset *)self maAsset];
  assetId = [maAsset assetId];

  return assetId;
}

- (BOOL)isPresentOnDisk
{
  maAsset = [(ASAsset *)self maAsset];
  wasLocal = [maAsset wasLocal];

  return wasLocal;
}

@end