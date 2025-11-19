@interface MRDGroupSessionCreateTimingEvents
- (MRDGroupSessionCreateTimingEvents)init;
- (MRDTimingEvent)nearbyGroup;
- (MRDTimingEvent)nearbyInvitation;
- (unsigned)routeType;
- (void)setNearbyGroup:(id)a3;
- (void)setNearbyInvitation:(id)a3;
- (void)setRouteType:(unsigned __int8)a3;
@end

@implementation MRDGroupSessionCreateTimingEvents

- (MRDTimingEvent)nearbyGroup
{
  v2 = self;
  v3 = sub_10003DDE0();

  return v3;
}

- (unsigned)routeType
{
  v3 = OBJC_IVAR___MRDGroupSessionCreateTimingEvents_routeType;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRouteType:(unsigned __int8)a3
{
  v5 = OBJC_IVAR___MRDGroupSessionCreateTimingEvents_routeType;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)setNearbyGroup:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyGroup);
  *(&self->super.isa + OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyGroup) = a3;
  v3 = a3;
}

- (MRDTimingEvent)nearbyInvitation
{
  v2 = self;
  v3 = sub_10022E634();

  return v3;
}

- (void)setNearbyInvitation:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyInvitation);
  *(&self->super.isa + OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyInvitation) = a3;
  v3 = a3;
}

- (MRDGroupSessionCreateTimingEvents)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end