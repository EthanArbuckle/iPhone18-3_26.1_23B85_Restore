@interface CKSuggestedReplyBalloonView
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (_TtC7ChatKit27CKSuggestedReplyBalloonView)initWithCoder:(id)coder;
- (_TtC7ChatKit27CKSuggestedReplyBalloonView)initWithFrame:(CGRect)frame;
- (void)configureForMessagePart:(id)part;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKSuggestedReplyBalloonView

- (_TtC7ChatKit27CKSuggestedReplyBalloonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit27CKSuggestedReplyBalloonView_view) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit27CKSuggestedReplyBalloonView_balloonMask) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CKSuggestedReplyBalloonView();
  return [(CKImageBalloonView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKit27CKSuggestedReplyBalloonView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit27CKSuggestedReplyBalloonView_view) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit27CKSuggestedReplyBalloonView_balloonMask) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  v5 = *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit27CKSuggestedReplyBalloonView_view);
  if (v5)
  {
    height = fits.height;
    width = fits.width;
    selfCopy = self;
    v9 = v5;
    sub_190B58BDC(width, height);
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v11 = 0.0;
    v13 = 0.0;
  }

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190B8E7AC();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_190B8E9A0();
}

- (void)configureForMessagePart:(id)part
{
  type metadata accessor for CKSuggestedReplyMessagePartChatItem();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v10.receiver = self;
    v10.super_class = type metadata accessor for CKSuggestedReplyBalloonView();
    partCopy = part;
    selfCopy = self;
    [(CKImageBalloonView *)&v10 configureForMessagePart:v6];
    v9 = *(v6 + OBJC_IVAR____TtC7ChatKit35CKSuggestedReplyMessagePartChatItem_suggestedReply);
    sub_190B8E468(v9);

    [(CKSuggestedReplyBalloonView *)selfCopy setNeedsLayout:v10.receiver];
  }
}

@end