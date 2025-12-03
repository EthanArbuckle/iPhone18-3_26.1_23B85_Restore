@interface MNDestinationArrivalInfoUpdater
- (MNDestinationArrivalInfoUpdater)init;
- (void)dealloc;
- (void)remainingTimeUpdater:(id)updater didUpdateDisplayETAInfo:(id)info reason:(int64_t)reason;
- (void)setNavigationSessionState:(id)state;
@end

@implementation MNDestinationArrivalInfoUpdater

- (void)setNavigationSessionState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1D3123AFC(stateCopy);
}

- (void)remainingTimeUpdater:(id)updater didUpdateDisplayETAInfo:(id)info reason:(int64_t)reason
{
  updaterCopy = updater;
  infoCopy = info;
  selfCopy = self;
  sub_1D3128F88(infoCopy, reason);
}

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR___MNDestinationArrivalInfoUpdater__remainingTimeUpdater);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = type metadata accessor for DestinationArrivalInfoUpdater();
  selfCopy = self;
  [(MNDestinationArrivalInfoUpdater *)&v5 dealloc];
}

- (MNDestinationArrivalInfoUpdater)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end