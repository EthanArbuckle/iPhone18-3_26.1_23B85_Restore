@interface NTKGreenfieldAddWatchFaceManager
- (NSString)addFaceDescription;
- (NTKGreenfieldAddWatchFaceManager)init;
- (NTKGreenfieldAddWatchFaceManagerDelegate)delegate;
- (id)_addToLibraryOrUpdateFaceInLibrary;
- (id)_analyticsExitScreenNameForCurrentState;
- (id)_analyticsModelForAddFaceEvents;
- (id)_appNameFromItemId:(id)id;
- (id)_curPendingComplicationItemId;
- (id)_missingAppsDescription;
- (id)_queue_fetchLocallyAvailableAppsWithError:(id *)error;
- (id)canAddWatchFaceFromDecodedRecipe:(id)recipe toLibrary:(id)library;
- (id)skippedComplicationsSlots;
- (void)_buildUnavailableComplicationsInformationWithInstalledBundleIds:(id)ids;
- (void)_cancelLibraryTimeoutTimer;
- (void)_cleanUpDownloader;
- (void)_decodeUrl:(id)url;
- (void)_handleAddWatchFaceManagerDidFinishWithError:(id)error;
- (void)_libraryTimeoutTimerFired;
- (void)_moveAndNotifyDelegateToStartStateIfPossible;
- (void)_queue_fetchInstalledAppsOnWatchWithithCompletionBlock:(id)block;
- (void)_refreshInstalledComplicationsWithContinueBlock:(id)block;
- (void)_startDownloadWirthURL:(id)l;
- (void)_startLibraryTimeoutTimer;
- (void)_updateUIStateAndNotifyDelegate:(unint64_t)delegate;
- (void)dealloc;
- (void)decodeWatchFaceWithURL:(id)l sourceApplicationBundleIdentifier:(id)identifier;
- (void)faceCollectionDidLoad:(id)load;
- (void)handleAddToMyFacesAction;
- (void)handleContinueAction;
- (void)handleDidExitAddWatchFaceFlow;
- (void)handleDoneAction;
- (void)handleRevisitSkippedComplicationsAction;
- (void)handleSkipComplicationAction;
- (void)markComplicationAsInstalled;
- (void)openAppStore;
@end

@implementation NTKGreenfieldAddWatchFaceManager

- (NTKGreenfieldAddWatchFaceManager)init
{
  v16.receiver = self;
  v16.super_class = NTKGreenfieldAddWatchFaceManager;
  v2 = [(NTKGreenfieldAddWatchFaceManager *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    skippedPendingComplicationsItemIds = v2->_skippedPendingComplicationsItemIds;
    v2->_skippedPendingComplicationsItemIds = v3;

    v5 = [MEMORY[0x277CBEB58] set];
    installedComplicationIds = v2->_installedComplicationIds;
    v2->_installedComplicationIds = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    locallyAvailableItemIds = v2->_locallyAvailableItemIds;
    v2->_locallyAvailableItemIds = v7;

    v9 = dispatch_queue_create("com.apple.nanotimekit.NTKGreenfieldAddWatchFaceManager", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v9;

    v11 = +[NTKCompanionFaceCollectionsManager sharedInstance];
    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    v13 = [v11 sharedFaceCollectionForDevice:currentDevice forCollectionIdentifier:@"LibraryFaces"];
    library = v2->_library;
    v2->_library = v13;

    [(NTKFaceCollection *)v2->_library addObserver:v2];
    if (![(NTKPersistentFaceCollection *)v2->_library hasLoaded])
    {
      [(NTKGreenfieldAddWatchFaceManager *)v2 _startLibraryTimeoutTimer];
    }
  }

  return v2;
}

- (void)dealloc
{
  [(NTKFaceCollection *)self->_library removeObserver:self];
  [(NTKGreenfieldAddWatchFaceManager *)self _cleanUpDownloader];
  v3.receiver = self;
  v3.super_class = NTKGreenfieldAddWatchFaceManager;
  [(NTKGreenfieldAddWatchFaceManager *)&v3 dealloc];
}

- (void)decodeWatchFaceWithURL:(id)l sourceApplicationBundleIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  lCopy = l;
  identifierCopy = identifier;
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  v9 = [currentDevice supportsPDRCapability:569066848];

  if (v9)
  {
    failedError = self->_failedError;
    self->_failedError = 0;

    v11 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = lCopy;
      _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "decodeWatchFaceWithURL: %@", &v18, 0xCu);
    }

    decodingState = self->_decodingState;
    if (decodingState && decodingState != 3)
    {
      [NTKGreenfieldAddWatchFaceManager decodeWatchFaceWithURL:sourceApplicationBundleIdentifier:];
    }

    objc_storeStrong(&self->_sourceApplicationBundleIdentifier, identifier);
    [(NTKGreenfieldAddWatchFaceManager *)self _updateUIStateAndNotifyDelegate:0];
    if (self->_isLibraryTimeout)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = 9;
    }

    else
    {
      if ([lCopy isFileURL])
      {
        [(NTKGreenfieldAddWatchFaceManager *)self _decodeUrl:lCopy];
        goto LABEL_10;
      }

      scheme = [lCopy scheme];
      v17 = [scheme isEqualToString:@"watchface"];

      if (v17)
      {
        [(NTKGreenfieldAddWatchFaceManager *)self _startDownloadWirthURL:lCopy];
        goto LABEL_10;
      }

      v13 = MEMORY[0x277CCA9B8];
      v14 = 0;
    }
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = 12;
  }

  v15 = [v13 greenfield_addWatchFaceErrorWithCode:v14];
  [(NTKGreenfieldAddWatchFaceManager *)self _handleAddWatchFaceManagerDidFinishWithError:v15];

LABEL_10:
}

- (void)_decodeUrl:(id)url
{
  v11 = *MEMORY[0x277D85DE8];
  urlCopy = url;
  v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = urlCopy;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "_decodeUrl: %@", buf, 0xCu);
  }

  self->_decodingState = 2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__NTKGreenfieldAddWatchFaceManager__decodeUrl___block_invoke;
  v7[3] = &unk_2787832A0;
  v7[4] = self;
  v8 = urlCopy;
  v6 = urlCopy;
  [NTKGreenfieldUtilities decodeWatchFaceFromUrl:v6 completionBlock:v7];
}

