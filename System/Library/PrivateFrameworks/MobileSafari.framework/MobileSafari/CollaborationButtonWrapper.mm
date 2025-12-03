@interface CollaborationButtonWrapper
- (_TtC12MobileSafariP33_6611532487E34DDB3B5E2A21F893A3EC26CollaborationButtonWrapper)initWithCoder:(id)coder;
- (_TtC12MobileSafariP33_6611532487E34DDB3B5E2A21F893A3EC26CollaborationButtonWrapper)initWithFrame:(CGRect)frame;
@end

@implementation CollaborationButtonWrapper

- (_TtC12MobileSafariP33_6611532487E34DDB3B5E2A21F893A3EC26CollaborationButtonWrapper)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_6611532487E34DDB3B5E2A21F893A3EC26CollaborationButtonWrapper_contentView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CollaborationButtonWrapper();
  return [(BlurrableButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12MobileSafariP33_6611532487E34DDB3B5E2A21F893A3EC26CollaborationButtonWrapper)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_6611532487E34DDB3B5E2A21F893A3EC26CollaborationButtonWrapper_contentView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CollaborationButtonWrapper();
  coderCopy = coder;
  v5 = [(BlurrableButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end