@interface _CKEntityContactStoreProvider
+ (id)sharedInstance;
- (id)contactStore;
@end

@implementation _CKEntityContactStoreProvider

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47___CKEntityContactStoreProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_5 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_5, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

- (id)contactStore
{
  mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
  getContactStore = [mEMORY[0x1E69A7FD0] getContactStore];

  return getContactStore;
}

@end