void __47__NTKGreenfieldAddWatchFaceManager__decodeUrl___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "_decodeUrl completed: decodedRecipe: %@ decodedError: %@", buf, 0x16u);
  }

  v9 = *(a1 + 32);
  if (!v6 || v7)
  {
    *(v9 + 16) = 0;
    [*(a1 + 32) _handleAddWatchFaceManagerDidFinishWithError:v7];
  }

  else
  {
    objc_storeStrong((v9 + 8), a2);
    v10 = [MEMORY[0x277CBBAE8] currentDevice];
    v11 = [v10 isPaired];

    if (v11)
    {
      v12 = [MEMORY[0x277CBBAE8] currentDevice];
      v13 = [v12 isTinker];

      if (!v13)
      {
        v17 = *(a1 + 32);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __47__NTKGreenfieldAddWatchFaceManager__decodeUrl___block_invoke_318;
        v18[3] = &unk_27877DB10;
        v18[4] = v17;
        [v17 _refreshInstalledComplicationsWithContinueBlock:v18];
        goto LABEL_16;
      }

      v14 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __47__NTKGreenfieldAddWatchFaceManager__decodeUrl___block_invoke_cold_2();
      }

      v15 = [MEMORY[0x277CCA9B8] greenfield_addWatchFaceErrorWithCode:13];
      [*(a1 + 32) _handleAddWatchFaceManagerDidFinishWithError:v15];
    }

    else
    {
      v16 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __47__NTKGreenfieldAddWatchFaceManager__decodeUrl___block_invoke_cold_1();
      }

      v15 = [MEMORY[0x277CCA9B8] greenfield_addWatchFaceErrorWithCode:3];
      [*(a1 + 32) _handleAddWatchFaceManagerDidFinishWithError:v15];
      [*(a1 + 32) _cancelLibraryTimeoutTimer];
    }
  }

LABEL_16:
}

- (void)_startDownloadWirthURL:(id)l
{
  v16 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = lCopy;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "_startDownloadWirthURL: %@", buf, 0xCu);
  }

  self->_decodingState = 1;
  v6 = [[NTKGreenfieldDownloader alloc] initWithWatchFaceURL:lCopy];
  downloader = self->_downloader;
  self->_downloader = v6;

  objc_initWeak(buf, self);
  v8 = self->_downloader;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__NTKGreenfieldAddWatchFaceManager__startDownloadWirthURL___block_invoke;
  v10[3] = &unk_2787832C8;
  v9 = lCopy;
  v11 = v9;
  objc_copyWeak(&v13, buf);
  selfCopy = self;
  [(NTKGreenfieldDownloader *)v8 downloadWithCompletionBlock:v10];
  objc_destroyWeak(&v13);

  objc_destroyWeak(buf);
}

void __59__NTKGreenfieldAddWatchFaceManager__startDownloadWirthURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "_startDownloadWirthURL: %@ completed: %@", &v12, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
      [v10 _decodeUrl:v11];
    }

    else
    {
      WeakRetained[2] = 0;
      [WeakRetained _cleanUpDownloader];
      [*(a1 + 40) _handleAddWatchFaceManagerDidFinishWithError:v6];
    }
  }
}

- (void)_cleanUpDownloader
{
  [(NTKGreenfieldDownloader *)self->_downloader cancelDownload];
  [(NTKGreenfieldDownloader *)self->_downloader downloadCleanUp];
  downloader = self->_downloader;
  self->_downloader = 0;
}

- (void)handleAddToMyFacesAction
{
  if (self->_uiState == 1)
  {
    v8 = v2;
    v9 = v3;
    v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "StartState: handleAddToMyFacesAction", v7, 2u);
    }

    _addToLibraryOrUpdateFaceInLibrary = [(NTKGreenfieldAddWatchFaceManager *)self _addToLibraryOrUpdateFaceInLibrary];
    [(NTKGreenfieldAddWatchFaceManager *)self _handleAddWatchFaceManagerDidFinishWithError:_addToLibraryOrUpdateFaceInLibrary];
  }
}

- (void)handleContinueAction
{
  uiState = self->_uiState;
  if (uiState != 2)
  {
    if (uiState != 1)
    {
      return;
    }

    v4 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "NTKGreenfieldAddWatchFaceUIStateStart: handleContinueAction", buf, 2u);
    }

    if ([(NSMutableSet *)self->_unavailableComplicationsSlots count])
    {
      selfCopy2 = self;
      v6 = 2;
LABEL_14:
      [(NTKGreenfieldAddWatchFaceManager *)selfCopy2 _updateUIStateAndNotifyDelegate:v6];
      return;
    }

    if (self->_totalNonInstalledAppCount < 1)
    {
      return;
    }

LABEL_13:
    selfCopy2 = self;
    v6 = 3;
    goto LABEL_14;
  }

  v7 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "NTKGreenfieldAddWatchFaceUIStateComplicationsNotAvailable: handleContinueAction", v9, 2u);
  }

  if (self->_totalNonInstalledAppCount >= 1)
  {
    goto LABEL_13;
  }

  _addToLibraryOrUpdateFaceInLibrary = [(NTKGreenfieldAddWatchFaceManager *)self _addToLibraryOrUpdateFaceInLibrary];
  if (_addToLibraryOrUpdateFaceInLibrary)
  {
    [(NTKGreenfieldAddWatchFaceManager *)self _handleAddWatchFaceManagerDidFinishWithError:_addToLibraryOrUpdateFaceInLibrary];
  }

  else
  {
    [(NTKGreenfieldAddWatchFaceManager *)self _updateUIStateAndNotifyDelegate:4];
  }
}

- (void)handleDoneAction
{
  if (self->_uiState == 4)
  {
    v7 = v2;
    v8 = v3;
    v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "CompletedState: handleDoneAction", v6, 2u);
    }

    [(NTKGreenfieldAddWatchFaceManager *)self _handleAddWatchFaceManagerDidFinishWithError:0];
  }
}

- (void)handleRevisitSkippedComplicationsAction
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_uiState == 4)
  {
    v3 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      _curPendingComplicationItemId = [(NTKGreenfieldAddWatchFaceManager *)self _curPendingComplicationItemId];
      *buf = 138412290;
      v7 = _curPendingComplicationItemId;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "handleRevisitSkippedComplicationsAction: current complication id: %@", buf, 0xCu);
    }

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __75__NTKGreenfieldAddWatchFaceManager_handleRevisitSkippedComplicationsAction__block_invoke;
    v5[3] = &unk_27877DB10;
    v5[4] = self;
    [(NTKGreenfieldAddWatchFaceManager *)self _refreshInstalledComplicationsWithContinueBlock:v5];
  }
}

uint64_t __75__NTKGreenfieldAddWatchFaceManager_handleRevisitSkippedComplicationsAction__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) remainingComplicationsToInstallCount] > 0)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  v3 = *(a1 + 32);

  return [v3 _updateUIStateAndNotifyDelegate:v2];
}

