@interface PKFileDataAccessor
- (BOOL)_remoteAssetsDownloadedForScreenScale:(double)a3 seids:(id)a4 suffix:(id)a5 includeEncryptedAssets:(BOOL)a6;
- (BOOL)remoteAssetsDownloadedForConfiguration:(id)a3;
- (PKFileDataAccessor)initWithFileURL:(id)a3 error:(id *)a4 coordinator:(id)a5;
- (id)archiveData;
- (id)bundle;
- (id)content;
- (id)dataForBundleResource:(id)a3;
- (id)dataForBundleResourceNamed:(id)a3 withExtension:(id)a4;
- (id)dataForBundleResources:(id)a3;
- (id)dictionary;
- (id)displayProfileOfType:(int64_t)a3;
- (id)imageSetForType:(int64_t)a3 screenScale:(double)a4 suffix:(id)a5 displayProfile:(id)a6 preheat:(BOOL)a7;
- (id)manifestHash;
- (id)passLocalizedStringForKey:(id)a3;
- (id)remoteAssetManager;
- (id)remoteAssetManagerForSEIDs:(id)a3;
- (id)resourceValueForKey:(id)a3;
- (id)serializedFileWrapper;
- (unint64_t)fileSizeOnDisk;
- (void)_downloadRemoteAssetsWithConfiguration:(id)a3 completion:(id)a4;
- (void)contentWithCompletion:(id)a3;
- (void)dealloc;
- (void)dictionaryWithCompletion:(id)a3;
- (void)imageSetForType:(int64_t)a3 screenScale:(double)a4 suffix:(id)a5 displayProfile:(id)a6 preheat:(BOOL)a7 withCompletion:(id)a8;
- (void)revocationStatusWithCompletion:(id)a3;
@end

@implementation PKFileDataAccessor

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_ownsFileURL && self->_fileURL)
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    fileURL = self->_fileURL;
    v10 = 0;
    v5 = [v3 removeItemAtURL:fileURL error:&v10];
    v6 = v10;

    if ((v5 & 1) == 0)
    {
      v7 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_fileURL;
        *buf = 138412546;
        v12 = v8;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Couldn't remove disk representation at %@:%@", buf, 0x16u);
      }
    }
  }

  v9.receiver = self;
  v9.super_class = PKFileDataAccessor;
  [(PKFileDataAccessor *)&v9 dealloc];
}

- (id)dictionary
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  v3 = objc_autoreleasePoolPush();
  coordinator = self->_coordinator;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__PKFileDataAccessor_dictionary__block_invoke;
  v7[3] = &unk_1E79C87E8;
  v7[4] = self;
  v7[5] = &v8;
  [(PKDirectoryCoordinator *)coordinator performCoordinatedAction:v7];
  objc_autoreleasePoolPop(v3);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __32__PKFileDataAccessor_dictionary__block_invoke(uint64_t a1)
{
  v2 = PKObjectDictionary(*(*(a1 + 32) + 56));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)bundle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  coordinator = self->_coordinator;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__PKFileDataAccessor_bundle__block_invoke;
  v5[3] = &unk_1E79C87E8;
  v5[4] = self;
  v5[5] = &v6;
  [(PKDirectoryCoordinator *)coordinator performCoordinatedAction:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __28__PKFileDataAccessor_bundle__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:*(*(a1 + 32) + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (PKFileDataAccessor)initWithFileURL:(id)a3 error:(id *)a4 coordinator:(id)a5
{
  v9 = a3;
  v17 = a5;
  if (v17)
  {
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v17 = [[PKDirectoryCoordinator alloc] initWithURL:v9];
    if (!v9)
    {
LABEL_8:
      if (a4)
      {
        *a4 = PKValidationErrorWithReason(0, v10, v11, v12, v13, v14, v15, v16, v21.receiver);
      }

      v19 = 0;
      goto LABEL_11;
    }
  }

  if (!v17)
  {
    goto LABEL_8;
  }

  v21.receiver = self;
  v21.super_class = PKFileDataAccessor;
  v18 = [(PKFileDataAccessor *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_fileURL, a3);
    objc_storeStrong(&v19->_coordinator, v17);
  }

LABEL_11:

  return v19;
}

- (unint64_t)fileSizeOnDisk
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  coordinator = self->_coordinator;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__PKFileDataAccessor_fileSizeOnDisk__block_invoke;
  v5[3] = &unk_1E79C87E8;
  v5[4] = self;
  v5[5] = &v6;
  [(PKDirectoryCoordinator *)coordinator performCoordinatedAction:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __36__PKFileDataAccessor_fileSizeOnDisk__block_invoke(uint64_t a1)
{
  result = PKCalculateSizeOfFolder(*(*(a1 + 32) + 56));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)revocationStatusWithCompletion:(id)a3
{
  v4 = a3;
  coordinator = self->_coordinator;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PKFileDataAccessor_revocationStatusWithCompletion___block_invoke;
  v7[3] = &unk_1E79C86F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PKDirectoryCoordinator *)coordinator performCoordinatedAction:v7];
}

- (void)dictionaryWithCompletion:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(PKFileDataAccessor *)self dictionary];
    (*(a3 + 2))(v5, v6);
  }
}

