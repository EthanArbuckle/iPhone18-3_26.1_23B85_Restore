@interface DOCDownloadSettings
- (BOOL)_saveDownloadFolderItem:(id)item error:(id *)error;
- (DOCDownloadSettings)init;
- (id)_createErrorForCode:(int64_t)code localizedDescription:(id)description underlyingError:(id)error;
- (void)_createDefaultDownloadsFolderInParent:(id)parent completion:(id)completion;
- (void)_fetchAvailableProviders:(id)providers;
- (void)_fetchDefaultDownloadsFolderInParent:(id)parent completion:(id)completion;
- (void)_fetchDefaultFallbackDownloadLocationWithPreferredDomain:(id)domain createIfMissing:(BOOL)missing completion:(id)completion;
- (void)_fetchProviders:(id)providers;
- (void)_preferredProvidersIn:(id)in completion:(id)completion;
- (void)_removeCurrentDownloadsLocationFromFavorites;
- (void)_rootItemOfPreferredProviderInDomains:(id)domains completion:(id)completion;
- (void)_validatePreferredProvider:(id)provider completion:(id)completion;
- (void)fetchDefaultDownloadsLocationSettingsItem:(id)item;
- (void)fetchProvidersSuitableForDownloads:(id)downloads;
- (void)fetchSuitableLocationsForDownloads:(id)downloads;
- (void)resetDefaultDownloadsLocationItem;
- (void)setDefaultDownloadsItemForProviderDomain:(id)domain completionHandler:(id)handler;
- (void)setDefaultDownloadsLocationItem:(id)item completionHandler:(id)handler;
- (void)setDefaultDownloadsLocationURL:(id)l completionHandler:(id)handler;
- (void)setDefaultDownloadsToLocation:(id)location completionHandler:(id)handler;
@end

@implementation DOCDownloadSettings

- (DOCDownloadSettings)init
{
  v8.receiver = self;
  v8.super_class = DOCDownloadSettings;
  v2 = [(DOCDownloadSettings *)&v8 init];
  if (v2)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v5 = +[DOCManagedPermission defaultPermission];
    [v5 setHostIdentifier:bundleIdentifier];

    v6 = +[DOCNodeStartupManager shared];
    [v6 startIfNeeded];
  }

  return v2;
}

- (void)fetchDefaultDownloadsLocationSettingsItem:(id)item
{
  itemCopy = item;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__DOCDownloadSettings_fetchDefaultDownloadsLocationSettingsItem___block_invoke;
  v6[3] = &unk_278F9B570;
  v7 = itemCopy;
  v5 = itemCopy;
  [(DOCDownloadSettings *)self fetchDefaultDownloadsLocationItem:v6];
}

void __65__DOCDownloadSettings_fetchDefaultDownloadsLocationSettingsItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[DOCDownloadSettingsItem alloc] initWithFPItem:v5];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v8 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __65__DOCDownloadSettings_fetchDefaultDownloadsLocationSettingsItem___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)fetchSuitableLocationsForDownloads:(id)downloads
{
  downloadsCopy = downloads;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__DOCDownloadSettings_fetchSuitableLocationsForDownloads___block_invoke;
  v6[3] = &unk_278F9B888;
  v7 = downloadsCopy;
  v5 = downloadsCopy;
  [(DOCDownloadSettings *)self fetchProvidersSuitableForDownloads:v6];
}

void __58__DOCDownloadSettings_fetchSuitableLocationsForDownloads___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          v14 = [DOCDownloadSettingsItem alloc];
          v15 = [(DOCDownloadSettingsItem *)v14 initWithFPProviderDomain:v13, v18];
          [v7 addObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v16 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v16 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __58__DOCDownloadSettings_fetchSuitableLocationsForDownloads___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setDefaultDownloadsToLocation:(id)location completionHandler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  providerDomain = [locationCopy providerDomain];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__DOCDownloadSettings_setDefaultDownloadsToLocation_completionHandler___block_invoke;
  v11[3] = &unk_278F9C2A8;
  v12 = locationCopy;
  v13 = handlerCopy;
  v9 = locationCopy;
  v10 = handlerCopy;
  [(DOCDownloadSettings *)self setDefaultDownloadsItemForProviderDomain:providerDomain completionHandler:v11];
}

void __71__DOCDownloadSettings_setDefaultDownloadsToLocation_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[DOCDownloadSettingsItem alloc] initWithFPItem:v5];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v8 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __71__DOCDownloadSettings_setDefaultDownloadsToLocation_completionHandler___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)setDefaultDownloadsLocationURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  defaultManager = [MEMORY[0x277CC6408] defaultManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__DOCDownloadSettings_setDefaultDownloadsLocationURL_completionHandler___block_invoke;
  v11[3] = &unk_278F9C2F8;
  v11[4] = self;
  v12 = lCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = lCopy;
  [defaultManager fetchItemForURL:v10 completionHandler:v11];
}

void __72__DOCDownloadSettings_setDefaultDownloadsLocationURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__DOCDownloadSettings_setDefaultDownloadsLocationURL_completionHandler___block_invoke_2;
    v9[3] = &unk_278F9BD58;
    v7 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v5;
    v12 = *(a1 + 48);
    [v7 setDefaultDownloadsLocationItem:v11 completionHandler:v9];
  }

  else
  {
    v8 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v8 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __72__DOCDownloadSettings_setDefaultDownloadsLocationURL_completionHandler___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __72__DOCDownloadSettings_setDefaultDownloadsLocationURL_completionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v6 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __72__DOCDownloadSettings_setDefaultDownloadsLocationURL_completionHandler___block_invoke_2_cold_1(a1);
    }
  }

  v7 = [MEMORY[0x277CC6408] defaultManager];
  v8 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__DOCDownloadSettings_setDefaultDownloadsLocationURL_completionHandler___block_invoke_17;
  v11[3] = &unk_278F9C2D0;
  v12 = v8;
  v9 = *(a1 + 48);
  v13 = v5;
  v14 = v9;
  v10 = v5;
  [v7 fetchURLForItem:v12 completionHandler:v11];
}

