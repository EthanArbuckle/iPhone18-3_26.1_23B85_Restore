@interface CAMLiquidShutterView
- (_TtC8CameraUI20CAMLiquidShutterView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setShowDragHandle:(BOOL)a3;
@end

@implementation CAMLiquidShutterView

- (void)setShowDragHandle:(BOOL)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8CameraUI20CAMLiquidShutterView_showDragHandle);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8CameraUI20CAMLiquidShutterView_showDragHandle) = a3;
  if (v3 != a3)
  {
    [(CAMLiquidShutterView *)self setNeedsLayout];
  }
}

- (_TtC8CameraUI20CAMLiquidShutterView)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC8CameraUI20CAMLiquidShutterView_centerShape;
  *(v3 + 2) = *ymmword_1A3A6AD10;
  *(v3 + 3) = *&ymmword_1A3A6AD10[16];
  *(v3 + 8) = 0;
  *v3 = CAMLiquidShutterShapeZero;
  *(v3 + 1) = unk_1A3A6AD00;
  v4 = self + OBJC_IVAR____TtC8CameraUI20CAMLiquidShutterView_dragHandleShape;
  *(v4 + 8) = 0;
  *(v4 + 2) = *ymmword_1A3A6AD10;
  *(v4 + 3) = *&ymmword_1A3A6AD10[16];
  *v4 = CAMLiquidShutterShapeZero;
  *(v4 + 1) = unk_1A3A6AD00;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8CameraUI20CAMLiquidShutterView_showDragHandle) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8CameraUI20CAMLiquidShutterView_glassSmoothness) = 0x403E000000000000;
  result = sub_1A3A32070();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1A3993094();
}

@end