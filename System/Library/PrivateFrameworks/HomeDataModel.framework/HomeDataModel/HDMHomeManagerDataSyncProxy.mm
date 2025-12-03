@interface HDMHomeManagerDataSyncProxy
- (HDMHomeManagerDataSyncProxy)init;
- (void)homeManagerDidUpdateDataSyncState:(id)state;
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation HDMHomeManagerDataSyncProxy

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  selfCopy = self;
  sub_1D1DA1964();
}

- (void)homeManagerDidUpdateDataSyncState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1D1DA11D4(stateCopy);
}

- (HDMHomeManagerDataSyncProxy)init
{
  *(&self->super.isa + OBJC_IVAR___HDMHomeManagerDataSyncProxy_continuation) = 0;
  v3.receiver = self;
  v3.super_class = HDMHomeManagerDataSyncProxy;
  return [(HDMHomeManagerDataSyncProxy *)&v3 init];
}

@end