void __72__DOCDownloadSettings_setDefaultDownloadsLocationURL_completionHandler___block_invoke_17(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v7 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __72__DOCDownloadSettings_setDefaultDownloadsLocationURL_completionHandler___block_invoke_17_cold_1(a1);
    }
  }

  v8 = [[DOCDownloadSettingsItem alloc] initWithFPItem:a1[4]];
  v9 = a1[5];
  (*(a1[6] + 16))();
}

void __85__DOCDownloadSettings_fetchDefaultDownloadsLocationItemAndCreateIfNeeded_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__DOCDownloadSettings_fetchDefaultDownloadsLocationItemAndCreateIfNeeded_completion___block_invoke_2;
  v8[3] = &unk_278F9C2A8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v6 _fetchDefaultFallbackDownloadLocationWithPreferredDomain:a3 createIfMissing:a2 completion:v8];
}

void __85__DOCDownloadSettings_fetchDefaultDownloadsLocationItemAndCreateIfNeeded_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40))
  {
    [*(a1 + 32) setCurrentDefaultDownloadsLocationItem:v5];
    if (v6)
    {
      v7 = docDownloadServiceLogHandle;
      if (!docDownloadServiceLogHandle)
      {
        DOCInitLogging();
        v7 = docDownloadServiceLogHandle;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __85__DOCDownloadSettings_fetchDefaultDownloadsLocationItemAndCreateIfNeeded_completion___block_invoke_2_cold_1();
      }

      v8 = *(*(a1 + 40) + 16);
LABEL_14:
      v8();
      goto LABEL_15;
    }

    v9 = [v5 fileURL];

    v10 = docDownloadServiceLogHandle;
    if (v9)
    {
      if (!docDownloadServiceLogHandle)
      {
        DOCInitLogging();
        v10 = docDownloadServiceLogHandle;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = v10;
        v12 = [v5 fileURL];
        *buf = 136315650;
        v19 = "[DOCDownloadSettings fetchDefaultDownloadsLocationItemAndCreateIfNeeded:completion:]_block_invoke";
        v20 = 2112;
        v21 = v5;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_249340000, v11, OS_LOG_TYPE_INFO, "%s item: %@ already has a cached URL: %@ returning immediately", buf, 0x20u);
      }

      v8 = *(*(a1 + 40) + 16);
      goto LABEL_14;
    }

    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v10 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[DOCDownloadSettings fetchDefaultDownloadsLocationItemAndCreateIfNeeded:completion:]_block_invoke";
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_249340000, v10, OS_LOG_TYPE_INFO, "%s item: %@  does not have a cached URL, fetching", buf, 0x16u);
    }

    v14 = [MEMORY[0x277CC6408] defaultManager];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __85__DOCDownloadSettings_fetchDefaultDownloadsLocationItemAndCreateIfNeeded_completion___block_invoke_21;
    v15[3] = &unk_278F9C320;
    v16 = v5;
    v17 = *(a1 + 40);
    [v14 fetchURLForItem:v16 completionHandler:v15];
  }

LABEL_15:

  v13 = *MEMORY[0x277D85DE8];
}

void __85__DOCDownloadSettings_fetchDefaultDownloadsLocationItemAndCreateIfNeeded_completion___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v7 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __85__DOCDownloadSettings_fetchDefaultDownloadsLocationItemAndCreateIfNeeded_completion___block_invoke_21_cold_1(v6, a1);
    }
  }

  v8 = docDownloadServiceLogHandle;
  if (!docDownloadServiceLogHandle)
  {
    DOCInitLogging();
    v8 = docDownloadServiceLogHandle;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v12 = 136315650;
    v13 = "[DOCDownloadSettings fetchDefaultDownloadsLocationItemAndCreateIfNeeded:completion:]_block_invoke";
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_249340000, v8, OS_LOG_TYPE_INFO, "%s fetched URL: %@ for saved downloads location item: %@", &v12, 0x20u);
  }

  v10 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void __85__DOCDownloadSettings_fetchDefaultDownloadsLocationItemAndCreateIfNeeded_completion___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = MEMORY[0x277CC6420];
    v8 = [v5 providerDomainID];
    v25 = 0;
    v9 = [v7 providerDomainWithID:v8 cachePolicy:1 error:&v25];
    v10 = v25;

    if (v10)
    {
      v11 = docDownloadServiceLogHandle;
      if (!docDownloadServiceLogHandle)
      {
        DOCInitLogging();
        v11 = docDownloadServiceLogHandle;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __85__DOCDownloadSettings_fetchDefaultDownloadsLocationItemAndCreateIfNeeded_completion___block_invoke_26_cold_1(a1, v11);
      }
    }

    if (v9 && ([v5 isTrashed] & 1) == 0 && (objc_msgSend(v9, "isHidden") & 1) == 0)
    {
      if (*(a1 + 48))
      {
        v12 = docDownloadServiceLogHandle;
        if (!docDownloadServiceLogHandle)
        {
          DOCInitLogging();
          v12 = docDownloadServiceLogHandle;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v27 = "[DOCDownloadSettings fetchDefaultDownloadsLocationItemAndCreateIfNeeded:completion:]_block_invoke";
          v28 = 2112;
          v29 = v5;
          _os_log_impl(&dword_249340000, v12, OS_LOG_TYPE_INFO, "%s Successfully fetched saved downloads location item: %@", buf, 0x16u);
        }

        [*(a1 + 40) setCurrentDefaultDownloadsLocationItem:v5];
        v13 = [v5 fileURL];

        v14 = docDownloadServiceLogHandle;
        if (v13)
        {
          if (!docDownloadServiceLogHandle)
          {
            DOCInitLogging();
            v14 = docDownloadServiceLogHandle;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = v14;
            v16 = [v5 fileURL];
            *buf = 136315650;
            v27 = "[DOCDownloadSettings fetchDefaultDownloadsLocationItemAndCreateIfNeeded:completion:]_block_invoke";
            v28 = 2112;
            v29 = v5;
            v30 = 2112;
            v31 = v16;
            _os_log_impl(&dword_249340000, v15, OS_LOG_TYPE_INFO, "%s item: %@ already has a cached URL: %@ returning immediately", buf, 0x20u);
          }

          (*(*(a1 + 48) + 16))();
        }

        else
        {
          if (!docDownloadServiceLogHandle)
          {
            DOCInitLogging();
            v14 = docDownloadServiceLogHandle;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v27 = "[DOCDownloadSettings fetchDefaultDownloadsLocationItemAndCreateIfNeeded:completion:]_block_invoke";
            v28 = 2112;
            v29 = v5;
            _os_log_impl(&dword_249340000, v14, OS_LOG_TYPE_INFO, "%s item: %@  does not have a cached URL, fetching", buf, 0x16u);
          }

          v21 = [MEMORY[0x277CC6408] defaultManager];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __85__DOCDownloadSettings_fetchDefaultDownloadsLocationItemAndCreateIfNeeded_completion___block_invoke_28;
          v22[3] = &unk_278F9C320;
          v23 = v5;
          v24 = *(a1 + 48);
          [v21 fetchURLForItem:v23 completionHandler:v22];
        }
      }

      goto LABEL_27;
    }
  }

  else
  {
    v9 = 0;
  }

  v17 = docDownloadServiceLogHandle;
  if (!docDownloadServiceLogHandle)
  {
    DOCInitLogging();
    v17 = docDownloadServiceLogHandle;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    __85__DOCDownloadSettings_fetchDefaultDownloadsLocationItemAndCreateIfNeeded_completion___block_invoke_26_cold_2();
  }

  v18 = *(a1 + 64);
  v19 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();
