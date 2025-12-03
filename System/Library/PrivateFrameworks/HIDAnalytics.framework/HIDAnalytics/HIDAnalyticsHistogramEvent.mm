@interface HIDAnalyticsHistogramEvent
- (HIDAnalyticsHistogramEvent)initWithAttributes:(id)attributes description:(id)description;
- (id)value;
- (void)addHistogramFieldWithSegments:(id)segments segments:(_HIDAnalyticsHistogramSegmentConfig *)a4 count:(int64_t)count;
@end

@implementation HIDAnalyticsHistogramEvent

- (id)value
{
  if (self->_isUpdated)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    fieldName = [(HIDAnalyticsHistogramEventField *)self->_field fieldName];
    [v4 setObject:fieldName forKeyedSubscript:@"Name"];

    [v4 setObject:&unk_2862D5FD0 forKeyedSubscript:@"Type"];
    value = [(HIDAnalyticsHistogramEventField *)self->_field value];
    [v4 setObject:value forKeyedSubscript:@"Value"];

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

- (HIDAnalyticsHistogramEvent)initWithAttributes:(id)attributes description:(id)description
{
  v8.receiver = self;
  v8.super_class = HIDAnalyticsHistogramEvent;
  v4 = [(HIDAnalyticsEvent *)&v8 initWithAttributes:attributes description:description];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

- (void)addHistogramFieldWithSegments:(id)segments segments:(_HIDAnalyticsHistogramSegmentConfig *)a4 count:(int64_t)count
{
  segmentsCopy = segments;
  v9 = [[HIDAnalyticsHistogramEventField alloc] initWithAttributes:segmentsCopy segments:a4 count:count];

  field = self->_field;
  self->_field = v9;
}

@end