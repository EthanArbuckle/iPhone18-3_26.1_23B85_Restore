@interface SummarySharingVersionMismatchCell
- (_TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell)initWithFrame:(CGRect)frame;
@end

@implementation SummarySharingVersionMismatchCell

- (_TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell_item;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell_messageView;
  initWithFrame_ = [objc_allocWithZone(type metadata accessor for MessageWithActionTileView()) initWithFrame_];
  [initWithFrame_ setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.super.super.isa + v9) = initWithFrame_;
  v13.receiver = self;
  v13.super_class = type metadata accessor for SummarySharingVersionMismatchCell();
  height = [(SummarySharingVersionMismatchCell *)&v13 initWithFrame:x, y, width, height];
  sub_1BA467AF0();

  return height;
}

- (_TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell_messageView;
  initWithFrame_ = [objc_allocWithZone(type metadata accessor for MessageWithActionTileView()) initWithFrame_];
  [initWithFrame_ setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.super.super.isa + v5) = initWithFrame_;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

@end