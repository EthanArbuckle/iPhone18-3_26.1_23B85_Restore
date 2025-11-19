@interface MUIAvatarImageGenerator
+ (id)log;
+ (id)stringForStyle:(int64_t)a3;
+ (void)roundAvatarView:(id)a3 withBorder:(BOOL)a4 size:(double)a5;
- (BOOL)_canGenerateImages;
- (EFFuture)allowGeneratingAvatarImagesFuture;
- (MUIAvatarImageGenerator)initWithBimiProvider:(id)a3 categoryProvider:(id)a4 businessServiceProvider:(id)a5 genericAvatarProvider:(id)a6 contactsProviderHandler:(id)a7;
- (MUIAvatarImageGenerator)initWithBimiProvider:(id)a3 messageRepository:(id)a4 contactsProviderHandler:(id)a5;
- (MUIContactsProvider)contactsProvider;
- (id)_avatarCacheKeyForContext:(id)a3;
- (id)_avatarCacheKeyForEmailAddress:(id)a3 isAuthenticated:(BOOL)a4 businessLogoID:(id)a5;
- (id)_businessAvatarImageForContext:(id)a3 handler:(id)a4;
- (id)_cachedStyleIfAvailableForContext:(id)a3;
- (id)_emailAddressDomainOrStringValueForAddress:(id)a3;
- (id)_generateAvatarImageForContext:(id)a3 handler:(id)a4;
- (id)_placeholderCacheEntryForContext:(id)a3 style:(int64_t)a4;
- (id)contactForContext:(id)a3 handler:(id)a4;
- (int64_t)_avatarStyleIfAvailableForContext:(id)a3;
- (void)_avatarStyleForContext:(id)a3 completionHandler:(id)a4;
- (void)_categoryForContext:(id)a3 completionHandler:(id)a4;
- (void)_genericAvatarImageForContext:(id)a3 handler:(id)a4;
- (void)_invalidateAvatarCache;
- (void)allowGeneratingAvatarImages;
- (void)removeCachedAvatarImagesForAuthenticatedMessagesWithEmailAddress:(id)a3 businessLogoID:(id)a4;
@end

@implementation MUIAvatarImageGenerator

- (BOOL)_canGenerateImages
{
  v2 = [(MUIAvatarImageGenerator *)self allowsGeneratePromise];
  v3 = [v2 future];
  v4 = [v3 resultIfAvailable];
  v5 = v4 != 0;

  return v5;
}

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__MUIAvatarImageGenerator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_6 != -1)
  {
    dispatch_once(&log_onceToken_6, block);
  }

  v2 = log_log_6;

  return v2;
}

void __30__MUIAvatarImageGenerator_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_6;
  log_log_6 = v2;
}

- (MUIContactsProvider)contactsProvider
{
  v3 = EFAtomicObjectLoad();
  if (!v3)
  {
    v4 = [(MUIAvatarImageGenerator *)self contactsProviderHandler];
    v5 = v4[2]();

    v3 = EFAtomicObjectSetIfNil();
  }

  return v3;
}

- (void)allowGeneratingAvatarImages
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = +[MUIAvatarImageGenerator log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_214A5E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
  }

  v6 = [(MUIAvatarImageGenerator *)self allowsGeneratePromise];
  v7 = [MEMORY[0x277CBEB68] null];
  [v6 finishWithResult:v7];
}

+ (void)roundAvatarView:(id)a3 withBorder:(BOOL)a4 size:(double)a5
{
  v6 = a4;
  v18 = a3;
  [v18 mui_currentScreenScale];
  v8 = fmax(v7, 1.0);
  if (v6)
  {
    v9 = [MEMORY[0x277D75348] mailBrandAvatarBorderColor];
    v10 = 1.0 / v8;
  }

  else
  {
    v9 = 0;
    v10 = 0.0;
  }

  if (MUISolariumFeatureEnabled())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v11 = v18;
    [v11 setBorderColor:v9];
  }

  else
  {
    v12 = [v18 layer];
    [v12 setCornerRadius:round(a5 * 0.2 * v8) / v8];

    v13 = *MEMORY[0x277CDA138];
    v14 = [v18 layer];
    [v14 setCornerCurve:v13];

    v15 = [v18 layer];
    [v15 setMasksToBounds:1];

    v16 = [v9 CGColor];
    v17 = [v18 layer];
    [v17 setBorderColor:v16];

    v11 = [v18 layer];
  }

  [v11 setBorderWidth:v10];

LABEL_9:
}

+ (id)stringForStyle:(int64_t)a3
{
  if (a3)
  {
    return @"rounded rect";
  }

  else
  {
    return @"circle";
  }
}

