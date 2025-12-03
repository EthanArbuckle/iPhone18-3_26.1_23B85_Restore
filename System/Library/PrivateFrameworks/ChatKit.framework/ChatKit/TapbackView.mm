@interface TapbackView
- (_TtC7ChatKit11TapbackView)initWithCoder:(id)coder;
- (_TtC7ChatKit11TapbackView)initWithFrame:(CGRect)frame;
- (void)performSendAnimation;
- (void)performViewControllerAppearingAnimation;
@end

@implementation TapbackView

- (void)performViewControllerAppearingAnimation
{
  selfCopy = self;
  sub_190B52798();
}

- (void)performSendAnimation
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x58);
  selfCopy = self;
  v2();
}

- (_TtC7ChatKit11TapbackView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TapbackView();
  return [(TapbackView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKit11TapbackView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TapbackView();
  coderCopy = coder;
  v5 = [(TapbackView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end