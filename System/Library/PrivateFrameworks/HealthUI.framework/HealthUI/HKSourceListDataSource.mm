@interface HKSourceListDataSource
+ (id)_builtinPurposeStringsFetchTransformer;
+ (void)_performTransformations:(id)a3 model:(id)a4 completion:(id)a5;
+ (void)_remoteWatchAppPurposeStringsForBundleIdentifier:(id)a3 completion:(id)a4;
+ (void)fetchIconForSource:(id)a3 completion:(id)a4;
- (HKSourceListDataSource)initWithHealthStore:(id)a3 sources:(id)a4 queue:(id)a5;
- (id)_specialAppBundleIdentifiers;
- (id)fetchFilteredSourcesWithAuthorizationRecordsForSources:(id)a3;
- (void)_didFetchSources:(id)a3 error:(id)a4 completion:(id)a5;
- (void)_fakeSourceForInstalledAppWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)_notifyObserversForDataSourceUpdate;
- (void)_prependBuiltinTransformers;
- (void)_throttledNotificationOfDataSourceUpdate;
- (void)addFetchTransformer:(id)a3;
- (void)dealloc;
- (void)fetchModelForSources:(id)a3 completion:(id)a4;
- (void)fetchSources;
- (void)invalidate;
- (void)setDeliverUpdates:(BOOL)a3;
- (void)setShouldFetchAppIcons:(BOOL)a3;
- (void)setShouldFetchAppInstallationStatus:(BOOL)a3;
- (void)setShouldFetchPurposeStrings:(BOOL)a3;
- (void)setShouldIncludeSpecialSources:(BOOL)a3;
@end

@implementation HKSourceListDataSource

- (HKSourceListDataSource)initWithHealthStore:(id)a3 sources:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKSourceListDataSource initWithHealthStore:sources:queue:];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [HKSourceListDataSource initWithHealthStore:sources:queue:];
LABEL_3:
  v30.receiver = self;
  v30.super_class = HKSourceListDataSource;
  v13 = [(HKSourceListDataSource *)&v30 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_healthStore, a3);
    objc_storeStrong(&v14->_mainQueue, a5);
    v15 = [v10 copy];
    rawSources = v14->_rawSources;
    v14->_rawSources = v15;

    v17 = HKCreateSerialDispatchQueueWithQOSClass();
    resultsQueue = v14->_resultsQueue;
    v14->_resultsQueue = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    transformers = v14->_transformers;
    v14->_transformers = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    followupTransformers = v14->_followupTransformers;
    v14->_followupTransformers = v21;

    v23 = objc_alloc(MEMORY[0x1E696C4F8]);
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = HKLogWellnessDashboard();
    v27 = [v23 initWithName:v25 loggingCategory:v26];
    observers = v14->_observers;
    v14->_observers = v27;

    v14->_deliverUpdates = 0;
    v14->_notifyToken = -1;
    *&v14->_shouldFetchAppInstallationStatus = 1;
  }

  return v14;
}

- (void)dealloc
{
  [(HKSourceListDataSource *)self invalidate];
  v3.receiver = self;
  v3.super_class = HKSourceListDataSource;
  [(HKSourceListDataSource *)&v3 dealloc];
}

- (void)invalidate
{
  atomic_store(1u, &self->_invalidated);
  observers = self->_observers;
  self->_observers = 0;

  transformers = self->_transformers;
  self->_transformers = 0;

  followupTransformers = self->_followupTransformers;
  self->_followupTransformers = 0;

  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {

    notify_cancel(notifyToken);
  }
}

- (void)setDeliverUpdates:(BOOL)a3
{
  if (self->_hasInitiatedFetch)
  {
    [HKSourceListDataSource setDeliverUpdates:];
  }

  self->_deliverUpdates = a3;
}

- (void)fetchSources
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Failed to register for %s", &v2, 0xCu);
}

void __38__HKSourceListDataSource_fetchSources__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fetchSources];
}

void __38__HKSourceListDataSource_fetchSources__block_invoke_319(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didFetchSources:v6 error:v5 completion:0];
}

