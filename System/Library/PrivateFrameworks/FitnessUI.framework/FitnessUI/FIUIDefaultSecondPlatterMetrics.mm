@interface FIUIDefaultSecondPlatterMetrics
+ (id)metricsForActivityType:(id)a3 metricsVersion:(int64_t)a4;
@end

@implementation FIUIDefaultSecondPlatterMetrics

+ (id)metricsForActivityType:(id)a3 metricsVersion:(int64_t)a4
{
  v5 = MEMORY[0x1E699C9C0];
  v6 = [a3 workoutActivityType];
  v7 = [v5 metricsForActivityType:v6 metricsVersion:a4];

  return v7;
}

@end