@interface COSignalsClientObserverSet
- (NSSet)constraints;
- (void)addClientObserver:(id)observer forNotificationName:(id)name;
@end

@implementation COSignalsClientObserverSet

- (NSSet)constraints
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  clientObservers = [(COClientObserverSet *)self clientObservers];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [clientObservers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(clientObservers);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          constraints = [v9 constraints];
          if (constraints)
          {
            [v3 unionSet:constraints];
          }
        }
      }

      v6 = [clientObservers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)addClientObserver:(id)observer forNotificationName:(id)name
{
  v4.receiver = self;
  v4.super_class = COSignalsClientObserverSet;
  [(COClientObserverSet *)&v4 addClientObserver:observer forNotificationName:name];
}

@end