@interface InteractionFactorsHeaderCell
- (_TtC19HealthMedicationsUI28InteractionFactorsHeaderCell)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI28InteractionFactorsHeaderCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)awakeFromNib;
@end

@implementation InteractionFactorsHeaderCell

- (_TtC19HealthMedicationsUI28InteractionFactorsHeaderCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell____lazy_storage___subtitleLabel) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for InteractionFactorsHeaderCell();
  height = [(InteractionFactorsHeaderCell *)&v10 initWithFrame:x, y, width, height];
  sub_2281F378C();

  return height;
}

- (_TtC19HealthMedicationsUI28InteractionFactorsHeaderCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionFactorsHeaderCell____lazy_storage___subtitleLabel) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for InteractionFactorsHeaderCell();
  coderCopy = coder;
  v6 = [(InteractionFactorsHeaderCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InteractionFactorsHeaderCell();
  v2 = v3.receiver;
  [(InteractionFactorsHeaderCell *)&v3 awakeFromNib];
  sub_2281F378C();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_228391350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391340();
  selfCopy = self;
  sub_2281F3C20();

  (*(v5 + 8))(v8, v4);
}

@end