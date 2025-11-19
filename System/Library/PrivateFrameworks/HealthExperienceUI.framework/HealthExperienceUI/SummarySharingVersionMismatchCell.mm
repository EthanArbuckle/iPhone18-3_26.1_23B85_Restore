@interface SummarySharingVersionMismatchCell
- (_TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell)initWithFrame:(CGRect)a3;
@end

@implementation SummarySharingVersionMismatchCell

- (_TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell_item;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell_messageView;
  v10 = [objc_allocWithZone(type metadata accessor for MessageWithActionTileView()) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.super.super.isa + v9) = v10;
  v13.receiver = self;
  v13.super_class = type metadata accessor for SummarySharingVersionMismatchCell();
  v11 = [(SummarySharingVersionMismatchCell *)&v13 initWithFrame:x, y, width, height];
  sub_1BA467AF0();

  return v11;
}

- (_TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC18HealthExperienceUIP33_1DFA22859B1ADF5237349B513C5FCFAB33SummarySharingVersionMismatchCell_messageView;
  v6 = [objc_allocWithZone(type metadata accessor for MessageWithActionTileView()) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.super.super.isa + v5) = v6;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

@end