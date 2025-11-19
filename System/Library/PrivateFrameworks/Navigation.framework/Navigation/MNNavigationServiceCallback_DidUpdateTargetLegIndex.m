@interface MNNavigationServiceCallback_DidUpdateTargetLegIndex
- (_TtC10Navigation51MNNavigationServiceCallback_DidUpdateTargetLegIndex)init;
- (_TtC10Navigation51MNNavigationServiceCallback_DidUpdateTargetLegIndex)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNNavigationServiceCallback_DidUpdateTargetLegIndex

- (_TtC10Navigation51MNNavigationServiceCallback_DidUpdateTargetLegIndex)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = sub_1D32770B0();
  v6 = [v4 decodeIntegerForKey_];

  *(&self->super.super.isa + OBJC_IVAR____TtC10Navigation51MNNavigationServiceCallback_DidUpdateTargetLegIndex_targetLegIndex) = v6;
  v9.receiver = self;
  v9.super_class = type metadata accessor for MNNavigationServiceCallback_DidUpdateTargetLegIndex();
  v7 = [(MNNavigationServiceCallbackParameters *)&v9 initWithCoder:v4];

  if (v7)
  {
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for MNNavigationServiceCallback_DidUpdateTargetLegIndex();
  v4 = a3;
  v5 = v8.receiver;
  [(MNNavigationServiceCallbackParameters *)&v8 encodeWithCoder:v4];
  v6 = *&v5[OBJC_IVAR____TtC10Navigation51MNNavigationServiceCallback_DidUpdateTargetLegIndex_targetLegIndex];
  v7 = sub_1D32770B0();
  [v4 encodeInteger:v6 forKey:{v7, v8.receiver, v8.super_class}];
}

- (_TtC10Navigation51MNNavigationServiceCallback_DidUpdateTargetLegIndex)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end