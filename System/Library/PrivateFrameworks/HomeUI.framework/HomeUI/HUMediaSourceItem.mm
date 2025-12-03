@interface HUMediaSourceItem
+ (id)_musicAppUninstallResolveError;
+ (id)_musicCatalogPlaybackDisabledResolveErrorFor:(unint64_t)for;
+ (id)_storeKitErrorResolveErrorFor:(id)for;
+ (id)appleMusicSource;
+ (id)soundScapesSource;
- (BOOL)failed;
- (BOOL)success;
- (HUMediaPickerDelegate)delegate;
- (HUMediaSourceItem)initWithBundleIdentifier:(id)identifier forServiceName:(id)name;
- (NSString)description;
- (id)_appIconFuture;
- (id)_setupAppleMusicPicker;
- (id)_setupSoundScapesPicker;
- (id)_subclass_updateWithOptions:(id)options;
- (id)_updateAppleMusicSubscriptionStatusForMediaProfiles:(id)profiles forTarget:(unint64_t)target;
- (id)pickerViewController;
- (id)resolveForMediaProfiles:(id)profiles forTarget:(unint64_t)target;
- (unint64_t)_effectiveLoadingStateForSuggestedLoadingState:(unint64_t)state;
- (void)mediaPicker:(id)picker didPickPlaybackArchive:(id)archive;
- (void)mediaPickerCancelled;
- (void)mediaPickerDidCancel:(id)cancel;
- (void)mediaPickerDidSelectPlaybackArchive:(id)archive withError:(id)error;
@end

@implementation HUMediaSourceItem

+ (id)appleMusicSource
{
  v2 = [[HUMediaSourceItem alloc] initWithBundleIdentifier:@"com.apple.Music" forServiceName:@"HFAppleMusicServiceName"];
  [(HUMediaSourceItem *)v2 setContinuousPicker:0];

  return v2;
}

+ (id)soundScapesSource
{
  v2 = [[HUMediaSourceItem alloc] initWithBundleIdentifier:@"com.apple.SoundScapes" forServiceName:@"HFSoundScapesServiceName"];
  [(HUMediaSourceItem *)v2 setContinuousPicker:1];

  return v2;
}

- (HUMediaSourceItem)initWithBundleIdentifier:(id)identifier forServiceName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = HUMediaSourceItem;
  v9 = [(HUMediaSourceItem *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleIdentifier, identifier);
    v11 = HFLocalizedString();
    name = v10->_name;
    v10->_name = v11;

    _appIconFuture = [(HUMediaSourceItem *)v10 _appIconFuture];
    iconFuture = v10->_iconFuture;
    v10->_iconFuture = _appIconFuture;

    objc_initWeak(&location, v10);
    iconFuture = [(HUMediaSourceItem *)v10 iconFuture];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __61__HUMediaSourceItem_initWithBundleIdentifier_forServiceName___block_invoke;
    v18[3] = &unk_277DC3C68;
    objc_copyWeak(&v19, &location);
    v16 = [iconFuture addCompletionBlock:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __61__HUMediaSourceItem_initWithBundleIdentifier_forServiceName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained updateWithOptions:MEMORY[0x277CBEC10]];
}

- (id)_appIconFuture
{
  v2 = MEMORY[0x277D2C900];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__HUMediaSourceItem__appIconFuture__block_invoke;
  v6[3] = &unk_277DB7580;
  v6[4] = self;
  globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v4 = [v2 futureWithBlock:v6 scheduler:globalAsyncScheduler];

  return v4;
}

void __35__HUMediaSourceItem__appIconFuture__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CC1E60];
  v5 = [*(a1 + 32) bundleIdentifier];
  v6 = [v4 applicationProxyForIdentifier:v5];

  if ([v6 isInstalled])
  {
    v7 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithResourceProxy:v6];
LABEL_6:
    v11 = v7;
    goto LABEL_7;
  }

  v8 = [*(a1 + 32) bundleIdentifier];
  v9 = [v8 isEqualToString:@"com.apple.SoundScapes"];

  if (!v9)
  {
    v7 = [MEMORY[0x277D1B1A8] genericApplicationIcon];
    goto LABEL_6;
  }

  v10 = [MEMORY[0x277CC1E88] bundleProxyForIdentifier:@"com.apple.SoundScapesUtility.ViewServices"];
  v11 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithResourceProxy:v10];

