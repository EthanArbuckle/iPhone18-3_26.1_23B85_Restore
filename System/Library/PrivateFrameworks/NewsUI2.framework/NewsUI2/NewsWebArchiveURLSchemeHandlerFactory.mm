@interface NewsWebArchiveURLSchemeHandlerFactory
- (_TtC7NewsUI237NewsWebArchiveURLSchemeHandlerFactory)init;
- (id)createURLSchemeHandlerWithTask:(id)task;
@end

@implementation NewsWebArchiveURLSchemeHandlerFactory

- (id)createURLSchemeHandlerWithTask:(id)task
{
  sub_218718690(self + OBJC_IVAR____TtC7NewsUI237NewsWebArchiveURLSchemeHandlerFactory_webArchiveService, v9);
  v4 = type metadata accessor for NewsWebArchiveURLSchemeHandler();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC7NewsUI230NewsWebArchiveURLSchemeHandler_task] = task;
  sub_218718690(v9, &v5[OBJC_IVAR____TtC7NewsUI230NewsWebArchiveURLSchemeHandler_webArchiveService]);
  v8.receiver = v5;
  v8.super_class = v4;
  swift_unknownObjectRetain();
  v6 = [(NewsWebArchiveURLSchemeHandlerFactory *)&v8 init];
  __swift_destroy_boxed_opaque_existential_1(v9);

  return v6;
}

- (_TtC7NewsUI237NewsWebArchiveURLSchemeHandlerFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end