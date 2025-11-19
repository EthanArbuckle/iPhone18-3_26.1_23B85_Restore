@interface MNDestinationArrivalInfoUpdater
- (MNDestinationArrivalInfoUpdater)init;
- (void)dealloc;
- (void)remainingTimeUpdater:(id)a3 didUpdateDisplayETAInfo:(id)a4 reason:(int64_t)a5;
- (void)setNavigationSessionState:(id)a3;
@end

@implementation MNDestinationArrivalInfoUpdater

- (void)setNavigationSessionState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D3123AFC(v4);
}

- (void)remainingTimeUpdater:(id)a3 didUpdateDisplayETAInfo:(id)a4 reason:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_1D3128F88(v9, a5);
}

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR___MNDestinationArrivalInfoUpdater__remainingTimeUpdater);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = type metadata accessor for DestinationArrivalInfoUpdater();
  v4 = self;
  [(MNDestinationArrivalInfoUpdater *)&v5 dealloc];
}

- (MNDestinationArrivalInfoUpdater)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end