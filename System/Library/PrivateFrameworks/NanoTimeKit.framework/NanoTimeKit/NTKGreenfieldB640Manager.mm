@interface NTKGreenfieldB640Manager
- (NTKGreenfieldB640Manager)init;
- (NTKGreenfieldB640WatchFacesManagerDelegate)delegate;
- (id)_analyticsExitScreenNameForCurrentState;
- (id)_analyticsModelForAddFaceEventsForWatchFace:(id)face;
- (unint64_t)bandVariantForPairedDevice;
- (void)_cancelLibraryTimeoutTimer;
- (void)_decodeWatchFacesUrls:(id)urls;
- (void)_handleB640WatchFaceManagerDidFinishWithError:(id)error watchFaceModels:(id)models;
- (void)_handleProductKitUrl:(id)url;
- (void)_libraryTimeoutTimerFired;
- (void)_moveToDecodeStateCompletedIfPossible;
- (void)_setLibraryState:(unint64_t)state;
- (void)_startLibraryTimeoutTimer;
- (void)_updateComplicationForDecodedRecipe:(id)recipe installedItemIds:(id)ids installedBundleIds:(id)bundleIds;
- (void)decodeUrl:(id)url sourceApplicationBundleIdentifier:(id)identifier;
- (void)faceCollectionDidLoad:(id)load;
- (void)handleAddToMyFacesAction;
- (void)handleDidExitGreenfieldB640Flow;
- (void)handleWatchFaceSelectedActionWithSelectedIndex:(int64_t)index;
@end

@implementation NTKGreenfieldB640Manager

- (NTKGreenfieldB640Manager)init
{
  v14.receiver = self;
  v14.super_class = NTKGreenfieldB640Manager;
  v2 = [(NTKGreenfieldB640Manager *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.nanotimekit.NTKGreenfieldB640WatchFacesManager", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v5 = +[NTKCompanionFaceCollectionsManager sharedInstance];
    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    v7 = [v5 sharedFaceCollectionForDevice:currentDevice forCollectionIdentifier:@"LibraryFaces"];
    library = v2->_library;
    v2->_library = v7;

    v2->_state = 0;
    [(NTKFaceCollection *)v2->_library addObserver:v2];
    if ([(NTKPersistentFaceCollection *)v2->_library hasLoaded])
    {
      v9 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "B640 manager init - face library is loaded.", v13, 2u);
      }

      [(NTKGreenfieldB640Manager *)v2 _setLibraryState:2];
    }

    else
    {
      [(NTKGreenfieldB640Manager *)v2 _startLibraryTimeoutTimer];
    }

    v10 = objc_opt_new();
    productKitCatalog = v2->_productKitCatalog;
    v2->_productKitCatalog = v10;
  }

  return v2;
}

- (void)decodeUrl:(id)url sourceApplicationBundleIdentifier:(id)identifier
{
  objc_storeStrong(&self->_sourceApplicationBundleIdentifier, identifier);
  identifierCopy = identifier;
  urlCopy = url;
  lastPathComponent = [urlCopy lastPathComponent];
  scannedCodeIdentifier = self->_scannedCodeIdentifier;
  self->_scannedCodeIdentifier = lastPathComponent;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didStartDecodingWatchFaces:self];

  [(NTKGreenfieldB640Manager *)self _handleProductKitUrl:urlCopy];
}

- (void)_handleProductKitUrl:(id)url
{
  v20 = *MEMORY[0x277D85DE8];
  urlCopy = url;
  self->_state = 1;
  v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = urlCopy;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "B640 __handleProductKitUrl: %@", buf, 0xCu);
  }

  absoluteString = [urlCopy absoluteString];
  v7 = [absoluteString componentsSeparatedByString:@"="];
  lastObject = [v7 lastObject];

  v9 = [MEMORY[0x277CBEBC0] URLWithString:lastObject];
  if (([MEMORY[0x277D426C8] isProductKitURL:v9] & 1) == 0)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = 14;
LABEL_8:
    v15 = [v13 greenfield_addWatchFaceErrorWithCode:v14];
    [(NTKGreenfieldB640Manager *)self _handleB640WatchFaceManagerDidFinishWithError:v15 watchFaceModels:0];

    goto LABEL_9;
  }

  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  isPaired = [currentDevice isPaired];

  if ((isPaired & 1) == 0)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = 3;
    goto LABEL_8;
  }

  serialQueue = self->_serialQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__NTKGreenfieldB640Manager__handleProductKitUrl___block_invoke;
  v16[3] = &unk_27877E438;
  v16[4] = self;
  v17 = v9;
  dispatch_async(serialQueue, v16);

LABEL_9:
}

