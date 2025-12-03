@interface CHSToolSupportService
- (CHSToolSupportService)init;
- (CHSToolSupportService)initWithConnection:(id)connection;
- (void)cacheDescriptorsForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)reloadDescriptorsForExtensionBundleIdentifier:(id)identifier completion:(id)completion;
@end

@implementation CHSToolSupportService

- (CHSToolSupportService)init
{
  v3 = +[CHSToolServiceConnection sharedInstance];
  v4 = [(CHSToolSupportService *)self initWithConnection:v3];

  return v4;
}

- (CHSToolSupportService)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = CHSToolSupportService;
  v6 = [(CHSToolSupportService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (void)cacheDescriptorsForBundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__CHSToolSupportService_cacheDescriptorsForBundleIdentifier_completion___block_invoke;
  v8[3] = &unk_1E7454548;
  v9 = completionCopy;
  v7 = completionCopy;
  [(CHSToolSupportService *)self reloadDescriptorsForExtensionBundleIdentifier:identifier completion:v8];
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

- (void)reloadDescriptorsForExtensionBundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__CHSToolSupportService_reloadDescriptorsForExtensionBundleIdentifier_completion___block_invoke;
  v9[3] = &unk_1E7454548;
  v10 = completionCopy;
  v8 = completionCopy;
  [(CHSToolServiceConnection *)connection refreshDescriptorsForExtensionBundleIdentifier:identifier completion:v9];
}

@end