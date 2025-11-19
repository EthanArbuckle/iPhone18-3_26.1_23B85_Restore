@interface CPAnalyticsEvent
+ (id)dayOfWeekFromDate:(id)a3;
+ (id)hourOfDayFromDate:(id)a3;
+ (void)initialize;
- (CPAnalyticsEvent)initWithName:(id)a3 payload:(id)a4 systemProperties:(id)a5;
- (id)copyRawPayload;
- (id)propertyForKey:(id)a3;
@end

@implementation CPAnalyticsEvent

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, &__block_literal_global_712);
  }
}

uint64_t __30__CPAnalyticsEvent_initialize__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEA80]);
  gregorianCalendar = [v0 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];

  return MEMORY[0x2821F96F8]();
}

- (id)copyRawPayload
{
  v2 = [(CPAnalyticsEvent *)self payload];
  v3 = [v2 copy];

  return v3;
}

- (id)propertyForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"cpa_common_hourOfDay"])
  {
    v5 = objc_opt_class();
    v6 = [(CPAnalyticsEvent *)self timestamp];
    v7 = [v5 hourOfDayFromDate:v6];
LABEL_5:
    v9 = v7;
LABEL_6:

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"cpa_common_dayOfWeek"])
  {
    v8 = objc_opt_class();
    v6 = [(CPAnalyticsEvent *)self timestamp];
    v7 = [v8 dayOfWeekFromDate:v6];
    goto LABEL_5;
  }

  v11 = [(CPAnalyticsEvent *)self payload];
  v9 = [v11 objectForKey:v4];

  if (!v9)
  {
    v6 = [(CPAnalyticsEvent *)self systemProperties];
    v12 = [(CPAnalyticsEvent *)self name];
    v13 = [(CPAnalyticsEvent *)self payload];
    v9 = [v6 propertyForKey:v4 forEventName:v12 payloadForSystemPropertyExtraction:v13];

    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

- (CPAnalyticsEvent)initWithName:(id)a3 payload:(id)a4 systemProperties:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CPAnalyticsEvent;
  v12 = [(CPAnalyticsEvent *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a3);
    objc_storeStrong(&v13->_payload, a4);
    v14 = +[CPAnalytics currentDate];
    timestamp = v13->_timestamp;
    v13->_timestamp = v14;

    objc_storeStrong(&v13->_systemProperties, a5);
  }

  return v13;
}

+ (id)dayOfWeekFromDate:(id)a3
{
  v3 = [gregorianCalendar component:512 fromDate:a3];
  v4 = MEMORY[0x277CCABB0];

  return [v4 numberWithInteger:v3];
}

+ (id)hourOfDayFromDate:(id)a3
{
  v3 = [gregorianCalendar component:32 fromDate:a3];
  v4 = MEMORY[0x277CCABB0];

  return [v4 numberWithInteger:v3];
}

@end