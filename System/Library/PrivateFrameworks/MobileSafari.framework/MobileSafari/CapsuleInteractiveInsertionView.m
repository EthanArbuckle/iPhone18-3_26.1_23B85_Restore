@interface CapsuleInteractiveInsertionView
- (_TtC12MobileSafari31CapsuleInteractiveInsertionView)initWithFrame:(CGRect)a3;
@end

@implementation CapsuleInteractiveInsertionView

- (_TtC12MobileSafari31CapsuleInteractiveInsertionView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView_imageView;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView____lazy_storage___imageViewMinimumWidthConstraint) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView____lazy_storage___imageViewWidthConstraint) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView_isSelected) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for CapsuleInteractiveInsertionView();
  v9 = [(CapsuleInteractiveInsertionView *)&v11 initWithFrame:x, y, width, height];
  sub_18BA83A74();

  return v9;
}

@end