- (void)handleSkipComplicationAction
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_uiState == 3)
  {
    _curPendingComplicationItemId = [(NTKGreenfieldAddWatchFaceManager *)self _curPendingComplicationItemId];
    if (_curPendingComplicationItemId)
    {
      [(NSMutableSet *)self->_skippedPendingComplicationsItemIds addObject:_curPendingComplicationItemId];
      [(NSMutableArray *)self->_orderedPendingComplicationsItemIds removeObject:_curPendingComplicationItemId];
      ++self->_viewedNonInstalledAppCount;
    }

    _curPendingComplicationItemId2 = [(NTKGreenfieldAddWatchFaceManager *)self _curPendingComplicationItemId];
    v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = _curPendingComplicationItemId;
      v9 = 2112;
      v10 = _curPendingComplicationItemId2;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "handleSkipComplicationAction current complication id: %@, nextComplication id: %@", &v7, 0x16u);
    }

    if (_curPendingComplicationItemId2)
    {
      [(NTKGreenfieldAddWatchFaceManager *)self _updateUIStateAndNotifyDelegate:3];
    }

    else
    {
      _addToLibraryOrUpdateFaceInLibrary = [(NTKGreenfieldAddWatchFaceManager *)self _addToLibraryOrUpdateFaceInLibrary];
      if (_addToLibraryOrUpdateFaceInLibrary)
      {
        [(NTKGreenfieldAddWatchFaceManager *)self _handleAddWatchFaceManagerDidFinishWithError:_addToLibraryOrUpdateFaceInLibrary];
      }

      else
      {
        [(NTKGreenfieldAddWatchFaceManager *)self _updateUIStateAndNotifyDelegate:4];
      }
    }
  }
}

- (id)skippedComplicationsSlots
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(NSMutableSet *)self->_skippedPendingComplicationsItemIds copy];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        complicationSlotToItemIdMapping = [(NTKGreenfieldDecodedRecipe *)self->_decodedRecipe complicationSlotToItemIdMapping];
        v11 = [complicationSlotToItemIdMapping allKeysForObject:v9];

        if (v11)
        {
          [v3 addObjectsFromArray:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  allObjects = [(NSMutableSet *)self->_unavailableComplicationsSlots allObjects];
  [v3 addObjectsFromArray:allObjects];

  allObjects2 = [v3 allObjects];

  return allObjects2;
}

- (void)openAppStore
{
  totalNonInstalledAppCount = self->_totalNonInstalledAppCount;
  if (totalNonInstalledAppCount)
  {
    if (totalNonInstalledAppCount == 1 && [(NSMutableArray *)self->_orderedPendingComplicationsItemIds count]== 1)
    {
      firstObject = [(NSMutableArray *)self->_orderedPendingComplicationsItemIds firstObject];
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"itms-apps://itunes.apple.com/app/id%@", firstObject];
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      v6 = [MEMORY[0x277CBEBC0] URLWithString:v4];
      [mEMORY[0x277D75128] openURL:v6 options:MEMORY[0x277CBEC10] completionHandler:0];
    }

    else
    {
      serialQueue = self->_serialQueue;

      dispatch_async(serialQueue, &__block_literal_global_101);
    }
  }
}

void __48__NTKGreenfieldAddWatchFaceManager_openAppStore__block_invoke()
{
  v0 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v0 openApplicationWithBundleID:@"com.apple.AppStore"];
}

- (NSString)addFaceDescription
{
  watchFace = [(NTKGreenfieldDecodedRecipe *)self->_decodedRecipe watchFace];
  _missingAppsDescription = [(NTKGreenfieldAddWatchFaceManager *)self _missingAppsDescription];
  if (([watchFace isUsingConfigurationModifiedForThisDevice] & 1) != 0 || -[NTKGreenfieldDecodedRecipe wasModifiedForThisDevice](self->_decodedRecipe, "wasModifiedForThisDevice"))
  {
    if (_missingAppsDescription)
    {
      v5 = NTKClockFaceLocalizedString(@"GREENFIELD_ADD_WATCH_FACE_CONFIGURATION_WAS_MODIFIED_AND_HAS_MISSING_APPS", 0);
      v6 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v5, _missingAppsDescription];

      goto LABEL_9;
    }

    v7 = NTKClockFaceLocalizedString(@"GREENFIELD_ADD_WATCH_FACE_CONFIGURATION_WAS_MODIFIED", 0);
    goto LABEL_8;
  }

  if (_missingAppsDescription)
  {
    v7 = _missingAppsDescription;
LABEL_8:
    v6 = v7;
    goto LABEL_9;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)_missingAppsDescription
{
  watchFace = [(NTKGreenfieldDecodedRecipe *)self->_decodedRecipe watchFace];
  if (self->_totalNonInstalledSlotCount == 1)
  {
    v4 = @"GREENFIELD_ADD_WATCH_FACE_A_COMPLICATION";
    v5 = @"a complication";
  }

  else
  {
    v4 = @"GREENFIELD_ADD_WATCH_FACE_COMPLICATIONS";
    v5 = @"complications";
  }

  v6 = NTKClockFaceLocalizedString(v4, v5);
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"GREENFIELD_MISSING_APP_COUNT_DESCRIPTION_%ld", self->_totalNonInstalledAppCount];
  v8 = NTKClockFaceLocalizedString(v7, @"one app");
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__NTKGreenfieldAddWatchFaceManager__missingAppsDescription__block_invoke;
  aBlock[3] = &unk_2787832F0;
  aBlock[4] = self;
  v9 = v6;
  v20 = v9;
  v10 = v8;
  v21 = v10;
  v11 = _Block_copy(aBlock);
  if ([watchFace faceStyle] == 22)
  {
    if (NTKPhotosIsCustomPhotosFace(watchFace))
    {
      resourceDirectory = [watchFace resourceDirectory];
      v13 = [NTKPhotosReader readerForResourceDirectory:resourceDirectory];

      v14 = v11[2](v11, [v13 count], @"GREENFIELD_ADD_WATCH_FACE_PHOTOS_COUNT");

      goto LABEL_16;
    }
  }

  else
  {
    if ([watchFace faceStyle] == 23 && objc_msgSend(watchFace, "treatAsUsingCustomAsset"))
    {
      v14 = v11[2](v11, 1, @"GREENFIELD_ADD_WATCH_FACE_KALEIDOSCOPE_COUNT");
      goto LABEL_16;
    }

    totalNonInstalledAppCount = self->_totalNonInstalledAppCount;
    if (totalNonInstalledAppCount)
    {
      if (totalNonInstalledAppCount == 1)
      {
        v16 = @"GREENFIELD_MISSING_APP_DEFAULT_MISSING_SINGULAR";
      }

      else
      {
        v16 = @"GREENFIELD_MISSING_APP_DEFAULT_MISSING_PLURAL";
      }

      v17 = NTKClockFaceLocalizedString(v16, @"This face includes %@ from %@ in the App Store.");
      v14 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v17, v9, v10];

      goto LABEL_16;
    }
  }

  v14 = 0;