+ (void)fetchIconForSource:(id)a3 completion:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [[HKSourceDataModel alloc] initWithSource:v7];

  v9 = [a1 _builtinIconFetchTransformer];
  v14[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__HKSourceListDataSource_fetchIconForSource_completion___block_invoke;
  v12[3] = &unk_1E81BBAC0;
  v13 = v6;
  v11 = v6;
  [a1 _performTransformations:v10 model:v8 completion:v12];
}

void __56__HKSourceListDataSource_fetchIconForSource_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 icon];
  (*(v2 + 16))(v2, v3);
}

- (void)fetchModelForSources:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (self->_deliverUpdates)
  {
    [HKSourceListDataSource fetchModelForSources:completion:];
  }

  if (!self->_hasInitiatedFetch)
  {
    self->_hasInitiatedFetch = 1;
    [(HKSourceListDataSource *)self _prependBuiltinTransformers];
  }

  [(HKSourceListDataSource *)self _didFetchSources:v7 error:0 completion:v6];
}

- (void)setShouldFetchAppInstallationStatus:(BOOL)a3
{
  if (self->_hasInitiatedFetch)
  {
    [HKSourceListDataSource setShouldFetchAppInstallationStatus:];
  }

  self->_shouldFetchAppInstallationStatus = a3;
}

- (void)setShouldFetchAppIcons:(BOOL)a3
{
  if (self->_hasInitiatedFetch)
  {
    [HKSourceListDataSource setShouldFetchAppIcons:];
  }

  self->_shouldFetchAppIcons = a3;
}

- (void)setShouldFetchPurposeStrings:(BOOL)a3
{
  if (self->_hasInitiatedFetch)
  {
    [HKSourceListDataSource setShouldFetchPurposeStrings:];
  }

  self->_shouldFetchPurposeStrings = a3;
}

- (void)setShouldIncludeSpecialSources:(BOOL)a3
{
  if (self->_hasInitiatedFetch)
  {
    [HKSourceListDataSource setShouldIncludeSpecialSources:];
  }

  self->_shouldIncludeSpecialSources = a3;
}

- (void)addFetchTransformer:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_hasInitiatedFetch)
  {
    [HKSourceListDataSource addFetchTransformer:];
    v4 = v8;
  }

  transformers = self->_transformers;
  v6 = [v4 copy];
  v7 = _Block_copy(v6);
  [(NSMutableArray *)transformers addObject:v7];
}

void __63__HKSourceListDataSource__builtinInstallationStatusTransformer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 source];
  v7 = [MEMORY[0x1E696C4A8] bundleIdentifierForInstallationStatusForSource:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v6 bundleIdentifier];
  }

  v10 = v9;

  if ([v6 _isApplication] && (objc_msgSend(v6, "_isSiri") & 1) == 0)
  {
    v11 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v4 setInstalled:{objc_msgSend(v11, "applicationIsInstalled:", v10)}];

    if (![v4 installed])
    {
      v12 = [MEMORY[0x1E698AB08] sharedDeviceConnection];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __63__HKSourceListDataSource__builtinInstallationStatusTransformer__block_invoke_2;
      v13[3] = &unk_1E81BBB08;
      v14 = v4;
      v15 = v10;
      v16 = v5;
      [v12 applicationIsInstalledOnAnyPairedDeviceWithCompanionBundleID:v15 completion:v13];

      goto LABEL_8;
    }
  }

  else
  {
    [v4 setInstalled:1];
  }

  (*(v5 + 2))(v5, v4);
LABEL_8:
}

void __63__HKSourceListDataSource__builtinInstallationStatusTransformer__block_invoke_2(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [a1[4] setInstalled:a2];
  if (v5)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
    {
      __63__HKSourceListDataSource__builtinInstallationStatusTransformer__block_invoke_2_cold_1();
    }
  }

  if ([a1[4] installed])
  {
    (*(a1[6] + 2))();
  }

  else
  {
    v6 = [MEMORY[0x1E698AB08] sharedDeviceConnection];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__HKSourceListDataSource__builtinInstallationStatusTransformer__block_invoke_331;
    v8[3] = &unk_1E81BBB08;
    v7 = a1[5];
    v9 = a1[4];
    v10 = a1[5];
    v11 = a1[6];
    [v6 applicationIsInstalledOnAnyPairedDeviceWithBundleID:v7 completion:v8];
  }
}

