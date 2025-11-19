@interface HTTPBodyOutputStreamBridge
- (_TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge)init;
- (void)dealloc;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation HTTPBodyOutputStreamBridge

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  nullsub_1(sub_25DDCE0C8);
  [*(&v4->super.isa + OBJC_IVAR____TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge_outputStream) setDelegate_];
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(HTTPBodyOutputStreamBridge *)&v5 dealloc];
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_25DDD1FA8(v6, a4);
}

- (_TtC25OpenAPIURLSessionInternal26HTTPBodyOutputStreamBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end