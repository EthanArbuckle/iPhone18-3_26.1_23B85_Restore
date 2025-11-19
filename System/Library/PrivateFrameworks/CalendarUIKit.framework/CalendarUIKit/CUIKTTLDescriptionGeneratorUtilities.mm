@interface CUIKTTLDescriptionGeneratorUtilities
+ (BOOL)ttlDescriptionShouldIncludeTrafficForHypothesis:(id)a3;
+ (BOOL)ttlDescriptionShouldIncludeTrafficForHypothesisThatSupportsLiveTraffic:(BOOL)a3 transportType:(int)a4 eta:(double)a5;
+ (id)descriptionForType:(unint64_t)a3;
+ (unint64_t)ttlDescriptionTypeForDate:(id)a3 hypothesis:(id)a4;
@end

@implementation CUIKTTLDescriptionGeneratorUtilities

+ (BOOL)ttlDescriptionShouldIncludeTrafficForHypothesis:(id)a3
{
  v4 = a3;
  [v4 estimatedTravelTime];
  v6 = v5;
  v7 = [v4 supportsLiveTraffic];
  v8 = [v4 transportType];

  return [a1 ttlDescriptionShouldIncludeTrafficForHypothesisThatSupportsLiveTraffic:v7 transportType:v8 eta:v6];
}

+ (BOOL)ttlDescriptionShouldIncludeTrafficForHypothesisThatSupportsLiveTraffic:(BOOL)a3 transportType:(int)a4 eta:(double)a5
{
  if (a4)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  return a5 > 300.0 && v5;
}

+ (unint64_t)ttlDescriptionTypeForDate:(id)a3 hypothesis:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([MEMORY[0x1E6966B28] date:v5 representsLatenessForHypothesis:v6])
  {
    v7 = 2;
  }

  else
  {
    v7 = [MEMORY[0x1E6966B28] date:v5 representsApproachingDepartureDateForHypothesis:v6] ^ 1;
  }

  return v7;
}

+ (id)descriptionForType:(unint64_t)a3
{
  if (a3 < 3)
  {
    return off_1E839A410[a3];
  }

  v5 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(CUIKTTLDescriptionGeneratorUtilities *)a3 descriptionForType:v5];
  }

  return &stru_1F4AA8958;
}

+ (void)descriptionForType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_ERROR, "Could not get description for type - error: Unexpected TTL description type: [%@]", &v4, 0xCu);
}

@end