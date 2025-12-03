@interface HKMobilityWalkingSteadinessAnalyticsUtilities
+ (id)payloadStringForWalkingSteadinessClassification:(int64_t)classification;
+ (id)payloadStringForWalkingSteadinessNotificationClassificationWithValue:(int64_t)value;
+ (id)payloadStringForWalkingSteadinessNotificationInteractionWithActionIdentifier:(id)identifier;
+ (id)payloadStringForWalkingSteadinessNotificationTypeWithValue:(int64_t)value;
@end

@implementation HKMobilityWalkingSteadinessAnalyticsUtilities

+ (id)payloadStringForWalkingSteadinessClassification:(int64_t)classification
{
  if ((classification - 1) > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_2796D8338 + classification - 1);
  }
}

+ (id)payloadStringForWalkingSteadinessNotificationClassificationWithValue:(int64_t)value
{
  if ((value - 1) > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [self payloadStringForWalkingSteadinessClassification:{qword_25195B9B8[value - 1], v3}];
  }

  return v5;
}

+ (id)payloadStringForWalkingSteadinessNotificationTypeWithValue:(int64_t)value
{
  if ((value - 1) > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_2796D8350 + value - 1);
  }
}

+ (id)payloadStringForWalkingSteadinessNotificationInteractionWithActionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x277CE20F0]])
  {
    v4 = @"dismiss";
  }

  else if ([identifierCopy isEqual:*MEMORY[0x277CE20E8]])
  {
    v4 = @"view data";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end