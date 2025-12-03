@interface CPSWindow
- (void)addEventObserver:(id)observer;
- (void)removeEventObserver:(id)observer;
- (void)sendEvent:(id)event;
@end

@implementation CPSWindow

- (void)addEventObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  observers = [(CPSWindow *)selfCopy observers];
  v3 = MEMORY[0x277D82BD8](observers).n128_u64[0];
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = selfCopy->_observers;
    selfCopy->_observers = weakObjectsHashTable;
    v3 = MEMORY[0x277D82BD8](observers).n128_u64[0];
  }

  observers2 = [(CPSWindow *)selfCopy observers];
  v9 = [(NSHashTable *)observers2 containsObject:location[0]];
  *&v6 = MEMORY[0x277D82BD8](observers2).n128_u64[0];
  if (!v9)
  {
    observers3 = [(CPSWindow *)selfCopy observers];
    [(NSHashTable *)observers3 addObject:location[0]];
    MEMORY[0x277D82BD8](observers3);
  }

  objc_storeStrong(location, 0);
}

- (void)removeEventObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  observers = [(CPSWindow *)selfCopy observers];
  v6 = [(NSHashTable *)observers containsObject:location[0]];
  *&v3 = MEMORY[0x277D82BD8](observers).n128_u64[0];
  if (v6)
  {
    observers2 = [(CPSWindow *)selfCopy observers];
    [(NSHashTable *)observers2 removeObject:location[0]];
    MEMORY[0x277D82BD8](observers2);
  }

  objc_storeStrong(location, 0);
}

- (void)sendEvent:(id)event
{
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v20 = 1;
  v18 = 0;
  v13 = 1;
  if ([location[0] type] != 7)
  {
    v12 = 0;
    if (![location[0] type])
    {
      allTouches = [location[0] allTouches];
      v18 = 1;
      v12 = _touchesContainIndirectTouch(allTouches);
    }

    v13 = v12;
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](allTouches);
  }

  if (v13)
  {
    memset(__b, 0, sizeof(__b));
    obj = [(CPSWindow *)selfCopy observers];
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
        type = [location[0] type];
        v15 = [v5 shouldForwardEventForWindow:v4 eventType:type];
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
    v14.receiver = selfCopy;
    v14.super_class = CPSWindow;
    [(CPSWindow *)&v14 sendEvent:location[0]];
  }

  objc_storeStrong(location, 0);
}

@end