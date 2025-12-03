@interface IntegrationServer
- (void)requestCatchupSync;
- (void)requestRegularSync;
- (void)startServer;
@end

@implementation IntegrationServer

- (void)requestRegularSync
{
  v2 = (*(&self->super.isa + OBJC_IVAR____TtC26CalendarIntegrationSupport17IntegrationServer_syncManager))[4];
  selfCopy = self;
  os_unfair_lock_lock((v2 + 20));
  sub_24279D014((v2 + 16));
  os_unfair_lock_unlock((v2 + 20));
}

- (void)startServer
{
  selfCopy = self;
  sub_2427A7A24();
}

- (void)requestCatchupSync
{
  v2 = (*(&self->super.isa + OBJC_IVAR____TtC26CalendarIntegrationSupport17IntegrationServer_syncManager))[4];
  selfCopy = self;
  os_unfair_lock_lock((v2 + 20));
  sub_2427A7EA0((v2 + 16));
  os_unfair_lock_unlock((v2 + 20));
}

@end