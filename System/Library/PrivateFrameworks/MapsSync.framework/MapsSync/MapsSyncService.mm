@interface MapsSyncService
+ (_TtC8MapsSync15MapsSyncService)shared;
- (_TtC8MapsSync15MapsSyncService)init;
- (void)cloudKitSyncAllowedWithCompletionHandler:(id)handler;
- (void)lastSyncDateWithCompletionHandler:(id)handler;
- (void)prepareLibraryWithCompletionHandler:(id)handler;
@end

@implementation MapsSyncService

+ (_TtC8MapsSync15MapsSyncService)shared
{
  if (qword_1EB942F30 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB942F38;

  return v3;
}

- (_TtC8MapsSync15MapsSyncService)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MapsSyncService();
  return [(MapsSyncService *)&v3 init];
}

- (void)cloudKitSyncAllowedWithCompletionHandler:(id)handler
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
  v12[4] = &unk_1B63C6DD0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B63C6DD8;
  v13[5] = v12;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v8, &unk_1B63C6DE0, v13);
}

- (void)prepareLibraryWithCompletionHandler:(id)handler
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
  v12[4] = &unk_1B63C6DF0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B63C6DF8;
  v13[5] = v12;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v8, &unk_1B63C6E00, v13);
}

- (void)lastSyncDateWithCompletionHandler:(id)handler
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
  v12[4] = &unk_1B63C6DC0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B63C5510;
  v13[5] = v12;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v8, &unk_1B63C5120, v13);
}

@end