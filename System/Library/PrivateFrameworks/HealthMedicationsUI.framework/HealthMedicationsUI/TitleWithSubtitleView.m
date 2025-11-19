@interface TitleWithSubtitleView
- (_TtC19HealthMedicationsUI21TitleWithSubtitleView)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI21TitleWithSubtitleView)initWithFrame:(CGRect)a3;
@end

@implementation TitleWithSubtitleView

- (_TtC19HealthMedicationsUI21TitleWithSubtitleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView____lazy_storage___subtitleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_customConstraints) = MEMORY[0x277D84F90];
  v8 = self + OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item;
  v9 = type metadata accessor for TitleWithSubtitleView();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v12.receiver = self;
  v12.super_class = v9;
  v10 = [(TitleWithSubtitleView *)&v12 initWithFrame:x, y, width, height];
  sub_228235358();

  return v10;
}

- (_TtC19HealthMedicationsUI21TitleWithSubtitleView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView____lazy_storage___subtitleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_customConstraints) = MEMORY[0x277D84F90];
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI21TitleWithSubtitleView_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

@end