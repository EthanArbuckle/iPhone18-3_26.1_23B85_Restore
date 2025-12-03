@interface HKDefaultSleepDataSourceProvider
- (HKDefaultSleepDataSourceProvider)initWithCalendar:(id)calendar queryIdentifier:(id)identifier;
- (id)makeSleepDataSourceFromHealthStore:(id)store representativeDisplayType:(id)type;
- (id)makeSleepStagesDataSourceFromHealthStore:(id)store representativeDisplayType:(id)type;
@end

@implementation HKDefaultSleepDataSourceProvider

- (HKDefaultSleepDataSourceProvider)initWithCalendar:(id)calendar queryIdentifier:(id)identifier
{
  calendarCopy = calendar;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HKDefaultSleepDataSourceProvider;
  v9 = [(HKDefaultSleepDataSourceProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_calendar, calendar);
    objc_storeStrong(&v10->_queryIdentifier, identifier);
  }

  return v10;
}

- (id)makeSleepDataSourceFromHealthStore:(id)store representativeDisplayType:(id)type
{
  typeCopy = type;
  storeCopy = store;
  v8 = [HKSleepChartDataSource alloc];
  queryIdentifier = [(HKDefaultSleepDataSourceProvider *)self queryIdentifier];
  calendar = [(HKDefaultSleepDataSourceProvider *)self calendar];
  v11 = [(HKSleepChartDataSource *)v8 initWithHealthStore:storeCopy representativeDisplayType:typeCopy queryOptions:0 cacheIdentifier:@"HKSleepChartCacheIdentifierSleepConsistency" queryIdentifier:queryIdentifier calendar:calendar];

  return v11;
}

- (id)makeSleepStagesDataSourceFromHealthStore:(id)store representativeDisplayType:(id)type
{
  typeCopy = type;
  storeCopy = store;
  v8 = [HKSleepChartDataSource alloc];
  queryIdentifier = [(HKDefaultSleepDataSourceProvider *)self queryIdentifier];
  calendar = [(HKDefaultSleepDataSourceProvider *)self calendar];
  v11 = [(HKSleepChartDataSource *)v8 initWithHealthStore:storeCopy representativeDisplayType:typeCopy queryOptions:4 cacheIdentifier:@"HKSleepChartCacheIdentifierSleepStages" queryIdentifier:queryIdentifier calendar:calendar];

  return v11;
}

@end