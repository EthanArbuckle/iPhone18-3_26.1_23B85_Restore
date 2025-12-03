@interface FIUIDefaultSecondPlatterMetrics
+ (id)metricsForActivityType:(id)type metricsVersion:(int64_t)version;
@end

@implementation FIUIDefaultSecondPlatterMetrics

+ (id)metricsForActivityType:(id)type metricsVersion:(int64_t)version
{
  v5 = MEMORY[0x1E699C9C0];
  workoutActivityType = [type workoutActivityType];
  v7 = [v5 metricsForActivityType:workoutActivityType metricsVersion:version];

  return v7;
}

@end