@interface HUAccessoryListenerHelper
- (HUAccessoryListenerHelper)initWithListenerAddress:(id)address andDelegate:(id)delegate;
- (void)addKey:(id)key;
- (void)dealloc;
@end

@implementation HUAccessoryListenerHelper

- (HUAccessoryListenerHelper)initWithListenerAddress:(id)address andDelegate:(id)delegate
{
  objc_initWeak(&location, address);
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = HUAccessoryListenerHelper;
  v7 = [(HUAccessoryListenerHelper *)&v10 init];
  if (v7)
  {
    v8 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v7->_listenerAddress, v8);

    objc_storeWeak(&v7->_delegate, delegateCopy);
  }

  objc_destroyWeak(&location);
  return v7;
}

- (void)addKey:(id)key
{
  keyCopy = key;
  keys = self->_keys;
  v8 = keyCopy;
  if (!keys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_keys;
    self->_keys = v6;

    keyCopy = v8;
    keys = self->_keys;
  }

  [(NSMutableArray *)keys addObject:keyCopy];
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_loadWeakRetained(&self->_listenerAddress);
  [WeakRetained registerLoggingBlock:0 withListener:v4];

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_loadWeakRetained(&self->_listenerAddress);
  [v5 registerDiscoveryBlock:0 withListener:v6];

  v7 = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_loadWeakRetained(&self->_listenerAddress);
  [v7 registerUpdateBlock:0 forCharacteristicUUIDs:0 withListener:v8];

  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_loadWeakRetained(&self->_listenerAddress);
  [v9 registerAttributeUpdateBlock:0 withListener:v10];

  v11 = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_loadWeakRetained(&self->_listenerAddress);
  [v11 registerBluetoothStateBlock:0 withListener:v12];

  v13.receiver = self;
  v13.super_class = HUAccessoryListenerHelper;
  [(HUAccessoryListenerHelper *)&v13 dealloc];
}

@end