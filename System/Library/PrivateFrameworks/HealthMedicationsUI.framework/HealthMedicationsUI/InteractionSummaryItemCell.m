@interface InteractionSummaryItemCell
- (_TtC19HealthMedicationsUI26InteractionSummaryItemCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)awakeFromNib;
@end

@implementation InteractionSummaryItemCell

- (_TtC19HealthMedicationsUI26InteractionSummaryItemCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self + OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_item;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_titleLabel;
  *(&self->super.super.super.super.super.super.isa + v9) = sub_22834C1B8();
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell_chevronView;
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  *(&self->super.super.super.super.super.super.isa + v10) = MEMORY[0x22AAB6680]();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI26InteractionSummaryItemCell____lazy_storage___subtitleView) = 0;
  v13.receiver = self;
  v13.super_class = type metadata accessor for InteractionSummaryItemCell();
  v11 = [(InteractionSummaryItemCell *)&v13 initWithFrame:x, y, width, height];
  sub_22834C754();

  return v11;
}

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for InteractionSummaryItemCell();
  v2 = v4.receiver;
  [(InteractionSummaryItemCell *)&v4 awakeFromNib];
  sub_2283922A0();
  v3[2] = v2;
  sub_22817F074(sub_22834D598, v3);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_228391350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391340();
  v9 = self;
  sub_22834CD70();

  (*(v5 + 8))(v8, v4);
}

@end