- (MUIAvatarImageGenerator)initWithBimiProvider:(id)a3 categoryProvider:(id)a4 businessServiceProvider:(id)a5 genericAvatarProvider:(id)a6 contactsProviderHandler:(id)a7
{
  v39 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v40.receiver = self;
  v40.super_class = MUIAvatarImageGenerator;
  v17 = [(MUIAvatarImageGenerator *)&v40 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_businessServiceProvider, a5);
    objc_storeStrong(&v18->_bimiProvider, a3);
    objc_storeStrong(&v18->_categoryProvider, a4);
    objc_storeStrong(&v18->_genericAvatarProvider, a6);
    v19 = _Block_copy(v16);
    contactsProviderHandler = v18->_contactsProviderHandler;
    v18->_contactsProviderHandler = v19;

    v21 = [MEMORY[0x277D071B8] serialDispatchQueueSchedulerWithName:@"com.apple.mailui.avatarImage" qualityOfService:25];
    avatarImageScheduler = v18->_avatarImageScheduler;
    v18->_avatarImageScheduler = v21;

    v23 = [MEMORY[0x277D071B8] serialDispatchQueueSchedulerWithName:@"com.apple.mailui.businessavatar" qualityOfService:25];
    businessAvatarScheduler = v18->_businessAvatarScheduler;
    v18->_businessAvatarScheduler = v23;

    v25 = objc_alloc(MEMORY[0x277D07168]);
    v26 = [MEMORY[0x277CBEB38] dictionary];
    v27 = [v25 initWithObject:v26];
    senderStyleCache = v18->_senderStyleCache;
    v18->_senderStyleCache = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEA78]);
    avatarCache = v18->_avatarCache;
    v18->_avatarCache = v29;

    v31 = objc_alloc_init(MEMORY[0x277CBEA78]);
    genericAvatarCache = v18->_genericAvatarCache;
    v18->_genericAvatarCache = v31;

    v33 = [MEMORY[0x277D071A8] promise];
    allowsGeneratePromise = v18->_allowsGeneratePromise;
    v18->_allowsGeneratePromise = v33;

    v35 = [MEMORY[0x277CBEAA8] distantPast];
    lastTimeout = v18->_lastTimeout;
    v18->_lastTimeout = v35;

    v37 = [MEMORY[0x277CCAB98] defaultCenter];
    [v37 addObserver:v18 selector:sel__invalidateAvatarCache name:*MEMORY[0x277CBD140] object:0];
  }

  return v18;
}

- (MUIAvatarImageGenerator)initWithBimiProvider:(id)a3 messageRepository:(id)a4 contactsProviderHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[MUIMessageRepositoryCategoryProvider alloc] initWithMessageRepository:v9];
  v12 = [[MUIBusinessConnectServiceProvider alloc] initWithMessageRepository:v9];

  v13 = objc_alloc_init(MUIPassKitAvatarProvider);
  v14 = [(MUIAvatarImageGenerator *)self initWithBimiProvider:v10 categoryProvider:v11 businessServiceProvider:v12 genericAvatarProvider:v13 contactsProviderHandler:v8];

  return v14;
}

- (EFFuture)allowGeneratingAvatarImagesFuture
{
  v2 = [(MUIAvatarImageGenerator *)self allowsGeneratePromise];
  v3 = [v2 future];

  return v3;
}

