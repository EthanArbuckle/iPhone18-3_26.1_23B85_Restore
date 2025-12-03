@interface PerfRunConfig
- (_TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig)init;
- (_TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig)initWithExperimentIterations:(int64_t)iterations loadCount:(int64_t)count predictionCount:(int64_t)predictionCount maxPredictionTime:(int64_t)time maxIterationTime:(int64_t)iterationTime functionName:(id)name;
@end

@implementation PerfRunConfig

- (_TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig)initWithExperimentIterations:(int64_t)iterations loadCount:(int64_t)count predictionCount:(int64_t)predictionCount maxPredictionTime:(int64_t)time maxIterationTime:(int64_t)iterationTime functionName:(id)name
{
  if (name)
  {
    v14 = sub_100026CC0();
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  *(&self->super.isa + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_experimentIterations) = iterations;
  *(&self->super.isa + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_loadCount) = count;
  *(&self->super.isa + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_predictionCount) = predictionCount;
  *(&self->super.isa + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_maxPredictionTime) = time;
  *(&self->super.isa + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13PerfRunConfig_maxIterationTime) = iterationTime;
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