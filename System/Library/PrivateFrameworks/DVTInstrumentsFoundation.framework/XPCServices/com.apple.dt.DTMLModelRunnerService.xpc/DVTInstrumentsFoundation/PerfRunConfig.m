@interface PerfRunConfig
- (_TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig)init;
- (_TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig)initWithExperimentIterations:(int64_t)a3 loadCount:(int64_t)a4 predictionCount:(int64_t)a5 maxPredictionTime:(int64_t)a6 maxIterationTime:(int64_t)a7 functionName:(id)a8;
@end

@implementation PerfRunConfig

- (_TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig)initWithExperimentIterations:(int64_t)a3 loadCount:(int64_t)a4 predictionCount:(int64_t)a5 maxPredictionTime:(int64_t)a6 maxIterationTime:(int64_t)a7 functionName:(id)a8
{
  if (a8)
  {
    v14 = sub_100026CC0();
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  *(&self->super.isa + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_experimentIterations) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_loadCount) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_predictionCount) = a5;
  *(&self->super.isa + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_maxPredictionTime) = a6;
  *(&self->super.isa + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_maxIterationTime) = a7;
  v16 = (self + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_functionName);
  *v16 = v14;
  v16[1] = v15;
  v18.receiver = self;
  v18.super_class = type metadata accessor for PerfRunConfig();
  return [(PerfRunConfig *)&v18 init];
}

- (_TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end