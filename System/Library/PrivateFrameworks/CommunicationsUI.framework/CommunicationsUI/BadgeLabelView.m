@interface BadgeLabelView
- (_TtC16CommunicationsUIP33_C2EB498160C88FB03502E74E1F6CD82514BadgeLabelView)initWithCoder:(id)a3;
- (_TtC16CommunicationsUIP33_C2EB498160C88FB03502E74E1F6CD82514BadgeLabelView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation BadgeLabelView

- (_TtC16CommunicationsUIP33_C2EB498160C88FB03502E74E1F6CD82514BadgeLabelView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_C2EB498160C88FB03502E74E1F6CD82514BadgeLabelView____lazy_storage___label) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BadgeLabelView();
  v7 = [(BadgeLabelView *)&v9 initWithFrame:x, y, width, height];
  sub_1C2E17568();

  return v7;
}

- (_TtC16CommunicationsUIP33_C2EB498160C88FB03502E74E1F6CD82514BadgeLabelView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_C2EB498160C88FB03502E74E1F6CD82514BadgeLabelView____lazy_storage___label) = 0;
  result = sub_1C2E766F4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BadgeLabelView();
  v2 = v4.receiver;
  [(BadgeLabelView *)&v4 layoutSubviews];
  v3 = [v2 layer];
  [v2 frame];
  [v3 setCornerRadius_];
}

@end