@interface NTKSwatchRefreshHandlerManager
- (NTKSwatchRefreshHandlerManager)init;
- (void)executeAllHandlers;
- (void)setHandler:(id)handler forKey:(id)key;
@end

@implementation NTKSwatchRefreshHandlerManager

- (NTKSwatchRefreshHandlerManager)init
{
  v6.receiver = self;
  v6.super_class = NTKSwatchRefreshHandlerManager;
  v2 = [(NTKSwatchRefreshHandlerManager *)&v6 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    swatchRefreshHandlers = v2->_swatchRefreshHandlers;
    v2->_swatchRefreshHandlers = strongToStrongObjectsMapTable;
  }

  return v2;
}

- (void)setHandler:(id)handler forKey:(id)key
{
  if (handler)
  {
    swatchRefreshHandlers = self->_swatchRefreshHandlers;
    keyCopy = key;
    v8 = [handler copy];
    v7 = _Block_copy(v8);
    [(NSMapTable *)swatchRefreshHandlers setObject:v7 forKey:keyCopy];
  }
}

- (void)executeAllHandlers
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  objectEnumerator = [(NSMapTable *)self->_swatchRefreshHandlers objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        (*(*(*(&v8 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMapTable *)self->_swatchRefreshHandlers removeAllObjects];
}

@end