- (id)contactForContext:(id)a3 handler:(id)a4
{
  v75 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(MUIAvatarImageGenerator *)self _avatarCacheKeyForContext:v7];
  v10 = [(MUIAvatarImageGenerator *)self avatarCache];
  v11 = [v10 objectForKey:v9];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__MUIAvatarImageGenerator_contactForContext_handler___block_invoke;
  aBlock[3] = &unk_278189F98;
  v12 = v8;
  v67 = v12;
  v13 = _Block_copy(aBlock);
  if (!v11)
  {
    v17 = [MEMORY[0x277D071A8] promise];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __53__MUIAvatarImageGenerator_contactForContext_handler___block_invoke_56;
    v61[3] = &unk_278189FC0;
    v53 = v17;
    v62 = v53;
    v64 = v13;
    v65 = a2;
    v52 = v64;
    v63 = self;
    v16 = [(MUIAvatarImageGenerator *)self _generateAvatarImageForContext:v7 handler:v61];
    v55 = [(MUIAvatarImageGenerator *)self lastTimeout];
    v18 = [v7 emailAddress];
    v19 = [v18 emailAddressValue];
    v20 = v19;
    if (v19)
    {
      v54 = [v19 ef_publicDescription];
    }

    else
    {
      v21 = MEMORY[0x277D07198];
      [v18 stringValue];
      v48 = v7;
      v22 = v13;
      v23 = v12;
      v24 = a2;
      v25 = v9;
      v27 = v26 = v16;
      v54 = [v21 fullyOrPartiallyRedactedStringForString:v27];

      v16 = v26;
      v9 = v25;
      a2 = v24;
      v12 = v23;
      v13 = v22;
      v7 = v48;
    }

    v28 = [(MUIAvatarImageGenerator *)self _canGenerateImages];
    v29 = 0;
    if ([v7 reducePlaceholderImage] && v28)
    {
      v29 = [v55 ef_isMoreThanTimeIntervalAgo:5.0];
    }

    v30 = +[MUIAvatarImageGenerator log];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      NSStringFromSelector(a2);
      v49 = v13;
      v31 = v12;
      v32 = a2;
      v33 = v9;
      v35 = v34 = v16;
      *buf = 138544386;
      v69 = v35;
      v70 = 1024;
      *v71 = v28;
      *&v71[4] = 1024;
      *&v71[6] = v29;
      *v72 = 2114;
      *&v72[2] = v55;
      v73 = 2114;
      v74 = v54;
      _os_log_impl(&dword_214A5E000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ - no cached entry. canGenerate:%{BOOL}d shouldWait:%{BOOL}d lastTimeout:%{public}@ for address:%{public}@", buf, 0x2Cu);

      v16 = v34;
      v9 = v33;
      a2 = v32;
      v12 = v31;
      v13 = v49;
    }

    if (v29)
    {
      v36 = [v53 future];
      v60 = 0;
      v37 = [v36 resultWithTimeout:&v60 error:0.1];
      v50 = v60;

      if (v37)
      {
        v38 = +[MUIAvatarImageGenerator log];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = NSStringFromSelector(a2);
          *buf = 138543618;
          v69 = v39;
          v70 = 2114;
          *v71 = v54;
          _os_log_impl(&dword_214A5E000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ - waited and got avatar for address:%{public}@", buf, 0x16u);
        }

        v52[2](v52, v37, 0);
        v11 = 0;
        v41 = v53;
        v40 = v54;
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
      v50 = 0;
    }

    v42 = +[MUIAvatarImageGenerator log];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = NSStringFromSelector(a2);
      v44 = &stru_2826EE5B8;
      *buf = 138543874;
      v69 = v43;
      v70 = 2114;
      if (v29)
      {
        v44 = @"after 100ms timeout ";
      }

      *v71 = v44;
      *&v71[8] = 2114;
      *v72 = v54;
      _os_log_impl(&dword_214A5E000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ - returning a placeholder %{public}@for address:%{public}@", buf, 0x20u);
    }

    if (v29)
    {
      v45 = [MEMORY[0x277CBEAA8] now];
      [(MUIAvatarImageGenerator *)self setLastTimeout:v45];
    }

    v11 = [(MUIAvatarImageGenerator *)self _placeholderCacheEntryForContext:v7 style:[(MUIAvatarImageGenerator *)self _avatarStyleIfAvailableForContext:v7]];
    v52[2](v52, v11, 0);
    v41 = v53;
    v46 = [v53 future];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __53__MUIAvatarImageGenerator_contactForContext_handler___block_invoke_70;
    v56[3] = &unk_278189FE8;
    v59 = a2;
    v40 = v54;
    v57 = v54;
    v58 = v52;
    [v46 addSuccessBlock:v56];

    v37 = v57;
    goto LABEL_26;
  }

  v14 = +[MUIAvatarImageGenerator log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 138543874;
    v69 = v15;
    v70 = 2114;
    *v71 = v11;
    *&v71[8] = 2114;
    *v72 = v7;
    _os_log_impl(&dword_214A5E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - found cached entry\n%{public}@\ncontext %{public}@", buf, 0x20u);
  }

  (*(v13 + 2))(v13, v11, 0);
  v16 = objc_alloc_init(MEMORY[0x277D07170]);
LABEL_27:

  return v16;
}

void __53__MUIAvatarImageGenerator_contactForContext_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__MUIAvatarImageGenerator_contactForContext_handler___block_invoke_2;
  v13[3] = &unk_278189F70;
  v7 = *(a1 + 32);
  v15 = v6;
  v16 = v7;
  v14 = v5;
  v8 = v13;
  v9 = MEMORY[0x277D071B8];
  v10 = v6;
  v11 = v5;
  v12 = [v9 mainThreadScheduler];
  [v12 performBlock:v8];
}

void __53__MUIAvatarImageGenerator_contactForContext_handler___block_invoke_56(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) finishWithError:v5];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (pthread_main_np())
    {
      __53__MUIAvatarImageGenerator_contactForContext_handler___block_invoke_56_cold_1(a1);
    }

    [*(a1 + 32) finishWithResult:v6];
  }
}

