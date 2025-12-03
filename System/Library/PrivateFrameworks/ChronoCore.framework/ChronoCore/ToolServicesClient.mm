@interface ToolServicesClient
- (_TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient)init;
- (void)allCachedSnapshotURLsWithCompletion:(id)completion;
- (void)expireLocationGracePeriods;
- (void)extensionInfoWithCompletion:(id)completion;
- (void)fetchWidgetSceneInfoWithCompletion:(id)completion;
- (void)resetCaches:(id)caches completion:(id)completion;
- (void)runReaper:(id)reaper completion:(id)completion;
- (void)subscribeToTaskServiceStateWithCompletion:(id)completion;
- (void)timelineForWidgetKey:(id)key completion:(id)completion;
@end

@implementation ToolServicesClient

- (_TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)resetCaches:(id)caches completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  cachesCopy = caches;
  selfCopy = self;
  sub_224B74F64(cachesCopy, sub_224B67834, v7);
}

- (void)expireLocationGracePeriods
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;

    v7[4] = sub_224B70DF4;
    v7[5] = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_224A39F40;
    v7[3] = &block_descriptor_122;
    v6 = _Block_copy(v7);
    BSDispatchMain();

    _Block_release(v6);
  }
}

- (void)allCachedSnapshotURLsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    selfCopy = self;

    v9 = swift_allocObject();
    *(v9 + 16) = sub_224B7AC0C;
    *(v9 + 24) = v5;
    v11[4] = sub_224B7AC14;
    v11[5] = v9;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_224A39F40;
    v11[3] = &block_descriptor_119_1;
    v10 = _Block_copy(v11);

    BSDispatchMain();
    _Block_release(v10);
  }

  else
  {
  }
}

- (void)extensionInfoWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = sub_224DAF128();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v12;
    v14[5] = sub_224B7AA68;
    v14[6] = v10;
    selfCopy = self;

    sub_224D8E744(0, 0, v8, &unk_224DB7620, v14);
  }

  else
  {
  }
}

- (void)timelineForWidgetKey:(id)key completion:(id)completion
{
  v6 = _Block_copy(completion);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    _Block_copy(v6);
    keyCopy = key;
    selfCopy = self;
    sub_224B781FC(keyCopy, v8, v6);
    _Block_release(v6);

    _Block_release(v6);
  }

  else
  {

    _Block_release(v6);
  }
}

- (void)runReaper:(id)reaper completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    reaperCopy = reaper;
    selfCopy = self;
    sub_224B79C74(reaperCopy, sub_224B7A828, v7);
  }

  else
  {
  }
}

- (void)fetchWidgetSceneInfoWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_224DAF128();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_224DB7590;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224DBC130;
  v13[5] = v12;
  selfCopy = self;
  sub_224C5195C(0, 0, v8, &unk_224DB75A0, v13);
}

- (void)subscribeToTaskServiceStateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_224B79FBC(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end