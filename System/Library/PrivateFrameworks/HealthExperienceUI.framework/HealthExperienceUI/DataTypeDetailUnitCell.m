@interface DataTypeDetailUnitCell
- (_TtC18HealthExperienceUI22DataTypeDetailUnitCell)initWithCoder:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)configureCell;
@end

@implementation DataTypeDetailUnitCell

- (_TtC18HealthExperienceUI22DataTypeDetailUnitCell)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI22DataTypeDetailUnitCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)configureCell
{
  v2 = self;
  sub_1BA318658();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_1BA4A40C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A40B8();
  v8 = self;
  sub_1BA31917C();

  (*(v5 + 8))(v7, v4);
}

@end