@interface CLSCalendarEventsCacheYear
- (BOOL)isEqual:(id)a3;
- (CLSCalendarEventsCacheYear)initWithYear:(int64_t)a3;
- (id)debugDescription;
@end

@implementation CLSCalendarEventsCacheYear

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
      v5 = [(CLSCalendarEventsCacheYear *)v4 year];
      v6 = v5 == [(CLSCalendarEventsCacheYear *)self year];
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
  year = self->_year;
  v7 = [(NSMutableSet *)self->_months debugDescription];
  v8 = [v3 stringWithFormat:@"<%@: %p> %ld, months %@", v5, self, year, v7];

  return v8;
}

- (CLSCalendarEventsCacheYear)initWithYear:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CLSCalendarEventsCacheYear;
  v4 = [(CLSCalendarEventsCacheYear *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    months = v4->_months;
    v4->_months = v5;

    v4->_year = a3;
  }

  return v4;
}

@end