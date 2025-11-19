@interface CPSClipURL
+ (void)stopStallingCurrentInstallationWithCompletionHandler:(id)a3;
- (CPSClipURL)initWithURL:(id)a3;
- (void)cancelPrewarmingClipWithCompletionHandler:(id)a3;
- (void)checkAvailabilityWithCompletionHandler:(id)a3;
- (void)fetchClipMetadataWithCompletionHandler:(id)a3;
- (void)installClipWithCompletionHandler:(id)a3;
- (void)openWithCompletionHandler:(id)a3;
- (void)prewarmClipWithCompletionHandler:(id)a3;
- (void)test_uninstallClipWithCompletionHandler:(id)a3;
@end

@implementation CPSClipURL

+ (void)stopStallingCurrentInstallationWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[CPSDaemonConnection sharedConnection];
  [v4 stopStallingCurrentInstallationWithCompletionHandler:v3];
}

- (CPSClipURL)initWithURL:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CPSClipURL;
  v6 = [(CPSClipURL *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, a3);
    v8 = v7;
  }

  return v7;
}

- (void)checkAvailabilityWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[CPSDaemonConnection sharedConnection];
  URL = self->_URL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__CPSClipURL_checkAvailabilityWithCompletionHandler___block_invoke;
  v8[3] = &unk_278DCE438;
  v9 = v4;
  v7 = v4;
  [v5 isClipURL:URL completionHandler:v8];
}

- (void)openWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[CPSDaemonConnection sharedConnection];
  URL = self->_URL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__CPSClipURL_openWithCompletionHandler___block_invoke;
  v8[3] = &unk_278DCE460;
  v9 = v4;
  v7 = v4;
  [v5 openClipWithURL:URL completionHandler:v8];
}

uint64_t __40__CPSClipURL_openWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)prewarmClipWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[CPSDaemonConnection sharedConnection];
  URL = self->_URL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__CPSClipURL_prewarmClipWithCompletionHandler___block_invoke;
  v8[3] = &unk_278DCE460;
  v9 = v4;
  v7 = v4;
  [v5 prewarmClipWithURL:URL completionHandler:v8];
}

uint64_t __47__CPSClipURL_prewarmClipWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)cancelPrewarmingClipWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[CPSDaemonConnection sharedConnection];
  URL = self->_URL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__CPSClipURL_cancelPrewarmingClipWithCompletionHandler___block_invoke;
  v8[3] = &unk_278DCE460;
  v9 = v4;
  v7 = v4;
  [v5 cancelPrewarmingClipWithURL:URL completionHandler:v8];
}

uint64_t __56__CPSClipURL_cancelPrewarmingClipWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)installClipWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[CPSDaemonConnection sharedConnection];
  URL = self->_URL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__CPSClipURL_installClipWithCompletionHandler___block_invoke;
  v8[3] = &unk_278DCE460;
  v9 = v4;
  v7 = v4;
  [v5 installClipWithURL:URL completionHandler:v8];
}

uint64_t __47__CPSClipURL_installClipWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchClipMetadataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[CPSDaemonConnection sharedConnection];
  URL = self->_URL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__CPSClipURL_fetchClipMetadataWithCompletionHandler___block_invoke;
  v8[3] = &unk_278DCE488;
  v9 = v4;
  v7 = v4;
  [v5 fetchClipMetadataWithURL:URL completionHandler:v8];
}

- (void)test_uninstallClipWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[CPSDaemonConnection sharedConnection];
  URL = self->_URL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__CPSClipURL_test_uninstallClipWithCompletionHandler___block_invoke;
  v8[3] = &unk_278DCE460;
  v9 = v4;
  v7 = v4;
  [v5 uninstallClipWithURL:URL completionHandler:v8];
}

uint64_t __54__CPSClipURL_test_uninstallClipWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end