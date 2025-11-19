@interface NUReachabilityProvider
- (BOOL)isNetworkReachable;
- (NUReachabilityProvider)initWithNetworkReachability:(id)a3;
- (void)addReachabilityObserver:(id)a3;
- (void)networkReachabilityDidChange:(id)a3;
- (void)removeReachabilityObserver:(id)a3;
@end

@implementation NUReachabilityProvider

- (NUReachabilityProvider)initWithNetworkReachability:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = NUReachabilityProvider;
  v6 = [(NUReachabilityProvider *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v6->_observers;
    v6->_observers = v7;

    objc_storeStrong(&v6->_networkReachability, a3);
    [v5 addObserver:v6];
  }

  return v6;
}

- (BOOL)isNetworkReachable
{
  v2 = [(NUReachabilityProvider *)self networkReachability];
  v3 = [v2 isNetworkReachable];

  return v3;
}

- (void)addReachabilityObserver:(id)a3
{
  v4 = a3;
  v5 = [(NUReachabilityProvider *)self observers];
  [v5 addObject:v4];
}

- (void)removeReachabilityObserver:(id)a3
{
  v4 = a3;
  v5 = [(NUReachabilityProvider *)self observers];
  [v5 removeObject:v4];
}

- (void)networkReachabilityDidChange:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 isNetworkReachable];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NUReachabilityProvider *)self observers];
  v6 = [v5 copy];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) reachabilityChanged:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end