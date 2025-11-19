@interface MNNavigationServiceCallback_DidUpdateNavTrayGuidance
- (_TtC10Navigation52MNNavigationServiceCallback_DidUpdateNavTrayGuidance)init;
- (_TtC10Navigation52MNNavigationServiceCallback_DidUpdateNavTrayGuidance)initWithNavTrayGuidanceEvent:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNNavigationServiceCallback_DidUpdateNavTrayGuidance

- (_TtC10Navigation52MNNavigationServiceCallback_DidUpdateNavTrayGuidance)initWithNavTrayGuidanceEvent:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC10Navigation52MNNavigationServiceCallback_DidUpdateNavTrayGuidance_navTrayGuidanceEvent) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for MNNavigationServiceCallback_DidUpdateNavTrayGuidance();
  v4 = a3;
  return [(MNNavigationServiceCallback_DidUpdateNavTrayGuidance *)&v6 init];
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for MNNavigationServiceCallback_DidUpdateNavTrayGuidance();
  v4 = a3;
  v5 = v8.receiver;
  [(MNNavigationServiceCallbackParameters *)&v8 encodeWithCoder:v4];
  v6 = *&v5[OBJC_IVAR____TtC10Navigation52MNNavigationServiceCallback_DidUpdateNavTrayGuidance_navTrayGuidanceEvent];
  v7 = sub_1D32770B0();
  [v4 encodeObject:v6 forKey:{v7, v8.receiver, v8.super_class}];
}

- (_TtC10Navigation52MNNavigationServiceCallback_DidUpdateNavTrayGuidance)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end