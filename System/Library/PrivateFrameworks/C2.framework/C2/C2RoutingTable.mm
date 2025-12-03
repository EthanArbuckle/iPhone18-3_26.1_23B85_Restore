@interface C2RoutingTable
- (C2RoutingTable)init;
- (id)copyAndDecorateRequest:(id)request;
- (void)updateOriginalHostname:(id)hostname destinationHostname:(id)destinationHostname;
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

- (void)updateOriginalHostname:(id)hostname destinationHostname:(id)destinationHostname
{
  hostnameCopy = hostname;
  destinationHostnameCopy = destinationHostname;
  v7 = objc_alloc_init(C2Route);
  [(C2Route *)v7 setDestination:destinationHostnameCopy];
  [(C2Route *)v7 setLastUpdated:CFAbsoluteTimeGetCurrent()];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_routingTable setObject:v7 forKeyedSubscript:hostnameCopy];
  objc_sync_exit(selfCopy);
}

- (id)copyAndDecorateRequest:(id)request
{
  requestCopy = request;
  v5 = [requestCopy mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 URL];
    host = [v7 host];

    if (host)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v10 = [(NSMutableDictionary *)selfCopy->_routingTable objectForKeyedSubscript:host];
      objc_sync_exit(selfCopy);

      if (v10)
      {
        [v10 lastUpdated];
        if (v11 < CFAbsoluteTimeGetCurrent() + 1800.0)
        {
          v12 = objc_alloc(MEMORY[0x277CCACE0]);
          v13 = [v6 URL];
          v14 = [v12 initWithURL:v13 resolvingAgainstBaseURL:1];

          destination = [v10 destination];
          [v14 setHost:destination];

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
      v17 = requestCopy;
    }
  }

  else
  {
    v17 = requestCopy;
  }

  return v17;
}

@end