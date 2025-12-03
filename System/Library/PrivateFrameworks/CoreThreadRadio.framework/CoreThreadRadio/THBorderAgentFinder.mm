@interface THBorderAgentFinder
- (THBorderAgentFinder)init;
- (THBorderAgentListener)delegate;
- (id)getAgentDescription:(unint64_t)description;
- (id)getBorderAgentAtIndex:(unint64_t)index;
- (void)netService:(id)service didNotResolve:(id)resolve;
- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming;
- (void)netServiceBrowser:(id)browser didRemoveService:(id)service moreComing:(BOOL)coming;
- (void)netServiceDidResolveAddress:(id)address;
- (void)netServiceWillResolve:(id)resolve;
- (void)start;
- (void)stop;
@end

@implementation THBorderAgentFinder

- (THBorderAgentFinder)init
{
  v8.receiver = self;
  v8.super_class = THBorderAgentFinder;
  v2 = [(THBorderAgentFinder *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    borderAgents = v2->_borderAgents;
    v2->_borderAgents = v3;

    v5 = objc_opt_new();
    browser = v2->_browser;
    v2->_browser = v5;

    [(NSNetServiceBrowser *)v2->_browser setDelegate:v2];
  }

  return v2;
}

- (void)start
{
  NSLog(@"%s:%d: Starting Scan browser Tag : %@", a2, "[THBorderAgentFinder start]", 36, self->_browser);
  browser = self->_browser;

  [(NSNetServiceBrowser *)browser searchForServicesOfType:@"_meshcop._udp" inDomain:&stru_1004D2028];
}

- (void)stop
{
  NSLog(@"%s:%d: Stop Scan browser Tag : %@", a2, "[THBorderAgentFinder stop]", 42, self->_browser);
  browser = self->_browser;

  [(NSNetServiceBrowser *)browser stop];
}

- (id)getAgentDescription:(unint64_t)description
{
  if ([(NSMutableArray *)self->_borderAgents count]<= description)
  {
    v12 = @"Out of Bounds";
  }

  else
  {
    v5 = [(NSMutableArray *)self->_borderAgents objectAtIndex:description];
    v6 = v5;
    if (v5)
    {
      name = [v5 name];
      hostName = [v6 hostName];
      v9 = hostName;
      if (hostName)
      {
        v10 = hostName;
      }

      else
      {
        v10 = @"Unknown";
      }

      v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ - %@ (%ld)", name, v10, [v6 port]);
    }

    else
    {
      v11 = @"No service";
    }

    v12 = v11;
  }

  return v12;
}

- (id)getBorderAgentAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_borderAgents count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_borderAgents objectAtIndex:index];
  }

  return v5;
}

- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming
{
  serviceCopy = service;
  NSLog(@"Service %@ added", serviceCopy);
  [(NSMutableArray *)self->_borderAgents addObject:serviceCopy];
  [serviceCopy setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained agentChanged];

  [serviceCopy resolveWithTimeout:1.0];
}

- (void)netServiceBrowser:(id)browser didRemoveService:(id)service moreComing:(BOOL)coming
{
  serviceCopy = service;
  NSLog(@"Service %@ removed", serviceCopy);
  [(NSMutableArray *)self->_borderAgents removeObject:serviceCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained agentChanged];
}

- (void)netServiceWillResolve:(id)resolve
{
  v3 = [resolve description];
  NSLog(@"Resolving %@", v3);
}

- (void)netService:(id)service didNotResolve:(id)resolve
{
  serviceCopy = service;
  resolveCopy = resolve;
  v6 = [serviceCopy description];
  NSLog(@"Failed resolve %@", v6);

  v7 = [resolveCopy objectForKeyedSubscript:NSNetServicesErrorCode];

  v8 = [NSNumber numberWithInt:4294895289];
  v9 = [v7 isEqualToNumber:v8];

  if (v9)
  {
    [serviceCopy resolveWithTimeout:2.0];
  }
}

- (void)netServiceDidResolveAddress:(id)address
{
  addressCopy = address;
  v5 = [addressCopy description];
  NSLog(@"Resolved %@", v5);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained agentResolved:addressCopy];
}

- (THBorderAgentListener)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end