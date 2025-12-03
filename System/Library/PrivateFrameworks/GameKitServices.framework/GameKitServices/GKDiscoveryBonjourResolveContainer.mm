@interface GKDiscoveryBonjourResolveContainer
- (GKDiscoveryBonjourResolveContainer)init;
- (void)dealloc;
@end

@implementation GKDiscoveryBonjourResolveContainer

- (GKDiscoveryBonjourResolveContainer)init
{
  v4.receiver = self;
  v4.super_class = GKDiscoveryBonjourResolveContainer;
  v2 = [(GKDiscoveryBonjourResolveContainer *)&v4 init];
  if (v2)
  {
    v2->_serviceRefList = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v2;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];

  self->_resolveCompletionHandler = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  serviceRefList = self->_serviceRefList;
  v4 = [(NSMutableArray *)serviceRefList countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(serviceRefList);
        }

        pointerValue = [*(*(&v11 + 1) + 8 * i) pointerValue];
        if (pointerValue)
        {
          DNSServiceRefDeallocate(pointerValue);
        }
      }

      v5 = [(NSMutableArray *)serviceRefList countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10.receiver = self;
  v10.super_class = GKDiscoveryBonjourResolveContainer;
  [(GKDiscoveryBonjourResolveContainer *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

@end