void __53__MUIAvatarImageGenerator_contactForContext_handler___block_invoke_70(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[MUIAvatarImageGenerator log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_214A5E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - provide final image for address:%{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_generateAvatarImageForContext:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 category];
  v9 = [v6 emailAddress];
  if (v9 && v8)
  {
    v10 = objc_alloc_init(MEMORY[0x277D07170]);
    v11 = [(MUIAvatarImageGenerator *)self allowsGeneratePromise];
    v12 = [v11 future];
    v13 = [(MUIAvatarImageGenerator *)self avatarImageScheduler];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __66__MUIAvatarImageGenerator__generateAvatarImageForContext_handler___block_invoke;
    v22[3] = &unk_27818A038;
    v22[4] = self;
    v23 = v6;
    v24 = v9;
    v25 = v8;
    v27 = v7;
    v14 = v10;
    v26 = v14;
    [v12 onScheduler:v13 addSuccessBlock:v22];

    v15 = v26;
    v16 = v14;

    v17 = v16;
  }

  else
  {
    v18 = +[MUIAvatarImageGenerator log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [(MUIAvatarImageGenerator *)v9 _generateAvatarImageForContext:v8 handler:v18];
    }

    if (v9)
    {
      v19 = @"Missing category";
    }

    else
    {
      v19 = @"Missing email address";
    }

    v16 = [MEMORY[0x277CCA9B8] em_internalErrorWithReason:v19];
    v20 = [(MUIAvatarImageGenerator *)self _placeholderCacheEntryForContext:v6 style:0];
    (*(v7 + 2))(v7, v20, v16);
    v17 = objc_alloc_init(MEMORY[0x277D07170]);
  }

  return v17;
}

void __66__MUIAvatarImageGenerator__generateAvatarImageForContext_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__MUIAvatarImageGenerator__generateAvatarImageForContext_handler___block_invoke_2;
  v9[3] = &unk_27818A010;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8 = *(a1 + 32);
  v6 = *(&v8 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v10 = v7;
  v11 = v8;
  v13 = *(a1 + 72);
  v12 = *(a1 + 64);
  [v2 _avatarStyleForContext:v3 completionHandler:v9];
}

void __66__MUIAvatarImageGenerator__generateAvatarImageForContext_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = +[MUIAvatarImageGenerator log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v5 emailAddressValue];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 ef_publicDescription];
    }

    else
    {
      v9 = MEMORY[0x277D07198];
      v10 = [v5 stringValue];
      v8 = [v9 fullyOrPartiallyRedactedStringForString:v10];

      v5 = v10;
    }

    v11 = [*(a1 + 40) ef_publicDescription];
    v17 = 138543874;
    v18 = v8;
    v19 = 2114;
    v20 = v11;
    v21 = 2048;
    v22 = a2;
    _os_log_impl(&dword_214A5E000, v4, OS_LOG_TYPE_DEFAULT, "Generating avatar for address %{public}@ category %{public}@ style %ld", &v17, 0x20u);
  }

  if (a2 == 1)
  {
    v16 = [*(a1 + 48) _businessAvatarImageForContext:*(a1 + 56) handler:*(a1 + 72)];
  }

  else
  {
    if (!a2)
    {
      v12 = [*(a1 + 48) contactsProvider];
      v13 = [v12 contactResultForContext:*(a1 + 56)];

      v14 = [*(a1 + 48) avatarCache];
      v15 = [*(a1 + 48) _avatarCacheKeyForContext:*(a1 + 56)];
      [v14 setObject:v13 forKey:v15];

      (*(*(a1 + 72) + 16))();
    }

    v16 = 0;
  }

  [*(a1 + 64) addCancelable:v16];
}

- (id)_cachedStyleIfAvailableForContext:(id)a3
{
  v4 = a3;
  v5 = [(MUIAvatarImageGenerator *)self _avatarCacheKeyForContext:v4];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v6 = [(MUIAvatarImageGenerator *)self senderStyleCache];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__MUIAvatarImageGenerator__cachedStyleIfAvailableForContext___block_invoke;
  v10[3] = &unk_278188FE8;
  v12 = &v13;
  v7 = v5;
  v11 = v7;
  [v6 performWhileLocked:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __61__MUIAvatarImageGenerator__cachedStyleIfAvailableForContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (int64_t)_avatarStyleIfAvailableForContext:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MUIAvatarImageGenerator *)self _cachedStyleIfAvailableForContext:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
    v8 = +[MUIAvatarImageGenerator log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [MUIAvatarImageGenerator stringForStyle:v7];
      v10 = [v4 ef_publicDescription];
      v20 = 138412546;
      v21 = v9;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_INFO, "Found cached style %@ for context: %{public}@", &v20, 0x16u);
    }
  }

  else
  {
    v11 = [v4 businessLogoID];

    v12 = [v4 brandIndicatorLocation];
    v13 = v11 | v12;

    v14 = [v4 category];
    v15 = [v14 subtype];

    v16 = [(MUIAvatarImageGenerator *)self _shouldShowCircleForSubtype:v15];
    if (v13)
    {
      v17 = [v4 isAuthenticated];
    }

    else
    {
      v17 = 0;
    }

    if (v15)
    {
      v18 = v16;
    }

    else
    {
      v18 = 1;
    }

    if (v17 || (v18 & 1) == 0)
    {
      v7 = (v17 | ~v16) & 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)_avatarStyleForContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__MUIAvatarImageGenerator__avatarStyleForContext_completionHandler___block_invoke;
  aBlock[3] = &unk_27818A088;
  v8 = v6;
  v34 = v8;
  v35 = self;
  v9 = v7;
  v36 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(MUIAvatarImageGenerator *)self _avatarStyleIfAvailableForContext:v8];
  v12 = [(MUIAvatarImageGenerator *)self contactsProvider];
  v13 = [v8 emailAddress];
  v14 = [v12 contactExistsForEmailAddress:v13];

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = v11 == 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (v14)
  {
    v15 = [v8 category];
    if (v11 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v30 + 24);
    }

    v10[2](v10, v15, v26[3], 1, v16 & 1);
    goto LABEL_9;
  }

  if (v11 == 1)
  {
    v28 = 1;
    v15 = [v8 category];
    v10[2](v10, v15, v26[3], 0, 0);
LABEL_9:

    goto LABEL_10;
  }

  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__MUIAvatarImageGenerator__avatarStyleForContext_completionHandler___block_invoke_2;
  v17[3] = &unk_27818A0B0;
  objc_copyWeak(&v22, &location);
  v20 = &v29;
  v18 = v8;
  v21 = &v25;
  v19 = v10;
  v23 = v11 == 1;
  [(MUIAvatarImageGenerator *)self _categoryForContext:v18 completionHandler:v17];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
LABEL_10:
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
}

