@interface BadgeLabelView
- (_TtC16CommunicationsUIP33_C2EB498160C88FB03502E74E1F6CD82514BadgeLabelView)initWithCoder:(id)coder;
- (_TtC16CommunicationsUIP33_C2EB498160C88FB03502E74E1F6CD82514BadgeLabelView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation BadgeLabelView

- (_TtC16CommunicationsUIP33_C2EB498160C88FB03502E74E1F6CD82514BadgeLabelView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_C2EB498160C88FB03502E74E1F6CD82514BadgeLabelView____lazy_storage___label) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BadgeLabelView();
  height = [(BadgeLabelView *)&v9 initWithFrame:x, y, width, height];
  sub_1C2E17568();

  return height;
}

- (_TtC16CommunicationsUIP33_C2EB498160C88FB03502E74E1F6CD82514BadgeLabelView)initWithCoder:(id)coder
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
  layer = [v2 layer];
  [v2 frame];
  [layer setCornerRadius_];
}

@end