void __49__NTKGreenfieldB640Manager__handleProductKitUrl___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__37;
  v40[4] = __Block_byref_object_dispose__37;
  v41 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = *(*(a1 + 32) + 128);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __49__NTKGreenfieldB640Manager__handleProductKitUrl___block_invoke_16;
  v31[3] = &unk_2787841A0;
  v32 = *(a1 + 40);
  v34 = v40;
  v35 = &v36;
  v4 = v2;
  v33 = v4;
  [v3 updateCatalogWithCompletionHandler:v31];
  v5 = dispatch_time(0, 15000000000);
  dispatch_semaphore_wait(v4, v5);
  if (v37[3])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(*(a1 + 32), "bandVariantForPairedDevice")];
    v7 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v6;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "B640 device identifier is:%@", buf, 0xCu);
    }

    v8 = dispatch_semaphore_create(0);
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 32) + 128);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __49__NTKGreenfieldB640Manager__handleProductKitUrl___block_invoke_27;
    v26[3] = &unk_2787841F0;
    v11 = v9;
    v12 = *(a1 + 32);
    v27 = v11;
    v28 = v12;
    v13 = v8;
    v29 = v13;
    [v10 watchBandImageForFeatureWithURL:v11 featureString:@"band" variant:v6 completionHandler:v26];
    v14 = dispatch_time(0, 15000000000);
    dispatch_semaphore_wait(v13, v14);
    v15 = dispatch_semaphore_create(0);
    v16 = *(a1 + 40);
    v17 = *(*(a1 + 32) + 128);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __49__NTKGreenfieldB640Manager__handleProductKitUrl___block_invoke_29;
    v22[3] = &unk_278782FE0;
    v18 = v16;
    v19 = *(a1 + 32);
    v23 = v18;
    v24 = v19;
    v20 = v15;
    v25 = v20;
    [v17 watchBandFilesForFeatureWithURL:v18 featureString:@"watchfaces" completionHandler:v22];
    v21 = dispatch_time(0, 15000000000);
    dispatch_semaphore_wait(v20, v21);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__NTKGreenfieldB640Manager__handleProductKitUrl___block_invoke_21;
    block[3] = &unk_278780D18;
    block[4] = *(a1 + 32);
    block[5] = v40;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(v40, 8);
}

void __49__NTKGreenfieldB640Manager__handleProductKitUrl___block_invoke_16(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) absoluteString];
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "B640 _failed update asset catalog with bandURL:%@ error:%@", &v9, 0x16u);
    }

    v6 = [MEMORY[0x277CCA9B8] greenfield_addWatchFaceErrorWithCode:15 message:@"Failed to update asset catalog"];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t __49__NTKGreenfieldB640Manager__handleProductKitUrl___block_invoke_21(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = [MEMORY[0x277CCA9B8] greenfield_addWatchFaceErrorWithCode:15 message:@"Failed to update asset catalog"];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  v6 = *(a1 + 32);

  return [v6 _handleB640WatchFaceManagerDidFinishWithError:v2 watchFaceModels:0];
}

void __49__NTKGreenfieldB640Manager__handleProductKitUrl___block_invoke_27(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__NTKGreenfieldB640Manager__handleProductKitUrl___block_invoke_2;
  v16[3] = &unk_2787841C8;
  v17 = v9;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v18 = v10;
  v19 = v11;
  v20 = v8;
  v21 = v7;
  v22 = v12;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v16);
}

intptr_t __49__NTKGreenfieldB640Manager__handleProductKitUrl___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) absoluteString];
      v4 = *(a1 + 32);
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "B640 _failed to retrieve watch band image path and bundle with bandURL:%@ error:%@", &v6, 0x16u);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 48) + 96), *(a1 + 56));
    objc_storeStrong((*(a1 + 48) + 104), *(a1 + 64));
  }

  return dispatch_semaphore_signal(*(a1 + 72));
}

void __49__NTKGreenfieldB640Manager__handleProductKitUrl___block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__NTKGreenfieldB640Manager__handleProductKitUrl___block_invoke_2_30;
  v11[3] = &unk_278780FF8;
  v12 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v7;
  v14 = v8;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v11);
  dispatch_semaphore_signal(*(a1 + 48));
}

void __49__NTKGreenfieldB640Manager__handleProductKitUrl___block_invoke_2_30(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) absoluteString];
      v4 = *(a1 + 32);
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "B640 _failed to retrieve watch faces  with bandURL:%@ error:%@", &v8, 0x16u);
    }

    v5 = [MEMORY[0x277CCA9B8] greenfield_addWatchFaceErrorWithCode:15 message:@"Failed to retrieve watch faces"];
    [*(a1 + 48) _handleB640WatchFaceManagerDidFinishWithError:v5 watchFaceModels:0];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);

    [v6 _decodeWatchFacesUrls:v7];
  }
}