void __68__MUIAvatarImageGenerator__avatarStyleForContext_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4, int a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = a2;
  if ([v9 isUncategorized])
  {
    v10 = 0;
  }

  else
  {
    v10 = [v9 needsRecategorization] ^ 1;
  }

  v11 = +[MUIAvatarImageGenerator log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v27 = a5;
    v29 = a3;
    v26 = [MUIAvatarImageGenerator stringForStyle:a3];
    v12 = [*(a1 + 32) emailAddress];
    v13 = [v12 emailAddressValue];
    v14 = v13;
    v28 = a4;
    if (v13)
    {
      v15 = [v13 ef_publicDescription];
    }

    else
    {
      v16 = MEMORY[0x277D07198];
      v17 = [v12 stringValue];
      v15 = [v16 fullyOrPartiallyRedactedStringForString:v17];
    }

    v18 = v15;
    [v9 type];
    v19 = EMStringFromCategoryType();
    [v9 subtype];
    v20 = EMStringFromSubtype();
    v21 = [*(a1 + 32) businessLogoID];

    *buf = 138545154;
    v34 = v26;
    v35 = 2114;
    v36 = v15;
    v37 = 2114;
    v38 = v19;
    v39 = 2114;
    v40 = v20;
    v41 = 1024;
    v42 = v27;
    v43 = 1024;
    v44 = v10;
    v45 = 1024;
    v46 = v28;
    v47 = 2114;
    v48 = v21;
    _os_log_impl(&dword_214A5E000, v11, OS_LOG_TYPE_DEFAULT, "Avatar style %{public}@ for address: %{public}@, category: %{public}@, subcategory: %{public}@, walletCategoryAvailable: %{BOOL}d, shouldCache: %{BOOL}d, contactExists: %{BOOL}d, businessLogoID: %{public}@", buf, 0x46u);

    a3 = v29;
  }

  if (v10)
  {
    v22 = [*(a1 + 40) _avatarCacheKeyForContext:*(a1 + 32)];
    v23 = [*(a1 + 40) senderStyleCache];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __68__MUIAvatarImageGenerator__avatarStyleForContext_completionHandler___block_invoke_82;
    v30[3] = &unk_27818A060;
    v31 = v22;
    v32 = a3;
    v24 = v22;
    [v23 performWhileLocked:v30];
  }

  (*(*(a1 + 48) + 16))();
}

void __68__MUIAvatarImageGenerator__avatarStyleForContext_completionHandler___block_invoke_82(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 numberWithInteger:v4];
  [v5 setObject:v6 forKeyedSubscript:*(a1 + 32)];
}

void __68__MUIAvatarImageGenerator__avatarStyleForContext_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (([v10 isUncategorized] & 1) == 0)
    {
      v4 = *MEMORY[0x277D07110];
      v5 = [WeakRetained genericAvatarProvider];
      v6 = [*(a1 + 32) emailAddress];
      v7 = [v5 genericCategoryForEmailAddress:v6];
      if ((*(v4 + 16))(v4, v7))
      {
        v8 = [WeakRetained _shouldShowCircleForSubtype:{objc_msgSend(v10, "subtype")}] ^ 1;
      }

      else
      {
        v8 = 0;
      }

      *(*(*(a1 + 48) + 8) + 24) = v8;
    }

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    if (*(a1 + 72))
    {
      v9 = 0;
    }

    else
    {
      v9 = *(*(*(a1 + 48) + 8) + 24);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v10, *(*(*(a1 + 56) + 8) + 24), 0, v9 & 1);
  }
}

- (void)_categoryForContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 category];
  v9 = [v8 isUncategorized];

  if (v9)
  {
    v10 = [(MUIAvatarImageGenerator *)self categoryProvider];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__MUIAvatarImageGenerator__categoryForContext_completionHandler___block_invoke;
    v12[3] = &unk_27818A0D8;
    v14 = v7;
    v13 = v6;
    [v10 categoryForContext:v13 completionHandler:v12];
  }

  else
  {
    v11 = [v6 category];
    (*(v7 + 2))(v7, v11);
  }
}

void __65__MUIAvatarImageGenerator__categoryForContext_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = +[MUIAvatarImageGenerator log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __65__MUIAvatarImageGenerator__categoryForContext_completionHandler___block_invoke_cold_1(a1, v5);
    }

    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) category];
    (*(v7 + 16))(v7, v8);
  }
}

- (void)removeCachedAvatarImagesForAuthenticatedMessagesWithEmailAddress:(id)a3 businessLogoID:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[MUIAvatarImageGenerator log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v6;
    v10 = [v9 emailAddressValue];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 ef_publicDescription];
    }

    else
    {
      v13 = MEMORY[0x277D07198];
      v14 = [v9 stringValue];
      v12 = [v13 fullyOrPartiallyRedactedStringForString:v14];
    }

    *buf = 138543362;
    v26 = v12;
    _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_DEFAULT, "Removing cached avatar for %{public}@", buf, 0xCu);
  }

  v15 = [(MUIAvatarImageGenerator *)self _avatarCacheKeyForEmailAddress:v6 isAuthenticated:1 businessLogoID:0];
  if (v7)
  {
    v16 = [(MUIAvatarImageGenerator *)self _avatarCacheKeyForEmailAddress:v6 isAuthenticated:1 businessLogoID:v7];
  }

  else
  {
    v16 = 0;
  }

  v17 = [(MUIAvatarImageGenerator *)self avatarCache];
  [v17 removeObjectForKey:v15];

  if (v16)
  {
    v18 = [(MUIAvatarImageGenerator *)self avatarCache];
    [v18 removeObjectForKey:v16];
  }

  v19 = [(MUIAvatarImageGenerator *)self senderStyleCache];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __107__MUIAvatarImageGenerator_removeCachedAvatarImagesForAuthenticatedMessagesWithEmailAddress_businessLogoID___block_invoke;
  v22[3] = &unk_278189010;
  v23 = v15;
  v24 = v16;
  v20 = v16;
  v21 = v15;
  [v19 performWhileLocked:v22];
}

