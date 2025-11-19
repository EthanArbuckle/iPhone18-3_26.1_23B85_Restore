@interface COSignalsClientObserverSet
- (NSSet)constraints;
- (void)addClientObserver:(id)a3 forNotificationName:(id)a4;
@end

@implementation COSignalsClientObserverSet

- (NSSet)constraints
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(COClientObserverSet *)self clientObservers];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 constraints];
          if (v10)
          {
            [v3 unionSet:v10];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)addClientObserver:(id)a3 forNotificationName:(id)a4
{
  v4.receiver = self;
  v4.super_class = COSignalsClientObserverSet;
  [(COClientObserverSet *)&v4 addClientObserver:a3 forNotificationName:a4];
}

@end