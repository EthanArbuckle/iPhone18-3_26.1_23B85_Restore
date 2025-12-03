@interface CNUIPRLikenessLookup
+ (BOOL)useGivenAvatarForContact:(id)contact;
+ (id)basicMonogramForContactFuture:(id)future monogramColor:(id)color;
+ (id)basicMonogramFromString:(id)string color:(id)color;
+ (id)basicMonogramObservableForContactFuture:(id)future monogramColor:(id)color;
+ (id)basicMonogramObservableFromString:(id)string color:(id)color;
+ (id)contactFuture:(id)future contactStore:(id)store personaId:(id)id scheduler:(id)scheduler refetchContact:(BOOL)contact;
+ (id)contactFuture:(id)future contactStore:(id)store refetchContact:(BOOL)contact;
+ (id)descriptorForRequiredKeys;
+ (id)observableFromLikenessProviderBlock:(id)block withScheduler:(id)scheduler;
+ (id)photoObservableWithPhotoFuture:(id)future likenessFingerprint:(id)fingerprint scheduler:(id)scheduler;
+ (id)photoWithPhotoFuture:(id)future likenessFingerprint:(id)fingerprint;
- (BOOL)isMeContact:(id)contact;
- (BOOL)shouldFetchSharedPhotoForContact:(id)contact;
- (CNUIPRLikenessLookup)initWithContactStore:(id)store scheduler:(id)scheduler meMonitor:(id)monitor;
- (CNUIPRLikenessLookup)initWithContactStore:(id)store schedulerProvider:(id)provider meMonitor:(id)monitor personaId:(id)id;
- (CNUIPRLikenessProvider)loadingPlaceholderLikeness;
- (id)badgeObservableWithLikenessBadge:(id)badge workScheduler:(id)scheduler;
- (id)badgeWithLikenessBadge:(id)badge;
- (id)basicMonogramFromString:(id)string color:(id)color;
- (id)basicMonogramObservableFromString:(id)string color:(id)color;
- (id)basicMonogramObservableWithContactFuture:(id)future monogramColor:(id)color;
- (id)basicMonogramWithContactFuture:(id)future monogramColor:(id)color;
- (id)blessedPhotoObservableWithFuture:(id)future contact:(id)contact workScheduler:(id)scheduler;
- (id)blessedPhotoWithFuture:(id)future contact:(id)contact;
- (id)contentObservableForContact:(id)contact placeholderProviderFactory:(id)factory options:(id)options workScheduler:(id)scheduler;
- (id)futureResultForPhotoImageDataForContact:(id)contact error:(id *)error;
- (id)futureResultForPhotoImageDataForMeContact:(id)contact error:(id *)error;
- (id)likenessForContact:(id)contact options:(id)options error:(id *)error;
- (id)likenessForContact:(id)contact placeholderProviderFactory:(id)factory options:(id)options;
- (id)likenessObservableForContact:(id)contact placeholderProviderFactory:(id)factory options:(id)options workScheduler:(id)scheduler;
- (id)likenessesForContact:(id)contact options:(id)options workScheduler:(id)scheduler;
- (id)likenessesForContacts:(id)contacts options:(id)options error:(id)error;
- (id)loadingPlaceholderObservableWithPlaceholderProviderFactory:(id)factory;
- (id)photoFutureForContactFuture:(id)future scheduler:(id)scheduler;
- (id)photoImageDataForContact:(id)contact error:(id *)error;
- (id)remoteImageWithContactFuture:(id)future;
- (id)remoteImagesObservableWithContactFuture:(id)future workScheduler:(id)scheduler;
- (id)resolveLikenessesForContacts:(id)contacts workScheduler:(id)scheduler withContentHandler:(id)handler;
- (id)silhouetteObservableWithPlaceholderProviderFactory:(id)factory contact:(id)contact workScheduler:(id)scheduler;
- (id)silhouetteWithPlaceholderProviderFactory:(id)factory contact:(id)contact;
@end

@implementation CNUIPRLikenessLookup

+ (id)descriptorForRequiredKeys
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = *MEMORY[0x1E695C388];
  v12[0] = *MEMORY[0x1E695C400];
  v12[1] = v3;
  v4 = *MEMORY[0x1E695C208];
  v12[2] = *MEMORY[0x1E695C368];
  v12[3] = v4;
  v5 = *MEMORY[0x1E695C410];
  v12[4] = *MEMORY[0x1E695C330];
  v12[5] = v5;
  v6 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:1002];
  v7 = *MEMORY[0x1E695C1D0];
  v12[6] = v6;
  v12[7] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNUIPRLikenessLookup descriptorForRequiredKeys]"];
  v10 = [v2 descriptorWithKeyDescriptors:v8 description:v9];

  return v10;
}

- (CNUIPRLikenessLookup)initWithContactStore:(id)store schedulerProvider:(id)provider meMonitor:(id)monitor personaId:(id)id
{
  storeCopy = store;
  providerCopy = provider;
  monitorCopy = monitor;
  idCopy = id;
  v21.receiver = self;
  v21.super_class = CNUIPRLikenessLookup;
  v15 = [(CNUIPRLikenessLookup *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_contactStore, store);
    v17 = objc_alloc_init(CNUIPlaceholderProviderFactory);
    placeholderProviderFactory = v16->_placeholderProviderFactory;
    v16->_placeholderProviderFactory = v17;

    objc_storeStrong(&v16->_schedulerProvider, provider);
    objc_storeStrong(&v16->_meMonitor, monitor);
    objc_storeStrong(&v16->_personaId, id);
    v19 = v16;
  }

  return v16;
}

