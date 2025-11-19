@interface ItemExposureRegistry
- (NSArray)allExposedItemIDs;
- (_TtC8NewsCore20ItemExposureRegistry)init;
- (id)exposuresForItemIDs:(id)a3;
- (id)subsetOfItemIDs:(id)a3 accessedSinceDate:(id)a4;
- (id)toJSON;
- (void)dealloc;
- (void)eraseAll;
- (void)pruneToMaxCount:(int64_t)a3;
- (void)registerExposures:(id)a3;
- (void)removeExposureForItemID:(id)a3;
- (void)willAccessItemIDs:(id)a3;
@end

@implementation ItemExposureRegistry

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  sub_1B644FB98();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(ItemExposureRegistry *)&v5 dealloc];
}

- (void)registerExposures:(id)a3
{
  type metadata accessor for ItemExposure();
  v4 = sub_1B67D97BC();
  v5 = self;
  sub_1B6452114(v4, &unk_1F2DBCEE0, sub_1B6456524);
}

- (id)exposuresForItemIDs:(id)a3
{
  sub_1B67D97BC();
  v4 = self;
  sub_1B6451280();

  type metadata accessor for ItemExposure();
  v5 = sub_1B67D97AC();

  return v5;
}

- (void)removeExposureForItemID:(id)a3
{
  v4 = sub_1B67D964C();
  v6 = v5;
  v7 = self;
  sub_1B6451BC8(v4, v6);
}

- (NSArray)allExposedItemIDs
{
  v2 = self;
  sub_1B6451D10();

  v3 = sub_1B67D97AC();

  return v3;
}

- (void)willAccessItemIDs:(id)a3
{
  v4 = sub_1B67D97BC();
  v5 = self;
  sub_1B6452114(v4, &unk_1F2DBCF30, sub_1B64571C0);
}

- (id)subsetOfItemIDs:(id)a3 accessedSinceDate:(id)a4
{
  v5 = sub_1B67D877C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D97BC();
  sub_1B67D874C();
  v10 = self;
  sub_1B64524AC();

  (*(v6 + 8))(v9, v5);
  v11 = sub_1B67D97AC();

  return v11;
}

- (void)pruneToMaxCount:(int64_t)a3
{
  v4 = self;
  sub_1B6452B98(a3);
}

- (void)eraseAll
{
  v2 = self;
  sub_1B6452B98(0);
}

- (id)toJSON
{
  v2 = self;
  v3 = sub_1B64531D0();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_1B67D864C();
    sub_1B6457448(v3, v5);
    v6 = v7;
  }

  return v6;
}

- (_TtC8NewsCore20ItemExposureRegistry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end