- (void)_decodeWatchFacesUrls:(id)urls
{
  urlsCopy = urls;
  v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "B640 did start to decode urls", buf, 2u);
  }

  self->_state = 2;
  if ([urlsCopy count])
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    serialQueue = self->_serialQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__NTKGreenfieldB640Manager__decodeWatchFacesUrls___block_invoke;
    v11[3] = &unk_278780FF8;
    v12 = urlsCopy;
    v13 = v7;
    v14 = v6;
    selfCopy = self;
    v9 = v6;
    v10 = v7;
    dispatch_async(serialQueue, v11);
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] greenfield_addWatchFaceErrorWithCode:15];
    [(NTKGreenfieldB640Manager *)self _handleB640WatchFaceManagerDidFinishWithError:v10 watchFaceModels:0];
  }
}

void __50__NTKGreenfieldB640Manager__decodeWatchFacesUrls___block_invoke(uint64_t a1)
{
  v110 = *MEMORY[0x277D85DE8];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = *(a1 + 32);
  v1 = [obj countByEnumeratingWithState:&v92 objects:v109 count:16];
  if (v1)
  {
    v49 = *v93;
    do
    {
      v2 = 0;
      do
      {
        if (*v93 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v92 + 1) + 8 * v2);
        v4 = dispatch_semaphore_create(0);
        v5 = [MEMORY[0x277CCAA00] defaultManager];
        v6 = NSTemporaryDirectory();
        v7 = [MEMORY[0x277CCAD78] UUID];
        v8 = [v7 UUIDString];
        v9 = [v6 stringByAppendingPathComponent:v8];

        v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
        v91 = 0;
        [v5 copyItemAtURL:v3 toURL:v10 error:&v91];
        v11 = v91;
        if (v11)
        {
          v12 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            *&buf[4] = v3;
            *&buf[12] = 2112;
            *&buf[14] = v10;
            *&buf[22] = 2112;
            v106 = v11;
            _os_log_error_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_ERROR, "Failed to copy file from Mobile Asset URL:%@ to Bridge container URL:%@ with error:%@", buf, 0x20u);
          }
        }

        v13 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v10;
          _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "B640 did start to decoding url:%@", buf, 0xCu);
        }

        v85[0] = MEMORY[0x277D85DD0];
        v85[1] = 3221225472;
        v85[2] = __50__NTKGreenfieldB640Manager__decodeWatchFacesUrls___block_invoke_39;
        v85[3] = &unk_278784218;
        v86 = v10;
        v87 = *(a1 + 40);
        v88 = *(a1 + 48);
        v89 = v5;
        v90 = v4;
        v14 = v4;
        v15 = v5;
        v16 = v10;
        [NTKGreenfieldUtilities decodeWatchFaceFromUrl:v16 completionBlock:v85];
        v17 = dispatch_time(0, 15000000000);
        dispatch_semaphore_wait(v14, v17);

        ++v2;
      }

      while (v1 != v2);
      v1 = [obj countByEnumeratingWithState:&v92 objects:v109 count:16];
    }

    while (v1);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v106 = __Block_byref_object_copy__37;
  v107 = __Block_byref_object_dispose__37;
  v108 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__37;
  v83 = __Block_byref_object_dispose__37;
  v84 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__37;
  v77 = __Block_byref_object_dispose__37;
  v78 = 0;
  v18 = dispatch_semaphore_create(0);
  v19 = +[NTKGreenfieldCompanionAppInstallationMonitor sharedMonitor];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __50__NTKGreenfieldB640Manager__decodeWatchFacesUrls___block_invoke_43;
  v68[3] = &unk_278783340;
  v70 = buf;
  v71 = &v79;
  v72 = &v73;
  v20 = v18;
  v69 = v20;
  [v19 fetchInstalledAppsOnWatchWithCompletionBlock:v68];
  v21 = dispatch_time(0, 15000000000);
  dispatch_semaphore_wait(v20, v21);
  if (!v74[5] && *(*&buf[8] + 40) && v80[5])
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v45 = *(a1 + 48);
    v37 = [v45 countByEnumeratingWithState:&v56 objects:v96 count:{16, v20, v19}];
    if (v37)
    {
      v38 = *v57;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v57 != v38)
          {
            objc_enumerationMutation(v45);
          }

          v40 = *(a1 + 56);
          v41 = [*(*(&v56 + 1) + 8 * i) decodedRecipe];
          [v40 _updateComplicationForDecodedRecipe:v41 installedItemIds:*(*&buf[8] + 40) installedBundleIds:v80[5]];
        }

        v37 = [v45 countByEnumeratingWithState:&v56 objects:v96 count:16];
      }

      while (v37);
    }
  }

  else
  {
    v22 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v74[5];
      v24 = *(*&buf[8] + 40);
      v25 = v80[5];
      *v99 = 138412802;
      v100 = v23;
      v101 = 2112;
      v102 = v24;
      v103 = 2112;
      v104 = v25;
      _os_log_impl(&dword_22D9C5000, v22, OS_LOG_TYPE_DEFAULT, "Setting all complications to nil, error:%@, localResultsItemIds:%@, installedBundleIds:%@", v99, 0x20u);
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v45 = *(a1 + 48);
    v26 = [v45 countByEnumeratingWithState:&v64 objects:v98 count:{16, v20, v19}];
    if (v26)
    {
      v46 = *v65;
      do
      {
        obja = v26;
        for (j = 0; j != obja; j = j + 1)
        {
          if (*v65 != v46)
          {
            objc_enumerationMutation(v45);
          }

          v28 = [*(*(&v64 + 1) + 8 * j) decodedRecipe];
          v29 = [v28 complicationSlotToTemplateMapping];
          v62 = 0u;
          v63 = 0u;
          v61 = 0u;
          v60 = 0u;
          v50 = v29;
          v30 = [v29 allKeys];
          v31 = [v30 countByEnumeratingWithState:&v60 objects:v97 count:16];
          if (v31)
          {
            v32 = *v61;
            do
            {
              for (k = 0; k != v31; ++k)
              {
                if (*v61 != v32)
                {
                  objc_enumerationMutation(v30);
                }

                v34 = *(*(&v60 + 1) + 8 * k);
                v35 = [v28 watchFace];
                v36 = +[NTKComplication nullComplication];
                [v35 setComplication:v36 forSlot:v34];
              }

              v31 = [v30 countByEnumeratingWithState:&v60 objects:v97 count:16];
            }

            while (v31);
          }
        }

        v26 = [v45 countByEnumeratingWithState:&v64 objects:v98 count:16];
      }

      while (v26);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__NTKGreenfieldB640Manager__decodeWatchFacesUrls___block_invoke_46;
  block[3] = &unk_27877E238;
  v51 = *(a1 + 48);
  v42 = v51.i64[0];
  v54 = vextq_s8(v51, v51, 8uLL);
  v55 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v79, 8);

  _Block_object_dispose(buf, 8);
}