- (CNUIPRLikenessLookup)initWithContactStore:(id)store scheduler:(id)scheduler meMonitor:(id)monitor
{
  v7 = MEMORY[0x1E6996820];
  monitorCopy = monitor;
  schedulerCopy = scheduler;
  storeCopy = store;
  defaultProvider = [v7 defaultProvider];
  v12 = objc_alloc(MEMORY[0x1E6996820]);
  mainThreadScheduler = [defaultProvider mainThreadScheduler];
  immediateScheduler = [defaultProvider immediateScheduler];
  v15 = [defaultProvider valueForKey:@"serialSchedulerProvider"];
  v16 = [defaultProvider valueForKey:@"synchronousSerialSchedulerProvider"];
  v17 = [defaultProvider valueForKey:@"readerWriterSchedulerProvider"];
  v18 = [v12 initWithBackgroundScheduler:schedulerCopy mainThreadScheduler:mainThreadScheduler immediateScheduler:immediateScheduler serialSchedulerProvider:v15 synchronousSerialSchedulerProvider:v16 readerWriterSchedulerProvider:v17];

  v19 = [(CNUIPRLikenessLookup *)self initWithContactStore:storeCopy schedulerProvider:v18 meMonitor:monitorCopy personaId:&stru_1F162C170];
  return v19;
}

- (id)likenessesForContacts:(id)contacts options:(id)options error:(id)error
{
  optionsCopy = options;
  contactsCopy = contacts;
  placeholderProviderFactory = [(CNUIPRLikenessLookup *)self placeholderProviderFactory];
  v10 = [contactsCopy _cn_take:{+[CNUIPRLikenessResolver maxContacts](CNUIPRLikenessResolver, "maxContacts")}];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__CNUIPRLikenessLookup_likenessesForContacts_options_error___block_invoke;
  v15[3] = &unk_1E76E7BD8;
  v15[4] = self;
  v16 = placeholderProviderFactory;
  v17 = optionsCopy;
  v11 = optionsCopy;
  v12 = placeholderProviderFactory;
  v13 = [v10 _cn_map:v15];

  return v13;
}

- (id)resolveLikenessesForContacts:(id)contacts workScheduler:(id)scheduler withContentHandler:(id)handler
{
  schedulerCopy = scheduler;
  handlerCopy = handler;
  contactsCopy = contacts;
  v11 = [contactsCopy _cn_take:{+[CNUIPRLikenessResolver maxContacts](CNUIPRLikenessResolver, "maxContacts")}];

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __86__CNUIPRLikenessLookup_resolveLikenessesForContacts_workScheduler_withContentHandler___block_invoke;
  v23 = &unk_1E76E89F8;
  selfCopy = self;
  v25 = schedulerCopy;
  v12 = schedulerCopy;
  v13 = [v11 _cn_map:&v20];

  v14 = MEMORY[0x1E6996798];
  v15 = [(CNUIPRLikenessLookup *)self schedulerProvider:v20];
  v16 = [v14 combineLatest:v13 resultScheduler:v12 schedulerProvider:v15];
  v17 = [MEMORY[0x1E69967A0] observerWithResultBlock:handlerCopy];

  v18 = [v16 subscribe:v17];

  return v18;
}

- (id)likenessForContact:(id)contact options:(id)options error:(id *)error
{
  optionsCopy = options;
  contactCopy = contact;
  placeholderProviderFactory = [(CNUIPRLikenessLookup *)self placeholderProviderFactory];
  v10 = [(CNUIPRLikenessLookup *)self likenessForContact:contactCopy placeholderProviderFactory:placeholderProviderFactory options:optionsCopy];

  return v10;
}

- (id)likenessesForContact:(id)contact options:(id)options workScheduler:(id)scheduler
{
  contactCopy = contact;
  schedulerCopy = scheduler;
  optionsCopy = options;
  placeholderProviderFactory = [(CNUIPRLikenessLookup *)self placeholderProviderFactory];
  v12 = [(CNUIPRLikenessLookup *)self likenessObservableForContact:contactCopy placeholderProviderFactory:placeholderProviderFactory options:optionsCopy workScheduler:schedulerCopy];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__CNUIPRLikenessLookup_likenessesForContact_options_workScheduler___block_invoke;
  v16[3] = &unk_1E76E9768;
  v17 = contactCopy;
  v13 = contactCopy;
  v14 = [v12 doOnNext:v16];

  return v14;
}

void __67__CNUIPRLikenessLookup_likenessesForContact_options_workScheduler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __67__CNUIPRLikenessLookup_likenessesForContact_options_workScheduler___block_invoke_cold_1();
  }
}

- (id)likenessForContact:(id)contact placeholderProviderFactory:(id)factory options:(id)options
{
  contactCopy = contact;
  factoryCopy = factory;
  optionsCopy = options;
  v11 = objc_opt_class();
  contactStore = [(CNUIPRLikenessLookup *)self contactStore];
  v13 = [v11 contactFuture:contactCopy contactStore:contactStore refetchContact:{-[CNUIPRLikenessLookup skipContactLookup](self, "skipContactLookup") ^ 1}];

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v16 = [featureFlags isFeatureEnabled:6];

  if (v16)
  {
    v29 = 0;
    v17 = [v13 result:&v29];
    v18 = v29;
    v19 = v17;
    if (!v17)
    {
      v20 = +[CNUICoreLogProvider likenesses_os_log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [CNUIPRLikenessLookup likenessForContact:placeholderProviderFactory:options:];
      }

      v19 = contactCopy;
    }

    v21 = [[CNUIPRLikenessSwiftUIAvatarProvider alloc] initWithCNContact:v19];
  }

  else
  {
    immediateScheduler = [MEMORY[0x1E6996818] immediateScheduler];
    v18 = [(CNUIPRLikenessLookup *)self photoFutureForContactFuture:v13 scheduler:immediateScheduler];

    v17 = [(CNUIPRLikenessLookup *)self photoFutureForContactFuture:v13 photoFuture:v18 allowingFallbackForMeCard:0];
    v23 = [(CNUIPRLikenessLookup *)self blessedPhotoWithFuture:v17 contact:contactCopy];
    if (v23)
    {
      v24 = v23;
      v25 = +[CNUICoreLogProvider likenesses_os_log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [CNUIPRLikenessLookup likenessForContact:placeholderProviderFactory:options:];
      }
    }

    else
    {
      v26 = [(CNUIPRLikenessLookup *)self remoteImageWithContactFuture:v13];
      if (v26)
      {
        v24 = v26;
        v25 = +[CNUICoreLogProvider likenesses_os_log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [CNUIPRLikenessLookup likenessForContact:placeholderProviderFactory:options:];
        }
      }

      else
      {
        monogramColor = [optionsCopy monogramColor];
        v24 = [(CNUIPRLikenessLookup *)self basicMonogramWithContactFuture:v13 monogramColor:monogramColor];

        if (v24)
        {
          v25 = +[CNUICoreLogProvider likenesses_os_log];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            [CNUIPRLikenessLookup likenessForContact:placeholderProviderFactory:options:];
          }
        }

        else
        {
          v24 = [(CNUIPRLikenessLookup *)self silhouetteWithPlaceholderProviderFactory:factoryCopy contact:contactCopy];
          v25 = +[CNUICoreLogProvider likenesses_os_log];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            [CNUIPRLikenessLookup likenessForContact:placeholderProviderFactory:options:];
          }
        }
      }
    }

    v21 = v24;
  }

  return v21;
}

