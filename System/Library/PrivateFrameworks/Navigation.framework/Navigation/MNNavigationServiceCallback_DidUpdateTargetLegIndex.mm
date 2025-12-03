@interface MNNavigationServiceCallback_DidUpdateTargetLegIndex
- (_TtC10Navigation51MNNavigationServiceCallback_DidUpdateTargetLegIndex)init;
- (_TtC10Navigation51MNNavigationServiceCallback_DidUpdateTargetLegIndex)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNNavigationServiceCallback_DidUpdateTargetLegIndex

- (_TtC10Navigation51MNNavigationServiceCallback_DidUpdateTargetLegIndex)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = sub_1D32770B0();
  decodeIntegerForKey_ = [coderCopy decodeIntegerForKey_];

  *(&self->super.super.isa + OBJC_IVAR____TtC10Navigation51MNNavigationServiceCallback_DidUpdateTargetLegIndex_targetLegIndex) = decodeIntegerForKey_;
  v9.receiver = self;
  v9.super_class = type metadata accessor for MNNavigationServiceCallback_DidUpdateTargetLegIndex();
  v7 = [(MNNavigationServiceCallbackParameters *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for MNNavigationServiceCallback_DidUpdateTargetLegIndex();
  coderCopy = coder;
  v5 = v8.receiver;
  [(MNNavigationServiceCallbackParameters *)&v8 encodeWithCoder:coderCopy];
  v6 = *&v5[OBJC_IVAR____TtC10Navigation51MNNavigationServiceCallback_DidUpdateTargetLegIndex_targetLegIndex];
  v7 = sub_1D32770B0();
  [coderCopy encodeInteger:v6 forKey:{v7, v8.receiver, v8.super_class}];
}

- (_TtC10Navigation51MNNavigationServiceCallback_DidUpdateTargetLegIndex)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end