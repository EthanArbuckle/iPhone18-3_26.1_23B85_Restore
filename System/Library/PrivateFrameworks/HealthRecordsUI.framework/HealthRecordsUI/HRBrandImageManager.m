@interface HRBrandImageManager
+ (id)_fetchOrCreateSalt;
+ (id)imageManagerWithHealthRecordsStore:(id)a3;
- (HRBrandImageManager)initWithHealthRecordsStore:(id)a3;
- (NSCache)fetchedImages;
- (NSMutableDictionary)outstandingRequests;
- (id)_hashedSaltedStringFromString:(id)a3;
- (id)_logoURLForBrand:(id)a3;
- (id)_scaleKeyForCurrentDevice;
- (id)loadStoredLogoForBrand:(id)a3;
- (void)_writeImageData:(id)a3 brand:(id)a4;
- (void)dispatchResponsesForBrand:(id)a3 image:(id)a4 error:(id)a5;
- (void)fetchLogoForBrand:(id)a3 completion:(id)a4;
- (void)onMainQueue:(id)a3;
- (void)processFetchResponseWithData:(id)a3 error:(id)a4 brand:(id)a5;
- (void)retrieveLogoForBrand:(id)a3 size:(double)a4 options:(unint64_t)a5 completion:(id)a6;
@end

@implementation HRBrandImageManager

+ (id)imageManagerWithHealthRecordsStore:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithHealthRecordsStore:v4];

  return v5;
}

- (HRBrandImageManager)initWithHealthRecordsStore:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HRBrandImageManager;
  v5 = [(HRBrandImageManager *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [(HRBrandImageManager *)v5 setFileOperationQueue:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [(HRBrandImageManager *)v5 fileOperationQueue];
    [v9 setName:v8];

    v10 = [(HRBrandImageManager *)v5 fileOperationQueue];
    v11 = objc_opt_new();
    [v10 addOperation:v11];

    [(HRBrandImageManager *)v5 setHealthRecordsStore:v4];
    v12 = objc_alloc(MEMORY[0x1E69A3F68]);
    v13 = [v4 healthStore];
    v14 = [v12 initWithHealthStore:v13];
    [(HRBrandImageManager *)v5 setProviderServiceStore:v14];
  }

  return v5;
}

- (NSCache)fetchedImages
{
  fetchedImages = self->_fetchedImages;
  if (!fetchedImages)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v5 = self->_fetchedImages;
    self->_fetchedImages = v4;

    fetchedImages = self->_fetchedImages;
  }

  return fetchedImages;
}

- (NSMutableDictionary)outstandingRequests
{
  outstandingRequests = self->_outstandingRequests;
  if (!outstandingRequests)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_outstandingRequests;
    self->_outstandingRequests = v4;

    outstandingRequests = self->_outstandingRequests;
  }

  return outstandingRequests;
}

- (id)_scaleKeyForCurrentDevice
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = @"3x";
  if (v4 == 2.0)
  {
    v5 = @"2x";
  }

  if (v4 == 1.0)
  {
    return @"1x";
  }

  else
  {
    return v5;
  }
}

- (void)onMainQueue:(id)a3
{
  v6 = a3;
  v3 = [MEMORY[0x1E696ADC8] currentQueue];
  v4 = [MEMORY[0x1E696ADC8] mainQueue];

  if (v3 == v4)
  {
    v6[2]();
  }

  else
  {
    v5 = [MEMORY[0x1E696ADC8] mainQueue];
    [v5 addOperationWithBlock:v6];
  }
}

- (void)retrieveLogoForBrand:(id)a3 size:(double)a4 options:(unint64_t)a5 completion:(id)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a6;
  v11 = [(HRBrandImageManager *)self loadStoredLogoForBrand:v9];
  if (v11)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__HRBrandImageManager_retrieveLogoForBrand_size_options_completion___block_invoke;
    v17[3] = &unk_1E83DD748;
    v19 = v10;
    v18 = v11;
    [(HRBrandImageManager *)self onMainQueue:v17];

    v12 = v19;
LABEL_8:

    goto LABEL_9;
  }

  if ([v9 isLocalDevelopmentSampleBrand])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__HRBrandImageManager_retrieveLogoForBrand_size_options_completion___block_invoke_2;
    v15[3] = &unk_1E83DD770;
    v16 = v10;
    [(HRBrandImageManager *)self onMainQueue:v15];
    v12 = v16;
    goto LABEL_8;
  }

  if (v7)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__HRBrandImageManager_retrieveLogoForBrand_size_options_completion___block_invoke_3;
    v13[3] = &unk_1E83DD770;
    v14 = v10;
    [(HRBrandImageManager *)self onMainQueue:v13];
    v12 = v14;
    goto LABEL_8;
  }

  [(HRBrandImageManager *)self fetchLogoForBrand:v9 completion:v10];
