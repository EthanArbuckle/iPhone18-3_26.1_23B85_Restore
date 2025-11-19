@interface HCSettingsListenerHelper
- (HCSettingsListenerHelper)initWithListenerAddress:(id)a3 andDelegate:(id)a4;
- (void)addSelectorKey:(SEL)a3;
- (void)dealloc;
@end

@implementation HCSettingsListenerHelper

- (HCSettingsListenerHelper)initWithListenerAddress:(id)a3 andDelegate:(id)a4
{
  objc_initWeak(&location, a3);
  v6 = a4;
  v10.receiver = self;
  v10.super_class = HCSettingsListenerHelper;
  v7 = [(HCSettingsListenerHelper *)&v10 init];
  if (v7)
  {
    v8 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v7->_listenerAddress, v8);

    objc_storeWeak(&v7->_delegate, v6);
  }

  objc_destroyWeak(&location);
  return v7;
}

- (void)addSelectorKey:(SEL)a3
{
  selectorKeys = self->_selectorKeys;
  if (!selectorKeys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_selectorKeys;
    self->_selectorKeys = v6;

    selectorKeys = self->_selectorKeys;
  }

  v8 = NSStringFromSelector(a3);
  [(NSMutableArray *)selectorKeys addObject:v8];
}

- (void)dealloc
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_selectorKeys;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v10 = NSSelectorFromString(v8);
        v11 = objc_loadWeakRetained(&self->_listenerAddress);
        [WeakRetained registerUpdateBlock:0 forRetrieveSelector:v10 withListener:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v13.receiver = self;
  v13.super_class = HCSettingsListenerHelper;
  [(HCSettingsListenerHelper *)&v13 dealloc];
  v12 = *MEMORY[0x1E69E9840];
}

@end