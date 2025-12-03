@interface HTTPBodyOutputStreamBridge
- (_TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge)init;
- (void)dealloc;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation HTTPBodyOutputStreamBridge

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  nullsub_1(sub_25DDCE0C8);
  [*(&selfCopy->super.isa + OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_outputStream) setDelegate_];
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(HTTPBodyOutputStreamBridge *)&v5 dealloc];
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  selfCopy = self;
  sub_25DDD1FA8(streamCopy, event);
}

- (_TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end