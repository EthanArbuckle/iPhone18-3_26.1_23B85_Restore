@interface ArticleThumbnailComponentView
- (_TtC12NewsArticles29ArticleThumbnailComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory;
- (void)discardContents;
- (void)presentComponentWithChanges:(id)changes;
- (void)renderContents;
@end

@implementation ArticleThumbnailComponentView

- (void)renderContents
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(SXComponentView *)&v3 renderContents];
  sub_1D79F3D08();
}

- (void)discardContents
{
  selfCopy = self;
  sub_1D79F431C();
}

- (void)presentComponentWithChanges:(id)changes
{
  v3 = *&changes.var0;
  selfCopy = self;
  sub_1D79F444C(v3 & 0x10101);
}

- (_TtC12NewsArticles29ArticleThumbnailComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end