LABEL_16:

  return v14;
}

id __59__NTKGreenfieldAddWatchFaceManager__missingAppsDescription__block_invoke(void *a1, uint64_t a2, void *a3)
{
  if (*(a1[4] + 176))
  {
    v5 = NTKClockFaceLocalizedString(a3, @"a photo");
    v6 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v5, a2];
    v7 = NTKClockFaceLocalizedString(@"GREENFIELD_MISSING_APP_PHOTOS_APP_MISSING_IOS", @"This face contains %@ and %@ from %@ in the App Store.");
    v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v7, v6, a1[5], a1[6]];
  }

  else
  {
    v5 = NTKClockFaceLocalizedString(@"GREENFIELD_PHOTOS_COUNT_DESCRIPTION", @"nil");
    v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v5, a2];
  }

  return v8;
}

- (void)_buildUnavailableComplicationsInformationWithInstalledBundleIds:(id)ids
{
  idsCopy = ids;
  watchFace = [(NTKGreenfieldDecodedRecipe *)self->_decodedRecipe watchFace];
  v6 = [MEMORY[0x277CBEB58] set];
  v7 = [MEMORY[0x277CBEB58] set];
  device = [watchFace device];
  v9 = NTKRestrictedComplicationsForDevice(device);

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __100__NTKGreenfieldAddWatchFaceManager__buildUnavailableComplicationsInformationWithInstalledBundleIds___block_invoke;
  v19[3] = &unk_278783318;
  v20 = watchFace;
  v21 = v9;
  selfCopy = self;
  v23 = idsCopy;
  v10 = v6;
  v24 = v10;
  v11 = v7;
  v25 = v11;
  v12 = idsCopy;
  v13 = v9;
  v14 = watchFace;
  [v14 enumerateComplicationSlotsWithBlock:v19];
  unavailableComplicationsSlots = self->_unavailableComplicationsSlots;
  self->_unavailableComplicationsSlots = v10;
  v16 = v10;

  unavailableComplicationsNames = self->_unavailableComplicationsNames;
  self->_unavailableComplicationsNames = v11;
  v18 = v11;
}

void __100__NTKGreenfieldAddWatchFaceManager__buildUnavailableComplicationsInformationWithInstalledBundleIds___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [*(a1 + 32) complicationForSlot:?];
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

    if (!v6 || ([*(a1 + 40) containsIndex:{objc_msgSend(v3, "complicationType")}] & 1) != 0)
    {
LABEL_6:
      [*(a1 + 64) addObject:v17];
      v7 = [*(*(a1 + 48) + 8) complicationSlotToNameMapping];
      v8 = [v7 objectForKeyedSubscript:v17];

      if (v8)
      {
        [*(a1 + 72) addObject:v8];
      }

      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [*(a1 + 32) preferredComplicationFamilyForComplication:v3 withSlot:v17];
      v10 = +[NTKBundleComplicationManager sharedManager];
      v11 = [*(a1 + 32) device];
      v12 = [v10 dataSourceClassForBundleComplication:v3 withFamily:v9 andDevice:v11 factorInMigration:1];

      if (!v12)
      {
        goto LABEL_6;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v13 = [*(*(a1 + 48) + 8) complicationSlotToItemIdMapping];
        v8 = [v13 objectForKeyedSubscript:v17];

        if (v8 && [v8 intValue])
        {
LABEL_8:

          goto LABEL_9;
        }

        v14 = [*(*(a1 + 48) + 8) complicationSlotToBundleIdMapping];
        v15 = [v14 objectForKeyedSubscript:v17];

        if (!v15)
        {

          goto LABEL_6;
        }

        v16 = [*(a1 + 56) containsObject:v15];

        if ((v16 & 1) == 0)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_9:
}

- (void)_refreshInstalledComplicationsWithContinueBlock:(id)block
{
  blockCopy = block;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__NTKGreenfieldAddWatchFaceManager__refreshInstalledComplicationsWithContinueBlock___block_invoke;
  v7[3] = &unk_27877FF60;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(serialQueue, v7);
}

void __84__NTKGreenfieldAddWatchFaceManager__refreshInstalledComplicationsWithContinueBlock___block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__32;
  v60 = __Block_byref_object_dispose__32;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__32;
  v54 = __Block_byref_object_dispose__32;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__32;
  v48 = __Block_byref_object_dispose__32;
  v49 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 32);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __84__NTKGreenfieldAddWatchFaceManager__refreshInstalledComplicationsWithContinueBlock___block_invoke_389;
  v39[3] = &unk_278783340;
  v41 = &v56;
  v42 = &v50;
  v43 = &v44;
  v4 = v2;
  v40 = v4;
  [v3 _queue_fetchInstalledAppsOnWatchWithithCompletionBlock:v39];
  v5 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v4, v5);
  v6 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v57[5];
    v8 = v51[5];
    v9 = v45[5];
    *buf = 138412802;
    v63 = v7;
    v64 = 2112;
    v65 = v8;
    v66 = 2112;
    v67 = v9;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "_queue_fetchInstalledAppsOnWatchWithError: itemIds: %@  bundleIds:%@ error:%@", buf, 0x20u);
  }

  v10 = (v45 + 5);
  if (v45[5])
  {
    v11 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __84__NTKGreenfieldAddWatchFaceManager__refreshInstalledComplicationsWithContinueBlock___block_invoke_cold_1();
    }

    *(*(a1 + 32) + 16) = 0;
    v12 = [MEMORY[0x277CCA9B8] greenfield_addWatchFaceErrorWithCode:0];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__NTKGreenfieldAddWatchFaceManager__refreshInstalledComplicationsWithContinueBlock___block_invoke_391;
    block[3] = &unk_27877E438;
    block[4] = *(a1 + 32);
    v38 = v12;
    v13 = v12;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v14 = *(a1 + 32);
    obj = 0;
    v13 = [v14 _queue_fetchLocallyAvailableAppsWithError:&obj];
    objc_storeStrong(v10, obj);
    v15 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v45[5];
      *buf = 138412546;
      v63 = v13;
      v64 = 2112;
      v65 = v16;
      _os_log_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_DEFAULT, "_queue_fetchLocallyAvailableAppsWithError: itemIds: %@ error:%@", buf, 0x16u);
    }

    if (v45[5])
    {
      *(*(a1 + 32) + 16) = 0;
      v17 = [MEMORY[0x277CCA9B8] greenfield_addWatchFaceErrorWithCode:0];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __84__NTKGreenfieldAddWatchFaceManager__refreshInstalledComplicationsWithContinueBlock___block_invoke_392;
      v34[3] = &unk_27877E438;
      v34[4] = *(a1 + 32);
      v35 = v17;
      v18 = v17;
      dispatch_async(MEMORY[0x277D85CD0], v34);
    }

    else
    {
      v19 = objc_opt_new();
      v20 = dispatch_semaphore_create(0);

      v21 = [MEMORY[0x277CEC4C8] defaultService];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __84__NTKGreenfieldAddWatchFaceManager__refreshInstalledComplicationsWithContinueBlock___block_invoke_2;
      v31[3] = &unk_278783368;
      v22 = v19;
      v32 = v22;
      v4 = v20;
      v33 = v4;
      [v21 getUpdatesWithCompletionBlock:v31];

      v23 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(v4, v23);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __84__NTKGreenfieldAddWatchFaceManager__refreshInstalledComplicationsWithContinueBlock___block_invoke_3;
      v25[3] = &unk_278783390;
      v24 = *(a1 + 32);
      v29 = &v50;
      v25[4] = v24;
      v26 = v13;
      v27 = v22;
      v30 = &v56;
      v28 = *(a1 + 40);
      v18 = v22;
      dispatch_async(MEMORY[0x277D85CD0], v25);
    }
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v56, 8);
}

