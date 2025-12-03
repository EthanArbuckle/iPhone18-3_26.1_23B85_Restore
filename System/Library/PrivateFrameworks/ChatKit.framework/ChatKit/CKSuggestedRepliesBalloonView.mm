@interface CKSuggestedRepliesBalloonView
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (_TtC7ChatKit29CKSuggestedRepliesBalloonView)initWithCoder:(id)coder;
- (_TtC7ChatKit29CKSuggestedRepliesBalloonView)initWithFrame:(CGRect)frame;
- (void)configureForMessagePart:(id)part;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKSuggestedRepliesBalloonView

- (_TtC7ChatKit29CKSuggestedRepliesBalloonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_view) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_balloonMask) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CKSuggestedRepliesBalloonView();
  return [(CKImageBalloonView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKit29CKSuggestedRepliesBalloonView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_view) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_balloonMask) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_19086A3E0(width, height);
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190869C00();
}

- (void)configureForMessagePart:(id)part
{
  partCopy = part;
  selfCopy = self;
  sub_190869DF4(partCopy);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_19086A01C();
}

@end