void __107__MUIAvatarImageGenerator_removeCachedAvatarImagesForAuthenticatedMessagesWithEmailAddress_businessLogoID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setObject:0 forKeyedSubscript:*(a1 + 32)];
  if (*(a1 + 40))
  {
    [v3 setObject:0 forKeyedSubscript:?];
  }
}

- (void)_invalidateAvatarCache
{
  v3 = +[MUIAvatarImageGenerator log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_214A5E000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating avatar cache", v6, 2u);
  }

  v4 = [(MUIAvatarImageGenerator *)self avatarCache];
  [v4 removeAllObjects];

  v5 = [(MUIAvatarImageGenerator *)self senderStyleCache];
  [v5 performWhileLocked:&__block_literal_global_13];
}

- (id)_businessAvatarImageForContext:(id)a3 handler:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277D07170]);
  v10 = [(MUIAvatarImageGenerator *)self _avatarCacheKeyForContext:v7];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__MUIAvatarImageGenerator__businessAvatarImageForContext_handler___block_invoke;
  aBlock[3] = &unk_27818A100;
  v53 = a2;
  v11 = v7;
  v49 = v11;
  v50 = self;
  v12 = v10;
  v51 = v12;
  v13 = v8;
  v52 = v13;
  v14 = _Block_copy(aBlock);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __66__MUIAvatarImageGenerator__businessAvatarImageForContext_handler___block_invoke_87;
  v46[3] = &unk_27818A128;
  v15 = v14;
  v47 = v15;
  v16 = _Block_copy(v46);
  v17 = [(MUIAvatarImageGenerator *)self avatarCache];
  v18 = [v17 objectForKey:v12];

  if (v18)
  {
    v19 = +[MUIAvatarImageGenerator log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = NSStringFromSelector(a2);
      *buf = 138543874;
      v55 = v20;
      v56 = 2114;
      v57 = v18;
      v58 = 2114;
      v59 = v11;
      _os_log_impl(&dword_214A5E000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - found cached entry\n%{public}@\ncontext %{public}@", buf, 0x20u);
    }

    (*(v15 + 2))(v15, v18, 0);
    v21 = v9;
  }

  else
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __66__MUIAvatarImageGenerator__businessAvatarImageForContext_handler___block_invoke_88;
    v40[3] = &unk_27818A150;
    v22 = v11;
    v41 = v22;
    v44 = v15;
    v23 = v9;
    v42 = v23;
    v43 = self;
    v34 = v11;
    v24 = v9;
    v25 = v16;
    v45 = v25;
    v33 = v13;
    v26 = _Block_copy(v40);
    [(MUIAvatarImageGenerator *)self businessAvatarScheduler];
    v27 = v32 = v16;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __66__MUIAvatarImageGenerator__businessAvatarImageForContext_handler___block_invoke_2;
    v35[3] = &unk_27818A1C8;
    v36 = v22;
    v37 = self;
    v38 = v26;
    v28 = v25;
    v9 = v24;
    v11 = v34;
    v39 = v28;
    v29 = v26;
    [v27 performBlock:v35];

    v16 = v32;
    v30 = v23;

    v13 = v33;
  }

  return v9;
}

void __66__MUIAvatarImageGenerator__businessAvatarImageForContext_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = +[MUIAvatarImageGenerator log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(*(a1 + 64));
      v10 = [*(a1 + 32) emailAddress];
      v11 = [v10 emailAddressValue];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 ef_publicDescription];
      }

      else
      {
        v14 = MEMORY[0x277D07198];
        v15 = [v10 stringValue];
        v13 = [v14 fullyOrPartiallyRedactedStringForString:v15];
      }

      v16 = *(a1 + 32);
      v18 = 138544130;
      v19 = v9;
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v5;
      v24 = 2114;
      v25 = v16;
      _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - caching entry for address %{public}@:\n%{public}@\ncontext %{public}@", &v18, 0x2Au);
    }

    v17 = [*(a1 + 40) avatarCache];
    [v17 setObject:v5 forKey:*(a1 + 48)];
  }

  [v5 setAvatarStyle:1];
  (*(*(a1 + 56) + 16))();
}

