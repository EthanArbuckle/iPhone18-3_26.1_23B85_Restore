@interface SGCuratedChangeNotificationsBaseListener
- (SGCuratedChangeNotificationsBaseListener)init;
- (void)addObserver:(id)a3 forObjectLifetime:(id)a4;
- (void)dealloc;
- (void)fire;
@end

@implementation SGCuratedChangeNotificationsBaseListener

- (void)fire
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = self->_liveObserversMap;
  objc_sync_enter(v3);
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSMapTable *)self->_liveObserversMap objectEnumerator];
  v6 = [v5 allObjects];

  objc_autoreleasePoolPop(v4);
  objc_sync_exit(v3);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        (*(v11 + 16))(v11);
        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)a3 forObjectLifetime:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = self->_liveObserversMap;
  objc_sync_enter(v7);
  liveObserversMap = self->_liveObserversMap;
  v9 = [v11 copy];
  v10 = MEMORY[0x2383809F0]();
  [(NSMapTable *)liveObserversMap setObject:v10 forKey:v6];

  objc_sync_exit(v7);
}

- (void)dealloc
{
  [(SGCuratedChangeNotificationsBaseListener *)self stopListening];
  v3.receiver = self;
  v3.super_class = SGCuratedChangeNotificationsBaseListener;
  [(SGCuratedChangeNotificationsBaseListener *)&v3 dealloc];
}

- (SGCuratedChangeNotificationsBaseListener)init
{
  v6.receiver = self;
  v6.super_class = SGCuratedChangeNotificationsBaseListener;
  v2 = [(SGCuratedChangeNotificationsBaseListener *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    liveObserversMap = v2->_liveObserversMap;
    v2->_liveObserversMap = v3;

    [(SGCuratedChangeNotificationsBaseListener *)v2 startListening];
  }

  return v2;
}

@end