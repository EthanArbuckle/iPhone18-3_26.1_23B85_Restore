@interface MapsSyncStore
+ (_TtC8MapsSync13MapsSyncStore)sharedStore;
+ (id)withStoreWithConfig:(id)config;
- (_TtC8MapsSync13MapsSyncStore)init;
- (_TtC8MapsSync13MapsSyncStore)initWithConfig:(id)config;
- (void)deleteWithObjects:(NSArray *)objects completionHandler:(id)handler;
- (void)resetContainer;
- (void)saveWithObjects:(NSArray *)objects completionHandler:(id)handler;
- (void)setConfig:(id)config;
- (void)subscribe:(id)subscribe;
- (void)unsubscribe:(id)unsubscribe;
- (void)withManagedObjects:(id)objects block:(id)block;
@end

@implementation MapsSyncStore

+ (_TtC8MapsSync13MapsSyncStore)sharedStore
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDB0F2A8;

  return v3;
}

- (void)subscribe:(id)subscribe
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B62814C0(subscribe);
  swift_unknownObjectRelease();
}

- (void)setConfig:(id)config
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync13MapsSyncStore_config);
  *(&self->super.isa + OBJC_IVAR____TtC8MapsSync13MapsSyncStore_config) = config;
  configCopy = config;
}

+ (id)withStoreWithConfig:(id)config
{
  v4 = type metadata accessor for MapsSyncStore();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC8MapsSync13MapsSyncStore_shouldDeleteDuplicates;
  configCopy = config;
  v5[v6] = MapsSyncShouldDeleteDuplicates();
  v8 = OBJC_IVAR____TtC8MapsSync13MapsSyncStore_containerInstanceLock;
  *&v5[v8] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v5[OBJC_IVAR____TtC8MapsSync13MapsSyncStore_inDevelopmentStorage] = MEMORY[0x1E69E7CC8];
  *&v5[OBJC_IVAR____TtC8MapsSync13MapsSyncStore_config] = configCopy;
  v11.receiver = v5;
  v11.super_class = v4;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

- (_TtC8MapsSync13MapsSyncStore)initWithConfig:(id)config
{
  v4 = OBJC_IVAR____TtC8MapsSync13MapsSyncStore_shouldDeleteDuplicates;
  configCopy = config;
  *(&self->super.isa + v4) = MapsSyncShouldDeleteDuplicates();
  v6 = OBJC_IVAR____TtC8MapsSync13MapsSyncStore_containerInstanceLock;
  *(&self->super.isa + v6) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(&self->super.isa + OBJC_IVAR____TtC8MapsSync13MapsSyncStore_inDevelopmentStorage) = MEMORY[0x1E69E7CC8];
  *(&self->super.isa + OBJC_IVAR____TtC8MapsSync13MapsSyncStore_config) = configCopy;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MapsSyncStore();
  return [(MapsSyncStore *)&v8 init];
}

- (void)resetContainer
{
  if (qword_1EDB0F288 != -1)
  {
    swift_once();
  }

  v2 = sub_1B628170C(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  off_1EDB0F290 = v2;
}

- (void)saveWithObjects:(NSArray *)objects completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = objects;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B63BED34();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B63C61D0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B63C61D8;
  v15[5] = v14;
  objectsCopy = objects;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v10, &unk_1B63C61E0, v15);
}

- (void)deleteWithObjects:(NSArray *)objects completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = objects;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B63BED34();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B63C61C0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B63C5510;
  v15[5] = v14;
  objectsCopy = objects;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v10, &unk_1B63C5120, v15);
}

- (void)withManagedObjects:(id)objects block:(id)block
{
  v5 = _Block_copy(block);
  type metadata accessor for MapsSyncObject();
  v6 = sub_1B63BECA4();
  _Block_copy(v5);
  selfCopy = self;
  sub_1B6382E28(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)unsubscribe:(id)unsubscribe
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B62814B4();
  sub_1B634C490(unsubscribe);

  sub_1B628276C();
  sub_1B634C490(unsubscribe);

  swift_unknownObjectRelease();
}

- (_TtC8MapsSync13MapsSyncStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end