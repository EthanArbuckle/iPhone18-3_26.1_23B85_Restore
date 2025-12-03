@interface MRDPairingHandler
- (MRDPairingHandler)init;
- (void)addHandlerForRouteUID:(id)d completion:(id)completion;
- (void)performHandlerForRouteUID:(id)d passcode:(id)passcode;
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

- (void)addHandlerForRouteUID:(id)d completion:(id)completion
{
  if (d && completion)
  {
    handlers = self->_handlers;
    dCopy = d;
    v7 = objc_retainBlock(completion);
    [(NSMutableDictionary *)handlers setObject:v7 forKey:dCopy];
  }
}

- (void)performHandlerForRouteUID:(id)d passcode:(id)passcode
{
  passcodeCopy = passcode;
  if (d)
  {
    v10 = passcodeCopy;
    handlers = self->_handlers;
    dCopy = d;
    v9 = [(NSMutableDictionary *)handlers objectForKeyedSubscript:dCopy];
    [(NSMutableDictionary *)self->_handlers removeObjectForKey:dCopy];

    if (v9)
    {
      (v9)[2](v9, v10);
    }

    passcodeCopy = v10;
  }
}

@end