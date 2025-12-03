@interface CLSCalendarEventsCacheDay
- (BOOL)isEqual:(id)equal;
- (CLSCalendarEventsCacheDay)initWithDay:(int64_t)day;
- (id)debugDescription;
@end

@implementation CLSCalendarEventsCacheDay

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CLSCalendarEventsCacheDay *)equalCopy day];
      v6 = v5 == [(CLSCalendarEventsCacheDay *)self day];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p> %ld, events %p", v5, self, self->_day, self->_events];

  return v6;
}

- (CLSCalendarEventsCacheDay)initWithDay:(int64_t)day
{
  v8.receiver = self;
  v8.super_class = CLSCalendarEventsCacheDay;
  v4 = [(CLSCalendarEventsCacheDay *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    events = v4->_events;
    v4->_events = v5;

    v4->_day = day;
  }

  return v4;
}

@end