LABEL_27:

  v20 = *MEMORY[0x277D85DE8];
}

void __85__DOCDownloadSettings_fetchDefaultDownloadsLocationItemAndCreateIfNeeded_completion___block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v7 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __85__DOCDownloadSettings_fetchDefaultDownloadsLocationItemAndCreateIfNeeded_completion___block_invoke_21_cold_1(v6, a1);
    }
  }

  v8 = docDownloadServiceLogHandle;
  if (!docDownloadServiceLogHandle)
  {
    DOCInitLogging();
    v8 = docDownloadServiceLogHandle;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v12 = 136315650;
    v13 = "[DOCDownloadSettings fetchDefaultDownloadsLocationItemAndCreateIfNeeded:completion:]_block_invoke";
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_249340000, v8, OS_LOG_TYPE_INFO, "%s fetched URL: %@ for saved downloads location item: %@", &v12, 0x20u);
  }

  v10 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_removeCurrentDownloadsLocationFromFavorites
{
  currentDefaultDownloadsLocationItem = [(DOCDownloadSettings *)self currentDefaultDownloadsLocationItem];

  if (currentDefaultDownloadsLocationItem)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __67__DOCDownloadSettings__removeCurrentDownloadsLocationFromFavorites__block_invoke;
    v4[3] = &unk_278F9B408;
    v4[4] = self;
    DOCRunInMainThread(v4);
  }
}

void __67__DOCDownloadSettings__removeCurrentDownloadsLocationFromFavorites__block_invoke(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__8;
  v5[4] = __Block_byref_object_dispose__8;
  v6 = [*(a1 + 32) currentDefaultDownloadsLocationItem];
  v2 = +[DOCFavoritesManager sharedManager];
  v3 = [*(a1 + 32) currentDefaultDownloadsLocationItem];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__DOCDownloadSettings__removeCurrentDownloadsLocationFromFavorites__block_invoke_30;
  v4[3] = &unk_278F9C398;
  v4[4] = v5;
  [v2 removeFavorite:v3 completion:v4];

  _Block_object_dispose(v5, 8);
}

void __67__DOCDownloadSettings__removeCurrentDownloadsLocationFromFavorites__block_invoke_30(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v3 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __67__DOCDownloadSettings__removeCurrentDownloadsLocationFromFavorites__block_invoke_30_cold_1(a1);
    }
  }
}

- (BOOL)_saveDownloadFolderItem:(id)item error:(id *)error
{
  itemCopy = item;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:itemCopy requiringSecureCoding:1 error:error];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DocumentManager.defaults"];
    [v8 setObject:v7 forKey:@"DOCDefaultDownloadLocationKey"];
    [(DOCDownloadSettings *)self setCurrentDefaultDownloadsLocationItem:itemCopy];
    if (itemCopy)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __53__DOCDownloadSettings__saveDownloadFolderItem_error___block_invoke;
      v12[3] = &unk_278F9B408;
      v13 = itemCopy;
      DOCRunInMainThread(v12);
    }

    else
    {
      v10 = docDownloadServiceLogHandle;
      if (!docDownloadServiceLogHandle)
      {
        DOCInitLogging();
        v10 = docDownloadServiceLogHandle;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [DOCDownloadSettings _saveDownloadFolderItem:error:];
      }
    }
  }

  else
  {
    v9 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v9 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DOCDownloadSettings _saveDownloadFolderItem:itemCopy error:error];
    }
  }

  return v7 != 0;
}

void __53__DOCDownloadSettings__saveDownloadFolderItem_error___block_invoke(uint64_t a1)
{
  v2 = +[DOCFavoritesManager sharedManager];
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__DOCDownloadSettings__saveDownloadFolderItem_error___block_invoke_2;
  v4[3] = &unk_278F9C268;
  v5 = v3;
  [v2 addFavorite:v5 completion:v4];
}

void __53__DOCDownloadSettings__saveDownloadFolderItem_error___block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v3 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__DOCDownloadSettings__saveDownloadFolderItem_error___block_invoke_2_cold_1(a1);
    }
  }
}

- (void)setDefaultDownloadsLocationItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  if (!itemCopy)
  {
    [DOCDownloadSettings setDefaultDownloadsLocationItem:a2 completionHandler:self];
  }

  [(DOCDownloadSettings *)self _removeCurrentDownloadsLocationFromFavorites];
  v11 = 0;
  v9 = [(DOCDownloadSettings *)self _saveDownloadFolderItem:itemCopy error:&v11];
  v10 = v11;
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v9, v10);
  }
}

- (void)setDefaultDownloadsItemForProviderDomain:(id)domain completionHandler:(id)handler
{
  v14[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v14[0] = domain;
  v7 = MEMORY[0x277CBEA60];
  domainCopy = domain;
  v9 = [v7 arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__DOCDownloadSettings_setDefaultDownloadsItemForProviderDomain_completionHandler___block_invoke;
  v12[3] = &unk_278F9C3C0;
  v12[4] = self;
  v13 = handlerCopy;
  v10 = handlerCopy;
  [(DOCDownloadSettings *)self _rootItemOfPreferredProviderInDomains:v9 completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __82__DOCDownloadSettings_setDefaultDownloadsItemForProviderDomain_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __82__DOCDownloadSettings_setDefaultDownloadsItemForProviderDomain_completionHandler___block_invoke_2;
    v7[3] = &unk_278F9BCE0;
    v7[4] = v5;
    v8 = *(a1 + 40);
    [v5 _createDefaultDownloadsFolderInParent:a3 completion:v7];
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

void __82__DOCDownloadSettings_setDefaultDownloadsItemForProviderDomain_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = docDownloadServiceLogHandle;
  if (!docDownloadServiceLogHandle)
  {
    DOCInitLogging();
    v7 = docDownloadServiceLogHandle;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&dword_249340000, v7, OS_LOG_TYPE_INFO, "Fetched downloads location: %@", buf, 0xCu);
  }

  if (v5)
  {
    v8 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __82__DOCDownloadSettings_setDefaultDownloadsItemForProviderDomain_completionHandler___block_invoke_42;
    v14[3] = &unk_278F9BD58;
    v15 = v5;
    v16 = v6;
    v17 = *(a1 + 40);
    [v8 setDefaultDownloadsLocationItem:v15 completionHandler:v14];

    v9 = v15;
  }

  else
  {
    v10 = _DocumentManagerBundle();
    v9 = [v10 localizedStringForKey:@"Unrecoverable failure to locate the Downloads location." value:@"Unrecoverable failure to locate the Downloads location." table:@"Localizable"];

    v11 = [*(a1 + 32) _createErrorForCode:-1002 localizedDescription:v9 underlyingError:v6];
    v12 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v12 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __82__DOCDownloadSettings_setDefaultDownloadsItemForProviderDomain_completionHandler___block_invoke_2_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __82__DOCDownloadSettings_setDefaultDownloadsItemForProviderDomain_completionHandler___block_invoke_42(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = *(a1 + 32);
  v5 = v4;
  if (*(a1 + 40))
  {

    v5 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)resetDefaultDownloadsLocationItem
{
  [(DOCDownloadSettings *)self _removeCurrentDownloadsLocationFromFavorites];
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DocumentManager.defaults"];
  [v2 setObject:0 forKey:@"DOCDefaultDownloadLocationKey"];
}

- (void)fetchProvidersSuitableForDownloads:(id)downloads
{
  downloadsCopy = downloads;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__DOCDownloadSettings_fetchProvidersSuitableForDownloads___block_invoke;
  v6[3] = &unk_278F9B888;
  v7 = downloadsCopy;
  v5 = downloadsCopy;
  [(DOCDownloadSettings *)self _fetchProviders:v6];
}

void __58__DOCDownloadSettings_fetchProvidersSuitableForDownloads___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v36 = a3;
  v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v6)
  {
    v38 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_40;
  }

  v7 = v6;
  v38 = 0;
  v8 = 0;
  v9 = 0;
  v10 = *v40;
  do
  {
    v11 = 0;
    do
    {
      if (*v40 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v39 + 1) + 8 * v11);
      v13 = [v12 identifier];
      v14 = [v13 isEqualToString:@"com.apple.FileProvider.LocalStorage"];

      if (v14)
      {
        v15 = v12;

        v9 = v15;
      }

      if ([v12 isiCloudDriveProvider] && (objc_msgSend(v12, "isHidden") & 1) == 0 && (objc_msgSend(v12, "needsAuthentication") & 1) == 0)
      {
        v16 = [v12 isMainiCloudDriveDomain];
        v17 = v12;
        v18 = v38;
        if (v16)
        {
          v19 = v38;
        }

        else
        {
          v19 = v8;
        }

        if (v16)
        {
          v18 = v17;
        }

        v38 = v18;
        if (!v16)
        {
          v8 = v17;
        }
      }

      if (([v12 needsAuthentication] & 1) == 0 && (objc_msgSend(v12, "canDisconnect") & 1) == 0)
      {
        if ([v12 supportsEnumeration])
        {
          if ([v12 isEnabled])
          {
            if (([v12 isHidden] & 1) == 0 && (objc_msgSend(v12, "isReadOnly") & 1) == 0)
            {
              if ([v12 isAvailableSystemWide])
              {
                if ([v12 supportsPickingFolders])
                {
                  v20 = [v12 identifier];
                  v22 = DOCProviderDomainIDIsDefaultSharedServer(v20, v21);

                  if ((v22 & 1) == 0)
                  {
                    v23 = [v12 identifier];
                    v25 = DOCProviderDomainIDIsExternalDevice(v23, v24);

                    if ((v25 & 1) == 0)
                    {
                      v26 = [v12 providerID];
                      if ([v26 isEqualToString:@"com.apple.DocumentManager.SpotlightFileProvider"])
                      {
                        goto LABEL_32;
                      }

                      v27 = [v12 providerID];
                      if ([v27 isEqualToString:@"com.apple.mobileslideshow.PhotosFileProvider"])
                      {

LABEL_32:
                        goto LABEL_33;
                      }

                      v33 = [v12 providerID];
                      v34 = [v33 isEqualToString:@"com.apple.TapToRadar.SystemFiles"];

                      if ((v34 & 1) == 0)
                      {
                        [v37 addObject:v12];
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_33:
      ++v11;
    }

    while (v7 != v11);
    v28 = [v5 countByEnumeratingWithState:&v39 objects:v43 count:16];
    v7 = v28;
  }

  while (v28);
LABEL_40:

  [v37 sortUsingComparator:&__block_literal_global_14];
  if (v9 && [v37 containsObject:v9])
  {
    [v37 removeObject:v9];
    [v37 insertObject:v9 atIndex:0];
  }

  if (v38 && (v29 = v38, ([v37 containsObject:v38] & 1) != 0) || v8 && (v29 = v8, objc_msgSend(v37, "containsObject:", v8)))
  {
    [v37 removeObject:v29];
    [v37 insertObject:v29 atIndex:0];
    v30 = 0;
    if (!v9)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v30 = 1;
    if (!v9)
    {
      goto LABEL_52;
    }
  }

  if ((([v37 count] != 0) & ~v30) == 0)
  {
    [v37 removeObject:v9];
    [v37 insertObject:v9 atIndex:0];
  }

LABEL_52:
  v31 = *(a1 + 32);
  if (v31)
  {
    (*(v31 + 16))(v31, v37, v36);
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __58__DOCDownloadSettings_fetchProvidersSuitableForDownloads___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 providerDisplayName];
  v6 = [v4 providerDisplayName];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (void)_fetchDefaultFallbackDownloadLocationWithPreferredDomain:(id)domain createIfMissing:(BOOL)missing completion:(id)completion
{
  domainCopy = domain;
  completionCopy = completion;
  v10 = docDownloadServiceLogHandle;
  if (!docDownloadServiceLogHandle)
  {
    DOCInitLogging();
    v10 = docDownloadServiceLogHandle;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_249340000, v10, OS_LOG_TYPE_INFO, "No valid saved downloads location - fetching default", buf, 2u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke;
  v13[3] = &unk_278F9C4F8;
  v13[4] = self;
  v14 = domainCopy;
  v15 = completionCopy;
  missingCopy = missing;
  v11 = completionCopy;
  v12 = domainCopy;
  [(DOCDownloadSettings *)self _fetchAvailableProviders:v13];
}

void __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke_2;
  aBlock[3] = &unk_278F9C408;
  aBlock[4] = *(a1 + 32);
  v7 = v6;
  v42 = v7;
  v8 = _Block_copy(aBlock);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke_2_53;
  v38[3] = &unk_278F9C458;
  v38[4] = *(a1 + 32);
  v9 = v5;
  v39 = v9;
  v10 = v8;
  v40 = v10;
  v11 = _Block_copy(v38);
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke_5;
  v32 = &unk_278F9C4D0;
  v12 = v9;
  v33 = v12;
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v34 = v13;
  v35 = v14;
  v15 = v10;
  v36 = v15;
  v16 = v11;
  v37 = v16;
  v17 = _Block_copy(&v29);
  if (v7)
  {
    v18 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v18 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v44 = v7;
      _os_log_impl(&dword_249340000, v18, OS_LOG_TYPE_INFO, "No valid providers - can not fetch any locations. Error: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v7, v19, v20, v21, v22, v23);
  }

  else
  {
    v24 = docDownloadServiceLogHandle;
    if (*(a1 + 40))
    {
      if (!docDownloadServiceLogHandle)
      {
        DOCInitLogging();
        v24 = docDownloadServiceLogHandle;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = *(a1 + 40);
        v26 = v24;
        v27 = [v25 providerDomainID];
        *buf = 138412290;
        v44 = v27;
        _os_log_impl(&dword_249340000, v26, OS_LOG_TYPE_INFO, "No valid saved downloads location - fetching default in previous location's domain: %@", buf, 0xCu);
      }

      (*(v17 + 2))(v17, *(a1 + 56), *(a1 + 40), *(a1 + 48));
    }

    else
    {
      if (!docDownloadServiceLogHandle)
      {
        DOCInitLogging();
        v24 = docDownloadServiceLogHandle;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_249340000, v24, OS_LOG_TYPE_INFO, "No saved downloads location - fetching default using standard fallback logic", buf, 2u);
      }

      (*(v16 + 2))(v16, *(a1 + 56), *(a1 + 48));
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke_3;
    v8[3] = &unk_278F9BCE0;
    v8[4] = v7;
    v9 = v5;
    [v7 _createDefaultDownloadsFolderInParent:a2 completion:v8];
  }

  else
  {
    (*(v5 + 2))(v5, 0, *(a1 + 40));
  }
}

void __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = docDownloadServiceLogHandle;
  if (!docDownloadServiceLogHandle)
  {
    DOCInitLogging();
    v7 = docDownloadServiceLogHandle;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_249340000, v7, OS_LOG_TYPE_INFO, "Fetched downloads location: %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke_51;
  v12[3] = &unk_278F9BD58;
  v13 = v5;
  v14 = v6;
  v8 = *(a1 + 32);
  v15 = *(a1 + 40);
  v9 = v6;
  v10 = v5;
  [v8 setDefaultDownloadsLocationItem:v10 completionHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke_51(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = *(a1 + 32);
  v5 = v4;
  if (*(a1 + 40))
  {

    v5 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke_2_53(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke_3_54;
  v9[3] = &unk_278F9C430;
  v12 = a2;
  v10 = *(a1 + 48);
  v11 = v5;
  v9[4] = *(a1 + 32);
  v8 = v5;
  [v6 _rootItemOfPreferredProviderInDomains:v7 completion:v9];
}

void __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke_3_54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 56) == 1)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 40) + 16);
    v6 = *(a1 + 40);

    v5(v6, a3, v4);
  }

  else
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke_4;
    v8[3] = &unk_278F9B570;
    v9 = *(a1 + 48);
    [v7 _fetchDefaultDownloadsFolderInParent:a3 completion:v8];
  }
}

void __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke_5(uint64_t a1, char a2, void *a3, void *a4)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke_6;
  v26[3] = &unk_278F9C480;
  v9 = *(a1 + 32);
  v27 = *(a1 + 40);
  v10 = [v9 indexOfObjectPassingTest:v26];
  v11 = *(a1 + 32);
  if (!v11 || v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v17 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      v19 = [v7 providerDomainID];
      *buf = 138412290;
      v29 = v19;
      _os_log_impl(&dword_249340000, v18, OS_LOG_TYPE_INFO, "Preferred domain (%@) is unavailable - falling back to default using standard fallback logic", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v12 = [v11 objectAtIndexedSubscript:?];
    v13 = *(a1 + 48);
    v30[0] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke_7;
    v21[3] = &unk_278F9C4A8;
    v25 = a2;
    v22 = *(a1 + 56);
    v15 = v8;
    v16 = *(a1 + 48);
    v23 = v15;
    v21[4] = v16;
    v24 = *(a1 + 64);
    [v13 _rootItemOfPreferredProviderInDomains:v14 completion:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) providerDomainID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = docDownloadServiceLogHandle;
  if (v8)
  {
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v10 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v12 = [v8 providerDomainID];
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&dword_249340000, v11, OS_LOG_TYPE_INFO, "Validated preferred domain! - creating Downloads folder from that domain: %@", buf, 0xCu);
    }

    if (*(a1 + 64) == 1)
    {
      v13 = *(a1 + 48);
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v16 = *(a1 + 32);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __107__DOCDownloadSettings__fetchDefaultFallbackDownloadLocationWithPreferredDomain_createIfMissing_completion___block_invoke_57;
      v18[3] = &unk_278F9B570;
      v19 = *(a1 + 48);
      [v16 _fetchDefaultDownloadsFolderInParent:v8 completion:v18];
    }
  }

  else
  {
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v10 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_249340000, v10, OS_LOG_TYPE_INFO, "Unable to validate preferred domain - falling back to default using standard fallback logic", buf, 2u);
    }

    v14 = *(a1 + 64);
    v15 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_createDefaultDownloadsFolderInParent:(id)parent completion:(id)completion
{
  completionCopy = completion;
  v6 = MEMORY[0x277CC63A0];
  parentCopy = parent;
  v8 = [[v6 alloc] initWithParentItem:parentCopy folderName:@"Downloads"];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__DOCDownloadSettings__createDefaultDownloadsFolderInParent_completion___block_invoke;
  v11[3] = &unk_278F9B570;
  v12 = completionCopy;
  v9 = completionCopy;
  [v8 setCreateFolderCompletionBlock:v11];
  defaultManager = [MEMORY[0x277CC6408] defaultManager];
  [defaultManager scheduleAction:v8];
}

void __72__DOCDownloadSettings__createDefaultDownloadsFolderInParent_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = v9;
  }

  else
  {
    v7 = [v5 userInfo];
    v6 = [v7 objectForKey:*MEMORY[0x277CC6308]];
  }

  v8 = v5;
  if ([v5 code] == -1001)
  {

    v8 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_fetchDefaultDownloadsFolderInParent:(id)parent completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  parentCopy = parent;
  completionCopy = completion;
  v7 = docDownloadServiceLogHandle;
  if (!docDownloadServiceLogHandle)
  {
    DOCInitLogging();
    v7 = docDownloadServiceLogHandle;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v23 = "[DOCDownloadSettings _fetchDefaultDownloadsFolderInParent:completion:]";
    v24 = 2112;
    v25 = parentCopy;
    _os_log_impl(&dword_249340000, v7, OS_LOG_TYPE_INFO, "%s Look for existing Downloads folder in parent: %@", buf, 0x16u);
  }

  fileURL = [parentCopy fileURL];

  if (fileURL)
  {
    fileURL2 = [parentCopy fileURL];
    v10 = [fileURL2 URLByAppendingPathComponent:@"Downloads"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v10 path];
    v13 = [defaultManager fileExistsAtPath:path isDirectory:0];

    v14 = docDownloadServiceLogHandle;
    if (v13)
    {
      if (!docDownloadServiceLogHandle)
      {
        DOCInitLogging();
        v14 = docDownloadServiceLogHandle;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v23 = "[DOCDownloadSettings _fetchDefaultDownloadsFolderInParent:completion:]";
        v24 = 2112;
        v25 = parentCopy;
        _os_log_impl(&dword_249340000, v14, OS_LOG_TYPE_INFO, "%s Downloads folder at URL: %@ exists. Fetching item and returning.", buf, 0x16u);
      }

      defaultManager2 = [MEMORY[0x277CC6408] defaultManager];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __71__DOCDownloadSettings__fetchDefaultDownloadsFolderInParent_completion___block_invoke;
      v19[3] = &unk_278F9BCE0;
      v20 = v10;
      v21 = completionCopy;
      [defaultManager2 fetchItemForURL:v20 completionHandler:v19];
    }

    else
    {
      if (!docDownloadServiceLogHandle)
      {
        DOCInitLogging();
        v14 = docDownloadServiceLogHandle;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v23 = "[DOCDownloadSettings _fetchDefaultDownloadsFolderInParent:completion:]";
        v24 = 2112;
        v25 = parentCopy;
        _os_log_impl(&dword_249340000, v14, OS_LOG_TYPE_INFO, "%s Look parent did not have a fileURL: %@", buf, 0x16u);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0);
    }

    v17 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v17 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[DOCDownloadSettings _fetchDefaultDownloadsFolderInParent:completion:]";
      v24 = 2112;
      v25 = parentCopy;
      _os_log_impl(&dword_249340000, v17, OS_LOG_TYPE_INFO, "%s Look for existing Downloads folder in URL: %@", buf, 0x16u);
    }
  }

  else
  {
    v16 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v16 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[DOCDownloadSettings _fetchDefaultDownloadsFolderInParent:completion:]";
      v24 = 2112;
      v25 = parentCopy;
      _os_log_impl(&dword_249340000, v16, OS_LOG_TYPE_INFO, "%s Look parent did not have a fileURL: %@", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __71__DOCDownloadSettings__fetchDefaultDownloadsFolderInParent_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = docDownloadServiceLogHandle;
  if (!docDownloadServiceLogHandle)
  {
    DOCInitLogging();
    v7 = docDownloadServiceLogHandle;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v10 = 136315906;
    v11 = "[DOCDownloadSettings _fetchDefaultDownloadsFolderInParent:completion:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_249340000, v7, OS_LOG_TYPE_INFO, "%s Got FPItem: %@ for URL: %@ error: %@", &v10, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_fetchProviders:(id)providers
{
  providersCopy = providers;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__8;
  v17 = __Block_byref_object_dispose__8;
  v18 = 0;
  v5 = MEMORY[0x277CC6420];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__DOCDownloadSettings__fetchProviders___block_invoke;
  v9[3] = &unk_278F9C520;
  v9[4] = self;
  v11 = v19;
  v6 = providersCopy;
  v10 = v6;
  v12 = &v13;
  v7 = [v5 beginMonitoringProviderDomainChangesWithHandler:v9];
  v8 = v14[5];
  v14[5] = v7;

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(v19, 8);
}

void __39__DOCDownloadSettings__fetchProviders___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 allValues];
    [*(a1 + 32) setProviders:v7];

    v8 = *(*(a1 + 48) + 8);
    if (*(v8 + 24) == 1)
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) providers];
      (*(v9 + 16))(v9, v10, v6);

      v8 = *(*(a1 + 48) + 8);
    }

    *(v8 + 24) = 0;
  }

  else
  {
    v11 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v11 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __39__DOCDownloadSettings__fetchProviders___block_invoke_cold_1();
    }

    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) providers];
    (*(v12 + 16))(v12, v13, v6);
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    [MEMORY[0x277CC6420] endMonitoringProviderDomainChanges:?];
  }
}

- (void)_fetchAvailableProviders:(id)providers
{
  providersCopy = providers;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__DOCDownloadSettings__fetchAvailableProviders___block_invoke;
  v6[3] = &unk_278F9C598;
  v6[4] = self;
  v7 = providersCopy;
  v5 = providersCopy;
  [(DOCDownloadSettings *)self fetchProvidersSuitableForDownloads:v6];
}

void __48__DOCDownloadSettings__fetchAvailableProviders___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__DOCDownloadSettings__fetchAvailableProviders___block_invoke_2;
  v9[3] = &unk_278F9C570;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 _preferredProvidersIn:a2 completion:v9];
}

