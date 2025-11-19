@interface StatisticsCollectionCalculatorDateIntervalFilterDataSource
- (BOOL)collectionCalculator:(id)a3 queryForInterval:(id)a4 error:(id *)a5 sampleHandler:(id)a6 mergeHandler:(id)a7;
- (_TtC19HealthBalanceDaemon58StatisticsCollectionCalculatorDateIntervalFilterDataSource)init;
@end

@implementation StatisticsCollectionCalculatorDateIntervalFilterDataSource

- (BOOL)collectionCalculator:(id)a3 queryForInterval:(id)a4 error:(id *)a5 sampleHandler:(id)a6 mergeHandler:(id)a7
{
  v12 = sub_22892DDC8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2288CD8F0(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v28[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = _Block_copy(a6);
  v22 = _Block_copy(a7);
  if (a4)
  {
    sub_22892DD68();
    (*(v13 + 32))(v20, v16, v12);
    v23 = (*(v13 + 56))(v20, 0, 1, v12);
  }

  else
  {
    v23 = (*(v13 + 56))(v20, 1, 1, v12);
  }

  v24 = MEMORY[0x28223BE20](v23);
  *&v28[-16] = v21;
  MEMORY[0x28223BE20](v24);
  *&v28[-16] = v22;
  v25 = a3;
  v26 = self;
  sub_2288EC974(v25, v20, sub_2288ED1C0, &v28[-32], sub_2288ED1F4, &v28[-32]);
  sub_2288CA8C4(v20);

  _Block_release(v22);
  _Block_release(v21);
  return 1;
}

- (_TtC19HealthBalanceDaemon58StatisticsCollectionCalculatorDateIntervalFilterDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end