void __84__NTKGreenfieldAddWatchFaceManager__refreshInstalledComplicationsWithContinueBlock___block_invoke_389(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v18 = v7;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __84__NTKGreenfieldAddWatchFaceManager__refreshInstalledComplicationsWithContinueBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 updateState] != 1)
        {
          v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "storeItemIdentifier")}];
          [*(a1 + 32) addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __84__NTKGreenfieldAddWatchFaceManager__refreshInstalledComplicationsWithContinueBlock___block_invoke_3(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB58];
  v3 = [*(*(*(a1 + 64) + 8) + 40) allObjects];
  v4 = [v2 setWithArray:v3];

  v37 = v4;
  [*(a1 + 32) _buildUnavailableComplicationsInformationWithInstalledBundleIds:v4];
  objc_storeStrong((*(a1 + 32) + 104), *(a1 + 40));
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = [*(a1 + 32) decodedRecipe];
  v8 = [v7 complicationSlotToItemIdMapping];
  v9 = [v8 allKeys];

  v10 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v43;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v42 + 1) + 8 * i);
        if (([*(*(a1 + 32) + 136) containsObject:v14] & 1) == 0)
        {
          v15 = [*(a1 + 32) decodedRecipe];
          v16 = [v15 complicationSlotToItemIdMapping];
          v17 = [v16 objectForKey:v14];

          if ([v17 intValue])
          {
            if ([*(a1 + 48) containsObject:v17])
            {
              [v5 addObject:v17];
              goto LABEL_10;
            }

            if (([*(*(*(a1 + 72) + 8) + 40) containsObject:v17] & 1) == 0 && (objc_msgSend(*(*(a1 + 32) + 96), "containsObject:", v17) & 1) == 0)
            {
LABEL_10:
              [v6 addObject:v17];
            }
          }

          continue;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v11);
  }

  *(*(a1 + 32) + 168) = 1;
  *(*(a1 + 32) + 176) = [v6 count];
  v36 = v5;
  v18 = [v5 copy];
  v19 = *(a1 + 32);
  v20 = *(v19 + 112);
  *(v19 + 112) = v18;

  *(*(a1 + 32) + 128) = 0;
  v21 = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v22 = [*(a1 + 32) decodedRecipe];
  v23 = [v22 watchFace];
  v24 = [v23 orderedComplicationSlots];

  v25 = [v24 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v39;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v38 + 1) + 8 * j);
        if (([*(*(a1 + 32) + 136) containsObject:v29] & 1) == 0)
        {
          v30 = [*(a1 + 32) decodedRecipe];
          v31 = [v30 complicationSlotToItemIdMapping];
          v32 = [v31 objectForKeyedSubscript:v29];

          if (v32 && [v6 containsObject:v32])
          {
            [v21 addObject:v32];
            ++*(*(a1 + 32) + 128);
          }
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v26);
  }

  v33 = *(a1 + 32);
  v34 = *(v33 + 80);
  *(v33 + 80) = v21;
  v35 = v21;

  [*(*(a1 + 32) + 88) removeAllObjects];
  (*(*(a1 + 56) + 16))();
}

- (id)_curPendingComplicationItemId
{
  if (self->_uiState == 3)
  {
    firstObject = [(NSMutableArray *)self->_orderedPendingComplicationsItemIds firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)markComplicationAsInstalled
{
  v11 = *MEMORY[0x277D85DE8];
  _curPendingComplicationItemId = [(NTKGreenfieldAddWatchFaceManager *)self _curPendingComplicationItemId];
  if (_curPendingComplicationItemId)
  {
    [(NSMutableArray *)self->_orderedPendingComplicationsItemIds removeObject:_curPendingComplicationItemId];
    [(NSMutableSet *)self->_installedComplicationIds addObject:_curPendingComplicationItemId];
    ++self->_viewedNonInstalledAppCount;
  }

  _curPendingComplicationItemId2 = [(NTKGreenfieldAddWatchFaceManager *)self _curPendingComplicationItemId];
  v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = _curPendingComplicationItemId;
    v9 = 2112;
    v10 = _curPendingComplicationItemId2;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "markComplicationAsInstalled current complication id: %@, nextComplication id: %@", &v7, 0x16u);
  }

  if (_curPendingComplicationItemId2)
  {
    [(NTKGreenfieldAddWatchFaceManager *)self _updateUIStateAndNotifyDelegate:3];
  }

  else
  {
    _addToLibraryOrUpdateFaceInLibrary = [(NTKGreenfieldAddWatchFaceManager *)self _addToLibraryOrUpdateFaceInLibrary];
    if (_addToLibraryOrUpdateFaceInLibrary)
    {
      [(NTKGreenfieldAddWatchFaceManager *)self _handleAddWatchFaceManagerDidFinishWithError:_addToLibraryOrUpdateFaceInLibrary];
    }

    else
    {
      [(NTKGreenfieldAddWatchFaceManager *)self _updateUIStateAndNotifyDelegate:4];
    }
  }
}

