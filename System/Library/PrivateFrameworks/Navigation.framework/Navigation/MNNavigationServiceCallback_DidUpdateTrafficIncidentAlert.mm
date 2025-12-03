@interface MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert
- (NSString)updateTypeString;
- (_TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert)init;
- (_TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert)initWithUpdateType:(int64_t)type trafficIncidentAlert:(id)alert;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert

- (NSString)updateTypeString
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert_updateType);
  if (v2 <= 1)
  {
    if (!v2 || v2 == 1)
    {
      goto LABEL_9;
    }

LABEL_12:
    v6 = *(&self->super.super.isa + OBJC_IVAR____TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert_updateType);
    selfCopy = self;
    result = sub_1D3277900();
    __break(1u);
    return result;
  }

  if (v2 != 2 && v2 != 3)
  {
    goto LABEL_12;
  }

LABEL_9:
  v3 = sub_1D32770B0();

  return v3;
}

- (_TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert)initWithUpdateType:(int64_t)type trafficIncidentAlert:(id)alert
{
  *(&self->super.super.isa + OBJC_IVAR____TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert_updateType) = type;
  *(&self->super.super.isa + OBJC_IVAR____TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert_trafficIncidentAlert) = alert;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert();
  alertCopy = alert;
  return [(MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert *)&v7 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1D31436A0(coderCopy);
}

- (_TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end