@interface HIDAnalyticsEvent
- (HIDAnalyticsEvent)initWithAttributes:(id)attributes description:(id)description;
- (id)description;
- (id)value;
- (void)addField:(id)field;
- (void)addHistogramFieldWithSegments:(id)segments segments:(_HIDAnalyticsHistogramSegmentConfig *)a4 count:(int64_t)count;
- (void)setIntegerValue:(unint64_t)value forField:(id)field;
- (void)setStringValue:(id)value forField:(id)field;
- (void)setValue:(id)value;
@end

@implementation HIDAnalyticsEvent

- (id)value
{
  if (self->_isUpdated)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    fields = self->_fields;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __26__HIDAnalyticsEvent_value__block_invoke;
    v9[3] = &unk_2796A1E80;
    v10 = v3;
    v5 = v3;
    [(NSMutableDictionary *)fields enumerateKeysAndObjectsUsingBlock:v9];
    self->_isUpdated = 0;
    self->_isLogged |= [v5 count] == 0;
    if ([v5 count])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __26__HIDAnalyticsEvent_value__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = MEMORY[0x277CBEB38];
  v6 = a2;
  v7 = objc_alloc_init(v5);
  [v7 setObject:v6 forKeyedSubscript:@"Name"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = &unk_2862D6000;
  }

  else
  {
    v8 = &unk_2862D6018;
  }

  [v7 setObject:v8 forKeyedSubscript:@"Type"];
  v9 = [v10 value];
  [v7 setObject:v9 forKeyedSubscript:@"Value"];

  [*(a1 + 32) addObject:v7];
}

- (HIDAnalyticsEvent)initWithAttributes:(id)attributes description:(id)description
{
  attributesCopy = attributes;
  descriptionCopy = description;
  v11.receiver = self;
  v11.super_class = HIDAnalyticsEvent;
  v8 = [(HIDAnalyticsEvent *)&v11 init];
  if (v8)
  {
    if (initWithAttributes_description__once != -1)
    {
      [HIDAnalyticsEvent initWithAttributes:description:];
    }

    [(HIDAnalyticsEvent *)v8 setName:attributesCopy];
    [(HIDAnalyticsEvent *)v8 setDesc:descriptionCopy];
    v9 = v8;
  }

  return v8;
}

uint64_t __52__HIDAnalyticsEvent_initWithAttributes_description___block_invoke()
{
  v0 = objc_alloc_init(HIDAnalyticsReporter);
  v1 = __hidAnalyticsReporter;
  __hidAnalyticsReporter = v0;

  v2 = __hidAnalyticsReporter;

  return [v2 start];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  desc = [(HIDAnalyticsEvent *)self desc];
  [v3 setObject:desc forKeyedSubscript:@"EventDescription"];

  value = [(HIDAnalyticsEvent *)self value];
  [v3 setObject:value forKeyedSubscript:@"EventValue"];

  v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:0 error:0];
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];

  return v7;
}

- (void)addField:(id)field
{
  fieldCopy = field;
  if (!self->_fields)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    fields = self->_fields;
    self->_fields = v4;
  }

  v6 = [[HIDAnalyticsEventField alloc] initWithName:fieldCopy];
  [(NSMutableDictionary *)self->_fields setObject:v6 forKeyedSubscript:fieldCopy];
}

- (void)setIntegerValue:(unint64_t)value forField:(id)field
{
  v6 = [(NSMutableDictionary *)self->_fields objectForKey:field];
  if (v6)
  {
    [v6 setIntegerValue:value];
    self->_isUpdated = 1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [__hidAnalyticsReporter dispatchAnalyticsForEvent:self];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setStringValue:(id)value forField:(id)field
{
  valueCopy = value;
  v6 = [(NSMutableDictionary *)self->_fields objectForKey:field];
  v7 = v6;
  if (v6)
  {
    [v6 setStringValue:valueCopy];
    self->_isUpdated = 1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [__hidAnalyticsReporter dispatchAnalyticsForEvent:self];
    }
  }
}

- (void)setValue:(id)value
{
  valueCopy = value;
  fields = self->_fields;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__HIDAnalyticsEvent_setValue___block_invoke;
  v7[3] = &unk_2796A1E80;
  v8 = valueCopy;
  v6 = valueCopy;
  [(NSMutableDictionary *)fields enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)addHistogramFieldWithSegments:(id)segments segments:(_HIDAnalyticsHistogramSegmentConfig *)a4 count:(int64_t)count
{
  segmentsCopy = segments;
  if (!self->_fields)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    fields = self->_fields;
    self->_fields = v8;
  }

  v10 = [[HIDAnalyticsHistogramEventField alloc] initWithAttributes:segmentsCopy segments:a4 count:count];
  [(NSMutableDictionary *)self->_fields setObject:v10 forKeyedSubscript:segmentsCopy];
}

@end