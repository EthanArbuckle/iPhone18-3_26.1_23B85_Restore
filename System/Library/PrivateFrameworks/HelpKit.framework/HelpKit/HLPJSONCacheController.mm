@interface HLPJSONCacheController
+ (id)sharedInstance;
- (BOOL)isURLValid:(id)valid;
- (id)formattedDataWithData:(id)data;
- (id)formattedDataWithFileURL:(id)l;
- (id)newDataCache;
- (void)commonInit;
- (void)formattedDataWithFileURL:(id)l completionHandler:(id)handler;
@end

@implementation HLPJSONCacheController

+ (id)sharedInstance
{
  if (sharedInstance_predicate_4 != -1)
  {
    +[HLPJSONCacheController sharedInstance];
  }

  v3 = sharedInstance_gHLPJSONCacheController;

  return v3;
}

uint64_t __40__HLPJSONCacheController_sharedInstance__block_invoke()
{
  v0 = [(HLPDataCacheController *)[HLPJSONCacheController alloc] initWithIdentifier:@"HLPJSONCacheIdentifier" directoryName:@"com.apple.helpkit.JSON" maxCacheSize:0x100000 URLSessionDataType:1];
  v1 = sharedInstance_gHLPJSONCacheController;
  sharedInstance_gHLPJSONCacheController = v0;

  v2 = sharedInstance_gHLPJSONCacheController;

  return [v2 setBackgroundOriginUpdate:1];
}

- (void)commonInit
{
  v4.receiver = self;
  v4.super_class = HLPJSONCacheController;
  [(HLPDataCacheController *)&v4 commonInit];
  LODWORD(v3) = *MEMORY[0x277CCA798];
  [(HLPDataCacheController *)self setDefaultPriority:v3];
}

- (id)newDataCache
{
  v2 = objc_alloc_init(HLPDataCache);
  [(HLPDataCache *)v2 setCacheType:0];
  [(HLPDataCache *)v2 setMaxAge:84600];
  return v2;
}

- (id)formattedDataWithFileURL:(id)l
{
  v4 = MEMORY[0x277CBEA90];
  path = [l path];
  v6 = [v4 dataWithContentsOfFile:path];

  v7 = [(HLPJSONCacheController *)self formattedDataWithData:v6];

  return v7;
}

- (id)formattedDataWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:1 error:&v8];
    v5 = v8;
    if (v5)
    {

      v6 = HLPLogForCategory(1uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [(HLPJSONCacheController *)v5 formattedDataWithData:v6];
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isURLValid:(id)valid
{
  v3 = MEMORY[0x277CCAA00];
  validCopy = valid;
  defaultManager = [v3 defaultManager];
  path = [validCopy path];

  LOBYTE(validCopy) = [defaultManager fileExistsAtPath:path];
  return validCopy;
}

- (void)formattedDataWithFileURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if ([(HLPJSONCacheController *)self isURLValid:lCopy])
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__HLPJSONCacheController_formattedDataWithFileURL_completionHandler___block_invoke;
    block[3] = &unk_2797074D8;
    v10 = lCopy;
    selfCopy = self;
    v12 = handlerCopy;
    dispatch_async(v8, block);
  }
}

void __69__HLPJSONCacheController_formattedDataWithFileURL_completionHandler___block_invoke(id *a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEA90]);
  v3 = [a1[4] path];
  v4 = [v2 initWithContentsOfFile:v3];

  v5 = [a1[5] formattedDataWithData:v4];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HLPJSONCacheController_formattedDataWithFileURL_completionHandler___block_invoke_2;
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
  _os_log_debug_impl(&dword_2522BC000, a2, OS_LOG_TYPE_DEBUG, "Invalid json data %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end