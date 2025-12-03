@interface NTKWatchConnectivityMultiplexer
- (NTKWatchConnectivityMultiplexer)init;
- (void)activate;
- (void)registerClient:(id)client;
@end

@implementation NTKWatchConnectivityMultiplexer

- (NTKWatchConnectivityMultiplexer)init
{
  ObjectType = swift_getObjectType();
  sub_22DCB5FCC();
  *(&self->super.isa + OBJC_IVAR___NTKWatchConnectivityMultiplexer_watchConnectivityManager) = 0;
  *(&self->super.isa + OBJC_IVAR___NTKWatchConnectivityMultiplexer_managerDelegate) = 0;
  *(&self->super.isa + OBJC_IVAR___NTKWatchConnectivityMultiplexer_clients) = MEMORY[0x277D84F90];
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(NTKWatchConnectivityMultiplexer *)&v5 init];
}

- (void)registerClient:(id)client
{
  swift_unknownObjectRetain();
  selfCopy = self;
  WatchConnectivityMultiplexer.registerClient(_:)(client);
  swift_unknownObjectRelease();
}

- (void)activate
{
  selfCopy = self;
  WatchConnectivityMultiplexer.activate()();
}

@end