@interface NRNSXPCListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation NRNSXPCListener

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_listenerDelegate, a3);
  if (a3)
  {
    [(NRNSXPCListener *)&v6 setDelegate:self, v5.receiver, v5.super_class, self, NRNSXPCListener];
  }

  else
  {
    [(NRNSXPCListener *)&v5 setDelegate:0, self, NRNSXPCListener, v6.receiver, v6.super_class];
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [[NRNSXPCConnection alloc] initWithConnection:v5];

  WeakRetained = objc_loadWeakRetained(&self->_listenerDelegate);
  LOBYTE(self) = [WeakRetained listener:self shouldAcceptNewConnection:v6];

  return self;
}

@end