void __48__DOCDownloadSettings__fetchAvailableProviders___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 firstObject];
  if ([v3 count] == 1)
  {
    v5 = [v4 identifier];
    if ([v5 isEqualToString:@"com.apple.FileProvider.LocalStorage"])
    {
      v6 = [v4 isEnabled];

      if ((v6 & 1) == 0)
      {
        v7 = [v4 providerDisplayName];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __48__DOCDownloadSettings__fetchAvailableProviders___block_invoke_3;
        v10[3] = &unk_278F9C548;
        v11 = v7;
        v13 = *(a1 + 40);
        v12 = v3;
        v8 = v7;
        [v4 setEnabled:1 completionHandler:v10];

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v3, *(a1 + 32));
  }

LABEL_8:
}

void __48__DOCDownloadSettings__fetchAvailableProviders___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v4 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__DOCDownloadSettings__fetchAvailableProviders___block_invoke_3_cold_1(a1);
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, *(a1 + 40), v3);
  }
}

- (void)_rootItemOfPreferredProviderInDomains:(id)domains completion:(id)completion
{
  domainsCopy = domains;
  completionCopy = completion;
  firstObject = [domainsCopy firstObject];
  if (firstObject)
  {
    defaultManager = [MEMORY[0x277CC6408] defaultManager];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__DOCDownloadSettings__rootItemOfPreferredProviderInDomains_completion___block_invoke;
    v14[3] = &unk_278F9C5C0;
    v18 = completionCopy;
    v15 = firstObject;
    v16 = domainsCopy;
    selfCopy = self;
    [defaultManager doc_fetchRootNodeForProviderDomain:v15 completionHandler:v14];

    v10 = v18;
  }

  else
  {
    v11 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v11 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [DOCDownloadSettings _rootItemOfPreferredProviderInDomains:completion:];
    }

    v12 = _DocumentManagerBundle();
    v10 = [v12 localizedStringForKey:@"Unrecoverable failure to locate the Downloads location." value:@"Unrecoverable failure to locate the Downloads location." table:@"Localizable"];

    v13 = [(DOCDownloadSettings *)self _createErrorForCode:-1001 localizedDescription:v10 underlyingError:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v13);
  }
}

