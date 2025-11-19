@interface CPSWindow
- (void)addEventObserver:(id)a3;
- (void)removeEventObserver:(id)a3;
- (void)sendEvent:(id)a3;
@end

@implementation CPSWindow

- (void)addEventObserver:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = [(CPSWindow *)v12 observers];
  v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (!v10)
  {
    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v12->_observers;
    v12->_observers = v4;
    v3 = MEMORY[0x277D82BD8](observers).n128_u64[0];
  }

  v8 = [(CPSWindow *)v12 observers];
  v9 = [(NSHashTable *)v8 containsObject:location[0]];
  *&v6 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (!v9)
  {
    v7 = [(CPSWindow *)v12 observers];
    [(NSHashTable *)v7 addObject:location[0]];
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(location, 0);
}

- (void)removeEventObserver:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSWindow *)v8 observers];
  v6 = [(NSHashTable *)v5 containsObject:location[0]];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v6)
  {
    v4 = [(CPSWindow *)v8 observers];
    [(NSHashTable *)v4 removeObject:location[0]];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)sendEvent:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 1;
  v18 = 0;
  v13 = 1;
  if ([location[0] type] != 7)
  {
    v12 = 0;
    if (![location[0] type])
    {
      v19 = [location[0] allTouches];
      v18 = 1;
      v12 = _touchesContainIndirectTouch(v19);
    }

    v13 = v12;
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](v19);
  }

  if (v13)
  {
    memset(__b, 0, sizeof(__b));
    obj = [(CPSWindow *)v22 observers];
    v11 = [(NSHashTable *)obj countByEnumeratingWithState:__b objects:v23 count:16];
    if (v11)
    {
      v7 = *__b[2];
      v8 = 0;
      v9 = v11;
      while (1)
      {
        v6 = v8;
        if (*__b[2] != v7)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(__b[1] + 8 * v8);
        v3 = [location[0] type];
        v15 = [v5 shouldForwardEventForWindow:v4 eventType:v3];
        if ((v20 & 1) == 1 && (v15 & 1) == 0)
        {
          v20 = 0;
        }

        ++v8;
        if (v6 + 1 >= v9)
        {
          v8 = 0;
          v9 = [(NSHashTable *)obj countByEnumeratingWithState:__b objects:v23 count:16];
          if (!v9)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
  }

  if (v20)
  {
    v14.receiver = v22;
    v14.super_class = CPSWindow;
    [(CPSWindow *)&v14 sendEvent:location[0]];
  }

  objc_storeStrong(location, 0);
}

@end