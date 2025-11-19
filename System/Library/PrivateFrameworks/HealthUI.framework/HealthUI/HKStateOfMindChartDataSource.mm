@interface HKStateOfMindChartDataSource
- (HKStateOfMindChartDataSource)init;
- (HKStateOfMindChartDataSource)initWithDataType:(id)a3 healthStore:(id)a4;
- (HKStateOfMindChartDataSource)initWithDisplayType:(id)a3 healthStore:(id)a4;
- (HKStateOfMindChartDataSource)initWithDisplayType:(id)a3 healthStore:(id)a4 overlayPredicate:(id)a5;
- (id)chartPointsFromQueryData:(id)a3 dataIsFromRemoteSource:(BOOL)a4;
- (id)generateSharableQueryDataForRequest:(id)a3 healthStore:(id)a4 completionHandler:(id)a5;
- (id)mappingFunctionForContext:(id)a3;
- (id)queriesForRequest:(id)a3 completionHandler:(id)a4;
- (id)queryDescription;
@end

@implementation HKStateOfMindChartDataSource

- (HKStateOfMindChartDataSource)initWithDisplayType:(id)a3 healthStore:(id)a4 overlayPredicate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_1C3C9909C(v7, v8, a5);

  return v10;
}

- (id)queryDescription
{
  swift_getObjectType();
  v3 = self;
  sub_1C3D20CD4();
  MEMORY[0x1C692F800](58, 0xE100000000000000);
  MEMORY[0x1C692F800](*(&v3->super.super.isa + OBJC_IVAR___HKStateOfMindChartDataSource_debugIdentifier), *(&v3->super._healthStore + OBJC_IVAR___HKStateOfMindChartDataSource_debugIdentifier));

  v4 = sub_1C3D200C4();

  return v4;
}

- (id)queriesForRequest:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1C3C96308(v8, sub_1C3C34674, v7);

  sub_1C3C27CB4(0, &qword_1EC080DD8);
  v10 = sub_1C3D202A4();

  return v10;
}

- (id)mappingFunctionForContext:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1C3D20774();
  swift_unknownObjectRelease();
  v5 = [(HKStateOfMindChartDataSource *)v4 supportsChartQueryDataGeneration];
  __swift_destroy_boxed_opaque_existential_0(v10);
  if (v5)
  {

    v6 = 0;
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v10[4] = sub_1C3C99B94;
    v10[5] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1C3CE0EEC;
    v10[3] = &block_descriptor_26;
    v8 = _Block_copy(v10);

    v6 = v8;
  }

  return v6;
}

- (id)generateSharableQueryDataForRequest:(id)a3 healthStore:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  v13 = sub_1C3C96D84(v10, v11, sub_1C3C31468, v9);
  v15 = v14;

  if (v13)
  {
    v17[4] = v13;
    v17[5] = v15;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1C3C95F84;
    v17[3] = &block_descriptor_19;
    v13 = _Block_copy(v17);
  }

  return v13;
}

- (id)chartPointsFromQueryData:(id)a3 dataIsFromRemoteSource:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1C3C97D10(v6, a4);

  return v8;
}

- (HKStateOfMindChartDataSource)initWithDisplayType:(id)a3 healthStore:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HKStateOfMindChartDataSource)initWithDataType:(id)a3 healthStore:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HKStateOfMindChartDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end