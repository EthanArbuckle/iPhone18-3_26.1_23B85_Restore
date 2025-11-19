@interface CollaborationButtonWrapper
- (_TtC12MobileSafariP33_6611532487E34DDB3B5E2A21F893A3EC26CollaborationButtonWrapper)initWithCoder:(id)a3;
- (_TtC12MobileSafariP33_6611532487E34DDB3B5E2A21F893A3EC26CollaborationButtonWrapper)initWithFrame:(CGRect)a3;
@end

@implementation CollaborationButtonWrapper

- (_TtC12MobileSafariP33_6611532487E34DDB3B5E2A21F893A3EC26CollaborationButtonWrapper)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_6611532487E34DDB3B5E2A21F893A3EC26CollaborationButtonWrapper_contentView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CollaborationButtonWrapper();
  return [(BlurrableButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12MobileSafariP33_6611532487E34DDB3B5E2A21F893A3EC26CollaborationButtonWrapper)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafariP33_6611532487E34DDB3B5E2A21F893A3EC26CollaborationButtonWrapper_contentView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CollaborationButtonWrapper();
  v4 = a3;
  v5 = [(BlurrableButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end