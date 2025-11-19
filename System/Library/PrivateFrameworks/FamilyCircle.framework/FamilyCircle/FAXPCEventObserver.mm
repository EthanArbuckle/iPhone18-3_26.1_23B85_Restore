@interface FAXPCEventObserver
- (FAXPCEventObserver)init;
- (FAXPCEventObserver)initWithStream:(id)a3 delegate:(id)a4;
- (void)start;
@end

@implementation FAXPCEventObserver

- (FAXPCEventObserver)initWithStream:(id)a3 delegate:(id)a4
{
  v7 = OBJC_IVAR___FAXPCEventObserver_handlers;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *(&self->super.isa + v7) = sub_1000243D0(_swiftEmptyArrayStorage);
  *(&self->super.isa + OBJC_IVAR___FAXPCEventObserver_delegate) = a4;
  *(&self->super.isa + OBJC_IVAR___FAXPCEventObserver_stream) = a3;
  v9.receiver = self;
  v9.super_class = type metadata accessor for XPCEventObserver();
  return [(FAXPCEventObserver *)&v9 init];
}

- (void)start
{
  v2 = self;
  sub_100068554();
}

- (FAXPCEventObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end