- (id)content
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  v3 = objc_autoreleasePoolPush();
  coordinator = self->_coordinator;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__PKFileDataAccessor_content__block_invoke;
  v7[3] = &unk_1E79C87E8;
  v7[4] = self;
  v7[5] = &v8;
  [(PKDirectoryCoordinator *)coordinator performCoordinatedAction:v7];
  objc_autoreleasePoolPop(v3);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __29__PKFileDataAccessor_content__block_invoke(uint64_t a1)
{
  v2 = [PKContent createWithFileURL:*(*(a1 + 32) + 56) dataTypeIdentifier:*(*(a1 + 32) + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)contentWithCompletion:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(PKFileDataAccessor *)self content];
    (*(a3 + 2))(v5, v6);
  }
}

- (id)imageSetForType:(int64_t)a3 screenScale:(double)a4 suffix:(id)a5 displayProfile:(id)a6 preheat:(BOOL)a7
{
  v11 = a5;
  v12 = a6;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  coordinator = self->_coordinator;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __80__PKFileDataAccessor_imageSetForType_screenScale_suffix_displayProfile_preheat___block_invoke;
  v18[3] = &unk_1E79C8720;
  v22 = &v25;
  v23 = a3;
  v24 = a4;
  v14 = v11;
  v19 = v14;
  v15 = v12;
  v20 = v15;
  v21 = self;
  [(PKDirectoryCoordinator *)coordinator performCoordinatedAction:v18];
  v16 = v26[5];

  _Block_object_dispose(&v25, 8);

  return v16;
}

void __80__PKFileDataAccessor_imageSetForType_screenScale_suffix_displayProfile_preheat___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [PKImageSet imageSetForType:*(a1 + 64) screenScale:*(a1 + 32) suffix:*(a1 + 40) displayProfile:*(*(a1 + 48) + 56) fileURL:*(a1 + 72)];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v3);
}

- (void)imageSetForType:(int64_t)a3 screenScale:(double)a4 suffix:(id)a5 displayProfile:(id)a6 preheat:(BOOL)a7 withCompletion:(id)a8
{
  if (a8)
  {
    v9 = a7;
    v15 = a8;
    v16 = [(PKFileDataAccessor *)self imageSetForType:a3 screenScale:a5 suffix:a6 displayProfile:v9 preheat:a4];
    (*(a8 + 2))(v15, v16);
  }
}

- (id)resourceValueForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  coordinator = self->_coordinator;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__PKFileDataAccessor_resourceValueForKey___block_invoke;
  v9[3] = &unk_1E79C8748;
  v9[4] = self;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [(PKDirectoryCoordinator *)coordinator performCoordinatedAction:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __42__PKFileDataAccessor_resourceValueForKey___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 56);
  v3 = *(a1[6] + 8);
  obj = 0;
  [v2 getResourceValue:&obj forKey:v1 error:0];
  objc_storeStrong((v3 + 40), obj);
}

- (id)dataForBundleResourceNamed:(id)a3 withExtension:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKFileDataAccessor *)self bundle];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  coordinator = self->_coordinator;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__PKFileDataAccessor_dataForBundleResourceNamed_withExtension___block_invoke;
  v15[3] = &unk_1E79C8770;
  v10 = v8;
  v16 = v10;
  v11 = v6;
  v17 = v11;
  v12 = v7;
  v18 = v12;
  v19 = &v20;
  [(PKDirectoryCoordinator *)coordinator performCoordinatedAction:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __63__PKFileDataAccessor_dataForBundleResourceNamed_withExtension___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) URLForResource:*(a1 + 40) withExtension:*(a1 + 48)];
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v5];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)dataForBundleResource:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v4 extension];

  v7 = [(PKFileDataAccessor *)self dataForBundleResourceNamed:v5 withExtension:v6];

  return v7;
}

