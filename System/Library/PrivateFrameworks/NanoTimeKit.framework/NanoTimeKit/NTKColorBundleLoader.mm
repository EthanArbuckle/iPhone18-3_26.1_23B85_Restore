@interface NTKColorBundleLoader
+ (id)sharedInstance;
- (NSURL)colorBundlesDirectory;
- (NTKColorBundleLoader)init;
- (id)loadColorBundles;
- (void)_startMonitoringColorBundlesDirectoryIfNeeded;
@end

@implementation NTKColorBundleLoader

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__NTKColorBundleLoader_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_25 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_25, block);
  }

  v2 = sharedInstance___instance;

  return v2;
}

void __38__NTKColorBundleLoader_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___instance;
  sharedInstance___instance = v1;
}

- (NTKColorBundleLoader)init
{
  v9.receiver = self;
  v9.super_class = NTKColorBundleLoader;
  v2 = [(NTKColorBundleLoader *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NTKBundleLoader);
    bundleLoader = v2->_bundleLoader;
    v2->_bundleLoader = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v6 = dispatch_queue_create("com.apple.NanoTimeKit.colorBundleLoader", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    [(NTKColorBundleLoader *)v2 _startMonitoringColorBundlesDirectoryIfNeeded];
  }

  return v2;
}

- (id)loadColorBundles
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__52;
  v10 = __Block_byref_object_dispose__52;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__NTKColorBundleLoader_loadColorBundles__block_invoke;
  v5[3] = &unk_278786168;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__NTKColorBundleLoader_loadColorBundles__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[5];
  if (!v3)
  {
    v4 = v2[1];
    v5 = [*(a1 + 32) colorBundlesDirectory];
    v6 = [v4 bundlesFromDirectoryURL:v5];
    v7 = [v2 sortedBundles:v6];
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v3 = *(*(a1 + 32) + 40);
  }

  v10 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v10, v3);
}

- (NSURL)colorBundlesDirectory
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__NTKColorBundleLoader_colorBundlesDirectory__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  if (colorBundlesDirectory_onceToken != -1)
  {
    dispatch_once(&colorBundlesDirectory_onceToken, block);
  }

  return self->_colorBundlesDirectory;
}

void __45__NTKColorBundleLoader_colorBundlesDirectory__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEBC0];
  v7 = +[NTKBundleLoader rootDirectory];
  v3 = [v7 stringByAppendingString:@"/System/Library/NanoTimeKit/FaceBundles/ColorBundles/"];
  v4 = [v2 fileURLWithPath:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;
}

- (void)_startMonitoringColorBundlesDirectoryIfNeeded
{
  if (+[NTKDefaultPreferences monitorColorBundleFolder]&& !self->_colorBundleSource)
  {
    v6 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "#color-bundle It will monitor color bundle updates", buf, 2u);
    }

    v7 = [(NTKColorBundleLoader *)self colorBundlesDirectory];
    v8 = [v7 path];
    v9 = open([v8 cStringUsingEncoding:4], 0);

    v10 = dispatch_source_create(MEMORY[0x277D85D48], v9, 0xEuLL, self->_queue);
    colorBundleSource = self->_colorBundleSource;
    self->_colorBundleSource = v10;

    dispatch_source_set_event_handler(self->_colorBundleSource, &__block_literal_global_162);
    v12 = self->_colorBundleSource;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __69__NTKColorBundleLoader__startMonitoringColorBundlesDirectoryIfNeeded__block_invoke_2;
    handler[3] = &__block_descriptor_36_e5_v8__0l;
    v14 = v9;
    dispatch_source_set_cancel_handler(v12, handler);
    dispatch_resume(self->_colorBundleSource);
  }

  else if (+[NTKDefaultPreferences monitorColorBundleFolder]|| (v3 = self->_colorBundleSource) == 0)
  {
    v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "#color-bundle It won't monitor color bundle updates", buf, 2u);
    }
  }

  else
  {
    dispatch_source_cancel(v3);
    v4 = self->_colorBundleSource;
    self->_colorBundleSource = 0;
  }
}

int64_t __38__NTKColorBundleLoader_sortedBundles___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 bundlePath];
  v6 = [v5 pathComponents];
  v7 = [v6 lastObject];

  v8 = [v4 bundlePath];

  v9 = [v8 pathComponents];
  v10 = [v9 lastObject];

  v11 = [NTKPlistPigmentEditOptionLoader compareColorFileNames:v7 otherFileName:v10 fileExtension:@".bundle"];
  return v11;
}

@end