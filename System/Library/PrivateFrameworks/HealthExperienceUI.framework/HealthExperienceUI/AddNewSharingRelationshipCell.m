@interface AddNewSharingRelationshipCell
- (_TtC18HealthExperienceUI29AddNewSharingRelationshipCell)initWithCoder:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)prepareForReuse;
@end

@implementation AddNewSharingRelationshipCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AddNewSharingRelationshipCell();
  v2 = v4.receiver;
  [(AddNewSharingRelationshipCell *)&v4 prepareForReuse];
  v3 = sub_1BA2C988C();
  [v3 startAnimating];
}

- (_TtC18HealthExperienceUI29AddNewSharingRelationshipCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell_syncObserver) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell____lazy_storage___activitySpinner) = 0;
  v3 = self + OBJC_IVAR____TtC18HealthExperienceUI29AddNewSharingRelationshipCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_1BA4A40C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A40B8();
  v8 = self;
  sub_1BA2CA5B4();

  (*(v5 + 8))(v7, v4);
}

@end