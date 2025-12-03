@interface XPCClientProxy
- (_TtC11HomeKitCore14XPCClientProxy)init;
- (void)fetchModelsWithType:(int64_t)type completionHandler:(id)handler;
- (void)fetchModelsWithTypes:(id)types completionHandler:(id)handler;
- (void)registerObserver:(id)observer modelTypes:(id)types completionHandler:(id)handler;
@end

@implementation XPCClientProxy

- (_TtC11HomeKitCore14XPCClientProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)fetchModelsWithType:(int64_t)type completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = OBJC_IVAR____TtC11HomeKitCore14XPCClientProxy_homesStore;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_253126F58;
  *(v19 + 24) = v17;
  (*(v12 + 16))(v15, self + v18, v11);
  v20 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = type;
  (*(v12 + 32))(v21 + v20, v15, v11);
  v22 = sub_253148DE4();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_253151028;
  v23[5] = v21;
  v23[6] = sub_253126F60;
  v23[7] = v19;
  selfCopy = self;

  sub_253112858(0, 0, v10, &unk_253151038, v23);
}

- (void)fetchModelsWithTypes:(id)types completionHandler:(id)handler
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = _Block_copy(handler);
  v16 = sub_253148C94();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = OBJC_IVAR____TtC11HomeKitCore14XPCClientProxy_homesStore;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_253126D0C;
  *(v19 + 24) = v17;
  (*(v11 + 16))(v14, self + v18, v10);
  v20 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  (*(v11 + 32))(v21 + v20, v14, v10);
  v22 = sub_253148DE4();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_253151008;
  v23[5] = v21;
  v23[6] = sub_253126D14;
  v23[7] = v19;
  selfCopy = self;

  sub_253112858(0, 0, v9, &unk_253151018, v23);
}

- (void)registerObserver:(id)observer modelTypes:(id)types completionHandler:(id)handler
{
  selfCopy = self;
  observerCopy = observer;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &selfCopy - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &selfCopy - v14;
  v16 = _Block_copy(handler);
  v17 = sub_253148C94();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = OBJC_IVAR____TtC11HomeKitCore14XPCClientProxy_homesStore;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_253126020;
  *(v20 + 24) = v18;
  (*(v12 + 16))(v15, self + v19, v11);
  v21 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v17;
  (*(v12 + 32))(v23 + v21, v15, v11);
  *(v23 + v22) = observerCopy;
  v24 = sub_253148DE4();
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_253150FD0;
  v25[5] = v23;
  v25[6] = sub_253126028;
  v25[7] = v20;
  swift_unknownObjectRetain_n();
  v26 = selfCopy;

  sub_253112858(0, 0, v10, &unk_253150FE0, v25);
  swift_unknownObjectRelease();
}

@end