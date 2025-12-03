@interface GPAppleConnectTokenProvider_Swift
- (_TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift)init;
- (_TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift)initWithAuthenticatingProtocol:(id)protocol;
- (void)setupTokenWithCompletion:(id)completion;
@end

@implementation GPAppleConnectTokenProvider_Swift

- (_TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift)initWithAuthenticatingProtocol:(id)protocol
{
  v5 = self + OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__token;
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v7 = (&self->super.isa + OBJC_IVAR____TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift__authenticatingProtocol);
  v7[3] = ObjectType;
  *v7 = protocol;
  v9.receiver = self;
  v9.super_class = type metadata accessor for GPAppleConnectTokenProvider_Swift();
  return [(GPAppleConnectTokenProvider_Swift *)&v9 init];
}

- (void)setupTokenWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1D23C4974(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end