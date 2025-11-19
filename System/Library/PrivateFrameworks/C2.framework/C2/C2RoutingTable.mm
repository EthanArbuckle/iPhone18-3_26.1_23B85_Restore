@interface C2RoutingTable
- (C2RoutingTable)init;
- (id)copyAndDecorateRequest:(id)a3;
- (void)updateOriginalHostname:(id)a3 destinationHostname:(id)a4;
@end

@implementation C2RoutingTable

- (C2RoutingTable)init
{
  v7.receiver = self;
  v7.super_class = C2RoutingTable;
  v2 = [(C2RoutingTable *)&v7 init];
  if (v2 && (v3 = objc_alloc_init(MEMORY[0x277CBEB38]), routingTable = v2->_routingTable, v2->_routingTable = v3, routingTable, !v2->_routingTable))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

- (void)updateOriginalHostname:(id)a3 destinationHostname:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = objc_alloc_init(C2Route);
  [(C2Route *)v7 setDestination:v6];
  [(C2Route *)v7 setLastUpdated:CFAbsoluteTimeGetCurrent()];
  v8 = self;
  objc_sync_enter(v8);
  [(NSMutableDictionary *)v8->_routingTable setObject:v7 forKeyedSubscript:v9];
  objc_sync_exit(v8);
}

- (id)copyAndDecorateRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 URL];
    v8 = [v7 host];

    if (v8)
    {
      v9 = self;
      objc_sync_enter(v9);
      v10 = [(NSMutableDictionary *)v9->_routingTable objectForKeyedSubscript:v8];
      objc_sync_exit(v9);

      if (v10)
      {
        [v10 lastUpdated];
        if (v11 < CFAbsoluteTimeGetCurrent() + 1800.0)
        {
          v12 = objc_alloc(MEMORY[0x277CCACE0]);
          v13 = [v6 URL];
          v14 = [v12 initWithURL:v13 resolvingAgainstBaseURL:1];

          v15 = [v10 destination];
          [v14 setHost:v15];

          v16 = [v14 URL];
          if (v16)
          {
            [v6 setURL:v16];
          }
        }
      }

      v17 = v6;
    }

    else
    {
      v17 = v4;
    }
  }

  else
  {
    v17 = v4;
  }

  return v17;
}

@end