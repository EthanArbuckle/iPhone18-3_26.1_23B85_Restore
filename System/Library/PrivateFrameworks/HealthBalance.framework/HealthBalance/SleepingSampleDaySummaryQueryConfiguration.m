@interface SleepingSampleDaySummaryQueryConfiguration
- (_TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration)init;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SleepingSampleDaySummaryQueryConfiguration

- (_TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_gregorianCalendar;
  v5 = sub_1CFE304B4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_morningIndexRange;
  sub_1CFDA68BC();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(HKQueryServerConfiguration *)&v9 init];
}

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  SleepingSampleDaySummaryQueryConfiguration.copy(with:)(a3, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_1CFE310A4();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SleepingSampleDaySummaryQueryConfiguration.encode(with:)(v4);
}

@end