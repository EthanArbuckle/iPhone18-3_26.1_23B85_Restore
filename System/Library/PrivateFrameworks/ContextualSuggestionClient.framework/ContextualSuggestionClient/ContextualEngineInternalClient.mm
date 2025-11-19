@interface ContextualEngineInternalClient
- (_TtC26ContextualSuggestionClient30ContextualEngineInternalClient)init;
- (void)fetchAllSnapshotsWithCompletion:(id)a3;
- (void)fetchSnapshotOverrideWithCompletion:(id)a3;
- (void)overrideWithSnapshot:(ATXContextualSuggestionSnapshot *)a3 completion:(id)a4;
- (void)updateWithCompletion:(id)a3;
@end

@implementation ContextualEngineInternalClient

- (void)fetchAllSnapshotsWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2441D8D9C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2441DB238;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2441DB240;
  v13[5] = v12;

  sub_2441AD2EC(0, 0, v8, &unk_2441DB248, v13);
}

- (void)fetchSnapshotOverrideWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2441D8D9C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2441DB218;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2441DB220;
  v13[5] = v12;

  sub_2441AD2EC(0, 0, v8, &unk_2441DB228, v13);
}

- (void)overrideWithSnapshot:(ATXContextualSuggestionSnapshot *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2441D8D9C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2441DB1F8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2441DB200;
  v15[5] = v14;
  v16 = a3;

  sub_2441AD2EC(0, 0, v10, &unk_2441DB208, v15);
}

- (void)updateWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDD5F30, &qword_2441DAEC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2441D8D9C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2441DB1B0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2441DB1C0;
  v13[5] = v12;

  sub_2441AD2EC(0, 0, v8, &unk_2441DB1D0, v13);
}

- (_TtC26ContextualSuggestionClient30ContextualEngineInternalClient)init
{
  swift_defaultActor_initialize();
  *&self->_anon_60[8] = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ContextualEngineInternalClient();
  return [(ContextualEngineInternalClient *)&v4 init];
}

@end