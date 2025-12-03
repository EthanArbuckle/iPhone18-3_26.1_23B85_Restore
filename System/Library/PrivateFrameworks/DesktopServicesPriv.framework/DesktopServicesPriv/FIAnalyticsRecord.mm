@interface FIAnalyticsRecord
- (FIAnalyticsRecord)initWithEventName:(id)name;
- (id)objectForKey:(id)key;
- (id)objectForKeyedSubscript:(id)subscript;
@end

@implementation FIAnalyticsRecord

- (FIAnalyticsRecord)initWithEventName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = FIAnalyticsRecord;
  v6 = [(FIAnalyticsRecord *)&v10 init];
  objc_storeStrong(&v6->_eventName, name);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  eventDict = v6->_eventDict;
  v6->_eventDict = v7;

  return v6;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v3 = [(FIAnalyticsRecord *)self objectForKey:subscript];

  return v3;
}

- (id)objectForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_eventDict objectForKeyedSubscript:key];

  return v3;
}

@end