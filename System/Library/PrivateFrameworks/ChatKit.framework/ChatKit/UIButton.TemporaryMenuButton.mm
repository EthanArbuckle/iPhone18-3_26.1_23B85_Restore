@interface UIButton.TemporaryMenuButton
- (_TtCE7ChatKitCSo8UIButtonP33_D14EE3536975491F12EAC53EA3F1D9F419TemporaryMenuButton)initWithCoder:(id)coder;
- (_TtCE7ChatKitCSo8UIButtonP33_D14EE3536975491F12EAC53EA3F1D9F419TemporaryMenuButton)initWithFrame:(CGRect)frame;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation UIButton.TemporaryMenuButton

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v11.receiver = self;
  v11.super_class = _s19TemporaryMenuButtonCMa();
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  v10 = v11.receiver;
  [(UIButton.TemporaryMenuButton *)&v11 contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animator];
  [v10 removeFromSuperview];

  swift_unknownObjectRelease();
}

- (_TtCE7ChatKitCSo8UIButtonP33_D14EE3536975491F12EAC53EA3F1D9F419TemporaryMenuButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = _s19TemporaryMenuButtonCMa();
  return [(UIButton.TemporaryMenuButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCE7ChatKitCSo8UIButtonP33_D14EE3536975491F12EAC53EA3F1D9F419TemporaryMenuButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _s19TemporaryMenuButtonCMa();
  coderCopy = coder;
  v5 = [(UIButton.TemporaryMenuButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end