LABEL_9:
}

void __68__HRBrandImageManager_retrieveLogoForBrand_size_options_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hk_error:608 description:{@"This is a develompent sample brand, not requesting logo."}];
  (*(v1 + 16))(v1, 0, v2);
}

void __68__HRBrandImageManager_retrieveLogoForBrand_size_options_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hk_error:608 description:@"Fetching brand image at most once per launch."];
  (*(v1 + 16))(v1, 0, v2);
}

- (id)loadStoredLogoForBrand:(id)a3
{
  v4 = a3;
  v5 = [v4 externalID];
  v6 = [(HRBrandImageManager *)self fetchedImages];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(HRBrandImageManager *)self _logoURLForBrand:v4];
    if (v9)
    {
      v10 = objc_alloc(MEMORY[0x1E69DCAB8]);
      v11 = [v9 path];
      v8 = [v10 initWithContentsOfFile:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)fetchLogoForBrand:(id)a3 completion:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 externalID];
  v9 = [(HRBrandImageManager *)self outstandingRequests];
  v10 = [v9 objectForKeyedSubscript:v8];

  v11 = _Block_copy(v7);
  if (v10)
  {
    [v10 addObject:v11];
  }

  else
  {
    v19[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v13 = [v12 mutableCopy];
    v14 = [(HRBrandImageManager *)self outstandingRequests];
    [v14 setObject:v13 forKeyedSubscript:v8];

    v15 = [(HRBrandImageManager *)self providerServiceStore];
    v16 = [(HRBrandImageManager *)self _scaleKeyForCurrentDevice];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __52__HRBrandImageManager_fetchLogoForBrand_completion___block_invoke;
    v17[3] = &unk_1E83DD798;
    v17[4] = self;
    v18 = v6;
    [v15 fetchLogoDataForBrand:v18 scaleKey:v16 completion:v17];
  }
}

- (void)processFetchResponseWithData:(id)a3 error:(id)a4 brand:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [MEMORY[0x1E69DCAB8] imageWithData:v8];
    if (v11)
    {
      [(HRBrandImageManager *)self _writeImageData:v8 brand:v10];
    }

    else
    {
      v16 = [MEMORY[0x1E696ABC0] hk_error:100 format:@"Image decoding error for brand"];

      v9 = v16;
    }

    [(HRBrandImageManager *)self dispatchResponsesForBrand:v10 image:v11 error:v9];
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      [HRBrandImageManager processFetchResponseWithData:v12 error:v10 brand:?];
    }

    v13 = MEMORY[0x1E696ABC0];
    v14 = HKSensitiveLogItem();
    v15 = [v13 hk_error:100 format:{@"Unable to fetch image for brand: %@", v14}];
    [(HRBrandImageManager *)self dispatchResponsesForBrand:v10 image:0 error:v15];
  }
}

- (void)dispatchResponsesForBrand:(id)a3 image:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 externalID];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__HRBrandImageManager_dispatchResponsesForBrand_image_error___block_invoke;
  v14[3] = &unk_1E83DCA90;
  v14[4] = self;
  v15 = v10;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(HRBrandImageManager *)self onMainQueue:v14];
}

void __61__HRBrandImageManager_dispatchResponsesForBrand_image_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) outstandingRequests];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v4 = [*(a1 + 32) outstandingRequests];
  [v4 removeObjectForKey:*(a1 + 40)];

  if (*(a1 + 48))
  {
    v5 = [*(a1 + 32) fetchedImages];
    [v5 setObject:*(a1 + 48) forKey:*(a1 + 40)];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_writeImageData:(id)a3 brand:(id)a4
{
  v6 = a3;
  v7 = [(HRBrandImageManager *)self _logoURLForBrand:a4];
  if (v7)
  {
    v8 = [(HRBrandImageManager *)self fileOperationQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__HRBrandImageManager__writeImageData_brand___block_invoke;
    v9[3] = &unk_1E83DD1A8;
    v10 = v6;
    v11 = v7;
    [v8 addOperationWithBlock:v9];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      [HRBrandImageManager _writeImageData:brand:];
    }
  }
}

void __45__HRBrandImageManager__writeImageData_brand___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v5 = 0;
  v3 = [v2 writeToURL:v1 options:805306369 error:&v5];
  v4 = v5;
  if ((v3 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      __45__HRBrandImageManager__writeImageData_brand___block_invoke_cold_1();
    }
  }
}

