@interface DDRemoteActionViewServiceContext
+ (id)_allowedItemPayloadClasses;
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)enableUserInteraction:(BOOL)a3;
- (void)prepareViewControllerWithContext:(id)a3 completionHandler:(id)a4;
@end

@implementation DDRemoteActionViewServiceContext

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_MergedGlobals == -1)
  {
    v3 = qword_280B12208;
  }

  else
  {
    +[DDRemoteActionViewServiceContext _extensionAuxiliaryVendorProtocol];
    v3 = qword_280B12208;
  }

  return v3;
}

uint64_t __69__DDRemoteActionViewServiceContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  qword_280B12208 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282C40680];

  return MEMORY[0x2821F96F8]();
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (qword_280B12210 == -1)
  {
    v3 = qword_280B12218;
  }

  else
  {
    +[DDRemoteActionViewServiceContext _extensionAuxiliaryHostProtocol];
    v3 = qword_280B12218;
  }

  return v3;
}

uint64_t __67__DDRemoteActionViewServiceContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  qword_280B12218 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282C404A0];

  return MEMORY[0x2821F96F8]();
}

- (void)prepareViewControllerWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__DDRemoteActionViewServiceContext_prepareViewControllerWithContext_completionHandler___block_invoke;
  block[3] = &unk_278290CA8;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __87__DDRemoteActionViewServiceContext_prepareViewControllerWithContext_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  [v2 prepareViewControllerWithContext:*(a1 + 40) completionHandler:*(a1 + 48)];
}

- (void)enableUserInteraction:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__DDRemoteActionViewServiceContext_enableUserInteraction___block_invoke;
  v3[3] = &unk_278290CD0;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __58__DDRemoteActionViewServiceContext_enableUserInteraction___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) _principalObject];
  v2 = [v3 view];
  [v2 setUserInteractionEnabled:v1];
}

+ (id)_allowedItemPayloadClasses
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];

  return v2;
}

@end