@interface CUIKTTLDescriptionGeneratorUtilities
+ (BOOL)ttlDescriptionShouldIncludeTrafficForHypothesis:(id)hypothesis;
+ (BOOL)ttlDescriptionShouldIncludeTrafficForHypothesisThatSupportsLiveTraffic:(BOOL)traffic transportType:(int)type eta:(double)eta;
+ (id)descriptionForType:(unint64_t)type;
+ (unint64_t)ttlDescriptionTypeForDate:(id)date hypothesis:(id)hypothesis;
@end

@implementation CUIKTTLDescriptionGeneratorUtilities

+ (BOOL)ttlDescriptionShouldIncludeTrafficForHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  [hypothesisCopy estimatedTravelTime];
  v6 = v5;
  supportsLiveTraffic = [hypothesisCopy supportsLiveTraffic];
  transportType = [hypothesisCopy transportType];

  return [self ttlDescriptionShouldIncludeTrafficForHypothesisThatSupportsLiveTraffic:supportsLiveTraffic transportType:transportType eta:v6];
}

+ (BOOL)ttlDescriptionShouldIncludeTrafficForHypothesisThatSupportsLiveTraffic:(BOOL)traffic transportType:(int)type eta:(double)eta
{
  if (type)
  {
    trafficCopy = 0;
  }

  else
  {
    trafficCopy = traffic;
  }

  return eta > 300.0 && trafficCopy;
}

+ (unint64_t)ttlDescriptionTypeForDate:(id)date hypothesis:(id)hypothesis
{
  dateCopy = date;
  hypothesisCopy = hypothesis;
  if ([MEMORY[0x1E6966B28] date:dateCopy representsLatenessForHypothesis:hypothesisCopy])
  {
    v7 = 2;
  }

  else
  {
    v7 = [MEMORY[0x1E6966B28] date:dateCopy representsApproachingDepartureDateForHypothesis:hypothesisCopy] ^ 1;
  }

  return v7;
}

+ (id)descriptionForType:(unint64_t)type
{
  if (type < 3)
  {
    return off_1E839A410[type];
  }

  v5 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(CUIKTTLDescriptionGeneratorUtilities *)type descriptionForType:v5];
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