void __63__HKSourceListDataSource__builtinInstallationStatusTransformer__block_invoke_331(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setInstalled:a2];
  if (v5)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
    {
      __63__HKSourceListDataSource__builtinInstallationStatusTransformer__block_invoke_331_cold_1();
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __54__HKSourceListDataSource__builtinIconFetchTransformer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 source];
  if ([v6 _isSiri])
  {
    v7 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:@"com.apple.siri"];
    v8 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8AA0]];
    v9 = [v7 prepareImageForDescriptor:v8];
    v10 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:{objc_msgSend(v9, "CGImage")}];
    [v4 setIcon:v10];

    v5[2](v5, v4);
LABEL_3:

    goto LABEL_19;
  }

  if ([v6 _isResearchStudy])
  {
    v11 = [v4 source];
    v33 = 0;
    v8 = [v11 _fetchBundleWithError:&v33];
    v7 = v33;

    if (v8)
    {
      v12 = [MEMORY[0x1E69DCAB8] imageNamed:@"Icon" inBundle:v8 compatibleWithTraitCollection:0];
      v13 = [v12 imageByPreparingThumbnailOfSize:{29.0, 29.0}];

      if (v13)
      {
        [v4 setIcon:v13];
        v14 = [v4 source];
        v15 = [v14 bundleIdentifier];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __54__HKSourceListDataSource__builtinIconFetchTransformer__block_invoke_344;
        block[3] = &unk_1E81B5AD0;
        v31 = v13;
        v32 = v15;
        v16 = v15;
        v9 = v13;
        dispatch_async(MEMORY[0x1E69E96A0], block);
        v5[2](v5, v4);

        goto LABEL_3;
      }
    }

    else
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x1E696B940];
      if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
      {
        __54__HKSourceListDataSource__builtinIconFetchTransformer__block_invoke_cold_1(v17, v4);
      }
    }
  }

  v18 = [MEMORY[0x1E696C4A8] bundleIdentifierForIconForSource:v6];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [v6 bundleIdentifier];
  }

  v7 = v20;

  if ([v4 installed])
  {
    v21 = MEMORY[0x1E69DCAB8];
    v22 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v22 scale];
    v23 = [v21 _applicationIconImageForBundleIdentifier:v7 format:0 scale:?];
    [v4 setIcon:v23];
  }

  v24 = [v4 icon];

  if (v24)
  {
    v5[2](v5, v4);
  }

  else
  {
    v25 = [MEMORY[0x1E698AB08] sharedDeviceConnection];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __54__HKSourceListDataSource__builtinIconFetchTransformer__block_invoke_2;
    v26[3] = &unk_1E81BBB58;
    v27 = v7;
    v28 = v4;
    v29 = v5;
    [v25 fetchWatchAppBundleIDForCompanionAppBundleID:v27 completion:v26];
  }

LABEL_19:
}

void __54__HKSourceListDataSource__builtinIconFetchTransformer__block_invoke_344(uint64_t a1)
{
  v2 = +[HKAppImageManager sharedImageManager];
  [v2 cacheAppIcon:*(a1 + 32) forIdentifier:*(a1 + 40)];
}

void __54__HKSourceListDataSource__builtinIconFetchTransformer__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
    {
      __54__HKSourceListDataSource__builtinIconFetchTransformer__block_invoke_2_cold_1();
    }
  }

  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = [MEMORY[0x1E69B36C8] sharedInstance];
  v11 = *(a1 + 32);
  if (v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = *(a1 + 32);
  }

  if (v9 <= 2.0)
  {
    v13 = 47;
  }

  else
  {
    v13 = 48;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__HKSourceListDataSource__builtinIconFetchTransformer__block_invoke_349;
  v14[3] = &unk_1E81BBB30;
  v15 = v11;
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  [v10 getIconForBundleID:v12 iconVariant:v13 block:v14 timeout:-1.0];
}