- (void)_startLibraryTimeoutTimer
{
  v3 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "_startLibraryTimeoutTimer", buf, 2u);
  }

  [(NSTimer *)self->_libraryTimeoutTimer invalidate];
  objc_initWeak(buf, self);
  v4 = MEMORY[0x277CBEBB8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__NTKGreenfieldAddWatchFaceManager__startLibraryTimeoutTimer__block_invoke;
  v7[3] = &unk_278782A78;
  objc_copyWeak(&v8, buf);
  v5 = [v4 scheduledTimerWithTimeInterval:0 repeats:v7 block:5.0];
  libraryTimeoutTimer = self->_libraryTimeoutTimer;
  self->_libraryTimeoutTimer = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __61__NTKGreenfieldAddWatchFaceManager__startLibraryTimeoutTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _libraryTimeoutTimerFired];
}

- (void)_libraryTimeoutTimerFired
{
  v3 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [NTKGreenfieldAddWatchFaceManager _libraryTimeoutTimerFired];
  }

  [(NTKGreenfieldAddWatchFaceManager *)self _cancelLibraryTimeoutTimer];
  if ([(NTKPersistentFaceCollection *)self->_library hasLoaded])
  {
    [(NTKGreenfieldAddWatchFaceManager *)self _moveAndNotifyDelegateToStartStateIfPossible];
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] greenfield_addWatchFaceErrorWithCode:9];
    [(NTKGreenfieldAddWatchFaceManager *)self _handleAddWatchFaceManagerDidFinishWithError:v4];
    self->_isLibraryTimeout = 1;
  }
}

- (void)_cancelLibraryTimeoutTimer
{
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
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "faceCollectionDidLoad", v5, 2u);
  }

  [(NTKGreenfieldAddWatchFaceManager *)self _cancelLibraryTimeoutTimer];
  [(NTKGreenfieldAddWatchFaceManager *)self _moveAndNotifyDelegateToStartStateIfPossible];
}

- (void)_moveAndNotifyDelegateToStartStateIfPossible
{
  if ([(NTKPersistentFaceCollection *)self->_library hasLoaded]&& self->_decodingState == 3)
  {
    v3 = [(NTKGreenfieldAddWatchFaceManager *)self canAddWatchFaceFromDecodedRecipe:self->_decodedRecipe toLibrary:self->_library];
    v4 = v3;
    if (v3)
    {
      self->_decodingState = 0;
      [(NTKGreenfieldAddWatchFaceManager *)self _handleAddWatchFaceManagerDidFinishWithError:v3];
    }

    else
    {
      [(NTKGreenfieldAddWatchFaceManager *)self _updateUIStateAndNotifyDelegate:1];
    }
  }
}

- (void)_updateUIStateAndNotifyDelegate:(unint64_t)delegate
{
  uiState = self->_uiState;
  self->_uiState = delegate;
  if (delegate <= 1)
  {
    if (delegate)
    {
      if (delegate != 1)
      {
        return;
      }

      if ([(NTKGreenfieldAddWatchFaceManager *)self totalNonInstalledAppCount])
      {
        v7 = 0;
      }

      else
      {
        v7 = [(NSMutableSet *)self->_unavailableComplicationsSlots count]== 0;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained addWatchFaceManager:self updateStateToWelcomeWithCanAddFaceDirectly:v7];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained didStartLoadingInAddWatchFaceManager:self];
    }
  }

  else
  {
    switch(delegate)
    {
      case 2uLL:
        if ([(NSMutableSet *)self->_unavailableComplicationsNames count]== 1)
        {
          v8 = @"GREENFIELD_COMPLICATION_NOT_AVAILABLE_TITLE";
          v9 = @"Complication Not Available";
        }

        else
        {
          v8 = @"GREENFIELD_COMPLICATIONS_NOT_AVAILABLE_TITLE";
          v9 = @"Complications Not Available";
        }

        WeakRetained = NTKClockFaceLocalizedString(v8, v9);
        allObjects = [(NSMutableSet *)self->_unavailableComplicationsNames allObjects];
        skippedComplicationsSlots = [allObjects sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

        if ([skippedComplicationsSlots count] == 1)
        {
          v18 = NTKClockFaceLocalizedString(@"GREENFIELD_COMPLICATIONS_NOT_AVAILABLE_DESCRIPTION_ONE", 0);
          v19 = MEMORY[0x277CCACA8];
          v20 = [skippedComplicationsSlots objectAtIndexedSubscript:0];
          v21 = [v19 stringWithFormat:v18, v20];
        }

        else
        {
          v18 = NTKClockFaceLocalizedString(@"GREENFIELD_COMPLICATIONS_NOT_AVAILABLE_DESCRIPTION_OTHER", 0);
          v20 = [skippedComplicationsSlots mutableCopy];
          [v20 removeLastObject];
          v22 = [v20 componentsJoinedByString:{@", "}];
          lastObject = [skippedComplicationsSlots lastObject];
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:v18, v22, lastObject];
        }

        v24 = objc_loadWeakRetained(&self->_delegate);
        [v24 addWatchFaceManager:self updateStateToComplicationsNotAvailableWithSlots:self->_unavailableComplicationsSlots unavailableTitle:WeakRetained unavailableDescription:v21];

        break;
      case 3uLL:
        WeakRetained = [(NTKGreenfieldAddWatchFaceManager *)self _curPendingComplicationItemId];
        skippedComplicationsSlots = [(NTKGreenfieldAddWatchFaceManager *)self skippedComplicationsSlots];
        v11 = [(NSSet *)self->_locallyAvailableItemIds containsObject:WeakRetained];
        v12 = [(NSSet *)self->_appsThatRequireUpdatesItemIds containsObject:WeakRetained];
        v13 = 2;
        if (!v12 || !v11)
        {
          v13 = 3;
        }

        if (v12)
        {
          v14 = v13;
        }

        else
        {
          v14 = v11;
        }

        delegate = [(NTKGreenfieldAddWatchFaceManager *)self delegate];
        v16 = delegate;
        if (uiState == 4)
        {
          [delegate addWatchFaceManager:self updateStateToRevisitComplicationWithItemId:WeakRetained installMode:v14 skippedComplicationSlots:skippedComplicationsSlots];
        }

        else
        {
          [delegate addWatchFaceManager:self updateStateToAddComplicationWithItemId:WeakRetained installMode:v14 skippedComplicationSlots:skippedComplicationsSlots];
        }

        break;
      case 4uLL:
        WeakRetained = [(NTKGreenfieldAddWatchFaceManager *)self skippedComplicationsSlots];
        v5 = [(NSMutableSet *)self->_skippedPendingComplicationsItemIds count]!= 0;
        v6 = objc_loadWeakRetained(&self->_delegate);
        [v6 addWatchFaceManager:self updateStateToCompletedWithSkippedComplicationSlots:WeakRetained canRevisit:v5];

        goto LABEL_31;
      default:
        return;
    }
  }

