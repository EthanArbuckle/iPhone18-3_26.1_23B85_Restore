@interface ASAsset
- (ASAsset)initWithAssetType:(id)a3 attributes:(id)a4;
- (ASAsset)initWithMAAsset:(id)a3;
- (BOOL)cancelDownloadAndReturnError:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPresentOnDisk;
- (BOOL)pauseDownloadAndReturnError:(id *)a3;
- (BOOL)purgeAndReturnError:(id *)a3;
- (BOOL)requiredDiskSpaceIsAvailable:(int64_t *)a3 error:(id *)a4;
- (BOOL)requiredDiskSpaceIsAvailableForDownloadOptions:(id)a3 requiredBytes:(int64_t *)a4 error:(id *)a5;
- (BOOL)resumeDownloadAndReturnError:(id *)a3;
- (NSDate)installDate;
- (NSDictionary)attributes;
- (NSDictionary)fullAttributes;
- (id)_getLocalAttribute:(id)a3;
- (id)assetServerUrl;
- (id)identifier;
- (int64_t)assetStateForStateString:(id)a3;
- (int64_t)garbageCollectionBehavior;
- (int64_t)state;
- (unint64_t)hash;
- (void)_downloadWithOptions:(id)a3 shouldFireCallback:(BOOL)a4;
- (void)adjustDownloadOptions:(id)a3 completion:(id)a4;
- (void)cancelDownload:(id)a3;
- (void)pauseDownload:(id)a3;
- (void)purge:(id)a3;
- (void)resumeDownload:(id)a3;
- (void)setClientName:(id)a3;
- (void)setGarbageCollectionBehavior:(int64_t)a3;
@end

@implementation ASAsset

- (unint64_t)hash
{
  v2 = [(ASAsset *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(ASAsset *)self maAsset];
      v6 = [(ASAsset *)v4 maAsset];
      v7 = v6;
      LOBYTE(v8) = 0;
      if (self->maAsset)
      {
        if (v6)
        {
          v8 = [v5 assetType];
          if (v8)
          {
            v9 = [v7 assetType];
            v10 = [v5 assetType];
            v11 = [v9 isEqualToString:v10];

            if (!v11)
            {
              goto LABEL_12;
            }

            v12 = [v5 assetId];
            if (!v12)
            {
              goto LABEL_12;
            }

            v13 = v12;
            v14 = [v7 assetId];
            v15 = [v5 assetId];
            v16 = [v14 isEqualToString:v15];

            if (v16)
            {
              LOBYTE(v8) = 1;
            }

            else
            {
LABEL_12:
              LOBYTE(v8) = 0;
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
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
  v4 = [(NSDictionary *)self->_attributes allKeys];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 hasPrefix:@"__"] & 1) == 0)
        {
          v10 = [(NSDictionary *)self->_attributes objectForKey:v9];
          [v3 setObject:v10 forKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (int64_t)assetStateForStateString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 isEqualToString:@"NotDownloaded"] & 1) == 0)
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

- (void)setGarbageCollectionBehavior:(int64_t)a3
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

- (BOOL)requiredDiskSpaceIsAvailable:(int64_t *)a3 error:(id *)a4
{
  v6 = [(ASAsset *)self maAsset];
  v7 = [v6 spaceCheck:a3];

  if (a4)
  {
    *a4 = 0;
  }

  return v7;
}

- (BOOL)requiredDiskSpaceIsAvailableForDownloadOptions:(id)a3 requiredBytes:(int64_t *)a4 error:(id *)a5
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

  if (a5)
  {
    *a5 = _ASErrorForV1Deprecation(@"requiredDiskSpaceIsAvailableForDownloadOptions");
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)adjustDownloadOptions:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_197AD5000, v5, OS_LOG_TYPE_DEFAULT, "Deprecated ASAsset API is no longer supported", v7, 2u);
  }

  if (v4)
  {
    v6 = _ASErrorForV1Deprecation(@"adjustDownloadOptions");
    v4[2](v4, v6);
  }
}

- (void)_downloadWithOptions:(id)a3 shouldFireCallback:(BOOL)a4
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
    v7 = [(ASAsset *)self identifier];
    maAsset = self->_maAsset;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__ASAsset__downloadWithOptions_shouldFireCallback___block_invoke;
    v10[3] = &unk_1E74CA608;
    v10[4] = self;
    v11 = v7;
    v9 = v7;
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

