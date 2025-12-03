@interface TapbackPickerTintableMessageBalloonView
- (_TtC7ChatKit39TapbackPickerTintableMessageBalloonView)initWithCoder:(id)coder;
- (_TtC7ChatKit39TapbackPickerTintableMessageBalloonView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation TapbackPickerTintableMessageBalloonView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1908CA448();
}

- (_TtC7ChatKit39TapbackPickerTintableMessageBalloonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_wantsPileDestOut) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_primaryBalloon) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_tintBalloon) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TapbackPickerTintableMessageBalloonView();
  return [(TapbackPickerTintableMessageBalloonView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKit39TapbackPickerTintableMessageBalloonView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_wantsPileDestOut) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_primaryBalloon) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_tintBalloon) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TapbackPickerTintableMessageBalloonView();
  coderCopy = coder;
  v5 = [(TapbackPickerTintableMessageBalloonView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end