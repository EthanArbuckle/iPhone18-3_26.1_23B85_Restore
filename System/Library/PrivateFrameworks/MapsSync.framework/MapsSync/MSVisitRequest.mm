@interface MSVisitRequest
- (MSVisitRequest)init;
- (MSVisitRequest)initWithStore:(id)store;
- (id)fetchSyncAndReturnError:(id *)error;
- (id)fetchSyncWithOptions:(id)options error:(id *)error;
- (void)countWithSearchTerm:(NSString *)term topLevelCategories:(NSArray *)categories regions:(NSArray *)regions dateRanges:(NSArray *)ranges sortDescriptors:(NSArray *)descriptors range:(_TtC8MapsSync13MapsSyncRange *)range completionHandler:(id)handler;
- (void)fetchWithCompletionHandler:(id)handler;
- (void)fetchWithOptions:(_TtC8MapsSync20MapsSyncQueryOptions *)options completionHandler:(id)handler;
- (void)fetchWithSearchTerm:(NSString *)term topLevelCategories:(NSArray *)categories regions:(NSArray *)regions dateRanges:(NSArray *)ranges sortDescriptors:(NSArray *)descriptors range:(_TtC8MapsSync13MapsSyncRange *)range completionHandler:(id)handler;
@end

@implementation MSVisitRequest

- (MSVisitRequest)init
{
  if (qword_1EDB0F2A0 != -1)
  {
    selfCopy = self;
    swift_once();
    self = selfCopy;
  }

  v3 = qword_1EDB0F2A8;

  return [(MSVisitRequest *)self initWithStore:v3];
}

- (MSVisitRequest)initWithStore:(id)store
{
  v5 = type metadata accessor for Visit();
  *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store) = store;
  *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type) = v5;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MapsSyncRequest();
  storeCopy = store;
  return [(MapsSyncRequest *)&v8 init];
}

- (id)fetchSyncAndReturnError:(id *)error
{
  selfCopy = self;
  sub_1B637BEF8();

  type metadata accessor for Visit();
  v4 = sub_1B63BEC94();

  return v4;
}

- (id)fetchSyncWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  selfCopy = self;
  sub_1B637BEF8();

  type metadata accessor for Visit();
  v7 = sub_1B63BEC94();

  return v7;
}

- (void)fetchWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1B63BED34();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B63C60D8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B63C5530;
  v13[5] = v12;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v8, &unk_1B63C5320, v13);
}

- (void)fetchWithOptions:(_TtC8MapsSync20MapsSyncQueryOptions *)options completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = options;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B63BED34();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B63C60C8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B63C5510;
  v15[5] = v14;
  optionsCopy = options;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v10, &unk_1B63C5120, v15);
}

- (void)fetchWithSearchTerm:(NSString *)term topLevelCategories:(NSArray *)categories regions:(NSArray *)regions dateRanges:(NSArray *)ranges sortDescriptors:(NSArray *)descriptors range:(_TtC8MapsSync13MapsSyncRange *)range completionHandler:(id)handler
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v32 - v18;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  v21[2] = term;
  v21[3] = categories;
  v21[4] = regions;
  v21[5] = ranges;
  v21[6] = descriptors;
  v21[7] = range;
  v21[8] = v20;
  v21[9] = self;
  v22 = sub_1B63BED34();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1B63C6FF0;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_1B63C3DD0;
  v24[5] = v23;
  termCopy = term;
  categoriesCopy = categories;
  regionsCopy = regions;
  rangesCopy = ranges;
  descriptorsCopy = descriptors;
  rangeCopy = range;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v19, &unk_1B63C3DD8, v24);
}

- (void)countWithSearchTerm:(NSString *)term topLevelCategories:(NSArray *)categories regions:(NSArray *)regions dateRanges:(NSArray *)ranges sortDescriptors:(NSArray *)descriptors range:(_TtC8MapsSync13MapsSyncRange *)range completionHandler:(id)handler
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v32 - v18;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  v21[2] = term;
  v21[3] = categories;
  v21[4] = regions;
  v21[5] = ranges;
  v21[6] = descriptors;
  v21[7] = range;
  v21[8] = v20;
  v21[9] = self;
  v22 = sub_1B63BED34();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1B63C6FE0;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_1B63C5510;
  v24[5] = v23;
  termCopy = term;
  categoriesCopy = categories;
  regionsCopy = regions;
  rangesCopy = ranges;
  descriptorsCopy = descriptors;
  rangeCopy = range;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v19, &unk_1B63C5120, v24);
}

@end