@interface HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventDataSource
- (HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventDataSource)initWithHealthStore:(id)store category:(id)category action:(id)action isShowingPregnancyContent:(BOOL)content;
- (id)_walkingSteadinessEventValueForCategory:(id)category;
- (id)notificationClassificationWithError:(id *)error;
- (id)notificationTypeWithError:(id *)error;
@end

@implementation HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventDataSource

- (HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventDataSource)initWithHealthStore:(id)store category:(id)category action:(id)action isShowingPregnancyContent:(BOOL)content
{
  storeCopy = store;
  categoryCopy = category;
  actionCopy = action;
  v17.receiver = self;
  v17.super_class = HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventDataSource;
  v14 = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventDataSource *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_healthStore, store);
    objc_storeStrong(&v15->_category, category);
    objc_storeStrong(&v15->_actionIdentifier, action);
    v15->_isShowingPregnancyContent = content;
  }

  return v15;
}

- (id)notificationClassificationWithError:(id *)error
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

- (id)notificationTypeWithError:(id *)error
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

- (id)_walkingSteadinessEventValueForCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:@"MobilityAppPlugin.WalkingSteadinessInitial.Low"])
  {
    v4 = &unk_2863D6BD8;
  }

  else if ([categoryCopy isEqualToString:@"MobilityAppPlugin.WalkingSteadinessInitial.VeryLow"])
  {
    v4 = &unk_2863D6BF0;
  }

  else if ([categoryCopy isEqualToString:@"MobilityAppPlugin.WalkingSteadinessRepeat.Low"])
  {
    v4 = &unk_2863D6C08;
  }

  else if ([categoryCopy isEqualToString:@"MobilityAppPlugin.WalkingSteadinessRepeat.VeryLow"])
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