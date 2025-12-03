@interface CapsuleInteractiveInsertionView
- (_TtC12MobileSafari31CapsuleInteractiveInsertionView)initWithFrame:(CGRect)frame;
@end

@implementation CapsuleInteractiveInsertionView

- (_TtC12MobileSafari31CapsuleInteractiveInsertionView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView_imageView;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView____lazy_storage___imageViewMinimumWidthConstraint) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView____lazy_storage___imageViewWidthConstraint) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari31CapsuleInteractiveInsertionView_isSelected) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for CapsuleInteractiveInsertionView();
  height = [(CapsuleInteractiveInsertionView *)&v11 initWithFrame:x, y, width, height];
  sub_18BA83A74();

  return height;
}

@end