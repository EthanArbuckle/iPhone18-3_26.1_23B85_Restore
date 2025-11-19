@interface HDMobilityWalkingSteadinessAnalyticsNotificationEventDataSource
- (HDMobilityWalkingSteadinessAnalyticsNotificationEventDataSource)initWithProfile:(id)a3 category:(id)a4 value:(int64_t)a5 date:(id)a6 isShowingPregnancyContent:(BOOL)a7;
- (id)ageWithError:(id *)a3;
- (id)areHealthNotificationsAuthorizedWithError:(id *)a3;
- (id)biologicalSexWithError:(id *)a3;
- (id)daysSinceLastNotificationWithError:(id *)a3;
@end

@implementation HDMobilityWalkingSteadinessAnalyticsNotificationEventDataSource

- (HDMobilityWalkingSteadinessAnalyticsNotificationEventDataSource)initWithProfile:(id)a3 category:(id)a4 value:(int64_t)a5 date:(id)a6 isShowingPregnancyContent:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HDMobilityWalkingSteadinessAnalyticsNotificationEventDataSource;
  v15 = [(HDMobilityWalkingSteadinessAnalyticsNotificationEventDataSource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_profile, v12);
    objc_storeStrong(&v16->_category, a4);
    v16->_value = a5;
    objc_storeStrong(&v16->_date, a6);
    v16->_isShowingPregnancyContent = a7;
  }

  return v16;
}

- (id)ageWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [HDMobilityAnalyticsUtilities ageWithProfile:WeakRetained date:v5 error:a3];

  return v6;
}

- (id)biologicalSexWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [HDMobilityAnalyticsUtilities biologicalSexWithProfile:WeakRetained error:a3];

  return v5;
}

- (id)daysSinceLastNotificationWithError:(id *)a3
{
  v5 = HKMobilityWalkingSteadinessEventType();
  date = self->_date;
  v7 = HDSampleEntityPredicateForEndDate();
  v8 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v17 = 0;
  v10 = [v8 mostRecentSampleWithType:v5 profile:WeakRetained encodingOptions:0 predicate:v7 anchor:0 error:&v17];
  v11 = v17;

  if (v10)
  {
    v12 = MEMORY[0x277D11AA0];
    v13 = [v10 endDate];
    v14 = [v12 numberOfDaysBetweenStartDate:v13 endDate:self->_date];
    goto LABEL_8;
  }

  v13 = v11;
  if (v13)
  {
    if (a3)
    {
      v15 = v13;
      v14 = 0;
      *a3 = v13;
      goto LABEL_8;
    }

    _HKLogDroppedError();
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (id)areHealthNotificationsAuthorizedWithError:(id *)a3
{
  v3 = MEMORY[0x277CCABB0];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained notificationManager];
  v6 = [v3 numberWithBool:{objc_msgSend(v5, "areHealthNotificationsAuthorized")}];

  return v6;
}

@end