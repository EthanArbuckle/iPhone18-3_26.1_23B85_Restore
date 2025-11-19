@interface HDMHomeManagerDataSyncProxy
- (HDMHomeManagerDataSyncProxy)init;
- (void)homeManagerDidUpdateDataSyncState:(id)a3;
- (void)homeManagerDidUpdateHomes:(id)a3;
@end

@implementation HDMHomeManagerDataSyncProxy

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1DA1964();
}

- (void)homeManagerDidUpdateDataSyncState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1DA11D4(v4);
}

- (HDMHomeManagerDataSyncProxy)init
{
  *(&self->super.isa + OBJC_IVAR___HDMHomeManagerDataSyncProxy_continuation) = 0;
  v3.receiver = self;
  v3.super_class = HDMHomeManagerDataSyncProxy;
  return [(HDMHomeManagerDataSyncProxy *)&v3 init];
}

@end