- (id)likenessObservableForContact:(id)contact placeholderProviderFactory:(id)factory options:(id)options workScheduler:(id)scheduler
{
  factoryCopy = factory;
  v11 = MEMORY[0x1E695DF70];
  schedulerCopy = scheduler;
  optionsCopy = options;
  contactCopy = contact;
  array = [v11 array];
  v16 = [(CNUIPRLikenessLookup *)self contentObservableForContact:contactCopy placeholderProviderFactory:factoryCopy options:optionsCopy workScheduler:schedulerCopy];

  if ([(CNUIPRLikenessLookup *)self mayIncludeSource:8])
  {
    v17 = [(CNUIPRLikenessLookup *)self loadingPlaceholderObservableWithPlaceholderProviderFactory:factoryCopy];
    [array _cn_addNonNilObject:v17];

    schedulerProvider = [(CNUIPRLikenessLookup *)self schedulerProvider];
    mainThreadScheduler = [schedulerProvider mainThreadScheduler];
    v20 = [v16 observeOn:mainThreadScheduler];

    v16 = v20;
  }

  [array addObject:v16];
  v21 = [MEMORY[0x1E6996798] concatenate:array];

  return v21;
}

- (id)contentObservableForContact:(id)contact placeholderProviderFactory:(id)factory options:(id)options workScheduler:(id)scheduler
{
  v47 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  factoryCopy = factory;
  optionsCopy = options;
  schedulerCopy = scheduler;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v16 = [featureFlags isFeatureEnabled:6];

  if (v16)
  {
    v17 = MEMORY[0x1E6996798];
    v18 = [[CNUIPRLikenessSwiftUIAvatarProvider alloc] initWithCNContact:contactCopy];
    firstObject = [v17 observableWithResult:v18];
  }

  else
  {
    v20 = objc_opt_class();
    contactStore = [(CNUIPRLikenessLookup *)self contactStore];
    personaId = [(CNUIPRLikenessLookup *)self personaId];
    v23 = [v20 contactFuture:contactCopy contactStore:contactStore personaId:personaId scheduler:schedulerCopy refetchContact:{-[CNUIPRLikenessLookup skipContactLookup](self, "skipContactLookup") ^ 1}];

    v39 = [(CNUIPRLikenessLookup *)self photoFutureForContactFuture:v23 scheduler:schedulerCopy];
    v24 = [CNUIPRLikenessLookup photoFutureForContactFuture:"photoFutureForContactFuture:photoFuture:allowingFallbackForMeCard:" photoFuture:v23 allowingFallbackForMeCard:?];
    array = [MEMORY[0x1E695DF70] array];
    v38 = v24;
    v26 = [(CNUIPRLikenessLookup *)self blessedPhotoObservableWithFuture:v24 contact:contactCopy workScheduler:schedulerCopy];
    [array _cn_addNonNilObject:v26];

    v27 = [(CNUIPRLikenessLookup *)self remoteImagesObservableWithContactFuture:v23 workScheduler:schedulerCopy];
    [array _cn_addNonNilObject:v27];

    v40 = optionsCopy;
    monogramColor = [optionsCopy monogramColor];
    v29 = [(CNUIPRLikenessLookup *)self basicMonogramObservableWithContactFuture:v23 monogramColor:monogramColor];
    [array _cn_addNonNilObject:v29];

    v41 = factoryCopy;
    v30 = [(CNUIPRLikenessLookup *)self silhouetteObservableWithPlaceholderProviderFactory:factoryCopy contact:contactCopy workScheduler:schedulerCopy];
    [array _cn_addNonNilObject:v30];

    firstObject = [array firstObject];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    _cn_tail = [array _cn_tail];
    v32 = [_cn_tail countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v43;
      do
      {
        v35 = 0;
        v36 = firstObject;
        do
        {
          if (*v43 != v34)
          {
            objc_enumerationMutation(_cn_tail);
          }

          firstObject = [v36 onEmpty:*(*(&v42 + 1) + 8 * v35)];

          ++v35;
          v36 = firstObject;
        }

        while (v33 != v35);
        v33 = [_cn_tail countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v33);
    }

    optionsCopy = v40;
    factoryCopy = v41;
  }

  return firstObject;
}

- (CNUIPRLikenessProvider)loadingPlaceholderLikeness
{
  placeholderProviderFactory = [(CNUIPRLikenessLookup *)self placeholderProviderFactory];
  v4 = [(CNUIPRLikenessLookup *)self loadingPlaceholderWithPlaceholderProviderFactory:placeholderProviderFactory];

  return v4;
}

- (id)loadingPlaceholderObservableWithPlaceholderProviderFactory:(id)factory
{
  factoryCopy = factory;
  v5 = objc_opt_class();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__CNUIPRLikenessLookup_loadingPlaceholderObservableWithPlaceholderProviderFactory___block_invoke;
  v11[3] = &unk_1E76E9790;
  v12 = factoryCopy;
  v6 = factoryCopy;
  schedulerProvider = [(CNUIPRLikenessLookup *)self schedulerProvider];
  mainThreadScheduler = [schedulerProvider mainThreadScheduler];
  v9 = [v5 observableFromLikenessProviderBlock:v11 withScheduler:mainThreadScheduler];

  return v9;
}

- (id)blessedPhotoWithFuture:(id)future contact:(id)contact
{
  futureCopy = future;
  contactCopy = contact;
  if ([(CNUIPRLikenessLookup *)self mayIncludeSource:1])
  {
    v8 = [CNUILikenessFingerprint fingerprintForContact:contactCopy];
    v9 = [objc_opt_class() photoWithPhotoFuture:futureCopy likenessFingerprint:v8];
    v10 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [CNUIPRLikenessLookup blessedPhotoWithFuture:contact:];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)blessedPhotoObservableWithFuture:(id)future contact:(id)contact workScheduler:(id)scheduler
{
  futureCopy = future;
  contactCopy = contact;
  schedulerCopy = scheduler;
  if ([(CNUIPRLikenessLookup *)self mayIncludeSource:1])
  {
    v11 = [CNUILikenessFingerprint fingerprintForContact:contactCopy];
    v12 = [objc_opt_class() photoObservableWithPhotoFuture:futureCopy likenessFingerprint:v11 scheduler:schedulerCopy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79__CNUIPRLikenessLookup_blessedPhotoObservableWithFuture_contact_workScheduler___block_invoke;
    v15[3] = &unk_1E76E9768;
    v16 = contactCopy;
    v13 = [v12 doOnNext:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __79__CNUIPRLikenessLookup_blessedPhotoObservableWithFuture_contact_workScheduler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __79__CNUIPRLikenessLookup_blessedPhotoObservableWithFuture_contact_workScheduler___block_invoke_cold_1();
  }
}

- (id)remoteImageWithContactFuture:(id)future
{
  v18 = *MEMORY[0x1E69E9840];
  futureCopy = future;
  if ([(CNUIPRLikenessLookup *)self mayIncludeSource:1])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__5;
    v15 = __Block_byref_object_dispose__5;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__CNUIPRLikenessLookup_remoteImageWithContactFuture___block_invoke;
    v10[3] = &unk_1E76E97B8;
    v10[4] = &v11;
    v5 = [futureCopy flatMap:v10];
    v6 = [objc_opt_class() photoWithPhotoFuture:v5 likenessFingerprint:v12[5]];
    v7 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [futureCopy result:0];
      [(CNUIPRLikenessLookup *)v6 remoteImageWithContactFuture:v8, buf, v7];
    }

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __53__CNUIPRLikenessLookup_remoteImageWithContactFuture___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CNUILikenessFingerprint fingerprintForContact:v3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [CNUIRemotePhotoFutures photoForContact:v3];

  return v7;
}

- (id)remoteImagesObservableWithContactFuture:(id)future workScheduler:(id)scheduler
{
  futureCopy = future;
  schedulerCopy = scheduler;
  if ([(CNUIPRLikenessLookup *)self mayIncludeSource:1])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__5;
    v19 = __Block_byref_object_dispose__5;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__CNUIPRLikenessLookup_remoteImagesObservableWithContactFuture_workScheduler___block_invoke;
    v14[3] = &unk_1E76E97B8;
    v14[4] = &v15;
    v8 = [futureCopy flatMap:v14];
    v9 = [objc_opt_class() photoObservableWithPhotoFuture:v8 likenessFingerprint:v16[5] scheduler:schedulerCopy];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__CNUIPRLikenessLookup_remoteImagesObservableWithContactFuture_workScheduler___block_invoke_2;
    v12[3] = &unk_1E76E9768;
    v13 = futureCopy;
    v10 = [v9 doOnNext:v12];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __78__CNUIPRLikenessLookup_remoteImagesObservableWithContactFuture_workScheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CNUILikenessFingerprint fingerprintForContact:v3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [CNUIRemotePhotoFutures photoForContact:v3];

  return v7;
}

void __78__CNUIPRLikenessLookup_remoteImagesObservableWithContactFuture_workScheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __78__CNUIPRLikenessLookup_remoteImagesObservableWithContactFuture_workScheduler___block_invoke_2_cold_1();
  }
}

- (id)basicMonogramWithContactFuture:(id)future monogramColor:(id)color
{
  futureCopy = future;
  colorCopy = color;
  if ([(CNUIPRLikenessLookup *)self mayIncludeSource:2])
  {
    v8 = [objc_opt_class() basicMonogramForContactFuture:futureCopy monogramColor:colorCopy];
    v9 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CNUIPRLikenessLookup basicMonogramWithContactFuture:monogramColor:];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)basicMonogramObservableWithContactFuture:(id)future monogramColor:(id)color
{
  futureCopy = future;
  colorCopy = color;
  if ([(CNUIPRLikenessLookup *)self mayIncludeSource:2])
  {
    v8 = [objc_opt_class() basicMonogramObservableForContactFuture:futureCopy monogramColor:colorCopy];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__CNUIPRLikenessLookup_basicMonogramObservableWithContactFuture_monogramColor___block_invoke;
    v11[3] = &unk_1E76E9768;
    v12 = futureCopy;
    v9 = [v8 doOnNext:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __79__CNUIPRLikenessLookup_basicMonogramObservableWithContactFuture_monogramColor___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __79__CNUIPRLikenessLookup_basicMonogramObservableWithContactFuture_monogramColor___block_invoke_cold_1();
  }
}

+ (id)basicMonogramForContactFuture:(id)future monogramColor:(id)color
{
  v15[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  v7 = [future result:0];
  if ([v7 isKeyAvailable:*MEMORY[0x1E695C410]] && !objc_msgSend(v7, "contactType") && (objc_msgSend(MEMORY[0x1E695CD80], "descriptorForRequiredKeysForStyle:", 0), v8 = objc_claimAutoreleasedReturnValue(), v15[0] = v8, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v15, 1), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "areKeysAvailable:", v9), v9, v8, v10))
  {
    v11 = [MEMORY[0x1E695CD80] abbreviatedStringFromContact:v7 trimmingWhitespace:1];
    v12 = v11;
    if (v11 && [v11 length])
    {
      v13 = [self basicMonogramFromString:v12 color:colorCopy];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)basicMonogramObservableForContactFuture:(id)future monogramColor:(id)color
{
  v6 = MEMORY[0x1E6996798];
  colorCopy = color;
  v8 = [v6 observableWithFuture:future];
  v9 = [v8 map:&__block_literal_global_53];
  v10 = [v9 filter:*MEMORY[0x1E6996550]];

  v11 = [self basicMonogramObservableFromString:v10 color:colorCopy];

  return v11;
}

id __78__CNUIPRLikenessLookup_basicMonogramObservableForContactFuture_monogramColor___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isKeyAvailable:*MEMORY[0x1E695C410]] && !objc_msgSend(v2, "contactType"))
  {
    v5 = [MEMORY[0x1E695CD80] abbreviatedStringFromContact:v2 trimmingWhitespace:1];
    if ((*(*MEMORY[0x1E6996568] + 16))())
    {
      v6 = [MEMORY[0x1E695DFB0] null];
    }

    else
    {
      v6 = v5;
    }

    v3 = v6;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  return v3;
}

+ (id)basicMonogramFromString:(id)string color:(id)color
{
  stringCopy = string;
  colorCopy = color;
  if (stringCopy && [stringCopy length])
  {
    monogram = [(objc_class *)getPRMonogramClass_0() monogram];
    [monogram setText:stringCopy];
    text = [monogram text];
    if (text)
    {
      text2 = [monogram text];
      v10 = [text2 length];

      if (v10)
      {
        if (colorCopy)
        {
          [monogram setMonogramColor:colorCopy];
        }

        v11 = MEMORY[0x1E69BDC38];
        dataRepresentation = [monogram dataRepresentation];
        v13 = [v11 monogramWithRecipe:dataRepresentation staticRepresentation:0];

        if (v13)
        {
          text = [[CNUIPRLikenessProvider alloc] initWithPRLikeness:v13];
        }

        else
        {
          text = 0;
        }
      }

      else
      {
        text = 0;
      }
    }
  }

  else
  {
    text = 0;
  }

  return text;
}

+ (id)basicMonogramObservableFromString:(id)string color:(id)color
{
  colorCopy = color;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__CNUIPRLikenessLookup_basicMonogramObservableFromString_color___block_invoke;
  v10[3] = &unk_1E76E9800;
  v11 = colorCopy;
  v6 = colorCopy;
  v7 = [string map:v10];
  v8 = [v7 filter:*MEMORY[0x1E6996550]];

  return v8;
}

id __64__CNUIPRLikenessLookup_basicMonogramObservableFromString_color___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E6996568];
  if ((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], v3))
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    v6 = [(objc_class *)getPRMonogramClass_0() monogram];
    [v6 setText:v3];
    v7 = [v6 text];
    v8 = (*(v4 + 16))(v4, v7);

    if (v8)
    {
      v5 = [MEMORY[0x1E695DFB0] null];
    }

    else
    {
      if (*(a1 + 32))
      {
        [v6 setMonogramColor:?];
      }

      v9 = MEMORY[0x1E69BDC38];
      v10 = [v6 dataRepresentation];
      v11 = [v9 monogramWithRecipe:v10 staticRepresentation:0];

      if (v11)
      {
        v12 = [[CNUIPRLikenessProvider alloc] initWithPRLikeness:v11];
      }

      else
      {
        v12 = [MEMORY[0x1E695DFB0] null];
      }

      v5 = v12;
    }
  }

  return v5;
}

