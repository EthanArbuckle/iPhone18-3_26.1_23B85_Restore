@interface HLPStringCacheController
+ (id)sharedInstance;
- (BOOL)isURLValid:(id)a3;
- (id)formattedDataWithData:(id)a3;
- (id)formattedDataWithFileURL:(id)a3;
- (id)newDataCache;
- (void)commonInit;
- (void)formattedDataWithFileURL:(id)a3 completionHandler:(id)a4;
@end

@implementation HLPStringCacheController

+ (id)sharedInstance
{
  if (sharedInstance_predicate_2 != -1)
  {
    +[HLPStringCacheController sharedInstance];
  }

  v3 = sharedInstance_gHLPStringCacheController;

  return v3;
}

uint64_t __42__HLPStringCacheController_sharedInstance__block_invoke()
{
  v0 = [(HLPDataCacheController *)[HLPStringCacheController alloc] initWithIdentifier:@"HLPStringCacheIdentifier" directoryName:@"com.apple.helpkit.String" maxCacheSize:0x100000 URLSessionDataType:3];
  v1 = sharedInstance_gHLPStringCacheController;
  sharedInstance_gHLPStringCacheController = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)commonInit
{
  v4.receiver = self;
  v4.super_class = HLPStringCacheController;
  [(HLPDataCacheController *)&v4 commonInit];
  LODWORD(v3) = *MEMORY[0x277CCA798];
  [(HLPDataCacheController *)self setDefaultPriority:v3];
}

- (id)newDataCache
{
  v2 = objc_alloc_init(HLPDataCache);
  [(HLPDataCache *)v2 setCacheType:1];
  [(HLPDataCache *)v2 setMaxAge:84600];
  return v2;
}

- (id)formattedDataWithFileURL:(id)a3
{
  v4 = MEMORY[0x277CBEA90];
  v5 = [a3 path];
  v6 = [v4 dataWithContentsOfFile:v5];

  v7 = [(HLPStringCacheController *)self formattedDataWithData:v6];

  return v7;
}

- (id)formattedDataWithData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
    if (v4)
    {
      goto LABEL_7;
    }

    v5 = HLPLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(HLPStringCacheController *)v3 formattedDataWithData:v5];
    }
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (BOOL)isURLValid:(id)a3
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v4 path];

  LOBYTE(v4) = [v5 fileExistsAtPath:v6];
  return v4;
}

- (void)formattedDataWithFileURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(HLPStringCacheController *)self isURLValid:v6])
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__HLPStringCacheController_formattedDataWithFileURL_completionHandler___block_invoke;
    block[3] = &unk_2797074D8;
    v10 = v6;
    v11 = self;
    v12 = v7;
    dispatch_async(v8, block);
  }
}

void __71__HLPStringCacheController_formattedDataWithFileURL_completionHandler___block_invoke(id *a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEA90]);
  v3 = [a1[4] path];
  v4 = [v2 initWithContentsOfFile:v3];

  v5 = [a1[5] formattedDataWithData:v4];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HLPStringCacheController_formattedDataWithFileURL_completionHandler___block_invoke_2;
  block[3] = &unk_279707570;
  v6 = a1[6];
  v11 = v4;
  v12 = v6;
  v10 = v5;
  v7 = v4;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)formattedDataWithData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2522BC000, a2, OS_LOG_TYPE_DEBUG, "Invalid string data %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end