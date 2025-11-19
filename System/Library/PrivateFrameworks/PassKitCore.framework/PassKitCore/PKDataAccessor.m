@interface PKDataAccessor
- (BOOL)remoteAssetsDownloadedForSEIDs:(id)a3;
- (NSBundle)bundle;
- (NSData)archiveData;
- (NSData)manifestHash;
- (NSData)serializedFileWrapper;
- (id)content;
- (id)dataForBundleResource:(id)a3;
- (id)dataForBundleResourceNamed:(id)a3 withExtension:(id)a4;
- (id)dataForBundleResources:(id)a3;
- (id)dictionary;
- (id)displayProfileOfType:(int64_t)a3;
- (id)imageSetForType:(int64_t)a3 screenScale:(double)a4 suffix:(id)a5 displayProfile:(id)a6 preheat:(BOOL)a7;
- (id)resourceValueForKey:(id)a3;
- (void)contentWithCompletion:(id)a3;
- (void)dictionaryWithCompletion:(id)a3;
- (void)downloadRemoteAssetsWithCloudStoreCoordinatorDelegate:(id)a3 seids:(id)a4 completion:(id)a5;
- (void)downloadRemoteAssetsWithConfiguration:(id)a3 completion:(id)a4;
- (void)downloadRemoteAssetsWithScreenScale:(double)a3 suffix:(id)a4 cloudStoreCoordinatorDelegate:(id)a5 seids:(id)a6 completion:(id)a7;
- (void)imageSetForType:(int64_t)a3 screenScale:(double)a4 suffix:(id)a5 displayProfile:(id)a6 preheat:(BOOL)a7 withCompletion:(id)a8;
- (void)noteShared;
- (void)requestUpdateWithCompletion:(id)a3;
- (void)revocationStatusWithCompletion:(id)a3;
- (void)updateSettings:(unint64_t)a3;
@end

@implementation PKDataAccessor

- (id)content
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__73;
  v14 = __Block_byref_object_dispose__73;
  v15 = 0;
  v3 = dispatch_semaphore_create(0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__PKDataAccessor_content__block_invoke;
  v7[3] = &unk_1E79E02C0;
  v9 = &v10;
  v4 = v3;
  v8 = v4;
  [(PKDataAccessor *)self contentWithCompletion:v7];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __25__PKDataAccessor_content__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)dictionary
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__73;
  v14 = __Block_byref_object_dispose__73;
  v15 = 0;
  v3 = dispatch_semaphore_create(0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__PKDataAccessor_dictionary__block_invoke;
  v7[3] = &unk_1E79E02E8;
  v9 = &v10;
  v4 = v3;
  v8 = v4;
  [(PKDataAccessor *)self dictionaryWithCompletion:v7];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __28__PKDataAccessor_dictionary__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)imageSetForType:(int64_t)a3 screenScale:(double)a4 suffix:(id)a5 displayProfile:(id)a6 preheat:(BOOL)a7
{
  v7 = a7;
  v12 = a5;
  v13 = a6;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__73;
  v25 = __Block_byref_object_dispose__73;
  v26 = 0;
  v14 = dispatch_semaphore_create(0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__PKDataAccessor_imageSetForType_screenScale_suffix_displayProfile_preheat___block_invoke;
  v18[3] = &unk_1E79E0310;
  v20 = &v21;
  v15 = v14;
  v19 = v15;
  [(PKDataAccessor *)self imageSetForType:a3 screenScale:v12 suffix:v13 displayProfile:v7 preheat:v18 withCompletion:a4];
  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  v16 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v16;
}

void __76__PKDataAccessor_imageSetForType_screenScale_suffix_displayProfile_preheat___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)noteShared
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = 136315394;
    v6 = "[PKDataAccessor noteShared]";
    v7 = 2114;
    v8 = v4;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "WARNING: Method '%s' in class '%{public}@' not overridden but called.", &v5, 0x16u);
  }
}

