@interface NewsAssetURLSchemeHandler
- (WKURLSchemeTask)task;
- (_TtC7NewsUI225NewsAssetURLSchemeHandler)init;
- (void)cancel;
- (void)finish;
- (void)start;
@end

@implementation NewsAssetURLSchemeHandler

- (WKURLSchemeTask)task
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)start
{
  v2 = self;
  sub_219B10040();
}

- (void)cancel
{
  v2 = self;
  sub_219B107CC();
}

- (void)finish
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v3 = OBJC_IVAR____TtC7NewsUI225NewsAssetURLSchemeHandler_cancelHandler;
  swift_beginAccess();
  v4 = self;
  sub_219B10B8C(v5, self + v3);
  swift_endAccess();
}

- (_TtC7NewsUI225NewsAssetURLSchemeHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end