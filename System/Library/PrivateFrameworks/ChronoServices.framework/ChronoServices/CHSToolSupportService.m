@interface CHSToolSupportService
- (CHSToolSupportService)init;
- (CHSToolSupportService)initWithConnection:(id)a3;
- (void)cacheDescriptorsForBundleIdentifier:(id)a3 completion:(id)a4;
- (void)reloadDescriptorsForExtensionBundleIdentifier:(id)a3 completion:(id)a4;
@end

@implementation CHSToolSupportService

- (CHSToolSupportService)init
{
  v3 = +[CHSToolServiceConnection sharedInstance];
  v4 = [(CHSToolSupportService *)self initWithConnection:v3];

  return v4;
}

- (CHSToolSupportService)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHSToolSupportService;
  v6 = [(CHSToolSupportService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (void)cacheDescriptorsForBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__CHSToolSupportService_cacheDescriptorsForBundleIdentifier_completion___block_invoke;
  v8[3] = &unk_1E7454548;
  v9 = v6;
  v7 = v6;
  [(CHSToolSupportService *)self reloadDescriptorsForExtensionBundleIdentifier:a3 completion:v8];
}

void __72__CHSToolSupportService_cacheDescriptorsForBundleIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v9)
  {
    v7 = [v9 orderedDescriptors];
    v8 = [v9 extensionBundleIdentifier];
    [v6 setObject:v7 forKeyedSubscript:v8];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)reloadDescriptorsForExtensionBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__CHSToolSupportService_reloadDescriptorsForExtensionBundleIdentifier_completion___block_invoke;
  v9[3] = &unk_1E7454548;
  v10 = v6;
  v8 = v6;
  [(CHSToolServiceConnection *)connection refreshDescriptorsForExtensionBundleIdentifier:a3 completion:v9];
}

@end