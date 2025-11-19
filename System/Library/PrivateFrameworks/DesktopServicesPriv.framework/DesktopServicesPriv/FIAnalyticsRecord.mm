@interface FIAnalyticsRecord
- (FIAnalyticsRecord)initWithEventName:(id)a3;
- (id)objectForKey:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
@end

@implementation FIAnalyticsRecord

- (FIAnalyticsRecord)initWithEventName:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = FIAnalyticsRecord;
  v6 = [(FIAnalyticsRecord *)&v10 init];
  objc_storeStrong(&v6->_eventName, a3);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  eventDict = v6->_eventDict;
  v6->_eventDict = v7;

  return v6;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v3 = [(FIAnalyticsRecord *)self objectForKey:a3];

  return v3;
}

- (id)objectForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_eventDict objectForKeyedSubscript:a3];

  return v3;
}

@end