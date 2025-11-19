@interface HKQuery(FIUIQuerySupport)
+ (id)fiui_predicateForWorkoutsWithMetadataSwimmingLocationType:()FIUIQuerySupport;
+ (uint64_t)fiui_predicateForWorkoutsWithMetadataIndoor:()FIUIQuerySupport;
@end

@implementation HKQuery(FIUIQuerySupport)

+ (uint64_t)fiui_predicateForWorkoutsWithMetadataIndoor:()FIUIQuerySupport
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  return [MEMORY[0x1E696C378] predicateForObjectsWithMetadataKey:*MEMORY[0x1E696BB00] operatorType:v3 value:MEMORY[0x1E695E118]];
}

+ (id)fiui_predicateForWorkoutsWithMetadataSwimmingLocationType:()FIUIQuerySupport
{
  v0 = MEMORY[0x1E696C378];
  v1 = *MEMORY[0x1E696BB58];
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v3 = [v0 predicateForObjectsWithMetadataKey:v1 operatorType:4 value:v2];

  return v3;
}

@end