LABEL_7:
  v12 = [MEMORY[0x277D759A0] mainScreen];
  [v12 scale];
  v14 = v13;

  v15 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:32.0 scale:{32.0, v14}];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __35__HUMediaSourceItem__appIconFuture__block_invoke_2;
  v17[3] = &unk_277DBD860;
  v19 = v14;
  v18 = v3;
  v16 = v3;
  [v11 getImageForImageDescriptor:v15 completion:v17];
}

void __35__HUMediaSourceItem__appIconFuture__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(a2 scale:"CGImage") orientation:{0, *(a1 + 40)}];
  [*(a1 + 32) finishWithResult:v3];
}

- (id)resolveForMediaProfiles:(id)profiles forTarget:(unint64_t)target
{
  v40 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  objc_storeStrong(&self->_mediaProfileContainers, profiles);
  bundleIdentifier = [(HUMediaSourceItem *)self bundleIdentifier];
  v9 = [bundleIdentifier isEqualToString:@"com.apple.Music"];

  if (v9)
  {
    v10 = [(HUMediaSourceItem *)self _updateAppleMusicSubscriptionStatusForMediaProfiles:profilesCopy forTarget:target];
    resolveFuture = self->_resolveFuture;
    self->_resolveFuture = v10;
  }

  else
  {
    bundleIdentifier2 = [(HUMediaSourceItem *)self bundleIdentifier];
    v13 = [bundleIdentifier2 isEqualToString:@"com.apple.SoundScapes"];

    if (v13)
    {
      v14 = MEMORY[0x277D2C900];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __55__HUMediaSourceItem_resolveForMediaProfiles_forTarget___block_invoke;
      v35[3] = &unk_277DBC9F8;
      v36 = profilesCopy;
      targetCopy = target;
      globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
      v16 = [v14 futureWithBlock:v35 scheduler:globalAsyncScheduler];
      v17 = self->_resolveFuture;
      self->_resolveFuture = v16;
    }
  }

  objc_initWeak(&location, self);
  bundleIdentifier3 = [(HUMediaSourceItem *)self bundleIdentifier];
  v19 = self->_resolveFuture;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __55__HUMediaSourceItem_resolveForMediaProfiles_forTarget___block_invoke_2_61;
  v31[3] = &unk_277DC3CB0;
  v20 = bundleIdentifier3;
  v32 = v20;
  objc_copyWeak(&v33, &location);
  v21 = [(NAFuture *)v19 addCompletionBlock:v31];
  v22 = objc_opt_new();
  resolveFuture = [(HUMediaSourceItem *)self resolveFuture];

  if (resolveFuture)
  {
    resolveFuture2 = [(HUMediaSourceItem *)self resolveFuture];
    [v22 addObject:resolveFuture2];
  }

  else
  {
    resolveFuture2 = HFLogForCategory();
    if (os_log_type_enabled(resolveFuture2, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier4 = [(HUMediaSourceItem *)self bundleIdentifier];
      *buf = 138412290;
      v39 = bundleIdentifier4;
      _os_log_impl(&dword_20CEB6000, resolveFuture2, OS_LOG_TYPE_DEFAULT, "Media Source %@ is not being resolved", buf, 0xCu);
    }
  }

  iconFuture = [(HUMediaSourceItem *)self iconFuture];

  if (iconFuture)
  {
    iconFuture2 = [(HUMediaSourceItem *)self iconFuture];
    [v22 addObject:iconFuture2];
  }

  else
  {
    iconFuture2 = HFLogForCategory();
    if (os_log_type_enabled(iconFuture2, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier5 = [(HUMediaSourceItem *)self bundleIdentifier];
      *buf = 138412290;
      v39 = bundleIdentifier5;
      _os_log_impl(&dword_20CEB6000, iconFuture2, OS_LOG_TYPE_DEFAULT, "Icon for media Source %@ is not being fetched", buf, 0xCu);
    }
  }

  v29 = [MEMORY[0x277D2C900] combineAllFutures:v22];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);

  return v29;
}

void __55__HUMediaSourceItem_resolveForMediaProfiles_forTarget___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) anyObject];
  v5 = [v4 hf_home];

  if (*(a1 + 40) == 1)
  {
    v6 = [*(a1 + 32) anyObject];
    objc_opt_class();
    v7 = v6;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_9;
    }

    if (v9)
    {
      v10 = [v9 accessory];
      v11 = [v10 hf_isHomePod];

      v12 = [v9 accessory];
      v13 = [v12 hf_isSiriEndpoint];

      if (v11)
      {
LABEL_9:
        v14 = [v7 accessories];
        v15 = [v14 na_all:&__block_literal_global_265];
        goto LABEL_10;
      }

      if (v13)
      {
        v14 = [v5 residentDevices];
        v15 = [v14 na_any:&__block_literal_global_46_1];
LABEL_10:
        v16 = v15;

        if ((v16 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v21 = HFLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEFAULT, "Unexpected media profile container", buf, 2u);
      }
    }

    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "Unexpected media profile configuration", v27, 2u);
    }

    goto LABEL_22;
  }

  v17 = MEMORY[0x277CBEB98];
  v18 = [*(a1 + 32) allObjects];
  v19 = [v18 na_map:&__block_literal_global_51_1];
  v20 = [v17 setWithArray:v19];

  LOBYTE(v18) = [MEMORY[0x277D65240] pickerSupportHome:v5 targetMediaProfiles:v20];
  if ((v18 & 1) == 0)
  {
LABEL_22:
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v24 = HFLocalizedString();
    [v23 setObject:v24 forKeyedSubscript:@"HUMediaPickerUnavailablePromptTitleKey"];

    v25 = HFLocalizedString();
    [v23 setObject:v25 forKeyedSubscript:@"HUMediaPickerUnavailablePromptMessageKey"];

    v26 = [v23 copy];
    [v3 finishWithResult:v26];

    goto LABEL_23;
  }

