@interface TapbackPickerTintableMessageBalloonView
- (_TtC7ChatKit39TapbackPickerTintableMessageBalloonView)initWithCoder:(id)a3;
- (_TtC7ChatKit39TapbackPickerTintableMessageBalloonView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation TapbackPickerTintableMessageBalloonView

- (void)layoutSubviews
{
  v2 = self;
  sub_1908CA448();
}

- (_TtC7ChatKit39TapbackPickerTintableMessageBalloonView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_wantsPileDestOut) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_primaryBalloon) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_tintBalloon) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TapbackPickerTintableMessageBalloonView();
  return [(TapbackPickerTintableMessageBalloonView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKit39TapbackPickerTintableMessageBalloonView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_wantsPileDestOut) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_primaryBalloon) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_tintBalloon) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TapbackPickerTintableMessageBalloonView();
  v4 = a3;
  v5 = [(TapbackPickerTintableMessageBalloonView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end