void __50__NTKGreenfieldB640Manager__decodeWatchFacesUrls___block_invoke_39(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "B640 did finish decoding url:%@ with error:%@", buf, 0x16u);
  }

  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  else if (v5)
  {
    v9 = [[NTKGreenfieldB640WatchFaceModel alloc] initWithDecodedRecipe:v5];
    [*(a1 + 48) addObject:v9];
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 56);
  v14 = 0;
  [v11 removeItemAtURL:v10 error:&v14];
  v12 = v14;
  if (v12)
  {
    v13 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __50__NTKGreenfieldB640Manager__decodeWatchFacesUrls___block_invoke_39_cold_1((a1 + 32), v12, v13);
    }
  }

  dispatch_semaphore_signal(*(a1 + 64));
}

void __50__NTKGreenfieldB640Manager__decodeWatchFacesUrls___block_invoke_43(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
  v11 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(*(a1 + 56) + 8) + 40);
    v13 = *(*(*(a1 + 40) + 8) + 40);
    v14 = *(*(*(a1 + 48) + 8) + 40);
    v15 = 138412802;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "B640 did finish fetching installed apps with error:%@, installedItemIds:%@, installedBundleIds:%@", &v15, 0x20u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __50__NTKGreenfieldB640Manager__decodeWatchFacesUrls___block_invoke_46(uint64_t a1)
{
  *(*(a1 + 32) + 72) = 3;
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = [*(a1 + 48) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = v5;

  v8 = *(a1 + 32);

  return [v8 _moveToDecodeStateCompletedIfPossible];
}

- (void)_updateComplicationForDecodedRecipe:(id)recipe installedItemIds:(id)ids installedBundleIds:(id)bundleIds
{
  v39 = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  idsCopy = ids;
  bundleIdsCopy = bundleIds;
  watchFace = [recipeCopy watchFace];
  device = [watchFace device];
  v12 = NTKRestrictedComplicationsForDevice(device);

  v13 = objc_opt_new();
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __100__NTKGreenfieldB640Manager__updateComplicationForDecodedRecipe_installedItemIds_installedBundleIds___block_invoke;
  v31[3] = &unk_278783318;
  v14 = watchFace;
  v32 = v14;
  v25 = v12;
  v33 = v25;
  v26 = recipeCopy;
  v34 = v26;
  v15 = bundleIdsCopy;
  v35 = v15;
  v16 = idsCopy;
  v36 = v16;
  v17 = v13;
  v37 = v17;
  [v14 enumerateComplicationSlotsWithBlock:v31];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      v22 = 0;
      do
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v27 + 1) + 8 * v22);
        v24 = [NTKComplication nullComplication:v25];
        [v14 setComplication:v24 forSlot:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v27 objects:v38 count:16];
    }

    while (v20);
  }
}