LABEL_13:
  [v3 finishWithResult:MEMORY[0x277CBEC10]];
LABEL_23:
}

unint64_t __55__HUMediaSourceItem_resolveForMediaProfiles_forTarget___block_invoke_42(uint64_t a1, void *a2)
{
  v2 = [a2 hf_linkedResidentDevice];
  v3 = ([v2 capabilities] >> 24) & 1;

  return v3;
}

id __55__HUMediaSourceItem_resolveForMediaProfiles_forTarget___block_invoke_48(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D65238];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 hf_backingAccessory];
  v6 = [v3 hf_home];

  v7 = [v4 initWithAccessory:v5 forHome:v6];

  return v7;
}

void __55__HUMediaSourceItem_resolveForMediaProfiles_forTarget___block_invoke_2_61(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v14 = 138412802;
    v15 = v8;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Media Source %@ resolve result %@, with error %@", &v14, 0x20u);
  }

  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setResolveError:v11];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(HUMediaSourceItem *)self name];
  bundleIdentifier = [(HUMediaSourceItem *)self bundleIdentifier];
  v6 = [v3 stringWithFormat:@"%@ - %@", name, bundleIdentifier];

  return v6;
}

- (id)pickerViewController
{
  if (![(HUMediaSourceItem *)self success])
  {
    goto LABEL_6;
  }

  bundleIdentifier = [(HUMediaSourceItem *)self bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.Music"];

  if (v4)
  {
    _setupAppleMusicPicker = [(HUMediaSourceItem *)self _setupAppleMusicPicker];
    goto LABEL_7;
  }

  bundleIdentifier2 = [(HUMediaSourceItem *)self bundleIdentifier];
  v7 = [bundleIdentifier2 isEqualToString:@"com.apple.SoundScapes"];

  if (v7)
  {
    _setupAppleMusicPicker = [(HUMediaSourceItem *)self _setupSoundScapesPicker];
  }

  else
  {
LABEL_6:
    _setupAppleMusicPicker = 0;
  }

LABEL_7:

  return _setupAppleMusicPicker;
}

- (id)_setupAppleMusicPicker
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v3 = _MergedGlobals_5_2;
  v22 = _MergedGlobals_5_2;
  if (!_MergedGlobals_5_2)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __getMPMediaPickerControllerClass_block_invoke_1;
    v17 = &unk_277DB7768;
    v18 = &v19;
    __getMPMediaPickerControllerClass_block_invoke_1(&v14);
    v3 = v20[3];
  }

  v4 = v3;
  _Block_object_dispose(&v19, 8);
  v5 = [[v3 alloc] initWithSupportedTypeIdentifiers:&unk_282492CF0 selectionMode:4];
  [v5 setShowsCloudItems:1];
  [v5 setShowsItemsWithProtectedAssets:1];
  [v5 setShowsCatalogContent:1];
  [v5 setShowsLibraryContent:1];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = v7;

  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v9 = qword_281120D50;
  v22 = qword_281120D50;
  if (!qword_281120D50)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __getMPPlaybackArchiveConfigurationClass_block_invoke_1;
    v17 = &unk_277DB7768;
    v18 = &v19;
    __getMPPlaybackArchiveConfigurationClass_block_invoke_1(&v14);
    v9 = v20[3];
  }

  v10 = fmax(v8, 4.0) * 64.0;
  v11 = v9;
  _Block_object_dispose(&v19, 8);
  v12 = [[v9 alloc] initWithPreferredArtworkSize:{v10, v10}];
  [v5 setPlaybackArchiveConfiguration:v12];

  [v5 setDelegate:self];

  return v5;
}