void __54__HKSourceListDataSource__builtinIconFetchTransformer__block_invoke_349(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __54__HKSourceListDataSource__builtinIconFetchTransformer__block_invoke_2_350;
    v8 = &unk_1E81B5AD0;
    v9 = v3;
    v10 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], &v5);
  }

  [*(a1 + 40) setIcon:{v4, v5, v6, v7, v8}];
  (*(*(a1 + 48) + 16))();
}

void __54__HKSourceListDataSource__builtinIconFetchTransformer__block_invoke_2_350(uint64_t a1)
{
  v2 = +[HKAppImageManager sharedImageManager];
  [v2 cacheAppIcon:*(a1 + 32) forIdentifier:*(a1 + 40)];
}

+ (id)_builtinPurposeStringsFetchTransformer
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__HKSourceListDataSource__builtinPurposeStringsFetchTransformer__block_invoke;
  aBlock[3] = &__block_descriptor_40_e56_v24__0__HKSourceDataModel_8___v____HKSourceDataModel__16l;
  aBlock[4] = a1;
  v2 = _Block_copy(aBlock);

  return v2;
}

void __64__HKSourceListDataSource__builtinPurposeStringsFetchTransformer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 source];
  if ([v7 _isApplication])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v7 _isResearchStudy];
  }

  if ([v5 installed] && (v8 & 1) != 0)
  {
    v35 = 0;
    v9 = [v7 _fetchBundleWithError:&v35];
    v10 = v35;
    v11 = v10;
    if (v9)
    {
      v25 = v10;
      v26 = v6;
      v41[0] = @"NSHealthUpdateUsageDescription";
      v41[1] = @"NSHealthShareUsageDescription";
      v41[2] = @"NSHealthResearchStudyUsageDescription";
      v41[3] = @"NSHealthClinicalHealthRecordsShareUsageDescription";
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v32;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v31 + 1) + 8 * i);
            v20 = [v9 objectForInfoDictionaryKey:v19];
            [v13 setObject:v20 forKeyedSubscript:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v16);
      }

      v21 = [v13 copy];
      [v5 setPurposeStrings:v21];

      v6 = v26;
      v26[2](v26, v5);

      v11 = v25;
    }

    else
    {
      _HKInitializeLogging();
      v22 = *MEMORY[0x1E696B940];
      if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v37 = v7;
        v38 = 2112;
        v39 = v11;
        _os_log_impl(&dword_1C3942000, v22, OS_LOG_TYPE_DEFAULT, "No bundle found for source %@, falling back to remote paired Watch. Bundle fetch error: %@", buf, 0x16u);
      }

      v23 = *(a1 + 32);
      v24 = [v7 bundleIdentifier];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __64__HKSourceListDataSource__builtinPurposeStringsFetchTransformer__block_invoke_354;
      v27[3] = &unk_1E81BBB80;
      v28 = v7;
      v30 = v6;
      v29 = v5;
      [v23 _remoteWatchAppPurposeStringsForBundleIdentifier:v24 completion:v27];

      v14 = v28;
    }
  }

  else
  {
    v6[2](v6, v5);
  }
}

