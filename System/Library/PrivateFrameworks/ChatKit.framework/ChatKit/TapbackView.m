@interface TapbackView
- (_TtC7ChatKit11TapbackView)initWithCoder:(id)a3;
- (_TtC7ChatKit11TapbackView)initWithFrame:(CGRect)a3;
- (void)performSendAnimation;
- (void)performViewControllerAppearingAnimation;
@end

@implementation TapbackView

- (void)performViewControllerAppearingAnimation
{
  v2 = self;
  sub_190B52798();
}

- (void)performSendAnimation
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x58);
  v3 = self;
  v2();
}

- (_TtC7ChatKit11TapbackView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TapbackView();
  return [(TapbackView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKit11TapbackView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TapbackView();
  v4 = a3;
  v5 = [(TapbackView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end