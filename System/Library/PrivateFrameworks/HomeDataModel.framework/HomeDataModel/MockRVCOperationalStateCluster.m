@interface MockRVCOperationalStateCluster
- (_TtC13HomeDataModel30MockRVCOperationalStateCluster)initWithDevice:(id)a3 endpointID:(id)a4 queue:(id)a5;
- (void)goHomeWithExpectedValues:(NSArray *)a3 expectedValueInterval:(NSNumber *)a4 completion:(id)a5;
- (void)pauseWithExpectedValues:(NSArray *)a3 expectedValueInterval:(NSNumber *)a4 completion:(id)a5;
- (void)resumeWithExpectedValues:(NSArray *)a3 expectedValueInterval:(NSNumber *)a4 completion:(id)a5;
@end

@implementation MockRVCOperationalStateCluster

- (void)resumeWithExpectedValues:(NSArray *)a3 expectedValueInterval:(NSNumber *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1D1E67E7C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1D1E90940;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1D1E90948;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_1D1A08124(0, 0, v12, &unk_1D1E90950, v17);
}

- (void)pauseWithExpectedValues:(NSArray *)a3 expectedValueInterval:(NSNumber *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1D1E67E7C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1D1E90918;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1D1E90920;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_1D1A08124(0, 0, v12, &unk_1D1E90928, v17);
}

- (void)goHomeWithExpectedValues:(NSArray *)a3 expectedValueInterval:(NSNumber *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1D1E67E7C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1D1E908E8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1D1E908F0;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_1D1A08124(0, 0, v12, &unk_1D1E913F0, v17);
}

- (_TtC13HomeDataModel30MockRVCOperationalStateCluster)initWithDevice:(id)a3 endpointID:(id)a4 queue:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end