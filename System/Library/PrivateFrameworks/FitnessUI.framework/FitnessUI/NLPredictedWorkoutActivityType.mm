@interface NLPredictedWorkoutActivityType
- (NSDictionary)baseMetadata;
- (id)uniqueIdentifier;
@end

@implementation NLPredictedWorkoutActivityType

- (id)uniqueIdentifier
{
  v5.receiver = self;
  v5.super_class = NLPredictedWorkoutActivityType;
  uniqueIdentifier = [(FIUIWorkoutActivityType *)&v5 uniqueIdentifier];
  v3 = [uniqueIdentifier stringByAppendingString:{@", predictedType"}];

  return v3;
}

- (NSDictionary)baseMetadata
{
  metadata = [(FIUIWorkoutActivityType *)self metadata];
  v3 = [metadata mutableCopy];

  [v3 removeObjectForKey:@"BackdatedStartDate"];
  [v3 removeObjectForKey:@"PredictionSessionUUID"];

  return v3;
}

@end