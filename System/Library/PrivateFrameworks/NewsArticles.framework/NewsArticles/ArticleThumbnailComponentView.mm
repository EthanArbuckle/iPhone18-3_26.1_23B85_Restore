@interface ArticleThumbnailComponentView
- (_TtC12NewsArticles29ArticleThumbnailComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6;
- (void)discardContents;
- (void)presentComponentWithChanges:(id)a3;
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
  v2 = self;
  sub_1D79F431C();
}

- (void)presentComponentWithChanges:(id)a3
{
  v3 = *&a3.var0;
  v4 = self;
  sub_1D79F444C(v3 & 0x10101);
}

- (_TtC12NewsArticles29ArticleThumbnailComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end