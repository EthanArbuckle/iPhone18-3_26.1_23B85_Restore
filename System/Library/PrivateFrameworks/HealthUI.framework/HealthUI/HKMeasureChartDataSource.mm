@interface HKMeasureChartDataSource
- (HKMeasureChartDataSource)init;
- (HKMeasureChartDataSource)initWithDataType:(id)a3 healthStore:(id)a4;
- (HKMeasureChartDataSource)initWithDisplayType:(id)a3 healthStore:(id)a4;
- (id)chartPointsFromQueryData:(id)a3 dataIsFromRemoteSource:(BOOL)a4;
- (id)generateSharableQueryDataForRequest:(id)a3 healthStore:(id)a4 completionHandler:(id)a5;
- (id)mappingFunctionForContext:(id)a3;
- (id)queryDescription;
@end

@implementation HKMeasureChartDataSource

- (id)queryDescription
{
  swift_getObjectType();
  v3 = self;
  sub_1C3D20CD4();
  MEMORY[0x1C692F800](58, 0xE100000000000000);
  MEMORY[0x1C692F800](*(&v3->super.super.isa + OBJC_IVAR___HKMeasureChartDataSource_debugIdentifier), *(&v3->super._healthStore + OBJC_IVAR___HKMeasureChartDataSource_debugIdentifier));

  v4 = sub_1C3D200C4();

  return v4;
}

- (id)mappingFunctionForContext:(id)a3
{
  swift_unknownObjectRetain();
  sub_1C3D20774();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&v4);

  return 0;
}

- (id)generateSharableQueryDataForRequest:(id)a3 healthStore:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  v13 = sub_1C3C304AC(v10, sub_1C3C31468, v9);
  v15 = v14;

  if (v13)
  {
    v17[4] = v13;
    v17[5] = v15;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1C3C95F84;
    v17[3] = &block_descriptor_1;
    v13 = _Block_copy(v17);
  }

  return v13;
}

- (id)chartPointsFromQueryData:(id)a3 dataIsFromRemoteSource:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1C3C30E9C(v5);

  return v7;
}

- (HKMeasureChartDataSource)initWithDisplayType:(id)a3 healthStore:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HKMeasureChartDataSource)initWithDataType:(id)a3 healthStore:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HKMeasureChartDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end