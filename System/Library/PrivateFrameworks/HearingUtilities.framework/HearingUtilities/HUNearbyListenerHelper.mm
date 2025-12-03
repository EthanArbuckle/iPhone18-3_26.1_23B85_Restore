@interface HUNearbyListenerHelper
- (HUNearbyListenerHelper)initWithListenerAddress:(id)address andDelegate:(id)delegate;
- (void)addKey:(id)key forDomain:(id)domain;
- (void)dealloc;
@end

@implementation HUNearbyListenerHelper

- (HUNearbyListenerHelper)initWithListenerAddress:(id)address andDelegate:(id)delegate
{
  objc_initWeak(&location, address);
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = HUNearbyListenerHelper;
  v7 = [(HUNearbyListenerHelper *)&v10 init];
  if (v7)
  {
    v8 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v7->_listenerAddress, v8);

    objc_storeWeak(&v7->_delegate, delegateCopy);
  }

  objc_destroyWeak(&location);
  return v7;
}

- (void)addKey:(id)key forDomain:(id)domain
{
  keyCopy = key;
  domainCopy = domain;
  keys = self->_keys;
  if (!keys)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_keys;
    self->_keys = v8;

    keys = self->_keys;
  }

  v10 = [(NSMutableDictionary *)keys objectForKey:keyCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v10 addObject:domainCopy];
  [(NSMutableDictionary *)self->_keys setObject:v10 forKey:keyCopy];
}

- (void)dealloc
{
  v3 = [(NSMutableDictionary *)self->_keys objectForKey:@"HUNearbyControllerLoggingKey"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__HUNearbyListenerHelper_dealloc__block_invoke;
  v9[3] = &unk_1E85CBC98;
  v9[4] = self;
  [v3 enumerateObjectsUsingBlock:v9];

  v4 = [(NSMutableDictionary *)self->_keys objectForKey:@"HUNearbyControllerMessageKey"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__HUNearbyListenerHelper_dealloc__block_invoke_2;
  v8[3] = &unk_1E85CBC98;
  v8[4] = self;
  [v4 enumerateObjectsUsingBlock:v8];

  v5 = [(NSMutableDictionary *)self->_keys objectForKey:@"HUNearbyControllerDiscoveryKey"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__HUNearbyListenerHelper_dealloc__block_invoke_3;
  v7[3] = &unk_1E85CBC98;
  v7[4] = self;
  [v5 enumerateObjectsUsingBlock:v7];

  v6.receiver = self;
  v6.super_class = HUNearbyListenerHelper;
  [(HUNearbyListenerHelper *)&v6 dealloc];
}

void __33__HUNearbyListenerHelper_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 16));
  [WeakRetained registerLoggingBlock:0 forDomain:v4 withListener:*(a1 + 32)];
}

void __33__HUNearbyListenerHelper_dealloc__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 16));
  [WeakRetained registerMessageBlock:0 forDomain:v4 withListener:*(a1 + 32)];
}

void __33__HUNearbyListenerHelper_dealloc__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 16));
  [WeakRetained registerDiscoveryBlock:0 forDomain:v4 withListener:*(a1 + 32)];
}

@end