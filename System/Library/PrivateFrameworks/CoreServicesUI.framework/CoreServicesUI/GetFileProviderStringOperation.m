@interface GetFileProviderStringOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (_TtC14CoreServicesUI30GetFileProviderStringOperation)init;
- (void)start;
@end

@implementation GetFileProviderStringOperation

- (BOOL)isExecuting
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState);
  v3 = self;
  os_unfair_lock_lock((v2 + 36));
  v4 = *(v2 + 32) == 254;
  os_unfair_lock_unlock((v2 + 36));

  return v4;
}

- (BOOL)isFinished
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC14CoreServicesUI30GetFileProviderStringOperation_mutableState);
  v3 = self;
  os_unfair_lock_lock((v2 + 36));
  v4 = *(v2 + 32) < 0xFEu;
  os_unfair_lock_unlock((v2 + 36));

  return v4;
}

- (void)start
{
  v2 = self;
  sub_2478BEC24();
}

- (_TtC14CoreServicesUI30GetFileProviderStringOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end