void __100__NTKGreenfieldB640Manager__updateComplicationForDecodedRecipe_installedItemIds_installedBundleIds___block_invoke(id *a1, void *a2)
{
  v17 = a2;
  v3 = [a1[4] complicationForSlot:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 complication];

    v3 = v4;
  }

  if ([v3 complicationType])
  {
    v5 = [v3 appIdentifier];
    v6 = NTKCanAddInternalComplicationWithBundleId(v5);

    if (!v6 || ([a1[5] containsIndex:{objc_msgSend(v3, "complicationType")}] & 1) != 0)
    {
      goto LABEL_6;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_7;
      }

      v11 = [a1[6] complicationSlotToItemIdMapping];
      v12 = [v11 objectForKeyedSubscript:v17];

      if (v12 && [v12 intValue])
      {
        v13 = [a1[8] containsObject:v12];

        if (v13)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v14 = [a1[6] complicationSlotToBundleIdMapping];
        v15 = [v14 objectForKeyedSubscript:v17];

        if (v15)
        {
          v16 = [a1[7] containsObject:v15];

          if (v16)
          {
            goto LABEL_7;
          }
        }

        else
        {
        }
      }

LABEL_6:
      [a1[9] addObject:v17];
      goto LABEL_7;
    }

    v7 = [a1[4] preferredComplicationFamilyForComplication:v3 withSlot:v17];
    v8 = +[NTKBundleComplicationManager sharedManager];
    v9 = [a1[4] device];
    v10 = [v8 dataSourceClassForBundleComplication:v3 withFamily:v7 andDevice:v9 factorInMigration:1];

    if (!v10)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (void)_moveToDecodeStateCompletedIfPossible
{
  v62 = *MEMORY[0x277D85DE8];
  if (self->_state != 3)
  {
    v11 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      return;
    }

    state = self->_state;
    *buf = 134217984;
    v57 = state;
    v13 = "B640 waiting for decode completion with decoding state: %lu.";
LABEL_8:
    _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
    goto LABEL_9;
  }

  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  isPaired = [currentDevice isPaired];

  if ((isPaired & 1) == 0)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = 3;
    goto LABEL_12;
  }

  currentDevice2 = [MEMORY[0x277CBBAE8] currentDevice];
  v6 = [currentDevice2 supportsPDRCapability:569066848];

  if ((v6 & 1) == 0)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = 12;
    goto LABEL_12;
  }

  currentDevice3 = [MEMORY[0x277CBBAE8] currentDevice];
  isTinker = [currentDevice3 isTinker];

  if (!isTinker)
  {
    libraryState = self->_libraryState;
    if (libraryState != 1)
    {
      if (!libraryState)
      {
        v11 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_9;
        }

        v16 = self->_libraryState;
        *buf = 134217984;
        v57 = v16;
        v13 = "B640 waiting for library to load, library state is: %lu.";
        goto LABEL_8;
      }

      if ([(NTKPersistentFaceCollection *)self->_library hasLoaded])
      {
        v11 = objc_opt_new();
        v47 = [MEMORY[0x277CBEB18] arrayWithArray:self->_watchFacesDecodeErrors];
        v45 = objc_opt_new();
        v17 = objc_alloc_init(NTKGreenfieldAddWatchFaceManager);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v18 = self->_watchFacesModels;
        v19 = [(NSArray *)v18 countByEnumeratingWithState:&v52 objects:v61 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v53;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v53 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v52 + 1) + 8 * i);
              decodedRecipe = [v23 decodedRecipe];
              v25 = [(NTKGreenfieldAddWatchFaceManager *)v17 canAddWatchFaceFromDecodedRecipe:decodedRecipe toLibrary:self->_library];
              v26 = v11;
              if (v25)
              {
                [v47 addObject:v25];
                v26 = v45;
              }

              [v26 addObject:v23];
            }

            v20 = [(NSArray *)v18 countByEnumeratingWithState:&v52 objects:v61 count:16];
          }

          while (v20);
        }

        if ([v11 count])
        {
          v27 = [[NTKGreenfieldB640Model alloc] initWithWatchFaceModels:v11 error:0 bandImagePath:self->_bandImagePath bandImageBundle:self->_bandImageBundle];
          greenfieldB640Model = self->_greenfieldB640Model;
          self->_greenfieldB640Model = v27;

          v29 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
          v30 = v47;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22D9C5000, v29, OS_LOG_TYPE_DEFAULT, "B640 did finish to decode urls", buf, 2u);
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained greenfieldB640WatchFacesManager:self updateStateToSelectWatchFacesState:self->_greenfieldB640Model];

          self->_state = 4;
          v32 = v45;
        }

        else
        {
          v30 = v47;
          if ([v47 count])
          {
            firstObject = [v47 firstObject];
            code = [firstObject code];
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v35 = v47;
            v36 = [v35 countByEnumeratingWithState:&v48 objects:v60 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v49;
              while (2)
              {
                for (j = 0; j != v37; ++j)
                {
                  if (*v49 != v38)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v40 = *(*(&v48 + 1) + 8 * j);
                  if (code != [v40 code])
                  {
                    v41 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                    {
                      code2 = [v40 code];
                      *buf = 134218240;
                      v57 = code;
                      v58 = 2048;
                      v59 = code2;
                      _os_log_impl(&dword_22D9C5000, v41, OS_LOG_TYPE_DEFAULT, "B640 encountered different error codes errorCode:%ld and code:%ld:", buf, 0x16u);
                    }

                    v43 = [MEMORY[0x277CCA9B8] greenfield_addWatchFaceErrorWithCode:16];

                    firstObject = v43;
                    goto LABEL_48;
                  }
                }

                v37 = [v35 countByEnumeratingWithState:&v48 objects:v60 count:16];
                if (v37)
                {
                  continue;
                }

                break;
              }

LABEL_48:
              v30 = v47;
            }
          }

          else
          {
            firstObject = [MEMORY[0x277CCA9B8] greenfield_addWatchFaceErrorWithCode:16];
          }

          selfCopy = self;
          v32 = v45;
          [(NTKGreenfieldB640Manager *)selfCopy _handleB640WatchFaceManagerDidFinishWithError:firstObject watchFaceModels:v45, v45];
        }

        goto LABEL_9;
      }
    }

    v14 = [MEMORY[0x277CCA9B8] greenfield_addWatchFaceErrorWithCode:9 message:@"Library failed to load."];
    goto LABEL_13;
  }

  v9 = MEMORY[0x277CCA9B8];
  v10 = 13;
