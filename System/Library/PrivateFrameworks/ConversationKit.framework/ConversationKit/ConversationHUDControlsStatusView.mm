@interface ConversationHUDControlsStatusView
- (_TtC15ConversationKit23ConversationDetailsView)conversationDetailsView;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)setConversationDetailsView:(id)a3;
- (void)setupRootView;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ConversationHUDControlsStatusView

- (_TtC15ConversationKit23ConversationDetailsView)conversationDetailsView
{
  v2 = self;
  v3 = ConversationHUDControlsStatusView.conversationDetailsView.getter();

  return v3;
}

- (void)setConversationDetailsView:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationHUDControlsStatusView.conversationDetailsView.setter(v4);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  ConversationHUDControlsStatusView.traitCollectionDidChange(_:)(v9);
}

- (void)setupRootView
{
  v2 = self;
  ConversationHUDControlsStatusView.setupRootView()();
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v14 = ConversationHUDControlsStatusView.pointerInteraction(_:regionFor:defaultRegion:)(v8, v12, v13);

  return v14;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v10 = ConversationHUDControlsStatusView.pointerInteraction(_:styleFor:)(v6, v9);

  return v10;
}

@end