- (id)dataForBundleResources:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v5];
    v7 = objc_autoreleasePoolPush();
    v8 = [(PKFileDataAccessor *)self bundle];
    coordinator = self->_coordinator;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__PKFileDataAccessor_dataForBundleResources___block_invoke;
    v13[3] = &unk_1E79C8798;
    v14 = v4;
    v15 = v8;
    v10 = v6;
    v16 = v10;
    v11 = v8;
    [(PKDirectoryCoordinator *)coordinator performCoordinatedAction:v13];

    objc_autoreleasePoolPop(v7);
    if ([v10 count])
    {
      v5 = [v10 copy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void __45__PKFileDataAccessor_dataForBundleResources___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 name];
        v10 = [v7 extension];
        v11 = [v8 URLForResource:v9 withExtension:v10];

        v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v11];
        if (v12)
        {
          [*(a1 + 48) setObject:v12 forKeyedSubscript:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

- (id)manifestHash
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  coordinator = self->_coordinator;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__PKFileDataAccessor_manifestHash__block_invoke;
  v5[3] = &unk_1E79C87E8;
  v5[4] = self;
  v5[5] = &v6;
  [(PKDirectoryCoordinator *)coordinator performCoordinatedAction:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __34__PKFileDataAccessor_manifestHash__block_invoke(uint64_t a1)
{
  v2 = PKManifestHash(*(*(a1 + 32) + 56));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)archiveData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  coordinator = self->_coordinator;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__PKFileDataAccessor_archiveData__block_invoke;
  v5[3] = &unk_1E79C87E8;
  v5[4] = self;
  v5[5] = &v6;
  [(PKDirectoryCoordinator *)coordinator performCoordinatedAction:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __33__PKFileDataAccessor_archiveData__block_invoke(uint64_t a1)
{
  v2 = PKArchiverZipData(*(*(a1 + 32) + 56));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)serializedFileWrapper
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  coordinator = self->_coordinator;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__PKFileDataAccessor_serializedFileWrapper__block_invoke;
  v5[3] = &unk_1E79C87C0;
  v5[4] = self;
  v5[5] = &v6;
  [(PKDirectoryCoordinator *)coordinator performCoordinatedAction:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__PKFileDataAccessor_serializedFileWrapper__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E696AC38]) initWithURL:*(*(a1 + 32) + 56) options:1 error:0];
  v5 = [v4 serializedRepresentation];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)remoteAssetsDownloadedForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 seids];
  v6 = PKScreenScale();
  v7 = [v4 includeEncryptedAssets];

  LOBYTE(self) = [(PKFileDataAccessor *)self _remoteAssetsDownloadedForScreenScale:v5 seids:0 suffix:v7 includeEncryptedAssets:v6];
  return self;
}

- (BOOL)_remoteAssetsDownloadedForScreenScale:(double)a3 seids:(id)a4 suffix:(id)a5 includeEncryptedAssets:(BOOL)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = [(PKFileDataAccessor *)self remoteAssetManagerForSEIDs:a4];
  [v11 deviceSpecificItemsForScreenScale:v10 suffix:a3];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v23 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if ((a6 || ![*(*(&v20 + 1) + 8 * i) encryptionSource]) && !objc_msgSend(v11, "assetExistsLocally:", v17, v20))
        {
          v18 = 0;
          goto LABEL_13;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_13:

  return v18;
}

- (void)_downloadRemoteAssetsWithConfiguration:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 seids];
  if (v8)
  {
    goto LABEL_9;
  }

  if (PKSecureElementIsAvailable())
  {
    if (PKRunningInPassd())
    {
      v8 = +[PKSecureElement secureElementIdentifiers];
      goto LABEL_9;
    }

    v9 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = 134349314;
      v17 = self;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKFileDataAccessor (%{public}p): downloadRemoteAssets should always be called with a seids outside of passd, falling back to downloading everything. Called from: %@", &v16, 0x16u);
    }
  }

  v8 = 0;
LABEL_9:
  v11 = [(PKFileDataAccessor *)self remoteAssetManagerForSEIDs:v8];
  if (v11)
  {
    [v6 screenScale];
    v13 = v12;
    v14 = [v6 suffix];
    v15 = [v6 cloudStoreCoordinatorDelegate];
    [v11 downloadRemoteAssetsWithScreenScale:v14 suffix:v15 cloudStoreCoordinatorDelegate:objc_msgSend(v6 ignoreRequiredAssetDownloadFailures:"ignoreRequiredAssetDownloadFailures") includeEncryptedAssets:objc_msgSend(v6 completion:{"includeEncryptedAssets"), v7, v13}];
  }

  else
  {
    v7[2](v7, 1, 0, 1.0);
  }
}

- (id)remoteAssetManagerForSEIDs:(id)a3
{
  v4 = a3;
  v5 = [[PKRemoteAssetManager alloc] initWithDirectoryCoordinator:self->_coordinator];
  [(PKRemoteAssetManager *)v5 setSeids:v4];

  return v5;
}

- (id)remoteAssetManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  coordinator = self->_coordinator;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__PKFileDataAccessor_remoteAssetManager__block_invoke;
  v5[3] = &unk_1E79C87C0;
  v5[4] = self;
  v5[5] = &v6;
  [(PKDirectoryCoordinator *)coordinator performCoordinatedAction:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__PKFileDataAccessor_remoteAssetManager__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16) != 1)
  {
    *(v2 + 16) = 1;
    v3 = [[PKRemoteAssetManager alloc] initWithDirectoryCoordinator:*(*(a1 + 32) + 8)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 24);
  v7 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v7, v6);
}

- (id)displayProfileOfType:(int64_t)a3
{
  v5 = [(PKFileDataAccessor *)self dictionary];
  v6 = MEMORY[0x1E696AAE8];
  v7 = [(PKFileDataAccessor *)self fileURL];
  v8 = [v6 bundleWithURL:v7];
  v9 = [PKDisplayProfile displayProfileOfType:a3 withDictionary:v5 bundle:v8];

  return v9;
}

- (id)passLocalizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [(PKFileDataAccessor *)self bundle];
  v6 = [v5 localizedStringForKey:v4 value:&stru_1F227FD28 table:@"pass_localizable"];

  return v6;
}

@end