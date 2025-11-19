@interface CLSCalendarEventsCacheMonth
- (BOOL)isEqual:(id)a3;
- (CLSCalendarEventsCacheMonth)initWithMonth:(int64_t)a3;
- (id)debugDescription;
@end

@implementation CLSCalendarEventsCacheMonth

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CLSCalendarEventsCacheMonth *)v4 month];
      v6 = v5 == [(CLSCalendarEventsCacheMonth *)self month];
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
  month = self->_month;
  v7 = [(NSMutableSet *)self->_days debugDescription];
  v8 = [v3 stringWithFormat:@"<%@: %p> %ld, days %@", v5, self, month, v7];

  return v8;
}

- (CLSCalendarEventsCacheMonth)initWithMonth:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CLSCalendarEventsCacheMonth;
  v4 = [(CLSCalendarEventsCacheMonth *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    days = v4->_days;
    v4->_days = v5;

    v4->_month = a3;
  }

  return v4;
}

@end