- (id)basicMonogramFromString:(id)string color:(id)color
{
  colorCopy = color;
  stringCopy = string;
  v7 = [objc_opt_class() basicMonogramFromString:stringCopy color:colorCopy];

  return v7;
}

- (id)basicMonogramObservableFromString:(id)string color:(id)color
{
  colorCopy = color;
  stringCopy = string;
  v7 = [objc_opt_class() basicMonogramObservableFromString:stringCopy color:colorCopy];

  return v7;
}

- (id)silhouetteWithPlaceholderProviderFactory:(id)factory contact:(id)contact
{
  factoryCopy = factory;
  contactCopy = contact;
  if ([(CNUIPRLikenessLookup *)self mayIncludeSource:4])
  {
    v8 = [factoryCopy placeholderProviderForContact:contactCopy];
    v9 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CNUIPRLikenessLookup silhouetteWithPlaceholderProviderFactory:contact:];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)silhouetteObservableWithPlaceholderProviderFactory:(id)factory contact:(id)contact workScheduler:(id)scheduler
{
  factoryCopy = factory;
  contactCopy = contact;
  schedulerCopy = scheduler;
  if ([(CNUIPRLikenessLookup *)self mayIncludeSource:4])
  {
    v11 = objc_opt_class();
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __97__CNUIPRLikenessLookup_silhouetteObservableWithPlaceholderProviderFactory_contact_workScheduler___block_invoke;
    v18 = &unk_1E76E9828;
    v19 = factoryCopy;
    v20 = contactCopy;
    v12 = [v11 observableFromLikenessProviderBlock:&v15 withScheduler:schedulerCopy];
    v13 = [v12 doOnNext:{&__block_literal_global_49_0, v15, v16, v17, v18}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __97__CNUIPRLikenessLookup_silhouetteObservableWithPlaceholderProviderFactory_contact_workScheduler___block_invoke_2()
{
  v0 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    [CNUIPRLikenessLookup silhouetteWithPlaceholderProviderFactory:contact:];
  }
}

- (id)badgeWithLikenessBadge:(id)badge
{
  badgeCopy = badge;
  v4 = [[CNUIPRLikenessBadgeImageProvider alloc] initWithBadge:badgeCopy];

  return v4;
}

- (id)badgeObservableWithLikenessBadge:(id)badge workScheduler:(id)scheduler
{
  badgeCopy = badge;
  schedulerCopy = scheduler;
  v7 = objc_opt_class();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__CNUIPRLikenessLookup_badgeObservableWithLikenessBadge_workScheduler___block_invoke;
  v12[3] = &unk_1E76E9790;
  v13 = badgeCopy;
  v8 = badgeCopy;
  v9 = [v7 observableFromLikenessProviderBlock:v12 withScheduler:schedulerCopy];

  v10 = [v9 doOnNext:&__block_literal_global_52];

  return v10;
}

CNUIPRLikenessBadgeImageProvider *__71__CNUIPRLikenessLookup_badgeObservableWithLikenessBadge_workScheduler___block_invoke(uint64_t a1)
{
  v1 = [[CNUIPRLikenessBadgeImageProvider alloc] initWithBadge:*(a1 + 32)];

  return v1;
}

void __71__CNUIPRLikenessLookup_badgeObservableWithLikenessBadge_workScheduler___block_invoke_2()
{
  v0 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __71__CNUIPRLikenessLookup_badgeObservableWithLikenessBadge_workScheduler___block_invoke_2_cold_1();
  }
}

+ (id)observableFromLikenessProviderBlock:(id)block withScheduler:(id)scheduler
{
  blockCopy = block;
  schedulerCopy = scheduler;
  v7 = MEMORY[0x1E6996798];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__CNUIPRLikenessLookup_observableFromLikenessProviderBlock_withScheduler___block_invoke;
  v12[3] = &unk_1E76E9898;
  v13 = schedulerCopy;
  v14 = blockCopy;
  v8 = blockCopy;
  v9 = schedulerCopy;
  v10 = [v7 observableWithBlock:v12];

  return v10;
}

id __74__CNUIPRLikenessLookup_observableFromLikenessProviderBlock_withScheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__CNUIPRLikenessLookup_observableFromLikenessProviderBlock_withScheduler___block_invoke_2;
  v9[3] = &unk_1E76E9870;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  v7 = [v4 performCancelableBlock:v9];

  return v7;
}

