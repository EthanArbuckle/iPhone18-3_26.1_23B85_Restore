@interface ScheduledDetailItemCell
- (_TtC19HealthMedicationsUI23ScheduledDetailItemCell)initWithCoder:(id)coder;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)medicationDetailDidUpdate:(id)update for:(id)for;
@end

@implementation ScheduledDetailItemCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_228391350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391340();
  selfCopy = self;
  sub_228323B6C();

  (*(v5 + 8))(v8, v4);
}

- (_TtC19HealthMedicationsUI23ScheduledDetailItemCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___medicationView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell____lazy_storage___timeLabel) = 0;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_detailProvider;
  sub_228390BB0();
  *(&self->super.super.super.super.super.super.isa + v4) = sub_228390BA0();
  v5 = self + OBJC_IVAR____TtC19HealthMedicationsUI23ScheduledDetailItemCell_item;
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)medicationDetailDidUpdate:(id)update for:(id)for
{
  v6 = sub_228392000();
  v8 = v7;
  updateCopy = update;
  selfCopy = self;
  sub_228324254(updateCopy, v6, v8);
}

@end