LABEL_12:
  v14 = [v9 greenfield_addWatchFaceErrorWithCode:v10];
LABEL_13:
  v46 = v14;
  [NTKGreenfieldB640Manager _handleB640WatchFaceManagerDidFinishWithError:"_handleB640WatchFaceManagerDidFinishWithError:watchFaceModels:" watchFaceModels:?];
}

- (void)_startLibraryTimeoutTimer
{
  v3 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "B640 _startLibraryTimeoutTimer", buf, 2u);
  }

  [(NTKGreenfieldB640Manager *)self _setLibraryState:0];
  [(NSTimer *)self->_libraryTimeoutTimer invalidate];
  objc_initWeak(buf, self);
  v4 = MEMORY[0x277CBEBB8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__NTKGreenfieldB640Manager__startLibraryTimeoutTimer__block_invoke;
  v7[3] = &unk_278782A78;
  objc_copyWeak(&v8, buf);
  v5 = [v4 scheduledTimerWithTimeInterval:0 repeats:v7 block:10.0];
  libraryTimeoutTimer = self->_libraryTimeoutTimer;
  self->_libraryTimeoutTimer = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __53__NTKGreenfieldB640Manager__startLibraryTimeoutTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _libraryTimeoutTimerFired];
}

- (void)_libraryTimeoutTimerFired
{
  v3 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(NTKGreenfieldB640Manager *)v3 _libraryTimeoutTimerFired];
  }

  [(NTKGreenfieldB640Manager *)self _cancelLibraryTimeoutTimer];
  if ([(NTKPersistentFaceCollection *)self->_library hasLoaded])
  {
    v4 = 2;
  }

  else
  {
    v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "B640 timer fired and library did not loaded.", v6, 2u);
    }

    v4 = 1;
  }

  [(NTKGreenfieldB640Manager *)self _setLibraryState:v4];
}

- (void)_cancelLibraryTimeoutTimer
{
  v3 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "B640 _cancelLibraryTimeoutTimer", v5, 2u);
  }

  [(NSTimer *)self->_libraryTimeoutTimer invalidate];
  libraryTimeoutTimer = self->_libraryTimeoutTimer;
  self->_libraryTimeoutTimer = 0;
}