void __64__HKSourceListDataSource__builtinPurposeStringsFetchTransformer__block_invoke_354(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 copy];
    [*(a1 + 40) setPurposeStrings:v6];
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B940];
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
    {
      __64__HKSourceListDataSource__builtinPurposeStringsFetchTransformer__block_invoke_354_cold_1(a1, v5, v7);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_prependBuiltinTransformers
{
  if (self->_shouldFetchAppInstallationStatus)
  {
    transformers = self->_transformers;
    v4 = [objc_opt_class() _builtinInstallationStatusTransformer];
    [(NSMutableArray *)transformers insertObject:v4 atIndex:0];
  }

  if (self->_shouldFetchAppIcons)
  {
    followupTransformers = self->_followupTransformers;
    v6 = [objc_opt_class() _builtinIconFetchTransformer];
    [(NSMutableArray *)followupTransformers addObject:v6];
  }

  if (self->_shouldFetchPurposeStrings)
  {
    v7 = self->_followupTransformers;
    v8 = [objc_opt_class() _builtinPurposeStringsFetchTransformer];
    [(NSMutableArray *)v7 addObject:v8];
  }
}

+ (void)_performTransformations:(id)a3 model:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = [v8 firstObject];
    v12 = [v8 subarrayWithRange:{1, objc_msgSend(v8, "count") - 1}];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__HKSourceListDataSource__performTransformations_model_completion___block_invoke;
    v15[3] = &unk_1E81BBBC8;
    v18 = a1;
    v16 = v12;
    v17 = v10;
    v13 = v11[2];
    v14 = v12;
    v13(v11, v9, v15);
  }

  else
  {
    (*(v10 + 2))(v10, v9);
  }
}

uint64_t __67__HKSourceListDataSource__performTransformations_model_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 48) _performTransformations:*(a1 + 32) model:a2 completion:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)_didFetchSources:(id)a3 error:(id)a4 completion:(id)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _HKInitializeLogging();
  v11 = *MEMORY[0x1E696B940];
  if (v8)
  {
    v32 = v10;
    v33 = v9;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      v14 = v13;
      *buf = 138543618;
      v57 = v13;
      v58 = 2048;
      v59 = [v8 count];
      _os_log_impl(&dword_1C3942000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: successfully fetched %lu sources", buf, 0x16u);
    }

    v15 = dispatch_group_create();
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v34 = v8;
    if (self->_shouldIncludeSpecialSources)
    {
      [(HKSourceListDataSource *)self _specialAppBundleIdentifiers];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = v53 = 0u;
      v17 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v51;
        do
        {
          v20 = 0;
          do
          {
            if (*v51 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v50 + 1) + 8 * v20);
            dispatch_group_enter(v15);
            v47[0] = MEMORY[0x1E69E9820];
            v47[1] = 3221225472;
            v47[2] = __60__HKSourceListDataSource__didFetchSources_error_completion___block_invoke;
            v47[3] = &unk_1E81BBBF0;
            v47[4] = self;
            v48 = v16;
            v49 = v15;
            [(HKSourceListDataSource *)self _fakeSourceForInstalledAppWithBundleIdentifier:v21 completion:v47];

            ++v20;
          }

          while (v18 != v20);
          v18 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v18);
      }

      v8 = v34;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obja = v8;
    v22 = [obja countByEnumeratingWithState:&v43 objects:v54 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v44;
      do
      {
        v25 = 0;
        do
        {
          if (*v44 != v24)
          {
            objc_enumerationMutation(obja);
          }

          v26 = *(*(&v43 + 1) + 8 * v25);
          dispatch_group_enter(v15);
          v27 = [[HKSourceDataModel alloc] initWithSource:v26];
          v28 = [(NSMutableArray *)self->_transformers mutableCopy];
          v29 = objc_opt_class();
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __60__HKSourceListDataSource__didFetchSources_error_completion___block_invoke_3;
          v40[3] = &unk_1E81BBBF0;
          v40[4] = self;
          v41 = v16;
          v42 = v15;
          [v29 _performTransformations:v28 model:v27 completion:v40];

          ++v25;
        }

        while (v23 != v25);
        v23 = [obja countByEnumeratingWithState:&v43 objects:v54 count:16];
      }

      while (v23);
    }

    resultsQueue = self->_resultsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__HKSourceListDataSource__didFetchSources_error_completion___block_invoke_5;
    block[3] = &unk_1E81B5A60;
    block[4] = self;
    v38 = v16;
    v10 = v32;
    v39 = v32;
    v31 = v16;
    dispatch_group_notify(v15, resultsQueue, block);

    v9 = v33;
    v8 = v34;
  }

  else if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
  {
    [HKSourceListDataSource _didFetchSources:v11 error:? completion:?];
  }
}

