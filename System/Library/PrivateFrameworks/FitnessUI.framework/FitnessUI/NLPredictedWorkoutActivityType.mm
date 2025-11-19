@interface NLPredictedWorkoutActivityType
- (NSDictionary)baseMetadata;
- (id)uniqueIdentifier;
@end

@implementation NLPredictedWorkoutActivityType

- (id)uniqueIdentifier
{
  v5.receiver = self;
  v5.super_class = NLPredictedWorkoutActivityType;
  v2 = [(FIUIWorkoutActivityType *)&v5 uniqueIdentifier];
  v3 = [v2 stringByAppendingString:{@", predictedType"}];

  return v3;
}

- (NSDictionary)baseMetadata
{
  v2 = [(FIUIWorkoutActivityType *)self metadata];
  v3 = [v2 mutableCopy];

  [v3 removeObjectForKey:@"BackdatedStartDate"];
  [v3 removeObjectForKey:@"PredictionSessionUUID"];

  return v3;
}

@end