- (void)pauseDownload:(id)a3
{
  v3 = a3;
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
  v8 = v3;
  v6 = v3;
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

- (BOOL)pauseDownloadAndReturnError:(id *)a3
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

  if (a3)
  {
    v7 = v5;
    *a3 = v5;
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)resumeDownload:(id)a3
{
  v3 = a3;
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
  v8 = v3;
  v6 = v3;
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

- (BOOL)resumeDownloadAndReturnError:(id *)a3
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
  if (a3)
  {
    v7 = v5;
    *a3 = v6;
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

- (void)cancelDownload:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
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

- (BOOL)cancelDownloadAndReturnError:(id *)a3
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
    v8 = [(MAAsset *)maAsset cancelDownloadSync];
    v9 = MAIsCancelDownloadResultFailure(v8);
    v10 = _MAClientLog(@"V2");
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = MAStringForMACancelDownloadResult(v8);
        v19 = 134218242;
        v20 = v8;
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
      v12 = MAStringForMACancelDownloadResult(v8);
      v19 = 134218242;
      v20 = v8;
      v21 = 2114;
      v22 = v12;
      v13 = "Successful cancel v1 download: %lld %{public}@";
      v14 = v11;
      v15 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_9;
    }
  }

  if (a3)
  {
    v16 = v6;
    *a3 = v6;
  }

  v17 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)purge:(id)a3
{
  v3 = a3;
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
  v8 = v3;
  v6 = v3;
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

- (BOOL)purgeAndReturnError:(id *)a3
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

  if (a3)
  {
    v6 = v4;
    *a3 = v4;
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)_getLocalAttribute:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ASAsset *)self maAsset];

  if (v5)
  {
    v6 = [(ASAsset *)self maAsset];
    v7 = [v6 attributes];
    v5 = [v7 objectForKeyedSubscript:v4];
  }

  if ([v4 isEqualToString:@"LocalURL"])
  {
    v8 = [(ASAsset *)self maAsset];
    v9 = [v8 getLocalFileUrl];

    v5 = v9;
  }

  if (!v5 && ([v4 isEqualToString:@"__DownloadState"] & 1) == 0)
  {
    v10 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = v4;
      v15 = 2114;
      v16 = @"MAAsset did have have attribute";
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, "Could not get attribute '%{public}@': %{public}@", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (ASAsset)initWithAssetType:(id)a3 attributes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = ASAsset;
  v9 = [(ASAsset *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetType, a3);
    objc_storeStrong(&v10->_attributes, a4);
    v11 = [[MAAsset alloc] initWithAttributes:v8];
    [(ASAsset *)v10 setMaAsset:v11];
  }

  return v10;
}

- (ASAsset)initWithMAAsset:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ASAsset;
  v5 = [(ASAsset *)&v15 init];
  v6 = v5;
  if (v5)
  {
    [(ASAsset *)v5 setMaAsset:v4];
    v7 = [v4 assetType];
    assetType = v6->_assetType;
    v6->_assetType = v7;

    v9 = MEMORY[0x1E695DF90];
    v10 = [(MAAsset *)v6->maAsset attributes];
    v11 = [v9 dictionaryWithDictionary:v10];

    if ([v4 wasLocal])
    {
      v12 = @"Downloaded";
    }

    else if ([v4 state] == 4)
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

- (void)setClientName:(id)a3
{
  v5 = a3;
  clientName = self->_clientName;
  p_clientName = &self->_clientName;
  if (clientName != v5)
  {
    v8 = v5;
    objc_storeStrong(p_clientName, a3);
    v5 = v8;
  }
}

- (NSDictionary)fullAttributes
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(ASAsset *)self maAsset];

  if (v3)
  {
    v4 = [(ASAsset *)self maAsset];
    v5 = [v4 attributes];
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

    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)identifier
{
  v2 = [(ASAsset *)self maAsset];
  v3 = [v2 assetId];

  return v3;
}

- (BOOL)isPresentOnDisk
{
  v2 = [(ASAsset *)self maAsset];
  v3 = [v2 wasLocal];

  return v3;
}

@end