void __60__HKSourceListDataSource__didFetchSources_error_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 16);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__HKSourceListDataSource__didFetchSources_error_completion___block_invoke_2;
    v5[3] = &unk_1E81B5AD0;
    v6 = *(a1 + 40);
    v7 = v3;
    dispatch_sync(v4, v5);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __60__HKSourceListDataSource__didFetchSources_error_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 16);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__HKSourceListDataSource__didFetchSources_error_completion___block_invoke_4;
    v5[3] = &unk_1E81B5AD0;
    v6 = *(a1 + 40);
    v7 = v3;
    dispatch_sync(v4, v5);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __60__HKSourceListDataSource__didFetchSources_error_completion___block_invoke_5(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v2 = *MEMORY[0x1E696B940];
  if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    *buf = 138543362;
    v40 = objc_opt_class();
    v4 = v40;
    _os_log_impl(&dword_1C3942000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: finished transforming fetched sources", buf, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = *(a1 + 40);
  v7 = MEMORY[0x1E696AE18];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __60__HKSourceListDataSource__didFetchSources_error_completion___block_invoke_358;
  v36[3] = &unk_1E81BBC18;
  v24 = v5;
  v37 = v24;
  v8 = [v7 predicateWithBlock:v36];
  [v6 filterUsingPredicate:v8];

  v9 = [[HKSourceListDataModel alloc] initWithSourceModels:*(a1 + 40)];
  v10 = *(a1 + 32);
  v11 = *(v10 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__HKSourceListDataSource__didFetchSources_error_completion___block_invoke_2_361;
  block[3] = &unk_1E81B5A60;
  block[4] = v10;
  v12 = v9;
  v34 = v12;
  v35 = *(a1 + 48);
  dispatch_async(v11, block);
  v23 = v12;
  v13 = [(HKSourceListDataModel *)v12 copy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [v13 allSources];
  v14 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      v17 = 0;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v29 + 1) + 8 * v17);
        v19 = objc_opt_class();
        v20 = [*(*(a1 + 32) + 32) copy];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __60__HKSourceListDataSource__didFetchSources_error_completion___block_invoke_3_362;
        v26[3] = &unk_1E81BBC40;
        v21 = v13;
        v22 = *(a1 + 32);
        v27 = v21;
        v28 = v22;
        [v19 _performTransformations:v20 model:v18 completion:v26];

        ++v17;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v15);
  }
}

uint64_t __60__HKSourceListDataSource__didFetchSources_error_completion___block_invoke_358(uint64_t a1, void *a2)
{
  v3 = [a2 source];
  v4 = [v3 bundleIdentifier];

  v5 = [*(a1 + 32) containsObject:v4];
  if ((v5 & 1) == 0)
  {
    [*(a1 + 32) addObject:v4];
  }

  return v5 ^ 1u;
}

uint64_t __60__HKSourceListDataSource__didFetchSources_error_completion___block_invoke_2_361(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  [*(a1 + 32) _notifyObserversForDataSourceUpdate];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __60__HKSourceListDataSource__didFetchSources_error_completion___block_invoke_3_362(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__HKSourceListDataSource__didFetchSources_error_completion___block_invoke_4_363;
  v6[3] = &unk_1E81B5AD0;
  v6[4] = v3;
  v7 = v2;
  v5 = v2;
  dispatch_async(v4, v6);
}

uint64_t __60__HKSourceListDataSource__didFetchSources_error_completion___block_invoke_4_363(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _throttledNotificationOfDataSourceUpdate];
}

- (void)_notifyObserversForDataSourceUpdate
{
  v14 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = *MEMORY[0x1E696B940];
  if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_opt_class();
    observers = self->_observers;
    *buf = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = observers;
    v7 = v5;
    _os_log_impl(&dword_1C3942000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: notifying observers via sourceListDataSourceDidUpdate: %@", buf, 0x16u);
  }

  v8 = self->_observers;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__HKSourceListDataSource__notifyObserversForDataSourceUpdate__block_invoke;
  v9[3] = &unk_1E81BBC68;
  v9[4] = self;
  [(HKSynchronousObserverSet *)v8 notifyObservers:v9];
}