- (void)faceCollectionDidLoad:(id)load
{
  v4 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "B640 faceCollectionDidLoad", v5, 2u);
  }

  [(NTKGreenfieldB640Manager *)self _cancelLibraryTimeoutTimer];
  [(NTKGreenfieldB640Manager *)self _setLibraryState:2];
}

- (void)_setLibraryState:(unint64_t)state
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_libraryState - 1 > 1)
  {
    self->_libraryState = state;
    v7 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      libraryState = self->_libraryState;
      v9 = 134217984;
      stateCopy = libraryState;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "B640 library state updated to: %lu", &v9, 0xCu);
    }

    if (self->_libraryState - 1 <= 1)
    {
      [(NTKGreenfieldB640Manager *)self _moveToDecodeStateCompletedIfPossible];
    }
  }

  else
  {
    v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_libraryState;
      v9 = 134218240;
      stateCopy = state;
      v11 = 2048;
      v12 = v6;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "B640 setLibraryState called with state: %lu, when current state is: %lu", &v9, 0x16u);
    }
  }
}

- (void)_handleB640WatchFaceManagerDidFinishWithError:(id)error watchFaceModels:(id)models
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  modelsCopy = models;
  state = self->_state;
  v10 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  v11 = os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEFAULT);
  if (state == 5)
  {
    if (v11)
    {
      v13 = 138412290;
      v14 = errorCopy;
      _os_log_impl(&dword_22D9C5000, &v10->super, OS_LOG_TYPE_DEFAULT, "B640 did tried to present another error while NTKGreenfieldB640ManagerStateError: %@", &v13, 0xCu);
    }
  }

  else
  {
    if (v11)
    {
      v13 = 138412290;
      v14 = errorCopy;
      _os_log_impl(&dword_22D9C5000, &v10->super, OS_LOG_TYPE_DEFAULT, "B640 _handleB640WatchFaceManagerDidFinishWithError: %@", &v13, 0xCu);
    }

    objc_storeStrong(&self->_error, error);
    self->_state = 5;
    v10 = [[NTKGreenfieldB640Model alloc] initWithWatchFaceModels:modelsCopy error:errorCopy bandImagePath:self->_bandImagePath bandImageBundle:self->_bandImageBundle];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained greenfieldB640WatchFacesManager:self updateStateToError:v10];
  }
}

- (void)handleAddToMyFacesAction
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(NTKGreenfieldAddWatchFaceManager);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  watchFaceModels = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
  v5 = [watchFaceModels countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v30 != v7)
      {
        objc_enumerationMutation(watchFaceModels);
      }

      v9 = *(*(&v29 + 1) + 8 * v8);
      if ([v9 isSelected])
      {
        decodedRecipe = [v9 decodedRecipe];
        v11 = [(NTKGreenfieldAddWatchFaceManager *)v3 canAddWatchFaceFromDecodedRecipe:decodedRecipe toLibrary:self->_library];

        if (v11)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [watchFaceModels countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  watchFaceModels2 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
  v13 = [watchFaceModels2 count];

  if (v13 - 1 >= 0)
  {
    do
    {
      --v13;
      watchFaceModels3 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
      v15 = [watchFaceModels3 objectAtIndex:v13];

      if ([v15 isSelected])
      {
        decodedRecipe2 = [v15 decodedRecipe];
        watchFace = [decodedRecipe2 watchFace];
        v18 = [watchFace copy];

        if (![v18 origin])
        {
          [v18 setOrigin:13];
        }

        [(NTKFaceCollection *)self->_library appendFace:v18 suppressingCallbackToObserver:0];
        [(NTKFaceCollection *)self->_library setSelectedFace:v18 suppressingCallbackToObserver:0];
        selectedUUID = [(NTKFaceCollection *)self->_library selectedUUID];
        addedFaceID = self->_addedFaceID;
        self->_addedFaceID = selectedUUID;

        if ([v18 editedState] == 2)
        {
          lastEditedDate = [v18 lastEditedDate];
          [v18 setCreationDate:lastEditedDate];
        }

        else
        {
          date = [MEMORY[0x277CBEAA8] date];
          [v18 setCreationDate:date];

          [v18 setEditedState:1];
        }

        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __52__NTKGreenfieldB640Manager_handleAddToMyFacesAction__block_invoke;
        v27[3] = &unk_278781568;
        v28 = v18;
        v23 = v18;
        [v23 enumerateVisibleComplicationSlotsForCurrentConfigurationWithBlock:v27];
        v24 = [v23 copy];
        watchFaceAddedToLibrary = self->_watchFaceAddedToLibrary;
        self->_watchFaceAddedToLibrary = v24;
      }
    }

    while (v13 > 0);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didFinishAddingWatchFaceToLibrary:self];
}

void __52__NTKGreenfieldB640Manager_handleAddToMyFacesAction__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) complicationForSlot:a2];
  [v2 handleAddedFromFaceSharing];
}