void __72__DOCDownloadSettings__rootItemOfPreferredProviderInDomains_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = [v5 fpfs_fpItem];
    (*(v7 + 16))(v7, v8, v9, 0);
  }

  else
  {
    v10 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v10 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __72__DOCDownloadSettings__rootItemOfPreferredProviderInDomains_completion___block_invoke_cold_1(a1, v10);
    }

    v11 = [*(a1 + 40) mutableCopy];
    [v11 removeObject:*(a1 + 32)];
    [*(a1 + 48) _rootItemOfPreferredProviderInDomains:v11 completion:*(a1 + 56)];
  }
}

- (void)_preferredProvidersIn:(id)in completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  inCopy = in;
  completionCopy = completion;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__8;
  v29[4] = __Block_byref_object_dispose__8;
  array = [MEMORY[0x277CBEB18] array];
  v7 = dispatch_group_create();
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = inCopy;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v8)
  {
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        dispatch_group_enter(v7);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __56__DOCDownloadSettings__preferredProvidersIn_completion___block_invoke;
        v19[3] = &unk_278F9C5E8;
        v21 = v29;
        v22 = v27;
        v19[4] = v11;
        v20 = v7;
        [(DOCDownloadSettings *)self _validatePreferredProvider:v11 completion:v19];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v8);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DOCDownloadSettings__preferredProvidersIn_completion___block_invoke_2;
  block[3] = &unk_278F9C610;
  v18 = v29;
  v17 = completionCopy;
  v12 = completionCopy;
  dispatch_group_notify(v7, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);

  v13 = *MEMORY[0x277D85DE8];
}

