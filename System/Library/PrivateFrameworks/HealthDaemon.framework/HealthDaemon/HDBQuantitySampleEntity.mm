@interface HDBQuantitySampleEntity
+ (id)databaseTable;
+ (id)foreignKeys;
- (_TtC12HealthDaemon23HDBQuantitySampleEntity)init;
- (_TtC12HealthDaemon23HDBQuantitySampleEntity)initWithPersistentID:(int64_t)d;
@end

@implementation HDBQuantitySampleEntity

+ (id)databaseTable
{
  v2 = sub_22911C34C();

  return v2;
}

+ (id)foreignKeys
{
  _s12HealthDaemon23HDBQuantitySampleEntityC11foreignKeysSDySSSo08HDSQLiteE10ForeignKeyCGyFZ_0();
  sub_2289B3D00(0, &qword_27D862AF8, 0x277D10B38);
  v2 = sub_22911C2BC();

  return v2;
}

- (_TtC12HealthDaemon23HDBQuantitySampleEntity)initWithPersistentID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(HDSQLiteEntity *)&v5 initWithPersistentID:d];
}

- (_TtC12HealthDaemon23HDBQuantitySampleEntity)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(HDBQuantitySampleEntity *)&v3 init];
}

@end