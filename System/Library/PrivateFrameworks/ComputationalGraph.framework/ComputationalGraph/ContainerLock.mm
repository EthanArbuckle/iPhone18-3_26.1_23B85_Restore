@interface ContainerLock
- (NSOperationQueue)presentedItemOperationQueue;
- (NSURL)presentedItemURL;
- (_TtC18ComputationalGraph13ContainerLock)init;
- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)a3;
@end

@implementation ContainerLock

- (NSURL)presentedItemURL
{
  v3 = sub_1C6EE41A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_containerURL, v3);
  v8 = sub_1C6EE4100();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSOperationQueue)presentedItemOperationQueue
{
  if (qword_1EDEF6130 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDEF6138;

  return v3;
}

- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A70, &qword_1C6EF75A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1C6EE4DC0();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1C6EF75B8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1C6EF75C8;
  v13[5] = v12;
  v14 = self;
  sub_1C6ED8AC0(0, 0, v8, &unk_1C6EF75D8, v13);
}

- (_TtC18ComputationalGraph13ContainerLock)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end