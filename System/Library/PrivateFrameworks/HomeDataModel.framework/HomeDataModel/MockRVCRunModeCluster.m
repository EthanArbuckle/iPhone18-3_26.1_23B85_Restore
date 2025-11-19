@interface MockRVCRunModeCluster
- (_TtC13HomeDataModel21MockRVCRunModeCluster)initWithDevice:(id)a3 endpointID:(id)a4 queue:(id)a5;
- (void)changeToModeWithParams:(MTRRVCRunModeClusterChangeToModeParams *)a3 expectedValues:(NSArray *)a4 expectedValueInterval:(NSNumber *)a5 completion:(id)a6;
@end

@implementation MockRVCRunModeCluster

- (void)changeToModeWithParams:(MTRRVCRunModeClusterChangeToModeParams *)a3 expectedValues:(NSArray *)a4 expectedValueInterval:(NSNumber *)a5 completion:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_1D1E67E7C();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1D1E909A8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1D1E909B0;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_1D1A08124(0, 0, v14, &unk_1D1E909B8, v19);
}

- (_TtC13HomeDataModel21MockRVCRunModeCluster)initWithDevice:(id)a3 endpointID:(id)a4 queue:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end