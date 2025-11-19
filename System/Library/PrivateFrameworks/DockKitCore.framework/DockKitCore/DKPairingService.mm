@interface DKPairingService
- (DKPairingService)init;
@end

@implementation DKPairingService

- (DKPairingService)init
{
  v6.receiver = self;
  v6.super_class = DKPairingService;
  v2 = [(DKPairingService *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC11DockKitCore25DockKitCorePairingService);
    ps = v2->_ps;
    v2->_ps = v3;
  }

  return v2;
}

@end