LABEL_31:
}

- (id)_addToLibraryOrUpdateFaceInLibrary
{
  v42 = *MEMORY[0x277D85DE8];
  if (!self->_addedFaceID)
  {
    v22 = [(NTKGreenfieldAddWatchFaceManager *)self canAddWatchFaceFromDecodedRecipe:self->_decodedRecipe toLibrary:self->_library];
    if (v22)
    {
      goto LABEL_30;
    }

    if (!self->_addedFaceID)
    {
      watchFace = [(NTKGreenfieldDecodedRecipe *)self->_decodedRecipe watchFace];
      deepCopy = [watchFace deepCopy];

      if (![deepCopy origin])
      {
        [deepCopy setOrigin:12];
      }

      [(NTKFaceCollection *)self->_library appendFace:deepCopy suppressingCallbackToObserver:0];
      [(NTKFaceCollection *)self->_library setSelectedFace:deepCopy suppressingCallbackToObserver:0];
      selectedUUID = [(NTKFaceCollection *)self->_library selectedUUID];
      addedFaceID = self->_addedFaceID;
      self->_addedFaceID = selectedUUID;
    }
  }

  facesByUUID = [(NTKFaceCollection *)self->_library facesByUUID];
  v32 = [facesByUUID objectForKey:self->_addedFaceID];
  v3 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v32;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "_addFace: face in the decoded recipe: %@", buf, 0xCu);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  watchFace2 = [(NTKGreenfieldDecodedRecipe *)self->_decodedRecipe watchFace];
  orderedComplicationSlots = [watchFace2 orderedComplicationSlots];

  v6 = [orderedComplicationSlots countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    v31 = orderedComplicationSlots;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(orderedComplicationSlots);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_unavailableComplicationsSlots containsObject:v10])
        {
          v11 = +[NTKComplication nullComplication];
          [v32 setComplication:v11 forSlot:v10];
          goto LABEL_21;
        }

        watchFace3 = [(NTKGreenfieldDecodedRecipe *)self->_decodedRecipe watchFace];
        v11 = [watchFace3 complicationForSlot:v10];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          complicationSlotToItemIdMapping = [(NTKGreenfieldDecodedRecipe *)self->_decodedRecipe complicationSlotToItemIdMapping];
          v14 = [complicationSlotToItemIdMapping objectForKeyedSubscript:v10];

          if ([(NSMutableSet *)self->_skippedPendingComplicationsItemIds containsObject:v14])
          {
            v15 = +[NTKComplication nullComplication];
            [v32 setComplication:v15 forSlot:v10];
            goto LABEL_19;
          }

          if ([(NSMutableSet *)self->_installedComplicationIds containsObject:v14])
          {
            v15 = v11;
            v30 = [(NTKGreenfieldAddWatchFaceManager *)self _appNameFromItemId:v14];
            if (v30)
            {
              complication = [v15 complication];
              v16 = [NTKGreenfieldPlaceholderComplication placeholderWithComplication:complication appStoreItemId:v14 appName:v30];
            }

            else
            {
              v16 = +[NTKComplication nullComplication];
            }

            [v32 setComplication:v16 forSlot:v10];

LABEL_19:
            orderedComplicationSlots = v31;
          }
        }

LABEL_21:
      }

      v7 = [orderedComplicationSlots countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v7);
  }

  v17 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v32;
    _os_log_impl(&dword_22D9C5000, v17, OS_LOG_TYPE_DEFAULT, "_addFace: face we are going to add: %@", buf, 0xCu);
  }

  if ([v32 editedState] == 2)
  {
    lastEditedDate = [v32 lastEditedDate];
    [v32 setCreationDate:lastEditedDate];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    [v32 setCreationDate:date];

    [v32 setEditedState:1];
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __70__NTKGreenfieldAddWatchFaceManager__addToLibraryOrUpdateFaceInLibrary__block_invoke;
  v33[3] = &unk_278781568;
  v34 = v32;
  v20 = v32;
  [v20 enumerateVisibleComplicationSlotsForCurrentConfigurationWithBlock:v33];
  v21 = +[NTKGreenfieldCompanionAppInstallationMonitor sharedMonitor];
  [v21 handleAddFaceManagerDidUpdateFaceLibrary];

  v22 = 0;
LABEL_30:

  return v22;
}

void __70__NTKGreenfieldAddWatchFaceManager__addToLibraryOrUpdateFaceInLibrary__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) complicationForSlot:a2];
  [v2 handleAddedFromFaceSharing];
}

- (id)canAddWatchFaceFromDecodedRecipe:(id)recipe toLibrary:(id)library
{
  v43 = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  libraryCopy = library;
  watchFace = [recipeCopy watchFace];
  v30 = 0;
  v8 = NTKCanAddWatchFace(watchFace, libraryCopy, &v30);
  v9 = v30;

  if ((v8 & 1) == 0)
  {
    if (v9)
    {
      code = [v9 code];
    }

    else
    {
      code = 0;
    }

    v14 = v9;
    goto LABEL_9;
  }

  watchFace2 = [recipeCopy watchFace];
  shouldSanitizeFaceConfigurationWhenAddingSharedFace = [watchFace2 shouldSanitizeFaceConfigurationWhenAddingSharedFace];

  if (!shouldSanitizeFaceConfigurationWhenAddingSharedFace)
  {
    goto LABEL_10;
  }

  watchFace3 = [recipeCopy watchFace];
  v29 = v9;
  v13 = [watchFace3 sanitizeFaceConfiguration:&v29];
  v14 = v29;

  if (v13)
  {
    v9 = v14;
    goto LABEL_10;
  }

  domain = [v14 domain];
  v19 = domain;
  if (domain == @"com.apple.nanotimekit.photos")
  {
    code2 = [v14 code];

    if (code2 == 1006)
    {
      code = 7;
      goto LABEL_9;
    }
  }

  else
  {
  }

  domain2 = [v14 domain];
  v22 = domain2;
  if (domain2 != @"com.apple.nanotimekit.resourceDirectory")
  {

LABEL_25:
    code = 0;
    goto LABEL_9;
  }

  code3 = [v14 code];

  if (code3 != 2004)
  {
    goto LABEL_25;
  }

  code = 12;
LABEL_9:
  v9 = [MEMORY[0x277CCA9B8] greenfield_addWatchFaceErrorWithCode:code];

LABEL_10:
  if (v9)
  {
    v16 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      watchFace4 = [recipeCopy watchFace];
      localizedDescription = [v9 localizedDescription];
      code4 = [v9 code];
      watchFace5 = [recipeCopy watchFace];
      device = [watchFace5 device];
      *buf = 138413570;
      v32 = watchFace4;
      v33 = 2112;
      v34 = localizedDescription;
      v35 = 2048;
      v36 = code4;
      v37 = 2112;
      v38 = libraryCopy;
      v39 = 2112;
      v40 = recipeCopy;
      v41 = 2112;
      v42 = device;
      _os_log_error_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_ERROR, "Failed to add watch face %@, errorMessage %@, errorCode %ld, library %@, decodedRecipe %@, device %@", buf, 0x3Eu);
    }
  }

  return v9;
}

