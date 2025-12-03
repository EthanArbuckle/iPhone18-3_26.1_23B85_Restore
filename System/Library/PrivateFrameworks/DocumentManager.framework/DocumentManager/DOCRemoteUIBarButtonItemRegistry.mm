@interface DOCRemoteUIBarButtonItemRegistry
+ (id)shared;
- (DOCRemoteUIBarButtonItemRegistry)init;
- (id)barButtonItemPresentedInNavigationBar:(id)bar uuid:(id)uuid;
- (void)registerInstance:(id)instance;
@end

@implementation DOCRemoteUIBarButtonItemRegistry

+ (id)shared
{
  if (shared_onceToken_0 != -1)
  {
    +[DOCRemoteUIBarButtonItemRegistry shared];
  }

  v3 = shared_sharedInstance;

  return v3;
}

uint64_t __42__DOCRemoteUIBarButtonItemRegistry_shared__block_invoke()
{
  v0 = objc_alloc_init(DOCRemoteUIBarButtonItemRegistry);
  v1 = shared_sharedInstance;
  shared_sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (DOCRemoteUIBarButtonItemRegistry)init
{
  v6.receiver = self;
  v6.super_class = DOCRemoteUIBarButtonItemRegistry;
  v2 = [(DOCRemoteUIBarButtonItemRegistry *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    instancesByUUID = v2->_instancesByUUID;
    v2->_instancesByUUID = dictionary;
  }

  return v2;
}

- (void)registerInstance:(id)instance
{
  instanceCopy = instance;
  uuid = [instanceCopy uuid];
  v5 = [(NSMutableDictionary *)self->_instancesByUUID objectForKeyedSubscript:?];
  v6 = v5;
  if (v5)
  {
    weakObjectsPointerArray = v5;
  }

  else
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  }

  v8 = weakObjectsPointerArray;

  [v8 addPointer:instanceCopy];
  [(NSMutableDictionary *)self->_instancesByUUID setObject:v8 forKeyedSubscript:uuid];
}

- (id)barButtonItemPresentedInNavigationBar:(id)bar uuid:(id)uuid
{
  v20 = *MEMORY[0x1E69E9840];
  barCopy = bar;
  v7 = [(NSMutableDictionary *)self->_instancesByUUID objectForKeyedSubscript:uuid];
  if ([v7 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          _doc_ipi_view = [v12 _doc_ipi_view];
          if ([_doc_ipi_view isDescendantOfView:barCopy])
          {
            v9 = v12;

            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end