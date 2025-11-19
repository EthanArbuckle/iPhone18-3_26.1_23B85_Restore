@interface CRDTModelSyncEntity
+ (id)propertyIDKey;
- (NSString)debugDescription;
- (_TtC14bookdatastored19CRDTModelSyncEntity)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
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
    sub_100084528(&qword_10026FC80, &qword_1001F5970);
    v4 = sub_1001C5F08();
  }

  swift_unknownObjectRetain();
  v7 = self;
  v8.super.super.isa = a3;
  v8._privacyDelegate = v4;
  CRDTModelSyncEntity.configure(from:withMergers:)(v8, v10);
  swift_unknownObjectRelease();
}

- (void)resolveConflictsFromRecord:(id)a3 withResolvers:(id)a4
{
  v4 = a4;
  if (a4)
  {
    sub_100084528(&qword_10026FC80, &qword_1001F5970);
    v4 = sub_1001C5F08();
  }

  v7 = a3;
  v8 = self;
  v10.value._rawValue = v4;
  CRDTModelSyncEntity.resolveConflicts(from:withResolvers:)(v7, v10);
}

+ (id)propertyIDKey
{
  v2 = sub_1001C5FE8();

  return v2;
}

- (_TtC14bookdatastored19CRDTModelSyncEntity)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRDTModelSyncEntity();
  return [(CRDTModelSyncEntity *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (void).cxx_construct
{
  v3 = OBJC_IVAR____TtC14bookdatastored19CRDTModelSyncEntity____lazy_storage___logger;
  v4 = sub_1001C5148();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
}

- (id)mutableCopy
{
  v3 = objc_allocWithZone(type metadata accessor for CRDTModelSync());
  v4 = self;
  result = [v3 initWithCloudData:v4];
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
  sub_1001C6018();

  v4 = sub_1001449DC(v2);
  v6 = v5;

  v11._countAndFlagsBits = v4;
  v11._object = v6;
  sub_1001C6138(v11);

  v7 = sub_1001C5FE8();

  return v7;
}

- (id)recordType
{
  v2 = self;
  v3 = [(CRDTModelSyncEntity *)v2 type];
  v4 = sub_1001C6018();
  v6 = v5;

  sub_1001C61E8();
  v7 = sub_1001C6088();
  v9 = v8;

  sub_10014074C(15, v7, v9, v4, v6);

  v10 = sub_1001C5FE8();

  return v10;
}

- (id)identifier
{
  v2 = self;
  sub_100144C20(v2);
  v4 = v3;

  if (v4)
  {
    v5 = sub_1001C5FE8();
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