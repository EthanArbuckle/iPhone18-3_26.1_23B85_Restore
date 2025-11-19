@interface HDClinicalHealthLinkEntity
+ (id)databaseTable;
+ (id)foreignKeys;
+ (id)joinClausesForProperty:(id)a3;
+ (id)propertyForSyncAnchor;
+ (id)propertyForSyncIdentity;
+ (id)propertyForSyncProvenance;
+ (id)uniquedColumns;
- (_TtC12HealthDaemon26HDClinicalHealthLinkEntity)init;
- (_TtC12HealthDaemon26HDClinicalHealthLinkEntity)initWithPersistentID:(int64_t)a3;
@end

@implementation HDClinicalHealthLinkEntity

+ (id)databaseTable
{
  v2 = sub_22911C34C();

  return v2;
}

+ (id)foreignKeys
{
  sub_2289BF380();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229163C40;
  *(inited + 32) = 0x5F746E756F636361;
  *(inited + 40) = 0xEA00000000006469;
  sub_2289B3D00(0, &qword_27D863230, off_27860DA90);
  *(inited + 48) = [swift_getObjCClassFromMetadata() defaultForeignKey];
  sub_2289B2670(inited);
  swift_setDeallocating();
  sub_2289B5A78(inited + 32);
  sub_2289B3D00(0, &qword_27D862AF8, 0x277D10B38);
  v3 = sub_22911C2BC();

  return v3;
}

+ (id)uniquedColumns
{
  v2 = sub_22911C44C();

  return v2;
}

+ (id)joinClausesForProperty:(id)a3
{
  v3 = sub_22911C35C();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = static HDClinicalHealthLinkEntity.joinClauses(forProperty:)(v3, v5);

  if (v6)
  {
    sub_2289B3D00(0, &qword_27D863238, 0x277D10B50);
    sub_2289B33F8(&qword_27D863240, &qword_27D863238, 0x277D10B50);
    v7 = sub_22911C50C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)propertyForSyncAnchor
{
  v2 = sub_22911C34C();

  return v2;
}

+ (id)propertyForSyncIdentity
{
  v2 = sub_22911C34C();

  return v2;
}

+ (id)propertyForSyncProvenance
{
  v2 = sub_22911C34C();

  return v2;
}

- (_TtC12HealthDaemon26HDClinicalHealthLinkEntity)initWithPersistentID:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(HDSQLiteEntity *)&v5 initWithPersistentID:a3];
}

- (_TtC12HealthDaemon26HDClinicalHealthLinkEntity)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(HDClinicalHealthLinkEntity *)&v3 init];
}

@end