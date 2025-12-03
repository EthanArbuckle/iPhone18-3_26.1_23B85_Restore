@interface CRDTModelSyncEntity
+ (id)propertyIDKey;
- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt;
- (NSString)debugDescription;
- (_TtC13BookDataStore19CRDTModelSyncEntity)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (id)identifier;
- (id)mutableCopy;
- (id)recordType;
- (id)zoneName;
- (void).cxx_construct;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
@end

@implementation CRDTModelSyncEntity

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  if (mergers)
  {
    sub_1E4650534(&unk_1ECF747B0, &unk_1E471B820);
    mergersCopy = sub_1E470AE3C();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1E465FD84(data, mergersCopy);
  swift_unknownObjectRelease();
}

- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_1E46611DC(date, salt);
  swift_unknownObjectRelease();

  return v8 & 1;
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  resolversCopy = resolvers;
  if (resolvers)
  {
    sub_1E4650534(&unk_1ECF747B0, &unk_1E471B820);
    resolversCopy = sub_1E470AE3C();
  }

  recordCopy = record;
  selfCopy = self;
  sub_1E46614D0(recordCopy, resolversCopy);
}

+ (id)propertyIDKey
{
  v2 = sub_1E470AF0C();

  return v2;
}

- (_TtC13BookDataStore19CRDTModelSyncEntity)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRDTModelSyncEntity();
  return [(CRDTModelSyncEntity *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
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
  selfCopy = self;
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
  selfCopy = self;
  type = [(CRDTModelSyncEntity *)selfCopy type];
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
  selfCopy = self;
  sub_1E4663AB8(selfCopy);
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
  type = [(CRDTModelSyncEntity *)self type];

  return type;
}

@end