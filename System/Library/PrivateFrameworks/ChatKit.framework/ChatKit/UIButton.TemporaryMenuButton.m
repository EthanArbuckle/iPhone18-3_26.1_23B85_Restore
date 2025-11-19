@interface UIButton.TemporaryMenuButton
- (_TtCE7ChatKitCSo8UIButtonP33_D14EE3536975491F12EAC53EA3F1D9F419TemporaryMenuButton)initWithCoder:(id)a3;
- (_TtCE7ChatKitCSo8UIButtonP33_D14EE3536975491F12EAC53EA3F1D9F419TemporaryMenuButton)initWithFrame:(CGRect)a3;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
@end

@implementation UIButton.TemporaryMenuButton

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v11.receiver = self;
  v11.super_class = _s19TemporaryMenuButtonCMa();
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = v11.receiver;
  [(UIButton.TemporaryMenuButton *)&v11 contextMenuInteraction:v8 willEndForConfiguration:v9 animator:a5];
  [v10 removeFromSuperview];

  swift_unknownObjectRelease();
}

- (_TtCE7ChatKitCSo8UIButtonP33_D14EE3536975491F12EAC53EA3F1D9F419TemporaryMenuButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = _s19TemporaryMenuButtonCMa();
  return [(UIButton.TemporaryMenuButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCE7ChatKitCSo8UIButtonP33_D14EE3536975491F12EAC53EA3F1D9F419TemporaryMenuButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _s19TemporaryMenuButtonCMa();
  v4 = a3;
  v5 = [(UIButton.TemporaryMenuButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end