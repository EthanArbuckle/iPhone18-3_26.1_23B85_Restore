@interface CPAnalyticsEvent
+ (id)dayOfWeekFromDate:(id)date;
+ (id)hourOfDayFromDate:(id)date;
+ (void)initialize;
- (CPAnalyticsEvent)initWithName:(id)name payload:(id)payload systemProperties:(id)properties;
- (id)copyRawPayload;
- (id)propertyForKey:(id)key;
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
  payload = [(CPAnalyticsEvent *)self payload];
  v3 = [payload copy];

  return v3;
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"cpa_common_hourOfDay"])
  {
    v5 = objc_opt_class();
    timestamp = [(CPAnalyticsEvent *)self timestamp];
    v7 = [v5 hourOfDayFromDate:timestamp];
LABEL_5:
    v9 = v7;
LABEL_6:

    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:@"cpa_common_dayOfWeek"])
  {
    v8 = objc_opt_class();
    timestamp = [(CPAnalyticsEvent *)self timestamp];
    v7 = [v8 dayOfWeekFromDate:timestamp];
    goto LABEL_5;
  }

  payload = [(CPAnalyticsEvent *)self payload];
  v9 = [payload objectForKey:keyCopy];

  if (!v9)
  {
    timestamp = [(CPAnalyticsEvent *)self systemProperties];
    name = [(CPAnalyticsEvent *)self name];
    payload2 = [(CPAnalyticsEvent *)self payload];
    v9 = [timestamp propertyForKey:keyCopy forEventName:name payloadForSystemPropertyExtraction:payload2];

    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

- (CPAnalyticsEvent)initWithName:(id)name payload:(id)payload systemProperties:(id)properties
{
  nameCopy = name;
  payloadCopy = payload;
  propertiesCopy = properties;
  v17.receiver = self;
  v17.super_class = CPAnalyticsEvent;
  v12 = [(CPAnalyticsEvent *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_payload, payload);
    v14 = +[CPAnalytics currentDate];
    timestamp = v13->_timestamp;
    v13->_timestamp = v14;

    objc_storeStrong(&v13->_systemProperties, properties);
  }

  return v13;
}

+ (id)dayOfWeekFromDate:(id)date
{
  v3 = [gregorianCalendar component:512 fromDate:date];
  v4 = MEMORY[0x277CCABB0];

  return [v4 numberWithInteger:v3];
}

+ (id)hourOfDayFromDate:(id)date
{
  v3 = [gregorianCalendar component:32 fromDate:date];
  v4 = MEMORY[0x277CCABB0];

  return [v4 numberWithInteger:v3];
}

@end