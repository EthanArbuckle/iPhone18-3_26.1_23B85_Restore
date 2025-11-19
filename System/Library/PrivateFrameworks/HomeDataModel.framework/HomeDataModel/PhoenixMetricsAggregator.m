@interface PhoenixMetricsAggregator
- (void)timerFired;
@end

@implementation PhoenixMetricsAggregator

- (void)timerFired
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  v7 = sub_1D1E67E7C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;

  sub_1D17C6EF0(0, 0, v6, &unk_1D1E97FE0, v8);
}

@end