@interface SystemApertureButton
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)didBecomeFirstResponderForGameControllerButton:(int)a3;
- (void)didMoveToWindow;
- (void)didResignFirstResponderForGameControllerButton:(int)a3;
- (void)layoutSubviews;
@end

@implementation SystemApertureButton

- (void)layoutSubviews
{
  v2 = self;
  SystemApertureButton.layoutSubviews()();
}

- (void)didMoveToWindow
{
  v2 = self;
  SystemApertureButton.didMoveToWindow()();
}

- (void)didBecomeFirstResponderForGameControllerButton:(int)a3
{
  v3 = self;
  SystemApertureButton.didBecomeFirstResponder(forGameControllerButton:)();
}

- (void)didResignFirstResponderForGameControllerButton:(int)a3
{
  v3 = self;
  SystemApertureButton.didResignFirstResponder(forGameControllerButton:)();
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v9 = SystemApertureButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(v6, __PAIR128__(v8, v7));

  return v9;
}

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = SystemApertureButton._contextMenuInteraction(_:styleForMenuWith:)(v6, v7);

  return v9;
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = SystemApertureButton.menuAttachmentPoint(for:)(v4);

  x = v6.x;
  y = v6.y;
  result.y = y;
  result.x = x;
  return result;
}

@end