- (id)_setupSoundScapesPicker
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  mediaProfileContainers = [(HUMediaSourceItem *)self mediaProfileContainers];
  allObjects = [mediaProfileContainers allObjects];
  v6 = [allObjects na_map:&__block_literal_global_73_0];
  v7 = [v3 setWithArray:v6];

  v8 = [MEMORY[0x277D65240] pickerForMediaProfiles:v7 forDelegate:self];
  if (!v8)
  {
    v13[0] = @"HUMediaPickerUnavailablePromptTitleKey";
    v9 = _HULocalizedStringWithDefaultValue(@"HUAlertError", @"HUAlertError", 1);
    v13[1] = @"HUMediaPickerUnavailablePromptMessageKey";
    v14[0] = v9;
    v10 = HFLocalizedString();
    v14[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    [(HUMediaSourceItem *)self setResolveError:v11];
  }

  return v8;
}

id __44__HUMediaSourceItem__setupSoundScapesPicker__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D65238];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 hf_backingAccessory];
  v6 = [v3 hf_home];

  v7 = [v4 initWithAccessory:v5 forHome:v6];

  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  objc_initWeak(&location, self);
  iconFuture = [(HUMediaSourceItem *)self iconFuture];
  globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v7 = [iconFuture reschedule:globalAsyncScheduler];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__HUMediaSourceItem__subclass_updateWithOptions___block_invoke;
  v10[3] = &unk_277DC3CD8;
  objc_copyWeak(&v11, &location);
  v8 = [v7 flatMap:v10];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);

  return v8;
}

id __49__HUMediaSourceItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained resolveError];
    v7 = [v6 objectForKeyedSubscript:@"HUMediaPickerUnavailablePromptTitleKey"];

    v8 = MEMORY[0x277CBEB38];
    v15 = *MEMORY[0x277D13F60];
    v9 = [v5 name];
    v16[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v11 = [v8 dictionaryWithDictionary:v10];

    [v11 na_safeSetObject:v3 forKey:*MEMORY[0x277D13E98]];
    [v11 na_safeSetObject:v7 forKey:*MEMORY[0x277D13E20]];
    v12 = [objc_alloc(MEMORY[0x277D14858]) initWithResults:v11];
    v13 = [MEMORY[0x277D2C900] futureWithResult:v12];
  }

  else
  {
    v13 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v13;
}

- (unint64_t)_effectiveLoadingStateForSuggestedLoadingState:(unint64_t)state
{
  resolveFuture = [(HUMediaSourceItem *)self resolveFuture];
  v4 = [resolveFuture isFinished] ^ 1;

  return v4;
}