void __74__CNUIPRLikenessLookup_observableFromLikenessProviderBlock_withScheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v6 = v4(v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__CNUIPRLikenessLookup_observableFromLikenessProviderBlock_withScheduler___block_invoke_3;
  v8[3] = &unk_1E76E7F60;
  v9 = *(a1 + 32);
  v10 = v6;
  v7 = v6;
  [v5 performBlock:v8];
}

uint64_t __74__CNUIPRLikenessLookup_observableFromLikenessProviderBlock_withScheduler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) observerDidReceiveResult:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 observerDidComplete];
}

+ (id)photoWithPhotoFuture:(id)future likenessFingerprint:(id)fingerprint
{
  fingerprintCopy = fingerprint;
  v11 = 0;
  v6 = [future result:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = [[CNUIPRLikenessPhotoProvider alloc] initWithPhotoData:v6 fingerprint:fingerprintCopy];
  }

  else
  {
    v9 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[CNUIPRLikenessLookup photoWithPhotoFuture:likenessFingerprint:];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)photoObservableWithPhotoFuture:(id)future likenessFingerprint:(id)fingerprint scheduler:(id)scheduler
{
  fingerprintCopy = fingerprint;
  v8 = MEMORY[0x1E6996798];
  schedulerCopy = scheduler;
  v10 = [v8 observableWithFuture:future];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__CNUIPRLikenessLookup_photoObservableWithPhotoFuture_likenessFingerprint_scheduler___block_invoke;
  v17[3] = &unk_1E76E98C0;
  v18 = fingerprintCopy;
  v11 = fingerprintCopy;
  v12 = [v10 map:v17];
  v13 = [v12 subscribeOn:schedulerCopy];

  emptyObservable = [MEMORY[0x1E6996798] emptyObservable];
  v15 = [v13 onError:emptyObservable];

  return v15;
}

CNUIPRLikenessPhotoProvider *__85__CNUIPRLikenessLookup_photoObservableWithPhotoFuture_likenessFingerprint_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CNUIPRLikenessPhotoProvider alloc] initWithPhotoData:v3 fingerprint:*(a1 + 32)];

  return v4;
}

