@interface FPDXPCDomainServicerLifetimeExtender
- (void)stopExtendingLifetime;
@end

@implementation FPDXPCDomainServicerLifetimeExtender

- (void)stopExtendingLifetime
{
  obj = self;
  objc_sync_enter(obj);
  stopBlock = obj->_stopBlock;
  if (stopBlock)
  {
    stopBlock[2](stopBlock, obj);
    v3 = obj->_stopBlock;
    obj->_stopBlock = 0;
  }

  objc_sync_exit(obj);
}

@end