@interface ConversationHUDControlsStatusView
- (_TtC15ConversationKit23ConversationDetailsView)conversationDetailsView;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)setConversationDetailsView:(id)view;
- (void)setupRootView;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ConversationHUDControlsStatusView

- (_TtC15ConversationKit23ConversationDetailsView)conversationDetailsView
{
  selfCopy = self;
  v3 = ConversationHUDControlsStatusView.conversationDetailsView.getter();

  return v3;
}

- (void)setConversationDetailsView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  ConversationHUDControlsStatusView.conversationDetailsView.setter(viewCopy);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  ConversationHUDControlsStatusView.traitCollectionDidChange(_:)(v9);
}

- (void)setupRootView
{
  selfCopy = self;
  ConversationHUDControlsStatusView.setupRootView()();
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
  selfCopy = self;
  v14 = ConversationHUDControlsStatusView.pointerInteraction(_:regionFor:defaultRegion:)(interactionCopy, v12, v13);

  return v14;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v10 = ConversationHUDControlsStatusView.pointerInteraction(_:styleFor:)(interactionCopy, v9);

  return v10;
}

@end