void __66__MUIAvatarImageGenerator__businessAvatarImageForContext_handler___block_invoke_88(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  if (v13)
  {
    v5 = [MUIAvatarImageGeneratorResult alloc];
    v6 = [*(a1 + 32) emailAddress];
    v7 = [(MUIAvatarImageGeneratorResult *)v5 initWithAddress:v6 image:v13 style:1 type:a3];

    v8 = *(a1 + 56);
    if ([*(a1 + 40) isCanceled])
    {
      v9 = [MEMORY[0x277CCA9B8] ef_cancelledError];
      (*(v8 + 16))(v8, v7, v9);
    }

    else
    {
      (*(v8 + 16))(v8, v7, 0);
    }
  }

  else if ([*(a1 + 40) isCanceled])
  {
    v10 = *(a1 + 56);
    v11 = [*(a1 + 48) _placeholderCacheEntryForContext:*(a1 + 32) style:1];
    v12 = [MEMORY[0x277CCA9B8] ef_cancelledError];
    (*(v10 + 16))(v10, v11, v12);
  }

  else
  {
    [*(a1 + 48) _genericAvatarImageForContext:*(a1 + 32) handler:*(a1 + 64)];
  }
}

void __66__MUIAvatarImageGenerator__businessAvatarImageForContext_handler___block_invoke_2(id *a1)
{
  if ([a1[4] isAuthenticated])
  {
    v2 = [a1[4] brandIndicatorLocation];
    if (v2 && (v3 = v2, v4 = [MEMORY[0x277D06DA0] preferenceEnabled:60], v3, v4))
    {
      v5 = [a1[5] bimiProvider];
      v6 = [a1[4] brandIndicatorLocation];
      [a1[4] scale];
      v8 = v7;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __66__MUIAvatarImageGenerator__businessAvatarImageForContext_handler___block_invoke_3;
      v25[3] = &unk_27818A178;
      v27 = a1[6];
      v20 = *(a1 + 2);
      v9 = v20.i64[0];
      v26 = vextq_s8(v20, v20, 8uLL);
      v28 = a1[7];
      [v5 bimiLogoFromLocation:v6 scale:v25 handler:v8];

      v10 = v27;
    }

    else
    {
      v14 = [a1[5] businessServiceProvider];
      v15 = a1[4];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __66__MUIAvatarImageGenerator__businessAvatarImageForContext_handler___block_invoke_5;
      v22[3] = &unk_27818A178;
      v16 = a1[6];
      *&v17 = a1[4];
      *(&v17 + 1) = a1[5];
      v21 = v17;
      v18 = a1[7];
      *&v19 = v16;
      *(&v19 + 1) = v18;
      v23 = v21;
      v24 = v19;
      [v14 businessLogoForContext:v15 handler:v22];

      v10 = v24;
    }
  }

  else
  {
    v12 = a1[4];
    v11 = a1[5];
    v13 = a1[7];

    [v11 _genericAvatarImageForContext:v12 handler:v13];
  }
}

void __66__MUIAvatarImageGenerator__businessAvatarImageForContext_handler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = [*(a1 + 32) businessServiceProvider];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__MUIAvatarImageGenerator__businessAvatarImageForContext_handler___block_invoke_4;
    v11[3] = &unk_27818A178;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v10 = *(a1 + 32);
    v7 = *(&v10 + 1);
    v8 = *(a1 + 56);
    *&v9 = v6;
    *(&v9 + 1) = v8;
    v12 = v10;
    v13 = v9;
    [v4 businessLogoForContext:v5 handler:v11];
  }
}

uint64_t __66__MUIAvatarImageGenerator__businessAvatarImageForContext_handler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) _genericAvatarImageForContext:*(a1 + 40) handler:*(a1 + 56)];
  }
}

void __66__MUIAvatarImageGenerator__businessAvatarImageForContext_handler___block_invoke_5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = [*(a1 + 32) brandIndicatorLocation];

    v5 = *(a1 + 40);
    if (v4)
    {
      v6 = [v5 bimiProvider];
      v7 = [*(a1 + 32) brandIndicatorLocation];
      [*(a1 + 32) scale];
      v9 = v8;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __66__MUIAvatarImageGenerator__businessAvatarImageForContext_handler___block_invoke_6;
      v12[3] = &unk_27818A1A0;
      v13 = *(a1 + 48);
      [v6 bimiLogoFromLocation:v7 scale:v12 handler:v9];
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 56);

      [v5 _genericAvatarImageForContext:v10 handler:v11];
    }
  }
}

- (id)_avatarCacheKeyForContext:(id)a3
{
  v4 = a3;
  v5 = [v4 emailAddress];
  v6 = [v4 isAuthenticated];
  v7 = [v4 businessLogoID];

  v8 = [(MUIAvatarImageGenerator *)self _avatarCacheKeyForEmailAddress:v5 isAuthenticated:v6 businessLogoID:v7];

  return v8;
}

- (id)_avatarCacheKeyForEmailAddress:(id)a3 isAuthenticated:(BOOL)a4 businessLogoID:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = MEMORY[0x277CCACA8];
  v10 = [v7 emailAddressValue];
  v11 = [v10 displayName];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v7 stringValue];
  }

  v14 = v13;

  v15 = v7;
  v16 = [v15 emailAddressValue];
  v17 = [v16 simpleAddress];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = [v15 stringValue];
  }

  v20 = v19;

  v21 = [v9 stringWithFormat:@"dn:%@_sa:%@_%d", v14, v20, v6];

  if (v8)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_b:%@", v21, v8];

    v21 = v22;
  }

  return v21;
}

- (id)_emailAddressDomainOrStringValueForAddress:(id)a3
{
  v3 = a3;
  v4 = [v3 emailAddressValue];
  v5 = [v4 highLevelDomain];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v3 stringValue];
  }

  v8 = v7;

  return v8;
}