+ (BOOL)useGivenAvatarForContact:(id)contact
{
  contactCopy = contact;
  if ([contactCopy hasBeenPersisted])
  {
    v4 = 0;
  }

  else
  {
    imageData = [contactCopy imageData];
    v4 = imageData != 0;
  }

  return v4;
}

+ (id)contactFuture:(id)future contactStore:(id)store refetchContact:(BOOL)contact
{
  v26[1] = *MEMORY[0x1E69E9840];
  futureCopy = future;
  storeCopy = store;
  if (!contact)
  {
    v10 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[CNUIPRLikenessLookup contactFuture:contactStore:refetchContact:];
    }

    goto LABEL_7;
  }

  if ([objc_opt_class() useGivenAvatarForContact:futureCopy])
  {
    v10 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[CNUIPRLikenessLookup contactFuture:contactStore:refetchContact:];
    }

LABEL_7:

    v11 = [MEMORY[0x1E6996720] futureWithResult:futureCopy];
    goto LABEL_8;
  }

  if (!storeCopy)
  {
    v10 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[CNUIPRLikenessLookup contactFuture:contactStore:refetchContact:];
    }

    goto LABEL_7;
  }

  if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] != 3)
  {
    v10 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[CNUIPRLikenessLookup contactFuture:contactStore:refetchContact:];
    }

    goto LABEL_7;
  }

  descriptorForRequiredKeys = [self descriptorForRequiredKeys];
  v26[0] = descriptorForRequiredKeys;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v25 = 0;
  v15 = [storeCopy contactsMatchingPropertiesOfContact:futureCopy unifyResults:1 keysToFetch:v14 error:&v25];
  v16 = v25;

  if (v15)
  {
    if ([v15 count])
    {
      if ([v15 count] >= 2)
      {
        v17 = +[CNUICoreLogProvider likenesses_os_log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *v24 = 0;
          _os_log_impl(&dword_1A31E6000, v17, OS_LOG_TYPE_INFO, "[LikenessResolver] Matched more than one contact when resolving likeness", v24, 2u);
        }
      }

      firstObject = [v15 firstObject];
      v19 = +[CNUICoreLogProvider likenesses_os_log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        +[CNUIPRLikenessLookup contactFuture:contactStore:refetchContact:];
      }

      v20 = [MEMORY[0x1E6996720] futureWithResult:firstObject];
    }

    else
    {
      v22 = +[CNUICoreLogProvider likenesses_os_log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        +[CNUIPRLikenessLookup contactFuture:contactStore:refetchContact:];
      }

      v23 = MEMORY[0x1E6996720];
      firstObject = [CNContactsUIError errorWithCode:402];
      v20 = [v23 futureWithError:firstObject];
    }

    v11 = v20;
  }

  else
  {
    v21 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[CNUIPRLikenessLookup contactFuture:contactStore:refetchContact:];
    }

    v11 = [MEMORY[0x1E6996720] futureWithError:v16];
  }

