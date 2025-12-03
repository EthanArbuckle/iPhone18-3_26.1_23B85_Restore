@interface CNKConversationControlsButton
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation CNKConversationControlsButton

- (void)layoutSubviews
{
  selfCopy = self;
  ConversationControlsButton.layoutSubviews()();
}

- (void)didMoveToWindow
{
  selfCopy = self;
  ConversationControlsButton.didMoveToWindow()();
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v9 = ConversationControlsButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(selfCopy, __PAIR128__(v8, v7));

  return v9;
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = ConversationControlsButton._contextMenuInteraction(_:styleForMenuWith:)(interactionCopy, configurationCopy);

  return v9;
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  v6 = ConversationControlsButton.menuAttachmentPoint(for:)(configurationCopy);

  x = v6.x;
  y = v6.y;
  result.y = y;
  result.x = x;
  return result;
}

@end