- (id)_logoURLForBrand:(id)a3
{
  v4 = [a3 externalID];
  v5 = [(HRBrandImageManager *)self _hashedSaltedStringFromString:v4];

  if (v5)
  {
    v6 = [v5 stringByAppendingPathExtension:@"png"];
    v7 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v8 = [v7 firstObject];

    v9 = [v8 stringByAppendingPathComponent:@"BrandLogos"];

    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v10 fileExistsAtPath:v9];

    if ((v11 & 1) == 0)
    {
      v12 = [MEMORY[0x1E696AC08] defaultManager];
      v18 = 0;
      v13 = [v12 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v18];
      v14 = v18;

      if ((v13 & 1) == 0)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
        {
          [HRBrandImageManager _logoURLForBrand:];
        }
      }
    }

    v15 = [v9 stringByAppendingPathComponent:v6];

    if (v15)
    {
      v16 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v15 isDirectory:0];
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
      {
        [HRBrandImageManager _logoURLForBrand:];
      }

      v16 = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      [HRBrandImageManager _logoURLForBrand:];
    }

    v16 = 0;
  }

  return v16;
}

- (id)_hashedSaltedStringFromString:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _fetchOrCreateSalt];
  if (v4)
  {
    v5 = [v3 stringByAppendingString:v4];
    v6 = [v5 dataUsingEncoding:4];
    v7 = [v6 hk_MD5];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 bytes];
      v10 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{objc_msgSend(v8, "length")}];
      if ([v8 length])
      {
        v11 = 0;
        do
        {
          [v10 appendFormat:@"%02.2hhX", *(v9 + v11++)];
        }

        while (v11 < [v8 length]);
      }

      v12 = [v10 copy];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_fetchOrCreateSalt
{
  v2 = a1;
  objc_sync_enter(v2);
  if (_fetchOrCreateSalt__salt)
  {
    v3 = _fetchOrCreateSalt__salt;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v4 setObject:*MEMORY[0x1E697B020] forKey:*MEMORY[0x1E697AFF8]];
    [v4 setObject:@"com.apple.HealthUI.BrandImageManager" forKey:*MEMORY[0x1E697AC40]];
    [v4 setObject:*MEMORY[0x1E697AC28] forKey:*MEMORY[0x1E697ABD8]];
    [v4 setObject:*MEMORY[0x1E695E4C0] forKey:*MEMORY[0x1E697AEB0]];
    v5 = *MEMORY[0x1E695E4D0];
    [v4 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697AD18]];
    [v4 setObject:v5 forKey:*MEMORY[0x1E697B318]];
    result = 0;
    v6 = SecItemCopyMatching(v4, &result);
    if (v6 != -25300 && v6)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
      {
        +[HRBrandImageManager _fetchOrCreateSalt];
      }

      v3 = 0;
    }

    else
    {
      v7 = result;
      if (result)
      {
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:result encoding:4];
        v9 = _fetchOrCreateSalt__salt;
        _fetchOrCreateSalt__salt = v8;
      }

      else
      {
        v10 = [MEMORY[0x1E696AFB0] UUID];
        v11 = [v10 UUIDString];
        v12 = _fetchOrCreateSalt__salt;
        _fetchOrCreateSalt__salt = v11;

        v9 = [v4 mutableCopy];
        v13 = [_fetchOrCreateSalt__salt dataUsingEncoding:4];
        [v9 setObject:v13 forKey:*MEMORY[0x1E697B3C0]];

        if (SecItemAdd(v9, 0))
        {
          _HKInitializeLogging();
          if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
          {
            +[HRBrandImageManager _fetchOrCreateSalt];
          }
        }
      }

      v3 = _fetchOrCreateSalt__salt;
    }
  }

  objc_sync_exit(v2);

  return v3;
}

- (void)processFetchResponseWithData:(void *)a1 error:(void *)a2 brand:.cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 externalID];
  v5 = HKSensitiveLogItem();
  v6 = HKSensitiveLogItem();
  v7 = 138412546;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1D101F000, v3, OS_LOG_TYPE_ERROR, "Unable to fetch image for brand %@. error: %{public}@", &v7, 0x16u);
}

@end