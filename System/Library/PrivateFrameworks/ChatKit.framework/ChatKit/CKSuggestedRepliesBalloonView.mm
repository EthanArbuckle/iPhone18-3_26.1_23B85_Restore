@interface CKSuggestedRepliesBalloonView
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (_TtC7ChatKit29CKSuggestedRepliesBalloonView)initWithCoder:(id)a3;
- (_TtC7ChatKit29CKSuggestedRepliesBalloonView)initWithFrame:(CGRect)a3;
- (void)configureForMessagePart:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKSuggestedRepliesBalloonView

- (_TtC7ChatKit29CKSuggestedRepliesBalloonView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_view) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_balloonMask) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CKSuggestedRepliesBalloonView();
  return [(CKImageBalloonView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKit29CKSuggestedRepliesBalloonView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_view) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit29CKSuggestedRepliesBalloonView_balloonMask) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  height = a3.height;
  width = a3.width;
  v7 = self;
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
  v2 = self;
  sub_190869C00();
}

- (void)configureForMessagePart:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190869DF4(v4);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_19086A01C();
}

@end