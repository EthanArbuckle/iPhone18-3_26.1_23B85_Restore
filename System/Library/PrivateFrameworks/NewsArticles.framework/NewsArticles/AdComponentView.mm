@interface AdComponentView
- (_TtC12NewsArticles15AdComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6;
- (void)presentComponentWithChanges:(id)a3;
- (void)receivedInfo:(id)a3 fromLayoutingPhaseWithIdentifier:(id)a4;
- (void)renderContents;
- (void)visibilityStateDidChangeFromState:(int64_t)a3;
@end

@implementation AdComponentView

- (void)presentComponentWithChanges:(id)a3
{
  v3 = *&a3.var0;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(SXComponentView *)&v5 presentComponentWithChanges:*&v3 & 0x10101];
  sub_1D79FA154();
}

- (void)renderContents
{
  v2 = self;
  sub_1D79FA5A4();
}

- (void)receivedInfo:(id)a3 fromLayoutingPhaseWithIdentifier:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1D7D3138C();
  swift_unknownObjectRelease();
  v8 = sub_1D7D3034C();
  v10 = v9;

  sub_1D79FA92C(v11, v8, v10);

  __swift_destroy_boxed_opaque_existential_1(v11);
}

- (void)visibilityStateDidChangeFromState:(int64_t)a3
{
  v4 = self;
  sub_1D79FAB4C(a3);
}

- (_TtC12NewsArticles15AdComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end