@interface HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventDataSource
- (HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventDataSource)initWithHealthStore:(id)a3 category:(id)a4 action:(id)a5 isShowingPregnancyContent:(BOOL)a6;
- (id)_walkingSteadinessEventValueForCategory:(id)a3;
- (id)notificationClassificationWithError:(id *)a3;
- (id)notificationTypeWithError:(id *)a3;
@end

@implementation HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventDataSource

- (HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventDataSource)initWithHealthStore:(id)a3 category:(id)a4 action:(id)a5 isShowingPregnancyContent:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventDataSource;
  v14 = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventDataSource *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_healthStore, a3);
    objc_storeStrong(&v15->_category, a4);
    objc_storeStrong(&v15->_actionIdentifier, a5);
    v15->_isShowingPregnancyContent = a6;
  }

  return v15;
}

- (id)notificationClassificationWithError:(id *)a3
{
  v3 = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventDataSource *)self _walkingSteadinessEventValueForCategory:self->_category];
  v4 = v3;
  if (v3)
  {
    v5 = +[HKMobilityWalkingSteadinessAnalyticsUtilities payloadStringForWalkingSteadinessNotificationClassificationWithValue:](HKMobilityWalkingSteadinessAnalyticsUtilities, "payloadStringForWalkingSteadinessNotificationClassificationWithValue:", [v3 integerValue]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)notificationTypeWithError:(id *)a3
{
  v3 = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventDataSource *)self _walkingSteadinessEventValueForCategory:self->_category];
  v4 = v3;
  if (v3)
  {
    v5 = +[HKMobilityWalkingSteadinessAnalyticsUtilities payloadStringForWalkingSteadinessNotificationTypeWithValue:](HKMobilityWalkingSteadinessAnalyticsUtilities, "payloadStringForWalkingSteadinessNotificationTypeWithValue:", [v3 integerValue]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_walkingSteadinessEventValueForCategory:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"MobilityAppPlugin.WalkingSteadinessInitial.Low"])
  {
    v4 = &unk_2863D6BD8;
  }

  else if ([v3 isEqualToString:@"MobilityAppPlugin.WalkingSteadinessInitial.VeryLow"])
  {
    v4 = &unk_2863D6BF0;
  }

  else if ([v3 isEqualToString:@"MobilityAppPlugin.WalkingSteadinessRepeat.Low"])
  {
    v4 = &unk_2863D6C08;
  }

  else if ([v3 isEqualToString:@"MobilityAppPlugin.WalkingSteadinessRepeat.VeryLow"])
  {
    v4 = &unk_2863D6C20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end