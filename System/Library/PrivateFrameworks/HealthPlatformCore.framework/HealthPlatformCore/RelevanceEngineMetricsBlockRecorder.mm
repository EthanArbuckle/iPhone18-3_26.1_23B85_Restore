@interface RelevanceEngineMetricsBlockRecorder
- (_TtC18HealthPlatformCore35RelevanceEngineMetricsBlockRecorder)init;
- (void)recordTrainingMetrics:(id)a3 forInteraction:(id)a4;
@end

@implementation RelevanceEngineMetricsBlockRecorder

- (void)recordTrainingMetrics:(id)a3 forInteraction:(id)a4
{
  sub_228750A74();
  v5 = sub_2287CB140();
  v6 = sub_2287CB220();
  v8 = v7;
  v9 = self;
  sub_228750148(v5, v6, v8);
}

- (_TtC18HealthPlatformCore35RelevanceEngineMetricsBlockRecorder)init
{
  v2 = self + OBJC_IVAR____TtC18HealthPlatformCore35RelevanceEngineMetricsBlockRecorder_protectedState;
  *v2 = 0;
  *(v2 + 1) = MEMORY[0x277D84F90];
  v4.receiver = self;
  v4.super_class = type metadata accessor for RelevanceEngineMetricsBlockRecorder();
  return [(RelevanceEngineMetricsBlockRecorder *)&v4 init];
}

@end