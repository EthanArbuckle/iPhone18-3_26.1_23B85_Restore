@interface FLLoggingContext
+ (BOOL)isInternalBuild;
+ (BOOL)isRunningInExtension;
+ (unint64_t)inferredPersistenceConfiguration;
- (FLLoggingContext)init;
- (FLLoggingContext)initWithFileManager:(id)manager persistenceConfiguration:(unint64_t)configuration;
- (FLLoggingContext)initWithFileManager:(id)manager persistenceConfiguration:(unint64_t)configuration userDefaults:(id)defaults autoBugCapture:(id)capture containerStorePathManager:(id)pathManager;
- (FLLoggingContext)initWithFileManager:(id)manager userDefaults:(id)defaults autoBugCapture:(id)capture;
- (FLLoggingContext)initWithFileManager:(id)manager userDefaults:(id)defaults autoBugCapture:(id)capture containerStorePathManager:(id)pathManager;
- (id)pathForStore:(id)store;
- (id)userCachesDirectoryPathForStore:(id)store;
- (void)reportTelemetry:(id)telemetry payload:(id)payload;
@end

@implementation FLLoggingContext

- (id)userCachesDirectoryPathForStore:(id)store
{
  storeCopy = store;
  storeIdToUserCachesDirectoryPathMap = [(FLLoggingContext *)self storeIdToUserCachesDirectoryPathMap];
  path = [storeIdToUserCachesDirectoryPathMap objectForKeyedSubscript:storeCopy];

  if (!path)
  {
    fileManager = [(FLLoggingContext *)self fileManager];
    v8 = [fileManager urlForStoreWithId:storeCopy];
    path = [v8 path];

    if (path)
    {
      storeIdToUserCachesDirectoryPathMap2 = [(FLLoggingContext *)self storeIdToUserCachesDirectoryPathMap];
      [storeIdToUserCachesDirectoryPathMap2 setObject:path forKeyedSubscript:storeCopy];
    }
  }

  return path;
}

- (id)pathForStore:(id)store
{
  storeCopy = store;
  persistenceConfiguration = [(FLLoggingContext *)self persistenceConfiguration];
  if (persistenceConfiguration)
  {
    if (persistenceConfiguration == 2)
    {
      v3 = [(FLLoggingContext *)self userCachesDirectoryPathForStore:storeCopy];
    }

    else if (persistenceConfiguration == 1)
    {
      containerStorePathManager = [(FLLoggingContext *)self containerStorePathManager];
      v3 = [containerStorePathManager containerPathForStoreId:storeCopy];
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

- (void)reportTelemetry:(id)telemetry payload:(id)payload
{
  payloadCopy = payload;
  v4 = payloadCopy;
  AnalyticsSendEventLazy();
}

- (FLLoggingContext)initWithFileManager:(id)manager persistenceConfiguration:(unint64_t)configuration userDefaults:(id)defaults autoBugCapture:(id)capture containerStorePathManager:(id)pathManager
{
  managerCopy = manager;
  defaultsCopy = defaults;
  captureCopy = capture;
  pathManagerCopy = pathManager;
  v29.receiver = self;
  v29.super_class = FLLoggingContext;
  v17 = [(FLLoggingContext *)&v29 init];
  v18 = v17;
  if (v17)
  {
    v19 = flLogForObject(v17);
    log = v18->_log;
    v18->_log = v19;

    objc_storeStrong(&v18->_fileManager, manager);
    if (!configuration)
    {
      configuration = [objc_opt_class() inferredPersistenceConfiguration];
    }

    v18->_persistenceConfiguration = configuration;
    v21 = FLGetBootSessionUUID();
    timestampReferenceIdentifier = v18->_timestampReferenceIdentifier;
    v18->_timestampReferenceIdentifier = v21;

    objc_storeStrong(&v18->_userDefaults, defaults);
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create("com.apple.feedbacklogger", v23);
    queue = v18->_queue;
    v18->_queue = v24;

    objc_storeStrong(&v18->_containerStorePathManager, pathManager);
    objc_storeStrong(&v18->_autoBugCapture, capture);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storeIdToUserCachesDirectoryPathMap = v18->_storeIdToUserCachesDirectoryPathMap;
    v18->_storeIdToUserCachesDirectoryPathMap = dictionary;
  }

  return v18;
}

- (FLLoggingContext)initWithFileManager:(id)manager userDefaults:(id)defaults autoBugCapture:(id)capture containerStorePathManager:(id)pathManager
{
  pathManagerCopy = pathManager;
  captureCopy = capture;
  defaultsCopy = defaults;
  managerCopy = manager;
  v14 = -[FLLoggingContext initWithFileManager:persistenceConfiguration:userDefaults:autoBugCapture:containerStorePathManager:](self, "initWithFileManager:persistenceConfiguration:userDefaults:autoBugCapture:containerStorePathManager:", managerCopy, [objc_opt_class() inferredPersistenceConfiguration], defaultsCopy, captureCopy, pathManagerCopy);

  return v14;
}

- (FLLoggingContext)initWithFileManager:(id)manager userDefaults:(id)defaults autoBugCapture:(id)capture
{
  captureCopy = capture;
  defaultsCopy = defaults;
  managerCopy = manager;
  v11 = objc_alloc_init(FLContainerStorePathManager);
  v12 = [(FLLoggingContext *)self initWithFileManager:managerCopy userDefaults:defaultsCopy autoBugCapture:captureCopy containerStorePathManager:v11];

  return v12;
}

- (FLLoggingContext)initWithFileManager:(id)manager persistenceConfiguration:(unint64_t)configuration
{
  v6 = MEMORY[0x277CBEBD0];
  managerCopy = manager;
  v8 = [[v6 alloc] initWithSuiteName:@"com.apple.parsecd"];
  v9 = objc_alloc_init(FLAutoBugCapture);
  v10 = objc_alloc_init(FLContainerStorePathManager);
  v11 = [(FLLoggingContext *)self initWithFileManager:managerCopy persistenceConfiguration:configuration userDefaults:v8 autoBugCapture:v9 containerStorePathManager:v10];

  return v11;
}

- (FLLoggingContext)init
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(FLLoggingContext *)self initWithFileManager:defaultManager];

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
  if ([self isRunningInExtension])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end