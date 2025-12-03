@interface RequestPartOutputStreamBridge
- (_TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge)init;
- (void)dealloc;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation RequestPartOutputStreamBridge

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge_outputStream);
  selfCopy = self;
  [v4 setDelegate_];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(RequestPartOutputStreamBridge *)&v6 dealloc];
}

- (_TtC31GRPCURLSessionTransportInternal29RequestPartOutputStreamBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  selfCopy = self;
  RequestPartOutputStreamBridge.stream(_:handle:)(streamCopy, event);
}

@end