void __56__DOCDownloadSettings__preferredProvidersIn_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    objc_sync_enter(v3);
    if ([*(a1 + 32) isiCloudDriveProvider] && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      [*(*(*(a1 + 48) + 8) + 40) insertObject:*(a1 + 32) atIndex:0];
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:*(a1 + 32)];
    }

    objc_sync_exit(v3);
  }

  v4 = *(a1 + 40);

  dispatch_group_leave(v4);
}

uint64_t __56__DOCDownloadSettings__preferredProvidersIn_completion___block_invoke_2(uint64_t a1)
{
  if (![*(*(*(a1 + 40) + 8) + 40) count])
  {
    v2 = *(*(a1 + 40) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }

  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = *(*(a1 + 32) + 16);

  return v5();
}

- (void)_validatePreferredProvider:(id)provider completion:(id)completion
{
  providerCopy = provider;
  completionCopy = completion;
  if ([providerCopy isiCloudDriveProvider] && objc_msgSend(providerCopy, "isEnabled") && (objc_msgSend(providerCopy, "needsAuthentication") & 1) == 0)
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v14 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__DOCDownloadSettings__validatePreferredProvider_completion___block_invoke;
    block[3] = &unk_278F9C660;
    v10 = providerCopy;
    v12 = v13;
    v11 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);

    _Block_object_dispose(v13, 8);
  }

  else
  {
    identifier = [providerCopy identifier];
    v8 = [identifier isEqualToString:@"com.apple.FileProvider.LocalStorage"];

    (*(completionCopy + 2))(completionCopy, v8 != 0);
  }
}

