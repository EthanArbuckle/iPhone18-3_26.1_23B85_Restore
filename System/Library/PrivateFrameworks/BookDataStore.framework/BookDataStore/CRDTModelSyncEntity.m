@interface CRDTModelSyncEntity
+ (id)propertyIDKey;
- (BOOL)isEqualExceptForDate:(id)a3 ignoringEmptySalt:(BOOL)a4;
- (NSString)debugDescription;
- (_TtC13BookDataStore19CRDTModelSyncEntity)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (id)identifier;
- (id)mutableCopy;
- (id)recordType;
- (id)zoneName;
- (void).cxx_construct;
- (void)configureFromCloudData:(id)a3 withMergers:(id)a4;
- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4;
@end

@implementation CRDTModelSyncEntity

- (void)configureFromCloudData:(id)a3 withMergers:(id)a4
{
  v4 = a4;
  if (a4)
  {
    sub_1E4650534(&unk_1ECF747B0, &unk_1E471B820);
    v4 = sub_1E470AE3C();
  }

  swift_unknownObjectRetain();
  v7 = self;
  sub_1E465FD84(a3, v4);
  swift_unknownObjectRelease();
}

- (BOOL)isEqualExceptForDate:(id)a3 ignoringEmptySalt:(BOOL)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_1E46611DC(a3, a4);
  swift_unknownObjectRelease();

  return v8 & 1;
}

- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4
{
  v4 = a4;
  if (a4)
  {
    sub_1E4650534(&unk_1ECF747B0, &unk_1E471B820);
    v4 = sub_1E470AE3C();
  }

  v7 = a3;
  v8 = self;
  sub_1E46614D0(v7, v4);
}

+ (id)propertyIDKey
{
  v2 = sub_1E470AF0C();

  return v2;
}

- (_TtC13BookDataStore19CRDTModelSyncEntity)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRDTModelSyncEntity();
  return [(CRDTModelSyncEntity *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (void).cxx_construct
{
  v3 = OBJC_IVAR____TtC13BookDataStore19CRDTModelSyncEntity____lazy_storage___logger;
  v4 = sub_1E470A0DC();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
}

- (id)mutableCopy
{
  v3 = objc_allocWithZone(type metadata accessor for CRDTModelSync());
  v4 = self;
  result = [v3 initWithCloudData_];
  if (result)
  {
    v6 = result;

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSString)debugDescription
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for CRDTModelSyncEntity();
  v2 = v9.receiver;
  v3 = [(CRDTModelSyncEntity *)&v9 debugDescription];
  sub_1E470AF1C();

  v4 = sub_1E4663874(v2);
  v6 = v5;

  MEMORY[0x1E6915D10](v4, v6);

  v7 = sub_1E470AF0C();

  return v7;
}

- (id)recordType
{
  v2 = self;
  v3 = [(CRDTModelSyncEntity *)v2 type];
  v4 = sub_1E470AF1C();
  v6 = v5;

  sub_1E470B04C();
  v7 = sub_1E470AF7C();
  v9 = v8;

  sub_1E465F4D4(15, v7, v9, v4, v6);

  v10 = sub_1E470AF0C();

  return v10;
}

- (id)identifier
{
  v2 = self;
  sub_1E4663AB8(v2);
  v4 = v3;

  if (v4)
  {
    v5 = sub_1E470AF0C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)zoneName
{
  v2 = [(CRDTModelSyncEntity *)self type];

  return v2;
}

@end