@interface EVChargingPlugRowView
- (_TtC6MapsUI21EVChargingPlugRowView)initWithCoder:(id)coder;
- (_TtC6MapsUI21EVChargingPlugRowView)initWithFrame:(CGRect)frame;
@end

@implementation EVChargingPlugRowView

- (_TtC6MapsUI21EVChargingPlugRowView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_areLabelsArrangedVertically) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_horizontalArrangementConstraints) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_verticalArrangementConstraints) = v3;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___leadingOrTopLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___trailingOrBottomLabel) = 0;
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

- (_TtC6MapsUI21EVChargingPlugRowView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end