@interface MockServiceAreaCluster
- (_TtC13HomeDataModel22MockServiceAreaCluster)initWithDevice:(id)device endpointID:(id)d queue:(id)queue;
- (void)selectAreasWithParams:(MTRServiceAreaClusterSelectAreasParams *)params expectedValues:(NSArray *)values expectedValueInterval:(NSNumber *)interval completion:(id)completion;
- (void)skipAreaWithParams:(MTRServiceAreaClusterSkipAreaParams *)params expectedValues:(NSArray *)values expectedValueInterval:(NSNumber *)interval completion:(id)completion;
@end

@implementation MockServiceAreaCluster

- (void)selectAreasWithParams:(MTRServiceAreaClusterSelectAreasParams *)params expectedValues:(NSArray *)values expectedValueInterval:(NSNumber *)interval completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = params;
  v16[3] = values;
  v16[4] = interval;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_1D1E67E7C();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1D1E91438;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1D1E91440;
  v19[5] = v18;
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  selfCopy = self;
  sub_1D1A08124(0, 0, v14, &unk_1D1E91448, v19);
}

- (void)skipAreaWithParams:(MTRServiceAreaClusterSkipAreaParams *)params expectedValues:(NSArray *)values expectedValueInterval:(NSNumber *)interval completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = params;
  v16[3] = values;
  v16[4] = interval;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_1D1E67E7C();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1D1E913D0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1D1E908F0;
  v19[5] = v18;
  paramsCopy = params;
  valuesCopy = values;
  intervalCopy = interval;
  selfCopy = self;
  sub_1D1A08124(0, 0, v14, &unk_1D1E913F0, v19);
}

- (_TtC13HomeDataModel22MockServiceAreaCluster)initWithDevice:(id)device endpointID:(id)d queue:(id)queue
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end