- (void)_genericAvatarImageForContext:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MUIAvatarImageGenerator *)self genericAvatarProvider];
  v9 = [v6 emailAddress];
  v10 = [v8 genericCategoryForEmailAddress:v9];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &unk_2827059F8;
  }

  v12 = [(MUIAvatarImageGenerator *)self genericAvatarCache];
  v13 = [v12 objectForKey:v11];

  if (!v13)
  {
    v14 = [(MUIAvatarImageGenerator *)self genericAvatarProvider];
    v15 = [v14 genericAvatarForContext:v6];

    if (!v15)
    {
      v16 = [(MUIAvatarImageGenerator *)self _placeholderCacheEntryForContext:v6 style:1];
      if (!v16)
      {
        v18 = +[MUIAvatarImageGenerator log];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [MUIAvatarImageGenerator _genericAvatarImageForContext:v11 handler:v6];
        }

        v15 = 0;
        goto LABEL_10;
      }

      v15 = v16;
    }

    v17 = [(MUIAvatarImageGenerator *)self genericAvatarCache];
    [v17 setObject:v15 forKey:v11];

LABEL_10:
    v7[2](v7, v15);

    goto LABEL_11;
  }

  v7[2](v7, v13);
LABEL_11:
}

- (id)_placeholderCacheEntryForContext:(id)a3 style:(int64_t)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_initWeak(&location, self);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __66__MUIAvatarImageGenerator__placeholderCacheEntryForContext_style___block_invoke;
  v22 = &unk_27818A1F0;
  objc_copyWeak(&v23, &location);
  v7 = _Block_copy(&v19);
  if (!a4)
  {
    v14 = [(MUIAvatarImageGenerator *)self avatarCache:v19];
    v9 = [v14 objectForKey:@"circle"];

    if (v9)
    {
      goto LABEL_11;
    }

    v9 = +[MUIAvatarImageGeneratorResult circularPlaceholderResult];
    v12 = [(MUIAvatarImageGenerator *)self avatarCache];
    [v12 setObject:v9 forKey:@"circle"];
LABEL_7:

    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (a4 == 1)
  {
    v8 = [(MUIAvatarImageGenerator *)self avatarCache:v19];
    v9 = [v8 objectForKey:@"rounded rect"];

    if (v9)
    {
      goto LABEL_11;
    }

    v10 = MEMORY[0x277D755B8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v10 mui_imageNamed:@"AvatarPlaceholderRect" inBundle:v11];

    v7[2](v7, v12, 1, v6);
    v9 = [[MUIAvatarImageGeneratorResult alloc] initWithAddress:@"x-apple-rounded-rectangle-placeholder:;" image:v12 style:1 type:0];
    v13 = [(MUIAvatarImageGenerator *)self avatarCache];
    [v13 setObject:v9 forKey:@"rounded rect"];

    goto LABEL_7;
  }

LABEL_8:
  v15 = [MUIAvatarImageGenerator log:v19];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v17 = [(MUIAvatarImageGenerator *)self avatarCache];
    v18 = [v6 ef_publicDescription];
    *buf = 134349570;
    v26 = a4;
    v27 = 2114;
    v28 = v17;
    v29 = 2114;
    v30 = v18;
    _os_log_error_impl(&dword_214A5E000, v15, OS_LOG_TYPE_ERROR, "Could not load placeholder avatar with style: %{public}ld and cache: %{public}@ and context: %{public}@", buf, 0x20u);
  }

  v9 = 0;
LABEL_11:

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v9;
}

void __66__MUIAvatarImageGenerator__placeholderCacheEntryForContext_style___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (!a2 && WeakRetained)
  {
    v9 = +[MUIAvatarImageGenerator log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __66__MUIAvatarImageGenerator__placeholderCacheEntryForContext_style___block_invoke_cold_1(v6);
    }
  }
}

void __53__MUIAvatarImageGenerator_contactForContext_handler___block_invoke_56_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"MUIAvatarImageGenerator.m" lineNumber:157 description:@"Current thread is main"];
}

- (void)_generateAvatarImageForContext:(NSObject *)a3 handler:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [v5 emailAddressValue];
  v7 = v6;
  if (v6)
  {
    v10 = [v6 ef_publicDescription];
  }

  else
  {
    v8 = MEMORY[0x277D07198];
    v9 = [v5 stringValue];
    v10 = [v8 fullyOrPartiallyRedactedStringForString:v9];
  }

  v11 = [a2 ef_publicDescription];
  v12 = 138543618;
  v13 = v10;
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(&dword_214A5E000, a3, OS_LOG_TYPE_FAULT, "Unable to generate avatar image for missing emailAddress %{public}@ category %{public}@", &v12, 0x16u);
}

void __65__MUIAvatarImageGenerator__categoryForContext_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) ef_publicDescription];
  v4 = [a2 ef_publicDescription];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_genericAvatarImageForContext:(uint64_t)a1 handler:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v7 = [a2 ef_publicDescription];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __66__MUIAvatarImageGenerator__placeholderCacheEntryForContext_style___block_invoke_cold_1(void *a1)
{
  v1 = [a1 ef_publicDescription];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end