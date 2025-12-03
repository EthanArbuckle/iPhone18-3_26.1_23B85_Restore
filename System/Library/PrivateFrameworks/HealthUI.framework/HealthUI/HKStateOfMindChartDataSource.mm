@interface HKStateOfMindChartDataSource
- (HKStateOfMindChartDataSource)init;
- (HKStateOfMindChartDataSource)initWithDataType:(id)type healthStore:(id)store;
- (HKStateOfMindChartDataSource)initWithDisplayType:(id)type healthStore:(id)store;
- (HKStateOfMindChartDataSource)initWithDisplayType:(id)type healthStore:(id)store overlayPredicate:(id)predicate;
- (id)chartPointsFromQueryData:(id)data dataIsFromRemoteSource:(BOOL)source;
- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler;
- (id)mappingFunctionForContext:(id)context;
- (id)queriesForRequest:(id)request completionHandler:(id)handler;
- (id)queryDescription;
@end

@implementation HKStateOfMindChartDataSource

- (HKStateOfMindChartDataSource)initWithDisplayType:(id)type healthStore:(id)store overlayPredicate:(id)predicate
{
  typeCopy = type;
  storeCopy = store;
  predicateCopy = predicate;
  v10 = sub_1C3C9909C(typeCopy, storeCopy, predicate);

  return v10;
}

- (id)queryDescription
{
  swift_getObjectType();
  selfCopy = self;
  sub_1C3D20CD4();
  MEMORY[0x1C692F800](58, 0xE100000000000000);
  MEMORY[0x1C692F800](*(&selfCopy->super.super.isa + OBJC_IVAR___HKStateOfMindChartDataSource_debugIdentifier), *(&selfCopy->super._healthStore + OBJC_IVAR___HKStateOfMindChartDataSource_debugIdentifier));

  v4 = sub_1C3D200C4();

  return v4;
}

- (id)queriesForRequest:(id)request completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  requestCopy = request;
  selfCopy = self;
  sub_1C3C96308(requestCopy, sub_1C3C34674, v7);

  sub_1C3C27CB4(0, &qword_1EC080DD8);
  v10 = sub_1C3D202A4();

  return v10;
}

- (id)mappingFunctionForContext:(id)context
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C3D20774();
  swift_unknownObjectRelease();
  supportsChartQueryDataGeneration = [(HKStateOfMindChartDataSource *)selfCopy supportsChartQueryDataGeneration];
  __swift_destroy_boxed_opaque_existential_0(v10);
  if (supportsChartQueryDataGeneration)
  {

    v6 = 0;
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = selfCopy;
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

- (id)generateSharableQueryDataForRequest:(id)request healthStore:(id)store completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  requestCopy = request;
  storeCopy = store;
  selfCopy = self;
  v13 = sub_1C3C96D84(requestCopy, storeCopy, sub_1C3C31468, v9);
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

- (id)chartPointsFromQueryData:(id)data dataIsFromRemoteSource:(BOOL)source
{
  dataCopy = data;
  selfCopy = self;
  v8 = sub_1C3C97D10(dataCopy, source);

  return v8;
}

- (HKStateOfMindChartDataSource)initWithDisplayType:(id)type healthStore:(id)store
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HKStateOfMindChartDataSource)initWithDataType:(id)type healthStore:(id)store
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