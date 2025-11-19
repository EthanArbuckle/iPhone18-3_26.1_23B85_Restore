@interface MRDPairingHandler
- (MRDPairingHandler)init;
- (void)addHandlerForRouteUID:(id)a3 completion:(id)a4;
- (void)performHandlerForRouteUID:(id)a3 passcode:(id)a4;
@end

@implementation MRDPairingHandler

- (MRDPairingHandler)init
{
  v6.receiver = self;
  v6.super_class = MRDPairingHandler;
  v2 = [(MRDPairingHandler *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    handlers = v2->_handlers;
    v2->_handlers = v3;
  }

  return v2;
}

- (void)addHandlerForRouteUID:(id)a3 completion:(id)a4
{
  if (a3 && a4)
  {
    handlers = self->_handlers;
    v6 = a3;
    v7 = objc_retainBlock(a4);
    [(NSMutableDictionary *)handlers setObject:v7 forKey:v6];
  }
}

- (void)performHandlerForRouteUID:(id)a3 passcode:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v10 = v6;
    handlers = self->_handlers;
    v8 = a3;
    v9 = [(NSMutableDictionary *)handlers objectForKeyedSubscript:v8];
    [(NSMutableDictionary *)self->_handlers removeObjectForKey:v8];

    if (v9)
    {
      (v9)[2](v9, v10);
    }

    v6 = v10;
  }
}

@end