- (void)updateSettings:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 136315394;
    v7 = "[PKDataAccessor updateSettings:]";
    v8 = 2114;
    v9 = v5;
    _os_log_error_impl(&dword_1AD337000, v3, OS_LOG_TYPE_ERROR, "WARNING: Method '%s' in class '%{public}@' not overridden but called.", &v6, 0x16u);
  }
}

- (void)revocationStatusWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0, 0);
  }
}

- (void)requestUpdateWithCompletion:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 136315394;
    v8 = "[PKDataAccessor requestUpdateWithCompletion:]";
    v9 = 2114;
    v10 = v6;
    _os_log_error_impl(&dword_1AD337000, v4, OS_LOG_TYPE_ERROR, "WARNING: Method '%s' in class '%{public}@' not overridden but called.", &v7, 0x16u);
  }

  if (v3)
  {
    v3[2](v3, 0);
  }
}

- (void)dictionaryWithCompletion:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 136315394;
    v8 = "[PKDataAccessor dictionaryWithCompletion:]";
    v9 = 2114;
    v10 = v6;
    _os_log_error_impl(&dword_1AD337000, v4, OS_LOG_TYPE_ERROR, "WARNING: Method '%s' in class '%{public}@' not overridden but called.", &v7, 0x16u);
  }

  if (v3)
  {
    v3[2](v3, 0);
  }
}

- (void)contentWithCompletion:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 136315394;
    v8 = "[PKDataAccessor contentWithCompletion:]";
    v9 = 2114;
    v10 = v6;
    _os_log_error_impl(&dword_1AD337000, v4, OS_LOG_TYPE_ERROR, "WARNING: Method '%s' in class '%{public}@' not overridden but called.", &v7, 0x16u);
  }

  if (v3)
  {
    v3[2](v3, 0);
  }
}

- (void)imageSetForType:(int64_t)a3 screenScale:(double)a4 suffix:(id)a5 displayProfile:(id)a6 preheat:(BOOL)a7 withCompletion:(id)a8
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = a8;
  v13 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = 136315394;
    v17 = "[PKDataAccessor imageSetForType:screenScale:suffix:displayProfile:preheat:withCompletion:]";
    v18 = 2114;
    v19 = v15;
    _os_log_error_impl(&dword_1AD337000, v13, OS_LOG_TYPE_ERROR, "WARNING: Method '%s' in class '%{public}@' not overridden but called.", &v16, 0x16u);
  }

  if (v12)
  {
    v12[2](v12, 0);
  }
}

- (id)resourceValueForKey:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 136315394;
    v8 = "[PKDataAccessor resourceValueForKey:]";
    v9 = 2114;
    v10 = v6;
    _os_log_error_impl(&dword_1AD337000, v3, OS_LOG_TYPE_ERROR, "WARNING: Method '%s' in class '%{public}@' not overridden but called.", &v7, 0x16u);
  }

  return 0;
}

- (NSData)manifestHash
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 136315394;
    v7 = "[PKDataAccessor manifestHash]";
    v8 = 2114;
    v9 = v5;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "WARNING: Method '%s' in class '%{public}@' not overridden but called.", &v6, 0x16u);
  }

  return 0;
}

- (NSData)archiveData
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 136315394;
    v7 = "[PKDataAccessor archiveData]";
    v8 = 2114;
    v9 = v5;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "WARNING: Method '%s' in class '%{public}@' not overridden but called.", &v6, 0x16u);
  }

  return 0;
}

- (NSData)serializedFileWrapper
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 136315394;
    v7 = "[PKDataAccessor serializedFileWrapper]";
    v8 = 2114;
    v9 = v5;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "WARNING: Method '%s' in class '%{public}@' not overridden but called.", &v6, 0x16u);
  }

  return 0;
}

- (NSBundle)bundle
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 136315394;
    v7 = "[PKDataAccessor bundle]";
    v8 = 2114;
    v9 = v5;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "WARNING: Method '%s' in class '%{public}@' not overridden but called.", &v6, 0x16u);
  }

  return 0;
}

