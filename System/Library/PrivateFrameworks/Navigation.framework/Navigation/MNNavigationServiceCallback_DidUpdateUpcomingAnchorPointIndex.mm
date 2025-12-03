@interface MNNavigationServiceCallback_DidUpdateUpcomingAnchorPointIndex
- (_TtC10Navigation61MNNavigationServiceCallback_DidUpdateUpcomingAnchorPointIndex)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNNavigationServiceCallback_DidUpdateUpcomingAnchorPointIndex

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for MNNavigationServiceCallback_DidUpdateUpcomingAnchorPointIndex();
  coderCopy = coder;
  v5 = v8.receiver;
  [(MNNavigationServiceCallbackParameters *)&v8 encodeWithCoder:coderCopy];
  v6 = *&v5[OBJC_IVAR____TtC10Navigation61MNNavigationServiceCallback_DidUpdateUpcomingAnchorPointIndex_anchorPointIndex];
  v7 = sub_1D32770B0();
  [coderCopy encodeInteger:v6 forKey:{v7, v8.receiver, v8.super_class}];
}

- (_TtC10Navigation61MNNavigationServiceCallback_DidUpdateUpcomingAnchorPointIndex)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end