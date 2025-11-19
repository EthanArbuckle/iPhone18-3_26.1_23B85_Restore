@interface HIDAnalyticsHistogramEvent
- (HIDAnalyticsHistogramEvent)initWithAttributes:(id)a3 description:(id)a4;
- (id)value;
- (void)addHistogramFieldWithSegments:(id)a3 segments:(_HIDAnalyticsHistogramSegmentConfig *)a4 count:(int64_t)a5;
@end

@implementation HIDAnalyticsHistogramEvent

- (id)value
{
  if (self->_isUpdated)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = [(HIDAnalyticsHistogramEventField *)self->_field fieldName];
    [v4 setObject:v5 forKeyedSubscript:@"Name"];

    [v4 setObject:&unk_2862D5FD0 forKeyedSubscript:@"Type"];
    v6 = [(HIDAnalyticsHistogramEventField *)self->_field value];
    [v4 setObject:v6 forKeyedSubscript:@"Value"];

    [v3 addObject:v4];
    self->_isUpdated = 0;
    if ([v3 count])
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HIDAnalyticsHistogramEvent)initWithAttributes:(id)a3 description:(id)a4
{
  v8.receiver = self;
  v8.super_class = HIDAnalyticsHistogramEvent;
  v4 = [(HIDAnalyticsEvent *)&v8 initWithAttributes:a3 description:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

- (void)addHistogramFieldWithSegments:(id)a3 segments:(_HIDAnalyticsHistogramSegmentConfig *)a4 count:(int64_t)a5
{
  v8 = a3;
  v9 = [[HIDAnalyticsHistogramEventField alloc] initWithAttributes:v8 segments:a4 count:a5];

  field = self->_field;
  self->_field = v9;
}

@end