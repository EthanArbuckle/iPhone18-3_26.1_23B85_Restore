@interface MRDGroupSessionCreateTimingEvents
- (MRDGroupSessionCreateTimingEvents)init;
- (MRDTimingEvent)nearbyGroup;
- (MRDTimingEvent)nearbyInvitation;
- (unsigned)routeType;
- (void)setNearbyGroup:(id)group;
- (void)setNearbyInvitation:(id)invitation;
- (void)setRouteType:(unsigned __int8)type;
@end

@implementation MRDGroupSessionCreateTimingEvents

- (MRDTimingEvent)nearbyGroup
{
  selfCopy = self;
  v3 = sub_10003DDE0();

  return v3;
}

- (unsigned)routeType
{
  v3 = OBJC_IVAR___MRDGroupSessionCreateTimingEvents_routeType;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRouteType:(unsigned __int8)type
{
  v5 = OBJC_IVAR___MRDGroupSessionCreateTimingEvents_routeType;
  swift_beginAccess();
  *(&self->super.isa + v5) = type;
}

- (void)setNearbyGroup:(id)group
{
  v4 = *(&self->super.isa + OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyGroup);
  *(&self->super.isa + OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyGroup) = group;
  groupCopy = group;
}

- (MRDTimingEvent)nearbyInvitation
{
  selfCopy = self;
  v3 = sub_10022E634();

  return v3;
}

- (void)setNearbyInvitation:(id)invitation
{
  v4 = *(&self->super.isa + OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyInvitation);
  *(&self->super.isa + OBJC_IVAR___MRDGroupSessionCreateTimingEvents____lazy_storage___nearbyInvitation) = invitation;
  invitationCopy = invitation;
}

- (MRDGroupSessionCreateTimingEvents)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end