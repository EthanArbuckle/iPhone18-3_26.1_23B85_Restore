@interface AdComponentView
- (_TtC12NewsArticles15AdComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory;
- (void)presentComponentWithChanges:(id)changes;
- (void)receivedInfo:(id)info fromLayoutingPhaseWithIdentifier:(id)identifier;
- (void)renderContents;
- (void)visibilityStateDidChangeFromState:(int64_t)state;
@end

@implementation AdComponentView

- (void)presentComponentWithChanges:(id)changes
{
  v3 = *&changes.var0;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(SXComponentView *)&v5 presentComponentWithChanges:*&v3 & 0x10101];
  sub_1D79FA154();
}

- (void)renderContents
{
  selfCopy = self;
  sub_1D79FA5A4();
}

- (void)receivedInfo:(id)info fromLayoutingPhaseWithIdentifier:(id)identifier
{
  swift_unknownObjectRetain();
  identifierCopy = identifier;
  selfCopy = self;
  sub_1D7D3138C();
  swift_unknownObjectRelease();
  v8 = sub_1D7D3034C();
  v10 = v9;

  sub_1D79FA92C(v11, v8, v10);

  __swift_destroy_boxed_opaque_existential_1(v11);
}

- (void)visibilityStateDidChangeFromState:(int64_t)state
{
  selfCopy = self;
  sub_1D79FAB4C(state);
}

- (_TtC12NewsArticles15AdComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end