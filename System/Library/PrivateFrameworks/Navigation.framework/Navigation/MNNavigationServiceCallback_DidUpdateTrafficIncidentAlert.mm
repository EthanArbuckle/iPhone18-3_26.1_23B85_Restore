@interface MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert
- (NSString)updateTypeString;
- (_TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert)init;
- (_TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert)initWithUpdateType:(int64_t)a3 trafficIncidentAlert:(id)a4;
- (void)encodeWithCoder:(id)a3;
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
    v5 = self;
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

- (_TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert)initWithUpdateType:(int64_t)a3 trafficIncidentAlert:(id)a4
{
  *(&self->super.super.isa + OBJC_IVAR____TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert_updateType) = a3;
  *(&self->super.super.isa + OBJC_IVAR____TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert_trafficIncidentAlert) = a4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert();
  v5 = a4;
  return [(MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert *)&v7 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D31436A0(v4);
}

- (_TtC10Navigation57MNNavigationServiceCallback_DidUpdateTrafficIncidentAlert)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end