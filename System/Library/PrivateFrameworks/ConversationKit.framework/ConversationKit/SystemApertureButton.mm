@interface SystemApertureButton
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)didBecomeFirstResponderForGameControllerButton:(int)button;
- (void)didMoveToWindow;
- (void)didResignFirstResponderForGameControllerButton:(int)button;
- (void)layoutSubviews;
@end

@implementation SystemApertureButton

- (void)layoutSubviews
{
  selfCopy = self;
  SystemApertureButton.layoutSubviews()();
}

- (void)didMoveToWindow
{
  selfCopy = self;
  SystemApertureButton.didMoveToWindow()();
}

- (void)didBecomeFirstResponderForGameControllerButton:(int)button
{
  selfCopy = self;
  SystemApertureButton.didBecomeFirstResponder(forGameControllerButton:)();
}

- (void)didResignFirstResponderForGameControllerButton:(int)button
{
  selfCopy = self;
  SystemApertureButton.didResignFirstResponder(forGameControllerButton:)();
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v9 = SystemApertureButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(selfCopy, __PAIR128__(v8, v7));

  return v9;
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = SystemApertureButton._contextMenuInteraction(_:styleForMenuWith:)(interactionCopy, configurationCopy);

  return v9;
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  v6 = SystemApertureButton.menuAttachmentPoint(for:)(configurationCopy);

  x = v6.x;
  y = v6.y;
  result.y = y;
  result.x = x;
  return result;
}

@end