LABEL_8:

  return v11;
}

+ (id)contactFuture:(id)future contactStore:(id)store personaId:(id)id scheduler:(id)scheduler refetchContact:(BOOL)contact
{
  futureCopy = future;
  storeCopy = store;
  schedulerCopy = scheduler;
  if (!contact)
  {
    v17 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      +[CNUIPRLikenessLookup contactFuture:contactStore:refetchContact:];
    }

    v16 = MEMORY[0x1E6996720];
    goto LABEL_7;
  }

  v14 = [objc_opt_class() useGivenAvatarForContact:futureCopy];
  v15 = MEMORY[0x1E6996720];
  if (v14)
  {
    v16 = MEMORY[0x1E6996720];
LABEL_7:
    v18 = [v16 futureWithResult:futureCopy];
    goto LABEL_9;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__CNUIPRLikenessLookup_contactFuture_contactStore_personaId_scheduler_refetchContact___block_invoke;
  v23[3] = &unk_1E76E8730;
  v19 = futureCopy;
  v24 = v19;
  selfCopy = self;
  v25 = storeCopy;
  v18 = [v15 futureWithBlock:v23 scheduler:schedulerCopy];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __86__CNUIPRLikenessLookup_contactFuture_contactStore_personaId_scheduler_refetchContact___block_invoke_62;
  v21[3] = &unk_1E76E8560;
  v22 = v19;
  [v18 addSuccessBlock:v21];

LABEL_9:

  return v18;
}

id __86__CNUIPRLikenessLookup_contactFuture_contactStore_personaId_scheduler_refetchContact___block_invoke(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 48) descriptorForRequiredKeys];
  if (*(a1 + 40) && [MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] == 3)
  {
    v8 = a1 + 32;
    v6 = *(a1 + 32);
    v7 = *(v8 + 8);
    v15[0] = v5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v10 = [v7 contactsMatchingPropertiesOfContact:v6 unifyResults:1 keysToFetch:v9 error:a2];

    if ([v10 count] >= 2)
    {
      v11 = +[CNUICoreLogProvider likenesses_os_log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A31E6000, v11, OS_LOG_TYPE_INFO, "[LikenessResolver] Matched more than one contact when resolving likeness", v14, 2u);
      }
    }

    v12 = [v10 firstObject];

    v4 = v12;
  }

  return v4;
}

void __86__CNUIPRLikenessLookup_contactFuture_contactStore_personaId_scheduler_refetchContact___block_invoke_62(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __86__CNUIPRLikenessLookup_contactFuture_contactStore_personaId_scheduler_refetchContact___block_invoke_62_cold_1();
  }
}

- (BOOL)shouldFetchSharedPhotoForContact:(id)contact
{
  contactCopy = contact;
  if (([(CNUIPRLikenessLookup *)self lookupOptions]& 2) != 0)
  {
    if ([(CNUIPRLikenessLookup *)self isMeContact:contactCopy])
    {
      currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
      nicknameProvider = [currentEnvironment nicknameProvider];
      isNicknameSharingEnabled = [nicknameProvider isNicknameSharingEnabled];
    }

    else
    {
      isNicknameSharingEnabled = 0;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    thumbnailImageData = [contactCopy thumbnailImageData];
    if (thumbnailImageData)
    {
      v11 = 1;
    }

    else if ([contactCopy isKeyAvailable:*MEMORY[0x1E695C278]])
    {
      imageData = [contactCopy imageData];
      v11 = imageData != 0;
    }

    else
    {
      v11 = 0;
    }

    v5 = isNicknameSharingEnabled & (isKindOfClass & v11 ^ 1);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isMeContact:(id)contact
{
  contactCopy = contact;
  if ([(CNUIPRLikenessLookup *)self skipContactLookup])
  {
    v5 = 0;
  }

  else
  {
    meMonitor = [(CNUIPRLikenessLookup *)self meMonitor];

    if (meMonitor)
    {
      meMonitor2 = [(CNUIPRLikenessLookup *)self meMonitor];
      v5 = [meMonitor2 isMeContact:contactCopy];
    }

    else
    {
      contactStore = [(CNUIPRLikenessLookup *)self contactStore];
      meMonitor2 = [contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:MEMORY[0x1E695E0F0] error:0];

      identifier = [contactCopy identifier];
      identifier2 = [meMonitor2 identifier];
      v5 = [identifier isEqualToString:identifier2];
    }
  }

  return v5;
}

- (id)photoFutureForContactFuture:(id)future scheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__CNUIPRLikenessLookup_photoFutureForContactFuture_scheduler___block_invoke;
  v10[3] = &unk_1E76E9910;
  v10[4] = self;
  v11 = schedulerCopy;
  v7 = schedulerCopy;
  v8 = [future flatMap:v10];

  return v8;
}

id __62__CNUIPRLikenessLookup_photoFutureForContactFuture_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) shouldFetchSharedPhotoForContact:v3];
  v5 = MEMORY[0x1E6996720];
  if (v4)
  {
    v6 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v7 = __62__CNUIPRLikenessLookup_photoFutureForContactFuture_scheduler___block_invoke_2;
  }

  else
  {
    v6 = v13;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v7 = __62__CNUIPRLikenessLookup_photoFutureForContactFuture_scheduler___block_invoke_3;
  }

  v6[2] = v7;
  v6[3] = &unk_1E76E98E8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v6[4] = v8;
  v6[5] = v3;
  v10 = v3;
  v11 = [v5 futureWithBlock:v6 scheduler:v9];

  return v11;
}

