@interface CPSClipURL
+ (void)stopStallingCurrentInstallationWithCompletionHandler:(id)handler;
- (CPSClipURL)initWithURL:(id)l;
- (void)cancelPrewarmingClipWithCompletionHandler:(id)handler;
- (void)checkAvailabilityWithCompletionHandler:(id)handler;
- (void)fetchClipMetadataWithCompletionHandler:(id)handler;
- (void)installClipWithCompletionHandler:(id)handler;
- (void)openWithCompletionHandler:(id)handler;
- (void)prewarmClipWithCompletionHandler:(id)handler;
- (void)test_uninstallClipWithCompletionHandler:(id)handler;
@end

@implementation CPSClipURL

+ (void)stopStallingCurrentInstallationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[CPSDaemonConnection sharedConnection];
  [v4 stopStallingCurrentInstallationWithCompletionHandler:handlerCopy];
}

- (CPSClipURL)initWithURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = CPSClipURL;
  v6 = [(CPSClipURL *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, l);
    v8 = v7;
  }

  return v7;
}

- (void)checkAvailabilityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[CPSDaemonConnection sharedConnection];
  URL = self->_URL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__CPSClipURL_checkAvailabilityWithCompletionHandler___block_invoke;
  v8[3] = &unk_278DCE438;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [v5 isClipURL:URL completionHandler:v8];
}

- (void)openWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[CPSDaemonConnection sharedConnection];
  URL = self->_URL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__CPSClipURL_openWithCompletionHandler___block_invoke;
  v8[3] = &unk_278DCE460;
  v9 = handlerCopy;
  v7 = handlerCopy;
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

- (void)prewarmClipWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[CPSDaemonConnection sharedConnection];
  URL = self->_URL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__CPSClipURL_prewarmClipWithCompletionHandler___block_invoke;
  v8[3] = &unk_278DCE460;
  v9 = handlerCopy;
  v7 = handlerCopy;
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

- (void)cancelPrewarmingClipWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[CPSDaemonConnection sharedConnection];
  URL = self->_URL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__CPSClipURL_cancelPrewarmingClipWithCompletionHandler___block_invoke;
  v8[3] = &unk_278DCE460;
  v9 = handlerCopy;
  v7 = handlerCopy;
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

- (void)installClipWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[CPSDaemonConnection sharedConnection];
  URL = self->_URL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__CPSClipURL_installClipWithCompletionHandler___block_invoke;
  v8[3] = &unk_278DCE460;
  v9 = handlerCopy;
  v7 = handlerCopy;
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

- (void)fetchClipMetadataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[CPSDaemonConnection sharedConnection];
  URL = self->_URL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__CPSClipURL_fetchClipMetadataWithCompletionHandler___block_invoke;
  v8[3] = &unk_278DCE488;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [v5 fetchClipMetadataWithURL:URL completionHandler:v8];
}

- (void)test_uninstallClipWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[CPSDaemonConnection sharedConnection];
  URL = self->_URL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__CPSClipURL_test_uninstallClipWithCompletionHandler___block_invoke;
  v8[3] = &unk_278DCE460;
  v9 = handlerCopy;
  v7 = handlerCopy;
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