- (id)_appNameFromItemId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    v12 = 0;
    v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithStoreItemIdentifier:objc_msgSend(idCopy error:{"longLongValue"), &v12}];
    v5 = v12;
    if (!v4)
    {
      v6 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [NTKGreenfieldAddWatchFaceManager _appNameFromItemId:];
      }
    }

    localizedName = [v4 localizedName];
    v8 = localizedName;
    v9 = &stru_284110E98;
    if (localizedName)
    {
      v9 = localizedName;
    }

    v10 = v9;
  }

  else
  {
    v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NTKGreenfieldAddWatchFaceManager _appNameFromItemId:];
    }

    v10 = 0;
  }

  return v10;
}

- (void)_queue_fetchInstalledAppsOnWatchWithithCompletionBlock:(id)block
{
  blockCopy = block;
  dispatch_assert_queue_V2(self->_serialQueue);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__32;
  v29 = __Block_byref_object_dispose__32;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__32;
  v23 = __Block_byref_object_dispose__32;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__32;
  v17 = __Block_byref_object_dispose__32;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = +[NTKGreenfieldCompanionAppInstallationMonitor sharedMonitor];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__NTKGreenfieldAddWatchFaceManager__queue_fetchInstalledAppsOnWatchWithithCompletionBlock___block_invoke;
  v8[3] = &unk_278783340;
  v10 = &v25;
  v11 = &v19;
  v12 = &v13;
  v7 = v5;
  v9 = v7;
  [v6 fetchInstalledAppsOnWatchWithCompletionBlock:v8];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  blockCopy[2](blockCopy, v26[5], v20[5], v14[5]);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
}

void __91__NTKGreenfieldAddWatchFaceManager__queue_fetchInstalledAppsOnWatchWithithCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v18 = v7;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
  v17 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_queue_fetchLocallyAvailableAppsWithError:(id *)error
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__32;
  v26 = __Block_byref_object_dispose__32;
  v27 = [MEMORY[0x277CBEB58] set];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__32;
  v20 = __Block_byref_object_dispose__32;
  v21 = 0;
  v4 = dispatch_semaphore_create(0);
  mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  pdrDevice = [currentDevice pdrDevice];
  pairingID = [pdrDevice pairingID];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__NTKGreenfieldAddWatchFaceManager__queue_fetchLocallyAvailableAppsWithError___block_invoke;
  v12[3] = &unk_2787833B8;
  v9 = v4;
  v13 = v9;
  v14 = &v16;
  v15 = &v22;
  [mEMORY[0x277CEAF80] enumerateLocallyAvailableApplicationsForDeviceWithPairingID:pairingID options:3 withBlock:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v17[5];
  }

  v10 = [v23[5] copy];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

uint64_t __78__NTKGreenfieldAddWatchFaceManager__queue_fetchLocallyAvailableAppsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!(v5 | v6))
  {
LABEL_6:
    dispatch_semaphore_signal(*(a1 + 32));
    v9 = 0;
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __78__NTKGreenfieldAddWatchFaceManager__queue_fetchLocallyAvailableAppsWithError___block_invoke_cold_1(v7, v5, v8);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    goto LABEL_6;
  }

  v11 = [v5 storeMetadata];
  v12 = [v11 itemID];

  if (v12)
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:v12];
  }

  v9 = 1;
LABEL_7:

  return v9;
}

- (void)_handleAddWatchFaceManagerDidFinishWithError:(id)error
{
  objc_storeStrong(&self->_failedError, error);
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained addWatchFaceManager:self didFinishAddingFaceWithError:errorCopy];
}

- (id)_analyticsExitScreenNameForCurrentState
{
  v2 = self->_uiState - 1;
  if (v2 > 3)
  {
    return @"Loading";
  }

  else
  {
    return off_2787833D8[v2];
  }
}

- (void)handleDidExitAddWatchFaceFlow
{
  failedError = self->_failedError;
  _analyticsModelForAddFaceEvents = [(NTKGreenfieldAddWatchFaceManager *)self _analyticsModelForAddFaceEvents];
  v6 = _analyticsModelForAddFaceEvents;
  if (failedError)
  {
    [_analyticsModelForAddFaceEvents setError:self->_failedError];
    NTKSubmitAnalyticsForErrorAddFaceFlow(v6);
  }

  else if (self->_addedFaceID)
  {
    NTKSubmitAnalyticsForAddSharedFace(_analyticsModelForAddFaceEvents);
  }

  else
  {
    _analyticsExitScreenNameForCurrentState = [(NTKGreenfieldAddWatchFaceManager *)self _analyticsExitScreenNameForCurrentState];
    [v6 setAddFaceFlowExitScreenName:_analyticsExitScreenNameForCurrentState];

    NTKSubmitAnalyticsForExitAddSharedFaceFlow(v6);
  }
}

- (id)_analyticsModelForAddFaceEvents
{
  v3 = objc_alloc_init(NTKGreenfieldAnalyticsModel);
  watchFace = [(NTKGreenfieldDecodedRecipe *)self->_decodedRecipe watchFace];
  [(NTKGreenfieldAnalyticsModel *)v3 setWatchFace:watchFace];

  [(NTKGreenfieldAnalyticsModel *)v3 setPurchasedComplicationsItemIds:self->_installedComplicationIds];
  [(NTKGreenfieldAnalyticsModel *)v3 setSkippedComplicationsItemIds:self->_skippedPendingComplicationsItemIds];
  complicationSlotToItemIdMapping = [(NTKGreenfieldDecodedRecipe *)self->_decodedRecipe complicationSlotToItemIdMapping];
  [(NTKGreenfieldAnalyticsModel *)v3 setComplicationSlotToIdMapping:complicationSlotToItemIdMapping];

  [(NTKGreenfieldAnalyticsModel *)v3 setDistributionMechanism:self->_sourceApplicationBundleIdentifier];

  return v3;
}

- (NTKGreenfieldAddWatchFaceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __78__NTKGreenfieldAddWatchFaceManager__queue_fetchLocallyAvailableAppsWithError___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "_queue_fetchLocallyAvailableAppsWithError: error: %@, app: %@", &v3, 0x16u);
}

@end