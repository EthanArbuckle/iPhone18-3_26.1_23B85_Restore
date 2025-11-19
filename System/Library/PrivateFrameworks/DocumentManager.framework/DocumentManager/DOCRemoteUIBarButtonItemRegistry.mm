@interface DOCRemoteUIBarButtonItemRegistry
+ (id)shared;
- (DOCRemoteUIBarButtonItemRegistry)init;
- (id)barButtonItemPresentedInNavigationBar:(id)a3 uuid:(id)a4;
- (void)registerInstance:(id)a3;
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
    v3 = [MEMORY[0x1E695DF90] dictionary];
    instancesByUUID = v2->_instancesByUUID;
    v2->_instancesByUUID = v3;
  }

  return v2;
}

- (void)registerInstance:(id)a3
{
  v4 = a3;
  v9 = [v4 uuid];
  v5 = [(NSMutableDictionary *)self->_instancesByUUID objectForKeyedSubscript:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  }

  v8 = v7;

  [v8 addPointer:v4];
  [(NSMutableDictionary *)self->_instancesByUUID setObject:v8 forKeyedSubscript:v9];
}

- (id)barButtonItemPresentedInNavigationBar:(id)a3 uuid:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_instancesByUUID objectForKeyedSubscript:a4];
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
          v13 = [v12 _doc_ipi_view];
          if ([v13 isDescendantOfView:v6])
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