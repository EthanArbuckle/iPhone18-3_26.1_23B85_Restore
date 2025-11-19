@interface HKMobilityWalkingSteadinessAnalyticsUtilities
+ (id)payloadStringForWalkingSteadinessClassification:(int64_t)a3;
+ (id)payloadStringForWalkingSteadinessNotificationClassificationWithValue:(int64_t)a3;
+ (id)payloadStringForWalkingSteadinessNotificationInteractionWithActionIdentifier:(id)a3;
+ (id)payloadStringForWalkingSteadinessNotificationTypeWithValue:(int64_t)a3;
@end

@implementation HKMobilityWalkingSteadinessAnalyticsUtilities

+ (id)payloadStringForWalkingSteadinessClassification:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_2796D8338 + a3 - 1);
  }
}

+ (id)payloadStringForWalkingSteadinessNotificationClassificationWithValue:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [a1 payloadStringForWalkingSteadinessClassification:{qword_25195B9B8[a3 - 1], v3}];
  }

  return v5;
}

+ (id)payloadStringForWalkingSteadinessNotificationTypeWithValue:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_2796D8350 + a3 - 1);
  }
}

+ (id)payloadStringForWalkingSteadinessNotificationInteractionWithActionIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277CE20F0]])
  {
    v4 = @"dismiss";
  }

  else if ([v3 isEqual:*MEMORY[0x277CE20E8]])
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