- (id)dataForBundleResourceNamed:(id)a3 withExtension:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 136315394;
    v9 = "[PKDataAccessor dataForBundleResourceNamed:withExtension:]";
    v10 = 2114;
    v11 = v7;
    _os_log_error_impl(&dword_1AD337000, v4, OS_LOG_TYPE_ERROR, "WARNING: Method '%s' in class '%{public}@' not overridden but called.", &v8, 0x16u);
  }

  return 0;
}

- (id)dataForBundleResource:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 136315394;
    v8 = "[PKDataAccessor dataForBundleResource:]";
    v9 = 2114;
    v10 = v6;
    _os_log_error_impl(&dword_1AD337000, v3, OS_LOG_TYPE_ERROR, "WARNING: Method '%s' in class '%{public}@' not overridden but called.", &v7, 0x16u);
  }

  return 0;
}

- (id)dataForBundleResources:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 136315394;
    v8 = "[PKDataAccessor dataForBundleResources:]";
    v9 = 2114;
    v10 = v6;
    _os_log_error_impl(&dword_1AD337000, v3, OS_LOG_TYPE_ERROR, "WARNING: Method '%s' in class '%{public}@' not overridden but called.", &v7, 0x16u);
  }

  return 0;
}

- (void)downloadRemoteAssetsWithConfiguration:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v7 = objc_alloc_init(PKDownloadRemoteAssetConfiguration);
  }

  v8 = v7;
  [(PKDownloadRemoteAssetConfiguration *)v7 screenScale];
  if (v9 == 0.0)
  {
    [(PKDownloadRemoteAssetConfiguration *)v8 setScreenScale:PKScreenScale()];
  }

  v10 = _Block_copy(v6);
  [(PKDataAccessor *)self _downloadRemoteAssetsWithConfiguration:v8 completion:v10];
}

- (BOOL)remoteAssetsDownloadedForSEIDs:(id)a3
{
  v4 = [PKDownloadRemoteAssetConfiguration configurationWithSEIDs:a3];
  LOBYTE(self) = [(PKDataAccessor *)self remoteAssetsDownloadedForConfiguration:v4];

  return self;
}

- (id)displayProfileOfType:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = 136315394;
    v8 = "[PKDataAccessor displayProfileOfType:]";
    v9 = 2114;
    v10 = v6;
    _os_log_error_impl(&dword_1AD337000, v3, OS_LOG_TYPE_ERROR, "WARNING: Method '%s' in class '%{public}@' not overridden but called.", &v7, 0x16u);
  }

  return 0;
}

- (void)downloadRemoteAssetsWithScreenScale:(double)a3 suffix:(id)a4 cloudStoreCoordinatorDelegate:(id)a5 seids:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = objc_alloc_init(PKDownloadRemoteAssetConfiguration);
  [(PKDownloadRemoteAssetConfiguration *)v16 setScreenScale:a3];
  [(PKDownloadRemoteAssetConfiguration *)v16 setSuffix:v15];

  [(PKDownloadRemoteAssetConfiguration *)v16 setCloudStoreCoordinatorDelegate:v14];
  [(PKDownloadRemoteAssetConfiguration *)v16 setSeids:v13];

  [(PKDataAccessor *)self downloadRemoteAssetsWithConfiguration:v16 completion:v12];
}

- (void)downloadRemoteAssetsWithCloudStoreCoordinatorDelegate:(id)a3 seids:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(PKDownloadRemoteAssetConfiguration);
  [(PKDownloadRemoteAssetConfiguration *)v11 setCloudStoreCoordinatorDelegate:v10];

  [(PKDownloadRemoteAssetConfiguration *)v11 setSeids:v9];
  [(PKDataAccessor *)self downloadRemoteAssetsWithConfiguration:v11 completion:v8];
}

@end