- (id)futureResultForPhotoImageDataForMeContact:(id)contact error:(id *)error
{
  contactCopy = contact;
  v7 = objc_alloc_init(MEMORY[0x1E69967D0]);
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  nicknameProvider = [currentEnvironment nicknameProvider];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__CNUIPRLikenessLookup_futureResultForPhotoImageDataForMeContact_error___block_invoke;
  v18[3] = &unk_1E76E9938;
  v10 = contactCopy;
  v19 = v10;
  selfCopy = self;
  v11 = v7;
  v21 = v11;
  [nicknameProvider fetchPersonalNicknameAsContactWithCompletion:v18];

  v12 = *MEMORY[0x1E6996590];
  future = [v11 future];
  v14 = [future resultWithTimeout:0 error:0.2];
  v15 = (*(v12 + 16))(v12, v14);

  if ((*(*MEMORY[0x1E6996540] + 16))())
  {
    v16 = [(CNUIPRLikenessLookup *)self futureResultForPhotoImageDataForContact:v10 error:error];

    v15 = v16;
  }

  return v15;
}

void __72__CNUIPRLikenessLookup_futureResultForPhotoImageDataForMeContact_error___block_invoke(void *a1, void *a2)
{
  v4 = a2;
  if (!a2)
  {
    v4 = a1[4];
  }

  v5 = v4;
  v6 = a1[5];
  v11 = a2;
  v7 = [v6 photoImageDataForContact:v5 error:0];
  v8 = (*(*MEMORY[0x1E6996540] + 16))();
  v9 = a1[6];
  if (v8)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695C448] code:302 userInfo:0];
    [v9 finishWithError:v10];
  }

  else
  {
    [v9 finishWithResult:v7];
  }
}

- (id)futureResultForPhotoImageDataForContact:(id)contact error:(id *)error
{
  v5 = [(CNUIPRLikenessLookup *)self photoImageDataForContact:contact error:?];
  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695C448] code:302 userInfo:0];
    if (error)
    {
      v7 = v7;
      *error = v7;
    }

    v6 = 0;
  }

  return v6;
}

- (id)photoImageDataForContact:(id)contact error:(id *)error
{
  contactCopy = contact;
  if ([contactCopy isKeyAvailable:*MEMORY[0x1E695C400]])
  {
    thumbnailImageData = [contactCopy thumbnailImageData];
    if (![thumbnailImageData length] && objc_msgSend(contactCopy, "isKeyAvailable:", *MEMORY[0x1E695C278]))
    {
      imageData = [contactCopy imageData];

      if ([contactCopy isKeyAvailable:*MEMORY[0x1E695C1E8]])
      {
        [contactCopy cropRect];
      }

      thumbnailImageData = CNImageUtilsCroppedImageDataFromFullSizeImageData();
    }

    v7 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CNUIPRLikenessLookup photoImageDataForContact:error:];
    }
  }

  else
  {
    thumbnailImageData = 0;
  }

  return thumbnailImageData;
}

- (void)likenessForContact:placeholderProviderFactory:options:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)remoteImageWithContactFuture:(uint8_t *)buf .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1A31E6000, log, OS_LOG_TYPE_DEBUG, "[LikenessResolver] Received photo provider %@ for contact %@", buf, 0x16u);
}

void __78__CNUIPRLikenessLookup_remoteImagesObservableWithContactFuture_workScheduler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_8();
  v1 = [*(v0 + 32) result:0];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_0(&dword_1A31E6000, v2, v3, "[LikenessResolver] Received remote image %@ for contact %@", v4, v5, v6, v7, v8);
}

- (void)basicMonogramWithContactFuture:monogramColor:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v1 = [v0 result:0];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_0(&dword_1A31E6000, v2, v3, "[LikenessResolver] Creating basic monogram %@ for contact %@", v4, v5, v6, v7, v8);
}

void __79__CNUIPRLikenessLookup_basicMonogramObservableWithContactFuture_monogramColor___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8();
  v1 = [*(v0 + 32) result:0];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_0(&dword_1A31E6000, v2, v3, "[LikenessResolver] Creating basic monogram %@ for contact %@", v4, v5, v6, v7, v8);
}

+ (void)photoWithPhotoFuture:likenessFingerprint:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1A31E6000, v0, OS_LOG_TYPE_DEBUG, "[LikenessResolver] Could not load photo: %{public}@", v1, 0xCu);
}

+ (void)contactFuture:contactStore:refetchContact:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)contactFuture:contactStore:refetchContact:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)photoImageDataForContact:error:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v0, "length")}];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_0(&dword_1A31E6000, v2, v3, "[LikenessResolver] Returning thumbnail/image of %@, length: %@", v4, v5, v6, v7, v8);
}

@end