void __61__DOCDownloadSettings__validatePreferredProvider_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CC6408] defaultManager];
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__DOCDownloadSettings__validatePreferredProvider_completion___block_invoke_2;
  v6[3] = &unk_278F9C638;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  [v2 doc_fetchRootNodeForProviderDomain:v3 completionHandler:v6];
}

uint64_t __61__DOCDownloadSettings__validatePreferredProvider_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 isActionable];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v5 = *(*(a1 + 32) + 16);

  return v5();
}

- (id)_createErrorForCode:(int64_t)code localizedDescription:(id)description underlyingError:(id)error
{
  errorCopy = error;
  v8 = MEMORY[0x277CBEB38];
  descriptionCopy = description;
  dictionary = [v8 dictionary];
  [dictionary setObject:descriptionCopy forKey:*MEMORY[0x277CCA450]];

  if (errorCopy)
  {
    [dictionary setObject:errorCopy forKey:*MEMORY[0x277CCA7E8]];
  }

  v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.DocumentManager.DocumentDownloads" code:code userInfo:dictionary];

  return v11;
}

void __65__DOCDownloadSettings_fetchDefaultDownloadsLocationSettingsItem___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __58__DOCDownloadSettings_fetchSuitableLocationsForDownloads___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__DOCDownloadSettings_setDefaultDownloadsToLocation_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__DOCDownloadSettings_setDefaultDownloadsLocationURL_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __72__DOCDownloadSettings_setDefaultDownloadsLocationURL_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__DOCDownloadSettings_setDefaultDownloadsLocationURL_completionHandler___block_invoke_17_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchDefaultDownloadsLocationItemAndCreateIfNeeded:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __85__DOCDownloadSettings_fetchDefaultDownloadsLocationItemAndCreateIfNeeded_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __85__DOCDownloadSettings_fetchDefaultDownloadsLocationItemAndCreateIfNeeded_completion___block_invoke_21_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __85__DOCDownloadSettings_fetchDefaultDownloadsLocationItemAndCreateIfNeeded_completion___block_invoke_26_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 providerDomainID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0(&dword_249340000, v5, v6, "Unable to get domain for ID: %@. Error: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __85__DOCDownloadSettings_fetchDefaultDownloadsLocationItemAndCreateIfNeeded_completion___block_invoke_26_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __67__DOCDownloadSettings__removeCurrentDownloadsLocationFromFavorites__block_invoke_30_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1(a1, *MEMORY[0x277D85DE8]);
  v8 = *(*(v1 + 8) + 40);
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_saveDownloadFolderItem:(uint64_t)a1 error:(uint64_t *)a2 .cold.1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __53__DOCDownloadSettings__saveDownloadFolderItem_error___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDefaultDownloadsLocationItem:(uint64_t)a1 completionHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCDownloadSettings.m" lineNumber:302 description:@"Attempted to set nil as the default downloads location. Call resetDefaultDownloadsLocationItem instead."];
}

void __82__DOCDownloadSettings_setDefaultDownloadsItemForProviderDomain_completionHandler___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __39__DOCDownloadSettings__fetchProviders___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__DOCDownloadSettings__fetchAvailableProviders___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__DOCDownloadSettings__rootItemOfPreferredProviderInDomains_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 providerDisplayName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0(&dword_249340000, v5, v6, "Unable to fetch root node for preferred domain: %@ error: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

@end