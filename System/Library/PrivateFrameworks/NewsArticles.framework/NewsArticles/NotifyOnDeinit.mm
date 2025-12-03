@interface NotifyOnDeinit
- (_TtC12NewsArticlesP33_C03E0B959E775327989EE4DDE248085F14NotifyOnDeinit)init;
- (void)dealloc;
@end

@implementation NotifyOnDeinit

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12NewsArticlesP33_C03E0B959E775327989EE4DDE248085F14NotifyOnDeinit_onDeinit);
  selfCopy = self;

  v4(v6);

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(NotifyOnDeinit *)&v7 dealloc];
}

- (_TtC12NewsArticlesP33_C03E0B959E775327989EE4DDE248085F14NotifyOnDeinit)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end