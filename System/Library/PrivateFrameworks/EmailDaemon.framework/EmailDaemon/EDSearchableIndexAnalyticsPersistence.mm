@interface EDSearchableIndexAnalyticsPersistence
+ (id)tablesAndForeignKeysToResolve:(id *)resolve associationsToResolve:(id *)toResolve;
- (EDSearchableIndexAnalyticsPersistence)init;
- (EDSearchableIndexAnalyticsPersistence)initWithDatabase:(id)database;
- (id)willEnqueueItems:(id)items fromBacklog:(BOOL)backlog;
- (int64_t)batchDidStart:(id)start;
- (void)batchDidEnd:(int64_t)end error:(id)error;
- (void)didDonateItems:(id)items;
- (void)didDropIndex;
- (void)sendAnalyticsEvents;
@end

@implementation EDSearchableIndexAnalyticsPersistence

+ (id)tablesAndForeignKeysToResolve:(id *)resolve associationsToResolve:(id *)toResolve
{
  sub_1C6431CE0(resolve, toResolve);
  sub_1C6401D00(0, &qword_1EDC93930, 0x1E699B958);
  v4 = sub_1C645CA04();

  return v4;
}

- (EDSearchableIndexAnalyticsPersistence)initWithDatabase:(id)database
{
  *(&self->super.isa + OBJC_IVAR___EDSearchableIndexAnalyticsPersistence_database) = database;
  v5.receiver = self;
  v5.super_class = EDSearchableIndexAnalyticsPersistence;
  databaseCopy = database;
  return [(EDSearchableIndexAnalyticsPersistence *)&v5 init];
}

- (int64_t)batchDidStart:(id)start
{
  v4 = sub_1C645C674();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Batch.ID();
  Description = v22[-1].Description;
  v10 = Description[8];
  MEMORY[0x1EEE9AC00](v22);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Batch.Counts();
  v13 = v21[-1].Description;
  v14 = v13[8];
  MEMORY[0x1EEE9AC00](v21);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1C3EE0, &qword_1C6473800);
  v17 = sub_1C645CA14();
  selfCopy = self;
  sub_1C64240BC(v17);
  sub_1C645C664();
  sub_1C642490C(v16, v8, v12);
  (*(v5 + 8))(v8, v4);
  v19 = Batch.ID.rawValue.getter();

  (Description[1])(v12, v22);
  (v13[1])(v16, v21);
  return v19;
}

- (void)batchDidEnd:(int64_t)end error:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_1C6424E38(end, error);
}

- (id)willEnqueueItems:(id)items fromBacklog:(BOOL)backlog
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1C3EE0, &qword_1C6473800);
  v9[2] = sub_1C645CA14();
  v9[3] = self;
  backlogCopy = backlog;
  selfCopy = self;
  sub_1C64258D4(sub_1C6431ACC, v9);

  type metadata accessor for EDEnqueuedDonation();
  v7 = sub_1C645CA04();

  return v7;
}

- (void)didDonateItems:(id)items
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1C3EE0, &qword_1C6473800);
  v4 = sub_1C645CA14();
  selfCopy = self;
  sub_1C6426BF8(v4);
}

- (void)didDropIndex
{
  v3 = sub_1C645C674();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  selfCopy = self;
  sub_1C645C664();
  sub_1C64279C4(v8, v10);

  v12 = *(v4 + 8);
  v12(v8, v3);
  v12(v10, v3);
}

- (void)sendAnalyticsEvents
{
  selfCopy = self;
  sub_1C6427C8C();
}

- (EDSearchableIndexAnalyticsPersistence)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end