- (void)_throttledNotificationOfDataSourceUpdate
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];

  [(HKSourceListDataSource *)self performSelector:sel__notifyObserversForDataSourceUpdate withObject:0 afterDelay:0.25];
}

+ (void)_remoteWatchAppPurposeStringsForBundleIdentifier:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E698AB08];
  v7 = a3;
  v8 = [v6 sharedDeviceConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__HKSourceListDataSource__remoteWatchAppPurposeStringsForBundleIdentifier_completion___block_invoke;
  v10[3] = &unk_1E81BBCB8;
  v11 = v5;
  v9 = v5;
  [v8 fetchWatchAppBundleIDForCompanionAppBundleID:v7 completion:v10];
}

void __86__HKSourceListDataSource__remoteWatchAppPurposeStringsForBundleIdentifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [MEMORY[0x1E698AB08] sharedDeviceConnection];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __86__HKSourceListDataSource__remoteWatchAppPurposeStringsForBundleIdentifier_completion___block_invoke_2;
    v7[3] = &unk_1E81BBC90;
    v8 = *(a1 + 32);
    [v6 fetchApplicationOnPairedDevice:0 withBundleID:v5 completion:v7];
  }
}

void __86__HKSourceListDataSource__remoteWatchAppPurposeStringsForBundleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = a3;
  v7 = a2;
  v10 = [v5 setWithObjects:{@"NSHealthShareUsageDescription", @"NSHealthUpdateUsageDescription", 0}];
  v8 = [MEMORY[0x1E695DF58] preferredLanguages];
  v9 = [v7 localizedInfoPlistStringsForKeys:v10 fetchingFirstMatchingLocalizationInList:v8];

  (*(*(a1 + 32) + 16))();
}

- (id)_specialAppBundleIdentifiers
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696C8F8];
  v5[0] = *MEMORY[0x1E696C810];
  v5[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

- (void)_fakeSourceForInstalledAppWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E696C4A0]) _init];
  [v8 _setBundleIdentifier:v6];
  [v8 _setOptions:5];
  v9 = [[HKSourceDataModel alloc] initWithSource:v8];
  v10 = objc_opt_class();
  v11 = [(NSMutableArray *)self->_transformers copy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__HKSourceListDataSource__fakeSourceForInstalledAppWithBundleIdentifier_completion___block_invoke;
  v15[3] = &unk_1E81BBCE0;
  v16 = v9;
  v17 = v6;
  v18 = v7;
  v12 = v7;
  v13 = v6;
  v14 = v9;
  [v10 _performTransformations:v11 model:v14 completion:v15];
}

void __84__HKSourceListDataSource__fakeSourceForInstalledAppWithBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) installed])
  {
    v2 = objc_alloc(MEMORY[0x1E69635F8]);
    v3 = *(a1 + 40);
    v9 = 0;
    v4 = [v2 initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v9];
    v5 = v9;
    if (!v5)
    {
      v7 = [*(a1 + 32) source];
      v8 = [v4 localizedName];
      [v7 _setName:v8];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);

    v6();
  }
}

- (id)fetchFilteredSourcesWithAuthorizationRecordsForSources:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E696BF50]);
  v6 = [(HKSourceListDataSource *)self healthStore];
  v21 = [v5 initWithHealthStore:v6];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__26;
  v33 = __Block_byref_object_dispose__26;
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = dispatch_semaphore_create(0);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v9)
  {
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 source];
        if ([v13 _isSiri])
        {
          [v30[5] addObject:v12];
        }

        else
        {
          v14 = [v13 bundleIdentifier];
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __81__HKSourceListDataSource_fetchFilteredSourcesWithAuthorizationRecordsForSources___block_invoke;
          v22[3] = &unk_1E81BBD30;
          v24 = &v29;
          v22[4] = self;
          v22[5] = v12;
          v15 = v7;
          v23 = v15;
          [v21 fetchAuthorizationRecordsForBundleIdentifier:v14 completion:v22];

          dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v9);
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x1E696B940];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    *buf = 138543362;
    v36 = v17;
    v18 = v17;
    _os_log_impl(&dword_1C3942000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully returned the list of sources", buf, 0xCu);
  }

  v19 = v30[5];
  _Block_object_dispose(&v29, 8);

  return v19;
}

