@interface _ActivitySourceDelegateProvider
- (HKDateRangeDataUpdateDelegate)dateRangeDataUpdateDelegate;
- (_ActivitySourceDelegateProvider)initWithDataProvider:(id)provider activityValue:(int64_t)value displayTypeController:(id)controller unitPreferenceController:(id)preferenceController;
- (id)activitySummariesForDateRange:(id)range timeScope:(int64_t)scope;
- (void)activitySummaryDataProviderDidUpdateActivitySummaries:(id)summaries;
@end

@implementation _ActivitySourceDelegateProvider

- (_ActivitySourceDelegateProvider)initWithDataProvider:(id)provider activityValue:(int64_t)value displayTypeController:(id)controller unitPreferenceController:(id)preferenceController
{
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = _ActivitySourceDelegateProvider;
  v12 = [(_ActivitySourceDelegate *)&v15 initWithActivityValue:value displayTypeController:controller unitPreferenceController:preferenceController];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataProvider, provider);
    objc_storeWeak(&v13->_dateRangeDataUpdateDelegate, 0);
    [(HKActivitySummaryDataProvider *)v13->_dataProvider addObserver:v13];
  }

  return v13;
}

- (id)activitySummariesForDateRange:(id)range timeScope:(int64_t)scope
{
  rangeCopy = range;
  dataProvider = [(_ActivitySourceDelegateProvider *)self dataProvider];
  v8 = [dataProvider activitySummariesForDateRange:rangeCopy timeScope:scope];

  return v8;
}

- (void)activitySummaryDataProviderDidUpdateActivitySummaries:(id)summaries
{
  dateRangeDataUpdateDelegate = [(_ActivitySourceDelegateProvider *)self dateRangeDataUpdateDelegate];
  [dateRangeDataUpdateDelegate dateRangeDataUpdated];
}

- (HKDateRangeDataUpdateDelegate)dateRangeDataUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dateRangeDataUpdateDelegate);

  return WeakRetained;
}

@end