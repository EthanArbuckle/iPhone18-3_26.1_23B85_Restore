@interface FLLoggingContext
+ (BOOL)isInternalBuild;
+ (BOOL)isRunningInExtension;
+ (unint64_t)inferredPersistenceConfiguration;
- (FLLoggingContext)init;
- (FLLoggingContext)initWithFileManager:(id)a3 persistenceConfiguration:(unint64_t)a4;
- (FLLoggingContext)initWithFileManager:(id)a3 persistenceConfiguration:(unint64_t)a4 userDefaults:(id)a5 autoBugCapture:(id)a6 containerStorePathManager:(id)a7;
- (FLLoggingContext)initWithFileManager:(id)a3 userDefaults:(id)a4 autoBugCapture:(id)a5;
- (FLLoggingContext)initWithFileManager:(id)a3 userDefaults:(id)a4 autoBugCapture:(id)a5 containerStorePathManager:(id)a6;
- (id)pathForStore:(id)a3;
- (id)userCachesDirectoryPathForStore:(id)a3;
- (void)reportTelemetry:(id)a3 payload:(id)a4;
@end

@implementation FLLoggingContext

- (id)userCachesDirectoryPathForStore:(id)a3
{
  v4 = a3;
  v5 = [(FLLoggingContext *)self storeIdToUserCachesDirectoryPathMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [(FLLoggingContext *)self fileManager];
    v8 = [v7 urlForStoreWithId:v4];
    v6 = [v8 path];

    if (v6)
    {
      v9 = [(FLLoggingContext *)self storeIdToUserCachesDirectoryPathMap];
      [v9 setObject:v6 forKeyedSubscript:v4];
    }
  }

  return v6;
}

- (id)pathForStore:(id)a3
{
  v5 = a3;
  v6 = [(FLLoggingContext *)self persistenceConfiguration];
  if (v6)
  {
    if (v6 == 2)
    {
      v3 = [(FLLoggingContext *)self userCachesDirectoryPathForStore:v5];
    }

    else if (v6 == 1)
    {
      v7 = [(FLLoggingContext *)self containerStorePathManager];
      v3 = [v7 containerPathForStoreId:v5];
    }
  }

  else
  {
    v8 = [(FLLoggingContext *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_24AB3F000, v8, OS_LOG_TYPE_ERROR, "Default persistence configuration should have been replaced with an inferred value.", v10, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (void)reportTelemetry:(id)a3 payload:(id)a4
{
  v5 = a4;
  v4 = v5;
  AnalyticsSendEventLazy();
}

- (FLLoggingContext)initWithFileManager:(id)a3 persistenceConfiguration:(unint64_t)a4 userDefaults:(id)a5 autoBugCapture:(id)a6 containerStorePathManager:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = FLLoggingContext;
  v17 = [(FLLoggingContext *)&v29 init];
  v18 = v17;
  if (v17)
  {
    v19 = flLogForObject(v17);
    log = v18->_log;
    v18->_log = v19;

    objc_storeStrong(&v18->_fileManager, a3);
    if (!a4)
    {
      a4 = [objc_opt_class() inferredPersistenceConfiguration];
    }

    v18->_persistenceConfiguration = a4;
    v21 = FLGetBootSessionUUID();
    timestampReferenceIdentifier = v18->_timestampReferenceIdentifier;
    v18->_timestampReferenceIdentifier = v21;

    objc_storeStrong(&v18->_userDefaults, a5);
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create("com.apple.feedbacklogger", v23);
    queue = v18->_queue;
    v18->_queue = v24;

    objc_storeStrong(&v18->_containerStorePathManager, a7);
    objc_storeStrong(&v18->_autoBugCapture, a6);
    v26 = [MEMORY[0x277CBEB38] dictionary];
    storeIdToUserCachesDirectoryPathMap = v18->_storeIdToUserCachesDirectoryPathMap;
    v18->_storeIdToUserCachesDirectoryPathMap = v26;
  }

  return v18;
}

- (FLLoggingContext)initWithFileManager:(id)a3 userDefaults:(id)a4 autoBugCapture:(id)a5 containerStorePathManager:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = -[FLLoggingContext initWithFileManager:persistenceConfiguration:userDefaults:autoBugCapture:containerStorePathManager:](self, "initWithFileManager:persistenceConfiguration:userDefaults:autoBugCapture:containerStorePathManager:", v13, [objc_opt_class() inferredPersistenceConfiguration], v12, v11, v10);

  return v14;
}

- (FLLoggingContext)initWithFileManager:(id)a3 userDefaults:(id)a4 autoBugCapture:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(FLContainerStorePathManager);
  v12 = [(FLLoggingContext *)self initWithFileManager:v10 userDefaults:v9 autoBugCapture:v8 containerStorePathManager:v11];

  return v12;
}

- (FLLoggingContext)initWithFileManager:(id)a3 persistenceConfiguration:(unint64_t)a4
{
  v6 = MEMORY[0x277CBEBD0];
  v7 = a3;
  v8 = [[v6 alloc] initWithSuiteName:@"com.apple.parsecd"];
  v9 = objc_alloc_init(FLAutoBugCapture);
  v10 = objc_alloc_init(FLContainerStorePathManager);
  v11 = [(FLLoggingContext *)self initWithFileManager:v7 persistenceConfiguration:a4 userDefaults:v8 autoBugCapture:v9 containerStorePathManager:v10];

  return v11;
}

- (FLLoggingContext)init
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(FLLoggingContext *)self initWithFileManager:v3];

  return v4;
}

+ (BOOL)isRunningInExtension
{
  if (isRunningInExtension_onceToken != -1)
  {
    dispatch_once(&isRunningInExtension_onceToken, &__block_literal_global_9);
  }

  return isRunningInExtension_isBundleExtensionType;
}

void __40__FLLoggingContext_isRunningInExtension__block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 objectForInfoDictionaryKey:@"EXAppExtensionAttributes"];
  isRunningInExtension_isBundleExtensionType = v0 != 0;
}

+ (BOOL)isInternalBuild
{
  if (isInternalBuild_onceToken != -1)
  {
    dispatch_once(&isInternalBuild_onceToken, &__block_literal_global_532);
  }

  return isInternalBuild_osVariantIsInternal;
}

uint64_t __35__FLLoggingContext_isInternalBuild__block_invoke()
{
  result = os_variant_has_internal_content();
  isInternalBuild_osVariantIsInternal = result;
  return result;
}

+ (unint64_t)inferredPersistenceConfiguration
{
  if ([a1 isRunningInExtension])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end