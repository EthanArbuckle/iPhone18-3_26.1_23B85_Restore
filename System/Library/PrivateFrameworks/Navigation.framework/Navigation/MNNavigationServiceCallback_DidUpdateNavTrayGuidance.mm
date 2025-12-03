@interface MNNavigationServiceCallback_DidUpdateNavTrayGuidance
- (_TtC10Navigation52MNNavigationServiceCallback_DidUpdateNavTrayGuidance)init;
- (_TtC10Navigation52MNNavigationServiceCallback_DidUpdateNavTrayGuidance)initWithNavTrayGuidanceEvent:(id)event;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNNavigationServiceCallback_DidUpdateNavTrayGuidance

- (_TtC10Navigation52MNNavigationServiceCallback_DidUpdateNavTrayGuidance)initWithNavTrayGuidanceEvent:(id)event
{
  *(&self->super.super.isa + OBJC_IVAR____TtC10Navigation52MNNavigationServiceCallback_DidUpdateNavTrayGuidance_navTrayGuidanceEvent) = event;
  v6.receiver = self;
  v6.super_class = type metadata accessor for MNNavigationServiceCallback_DidUpdateNavTrayGuidance();
  eventCopy = event;
  return [(MNNavigationServiceCallback_DidUpdateNavTrayGuidance *)&v6 init];
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for MNNavigationServiceCallback_DidUpdateNavTrayGuidance();
  coderCopy = coder;
  v5 = v8.receiver;
  [(MNNavigationServiceCallbackParameters *)&v8 encodeWithCoder:coderCopy];
  v6 = *&v5[OBJC_IVAR____TtC10Navigation52MNNavigationServiceCallback_DidUpdateNavTrayGuidance_navTrayGuidanceEvent];
  v7 = sub_1D32770B0();
  [coderCopy encodeObject:v6 forKey:{v7, v8.receiver, v8.super_class}];
}

- (_TtC10Navigation52MNNavigationServiceCallback_DidUpdateNavTrayGuidance)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end