- (void)handleWatchFaceSelectedActionWithSelectedIndex:(int64_t)index
{
  v25 = *MEMORY[0x277D85DE8];
  watchFaceModels = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
  v6 = [watchFaceModels count];

  if ((index & 0x8000000000000000) == 0 && v6 > index)
  {
    watchFaceModels2 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
    v8 = [watchFaceModels2 objectAtIndex:index];

    [v8 setIsSelected:{objc_msgSend(v8, "isSelected") ^ 1}];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    watchFaceModels3 = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
    v10 = [watchFaceModels3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(watchFaceModels3);
          }

          v12 += [*(*(&v20 + 1) + 8 * i) isSelected];
        }

        v11 = [watchFaceModels3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    if (v12)
    {
      v16 = [(NTKFaceCollection *)self->_library numberOfFaces]+ v12;
      if (v16 <= NTKFaceLibraryMaxFaceCountForDevice(currentDevice))
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained greenfieldB640WatchFacesManager:self didSelectWatchFaceAtIndex:index];
      }

      else
      {
        [v8 setIsSelected:{objc_msgSend(v8, "isSelected") ^ 1}];
        v17 = [MEMORY[0x277CCA9B8] greenfield_addWatchFaceErrorWithCode:5];
        v18 = objc_loadWeakRetained(&self->_delegate);
        [v18 greenfieldB640WatchFacesManager:self didSelectWatchFaceWithError:v17];
      }
    }

    else
    {
      [v8 setIsSelected:1];
    }
  }
}

- (void)handleDidExitGreenfieldB640Flow
{
  if (self->_error)
  {
    watchFaceModels = [(NTKGreenfieldB640Model *)self->_greenfieldB640Model watchFaceModels];
    firstObject = [watchFaceModels firstObject];

    decodedRecipe = [firstObject decodedRecipe];
    watchFace = [decodedRecipe watchFace];
    v9 = [(NTKGreenfieldB640Manager *)self _analyticsModelForAddFaceEventsForWatchFace:watchFace];

    [v9 setError:self->_error];
    NTKSubmitAnalyticsForErrorAddFaceFlow(v9);
  }

  else if (self->_addedFaceID)
  {
    v9 = [(NTKGreenfieldB640Manager *)self _analyticsModelForAddFaceEventsForWatchFace:self->_watchFaceAddedToLibrary];
    NTKSubmitAnalyticsForAddSharedFace(v9);
  }

  else
  {
    watchFace2 = [(NTKGreenfieldDecodedRecipe *)self->_selectedRecipe watchFace];
    v9 = [(NTKGreenfieldB640Manager *)self _analyticsModelForAddFaceEventsForWatchFace:watchFace2];

    _analyticsExitScreenNameForCurrentState = [(NTKGreenfieldB640Manager *)self _analyticsExitScreenNameForCurrentState];
    [v9 setAddFaceFlowExitScreenName:_analyticsExitScreenNameForCurrentState];

    NTKSubmitAnalyticsForExitAddSharedFaceFlow(v9);
  }
}

- (id)_analyticsExitScreenNameForCurrentState
{
  state = self->_state;
  if (state > 4)
  {
    return 0;
  }

  else
  {
    return off_278784238[state];
  }
}

- (id)_analyticsModelForAddFaceEventsForWatchFace:(id)face
{
  faceCopy = face;
  v5 = objc_alloc_init(NTKGreenfieldAnalyticsModel);
  [(NTKGreenfieldAnalyticsModel *)v5 setWatchFace:faceCopy];

  if (self->_sourceApplicationBundleIdentifier)
  {
    sourceApplicationBundleIdentifier = self->_sourceApplicationBundleIdentifier;
  }

  else
  {
    sourceApplicationBundleIdentifier = @"com.apple.mpn";
  }

  [(NTKGreenfieldAnalyticsModel *)v5 setDistributionMechanism:sourceApplicationBundleIdentifier];
  [(NTKGreenfieldAnalyticsModel *)v5 setScannedCodeIdentifier:self->_scannedCodeIdentifier];

  return v5;
}

- (unint64_t)bandVariantForPairedDevice
{
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  deviceCategory = [currentDevice deviceCategory];
  if ((deviceCategory - 3) >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = deviceCategory - 2;
  }

  return v4;
}

- (NTKGreenfieldB640WatchFacesManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __50__NTKGreenfieldB640Manager__decodeWatchFacesUrls___block_invoke_39_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "Failed to cleanup file at URL:%@ with error:%@", &v4, 0x16u);
}

@end