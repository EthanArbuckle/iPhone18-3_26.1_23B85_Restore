@interface RequestPartOutputStreamBridge
- (_TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge)init;
- (void)dealloc;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation RequestPartOutputStreamBridge

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream);
  v5 = self;
  [v4 setDelegate_];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(RequestPartOutputStreamBridge *)&v6 dealloc];
}

- (_TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  RequestPartOutputStreamBridge.stream(_:handle:)(v6, a4);
}

@end