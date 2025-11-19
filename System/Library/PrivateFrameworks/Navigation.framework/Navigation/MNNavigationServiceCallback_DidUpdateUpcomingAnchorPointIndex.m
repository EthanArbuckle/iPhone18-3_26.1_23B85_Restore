@interface MNNavigationServiceCallback_DidUpdateUpcomingAnchorPointIndex
- (_TtC10Navigation61MNNavigationServiceCallback_DidUpdateUpcomingAnchorPointIndex)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNNavigationServiceCallback_DidUpdateUpcomingAnchorPointIndex

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for MNNavigationServiceCallback_DidUpdateUpcomingAnchorPointIndex();
  v4 = a3;
  v5 = v8.receiver;
  [(MNNavigationServiceCallbackParameters *)&v8 encodeWithCoder:v4];
  v6 = *&v5[OBJC_IVAR____TtC10Navigation61MNNavigationServiceCallback_DidUpdateUpcomingAnchorPointIndex_anchorPointIndex];
  v7 = sub_1D32770B0();
  [v4 encodeInteger:v6 forKey:{v7, v8.receiver, v8.super_class}];
}

- (_TtC10Navigation61MNNavigationServiceCallback_DidUpdateUpcomingAnchorPointIndex)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end