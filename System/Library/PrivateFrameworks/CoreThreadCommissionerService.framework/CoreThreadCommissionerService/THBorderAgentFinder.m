@interface THBorderAgentFinder
- (THBorderAgentFinder)init;
- (THBorderAgentListener)delegate;
- (id)getAgentDescription:(unint64_t)a3;
- (id)getBorderAgentAtIndex:(unint64_t)a3;
- (void)netService:(id)a3 didNotResolve:(id)a4;
- (void)netServiceBrowser:(id)a3 didFindService:(id)a4 moreComing:(BOOL)a5;
- (void)netServiceBrowser:(id)a3 didRemoveService:(id)a4 moreComing:(BOOL)a5;
- (void)netServiceDidResolveAddress:(id)a3;
- (void)netServiceWillResolve:(id)a3;
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

  [(NSNetServiceBrowser *)browser searchForServicesOfType:@"_meshcop._udp" inDomain:&stru_100079A28];
}

- (void)stop
{
  NSLog(@"%s:%d: Stop Scan browser Tag : %@", a2, "[THBorderAgentFinder stop]", 42, self->_browser);
  browser = self->_browser;

  [(NSNetServiceBrowser *)browser stop];
}

- (id)getAgentDescription:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_borderAgents count]<= a3)
  {
    v12 = @"Out of Bounds";
  }

  else
  {
    v5 = [(NSMutableArray *)self->_borderAgents objectAtIndex:a3];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 name];
      v8 = [v6 hostName];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = @"Unknown";
      }

      v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ - %@ (%ld)", v7, v10, [v6 port]);
    }

    else
    {
      v11 = @"No service";
    }

    v12 = v11;
  }

  return v12;
}

- (id)getBorderAgentAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_borderAgents count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_borderAgents objectAtIndex:a3];
  }

  return v5;
}

- (void)netServiceBrowser:(id)a3 didFindService:(id)a4 moreComing:(BOOL)a5
{
  v7 = a4;
  NSLog(@"Service %@ added", v7);
  [(NSMutableArray *)self->_borderAgents addObject:v7];
  [v7 setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained agentChanged];

  [v7 resolveWithTimeout:1.0];
}

- (void)netServiceBrowser:(id)a3 didRemoveService:(id)a4 moreComing:(BOOL)a5
{
  v6 = a4;
  NSLog(@"Service %@ removed", v6);
  [(NSMutableArray *)self->_borderAgents removeObject:v6];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained agentChanged];
}

- (void)netServiceWillResolve:(id)a3
{
  v3 = [a3 description];
  NSLog(@"Resolving %@", v3);
}

- (void)netService:(id)a3 didNotResolve:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [v10 description];
  NSLog(@"Failed resolve %@", v6);

  v7 = [v5 objectForKeyedSubscript:NSNetServicesErrorCode];

  v8 = [NSNumber numberWithInt:4294895289];
  v9 = [v7 isEqualToNumber:v8];

  if (v9)
  {
    [v10 resolveWithTimeout:2.0];
  }
}

- (void)netServiceDidResolveAddress:(id)a3
{
  v4 = a3;
  v5 = [v4 description];
  NSLog(@"Resolved %@", v5);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained agentResolved:v4];
}

- (THBorderAgentListener)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end