- (BOOL)success
{
  resolveFuture = [(HUMediaSourceItem *)self resolveFuture];
  if ([resolveFuture isFinished])
  {
    resolveError = [(HUMediaSourceItem *)self resolveError];
    v5 = [resolveError count] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)failed
{
  resolveFuture = [(HUMediaSourceItem *)self resolveFuture];
  if ([resolveFuture isFinished])
  {
    resolveError = [(HUMediaSourceItem *)self resolveError];
    v5 = [resolveError count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_musicAppUninstallResolveError
{
  v9[4] = *MEMORY[0x277D85DE8];
  v8[0] = @"HUMediaPickerUnavailablePromptTitleKey";
  v2 = _HULocalizedStringWithDefaultValue(@"HUMediaPickerUnavailableMusicAppUninstalledPromptTitle", @"HUMediaPickerUnavailableMusicAppUninstalledPromptTitle", 1);
  v9[0] = v2;
  v8[1] = @"HUMediaPickerUnavailablePromptActionTitleKey";
  v3 = _HULocalizedStringWithDefaultValue(@"HUMediaPickerUnavailableMusicAppUninstalledPromptOpenAppStoreButton", @"HUMediaPickerUnavailableMusicAppUninstalledPromptOpenAppStoreButton", 1);
  v9[1] = v3;
  v8[2] = @"HUMediaPickerUnavailablePromptActionURLKey";
  v4 = +[HUMediaAccountUtilities musicAppURL];
  v9[2] = v4;
  v8[3] = @"HUMediaPickerUnavailablePromptMessageKey";
  v5 = _HULocalizedStringWithDefaultValue(@"HUTriggerMediaPickerUnavailableMusicAppUninstalledForMusicAlarmPromptMessage", @"HUTriggerMediaPickerUnavailableMusicAppUninstalledForMusicAlarmPromptMessage", 1);
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

+ (id)_musicCatalogPlaybackDisabledResolveErrorFor:(unint64_t)for
{
  v11[4] = *MEMORY[0x277D85DE8];
  if (!for)
  {
    v3 = @"HUSceneMediaPickerUnavailableMusicCatalogPlaybackDisabledPromptMessage";
    goto LABEL_5;
  }

  if (for == 1)
  {
    v3 = @"HUMusicAlarmMediaPickerUnavailableMusicCatalogPlaybackDisabledPromptMessage";
LABEL_5:
    v4 = _HULocalizedStringWithDefaultValue(v3, v3, 1);
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:
  v10[0] = @"HUMediaPickerUnavailablePromptTitleKey";
  v5 = _HULocalizedStringWithDefaultValue(@"HUMediaPickerUnavailableMusicCatalogPlaybackDisabledPromptTitle", @"HUMediaPickerUnavailableMusicCatalogPlaybackDisabledPromptTitle", 1);
  v11[0] = v5;
  v11[1] = v4;
  v10[1] = @"HUMediaPickerUnavailablePromptMessageKey";
  v10[2] = @"HUMediaPickerUnavailablePromptActionTitleKey";
  v6 = _HULocalizedStringWithDefaultValue(@"HUMediaPickerUnavailableMusicCatalogPlaybackDisabledPromptGetAppleMusicButton", @"HUMediaPickerUnavailableMusicCatalogPlaybackDisabledPromptGetAppleMusicButton", 1);
  v11[2] = v6;
  v10[3] = @"HUMediaPickerUnavailablePromptActionURLKey";
  v7 = [MEMORY[0x277CBEBC0] URLWithString:@"music://subscribe"];
  v11[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

+ (id)_storeKitErrorResolveErrorFor:(id)for
{
  v11[2] = *MEMORY[0x277D85DE8];
  forCopy = for;
  v4 = [HUMediaAccountUtilities reasonForMediaPickerNotAvailable:2];
  if (v4)
  {
    v5 = v4;
    localizedDescription = _HULocalizedStringWithDefaultValue(v4, v4, 1);
  }

  else
  {
    localizedDescription = [forCopy localizedDescription];
  }

  v10[0] = @"HUMediaPickerUnavailablePromptTitleKey";
  v7 = _HULocalizedStringWithDefaultValue(@"HUAlertError", @"HUAlertError", 1);
  v10[1] = @"HUMediaPickerUnavailablePromptMessageKey";
  v11[0] = v7;
  v11[1] = localizedDescription;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

- (id)_updateAppleMusicSubscriptionStatusForMediaProfiles:(id)profiles forTarget:(unint64_t)target
{
  v18[4] = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  if (+[HUMediaAccountUtilities isMusicAppInstalled])
  {
    anyObject = [profilesCopy anyObject];
    hf_home = [anyObject hf_home];
    v8 = [HUMediaAccountUtilities determineMediaPickerAvailabilityForHomePodProfiles:profilesCopy inHome:hf_home];

    globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
    v10 = [v8 reschedule:globalAsyncScheduler];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __83__HUMediaSourceItem__updateAppleMusicSubscriptionStatusForMediaProfiles_forTarget___block_invoke;
    v16[3] = &__block_descriptor_40_e32___NAFuture_16__0__NSDictionary_8l;
    v16[4] = target;
    v11 = [v10 flatMap:v16];
  }

  else
  {
    v17[0] = @"HUMediaPickerUnavailablePromptTitleKey";
    v12 = _HULocalizedStringWithDefaultValue(@"HUMediaPickerUnavailableMusicAppUninstalledPromptTitle", @"HUMediaPickerUnavailableMusicAppUninstalledPromptTitle", 1);
    v18[0] = v12;
    v18[1] = @"HUMediaPickerUnavailableMusicAppUninstalledPromptOpenAppStoreButton";
    v17[1] = @"HUMediaPickerUnavailablePromptActionTitleKey";
    v17[2] = @"HUMediaPickerUnavailablePromptActionURLKey";
    v13 = +[HUMediaAccountUtilities musicAppURL];
    v18[2] = v13;
    v17[3] = @"HUMediaPickerUnavailablePromptMessageKey";
    v14 = _HULocalizedStringWithDefaultValue(@"HUTriggerMediaPickerUnavailableMusicAppUninstalledForMusicAlarmPromptMessage", @"HUTriggerMediaPickerUnavailableMusicAppUninstalledForMusicAlarmPromptMessage", 1);
    v18[3] = v14;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];

    v11 = [MEMORY[0x277D2C900] futureWithResult:v8];
  }

  return v11;
}

id __83__HUMediaSourceItem__updateAppleMusicSubscriptionStatusForMediaProfiles_forTarget___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:@"HOMediaPickerUnavailableReasonKey"];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  objc_opt_class();
  v7 = [v3 objectForKeyedSubscript:@"HUMediaPickerUnavailableReasonStoreKitErrorObjectKey"];

  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (!v6)
  {
    v12 = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_18;
  }

  v10 = [v6 integerValue];
  if (v10 == 2)
  {
    v11 = [HUMediaSourceItem _storeKitErrorResolveErrorFor:v9];
  }

  else if (v10 == 1)
  {
    v11 = [HUMediaSourceItem _musicCatalogPlaybackDisabledResolveErrorFor:*(a1 + 32)];
  }

  else
  {
    if (v10)
    {
      v13 = 0;
      goto LABEL_17;
    }

    v11 = +[HUMediaSourceItem _musicAppUninstallResolveError];
  }

  v13 = v11;
LABEL_17:
  v12 = [MEMORY[0x277D2C900] futureWithResult:v13];

LABEL_18:

  return v12;
}

- (void)mediaPicker:(id)picker didPickPlaybackArchive:(id)archive
{
  archiveCopy = archive;
  delegate = [(HUMediaSourceItem *)self delegate];
  [delegate mediaPickerDidPickPlaybackArchive:archiveCopy];
}

- (void)mediaPickerDidCancel:(id)cancel
{
  delegate = [(HUMediaSourceItem *)self delegate];
  [delegate mediaPickerDidCancel];
}

- (void)mediaPickerDidSelectPlaybackArchive:(id)archive withError:(id)error
{
  archiveCopy = archive;
  delegate = [(HUMediaSourceItem *)self delegate];
  [delegate mediaPickerDidPickPlaybackArchive:archiveCopy];
}

- (void)mediaPickerCancelled
{
  delegate = [(HUMediaSourceItem *)self delegate];
  [delegate mediaPickerDidCancel];
}

- (HUMediaPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end