@interface NRNSXPCListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)setDelegate:(id)delegate;
@end

@implementation NRNSXPCListener

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_listenerDelegate, delegate);
  if (delegate)
  {
    [(NRNSXPCListener *)&v6 setDelegate:self, v5.receiver, v5.super_class, self, NRNSXPCListener];
  }

  else
  {
    [(NRNSXPCListener *)&v5 setDelegate:0, self, NRNSXPCListener, v6.receiver, v6.super_class];
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [[NRNSXPCConnection alloc] initWithConnection:connectionCopy];

  WeakRetained = objc_loadWeakRetained(&self->_listenerDelegate);
  LOBYTE(self) = [WeakRetained listener:self shouldAcceptNewConnection:v6];

  return self;
}

@end