void __81__HKSourceListDataSource_fetchFilteredSourcesWithAuthorizationRecordsForSources___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __81__HKSourceListDataSource_fetchFilteredSourcesWithAuthorizationRecordsForSources___block_invoke_2;
    v9[3] = &unk_1E81BBD08;
    v11 = *(a1 + 56);
    v10 = *(a1 + 32);
    [v5 enumerateKeysAndObjectsUsingBlock:v9];
  }

  else if (v6)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x1E696B940];
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
    {
      __81__HKSourceListDataSource_fetchFilteredSourcesWithAuthorizationRecordsForSources___block_invoke_cold_1(a1, v8);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void __81__HKSourceListDataSource_fetchFilteredSourcesWithAuthorizationRecordsForSources___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (([v6 requestedSharing] & 1) != 0 || objc_msgSend(v6, "requestedReading"))
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B940];
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      *v10 = 138543362;
      *&v10[4] = objc_opt_class();
      v9 = *&v10[4];
      _os_log_impl(&dword_1C3942000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Added source to the list of sources", v10, 0xCu);
    }

    [*(*(*(a1 + 48) + 8) + 40) addObject:{*(a1 + 40), *v10}];
    *a4 = 1;
  }
}

- (void)initWithHealthStore:sources:queue:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"healthStore != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithHealthStore:sources:queue:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"queue != nil" object:? file:? lineNumber:? description:?];
}

- (void)setDeliverUpdates:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"_hasInitiatedFetch == NO" object:? file:? lineNumber:? description:?];
}

- (void)fetchModelForSources:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"_deliverUpdates == NO" object:? file:? lineNumber:? description:?];
}

- (void)setShouldFetchAppInstallationStatus:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"_hasInitiatedFetch == NO" object:? file:? lineNumber:? description:?];
}

- (void)setShouldFetchAppIcons:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"_hasInitiatedFetch == NO" object:? file:? lineNumber:? description:?];
}

- (void)setShouldFetchPurposeStrings:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"_hasInitiatedFetch == NO" object:? file:? lineNumber:? description:?];
}

- (void)setShouldIncludeSpecialSources:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"_hasInitiatedFetch == NO" object:? file:? lineNumber:? description:?];
}

- (void)addFetchTransformer:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"_hasInitiatedFetch == NO" object:? file:? lineNumber:? description:?];
}

void __54__HKSourceListDataSource__builtinIconFetchTransformer__block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 source];
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_1_5(&dword_1C3942000, v5, v6, "Failed to fetch research study bundle for source %{public}@: %{public}@", v7, v8, v9, v10, v11);
}

void __64__HKSourceListDataSource__builtinPurposeStringsFetchTransformer__block_invoke_354_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_3(&dword_1C3942000, a2, a3, "Unable to fetch remote watch app purpose strings for source %@: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)_didFetchSources:(void *)a1 error:completion:.cold.1(void *a1)
{
  v1 = a1;
  objc_opt_class();
  OUTLINED_FUNCTION_1_10();
  v3 = v2;
  OUTLINED_FUNCTION_1_5(&dword_1C3942000, v4, v5, "%{public}@: failed to fetch sources: %{public}@", v6, v7, v8, v9, v10);
}

void __81__HKSourceListDataSource_fetchFilteredSourcesWithAuthorizationRecordsForSources___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  OUTLINED_FUNCTION_1_10();
  v4 = v3;
  OUTLINED_FUNCTION_1_5(&dword_1C3942000, v5, v6, "%{public}@: failed to get authorization records: %{public}@", v7, v8, v9, v10, v11);
}

@end