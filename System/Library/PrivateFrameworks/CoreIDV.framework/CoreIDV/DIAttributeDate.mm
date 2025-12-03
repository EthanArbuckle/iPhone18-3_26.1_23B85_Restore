@interface DIAttributeDate
- (BOOL)requireDay;
- (BOOL)requireMonth;
- (BOOL)requireYear;
- (DIAttributeDate)init;
- (DIAttributeDate)initWithCoder:(id)coder;
- (NSDate)defaultValue;
- (NSDate)getCurrentValue;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setCurrentValue:(id)value;
- (void)setDefaultValue:(id)value;
- (void)setRequireDay:(BOOL)day;
- (void)setRequireMonth:(BOOL)month;
- (void)setRequireYear:(BOOL)year;
@end

@implementation DIAttributeDate

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = DIAttributeDate;
  coderCopy = coder;
  [(DIAttribute *)&v5 encodeWithCoder:coderCopy];
  os_unfair_lock_lock(&self->super._lock);
  [coderCopy encodeBool:self->_requireDay forKey:{@"requireDay", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_requireMonth forKey:@"requireMonth"];
  [coderCopy encodeBool:self->_requireYear forKey:@"requireYear"];

  os_unfair_lock_unlock(&self->super._lock);
}

- (DIAttributeDate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = DIAttributeDate;
  v5 = [(DIAttribute *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_requireDay = [coderCopy decodeBoolForKey:@"requireDay"];
    v5->_requireMonth = [coderCopy decodeBoolForKey:@"requireMonth"];
    v5->_requireYear = [coderCopy decodeBoolForKey:@"requireYear"];
  }

  return v5;
}

- (DIAttributeDate)init
{
  v5.receiver = self;
  v5.super_class = DIAttributeDate;
  v2 = [(DIAttribute *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DIAttribute *)v2 setAttributeType:2];
    v3->_requireDay = 1;
    v3->_requireMonth = 1;
    v3->_requireYear = 1;
  }

  return v3;
}

- (void)setCurrentValue:(id)value
{
  v3.receiver = self;
  v3.super_class = DIAttributeDate;
  [(DIAttribute *)&v3 setCurrentValue:value];
}

- (void)setDefaultValue:(id)value
{
  v3.receiver = self;
  v3.super_class = DIAttributeDate;
  [(DIAttribute *)&v3 setDefaultValue:value];
}

- (void)setRequireDay:(BOOL)day
{
  os_unfair_lock_lock(&self->super._lock);
  self->_requireDay = day;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setRequireMonth:(BOOL)month
{
  os_unfair_lock_lock(&self->super._lock);
  self->_requireMonth = month;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setRequireYear:(BOOL)year
{
  os_unfair_lock_lock(&self->super._lock);
  self->_requireYear = year;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSDate)getCurrentValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeDate;
  getCurrentValue = [(DIAttribute *)&v4 getCurrentValue];

  return getCurrentValue;
}

- (NSDate)defaultValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeDate;
  defaultValue = [(DIAttribute *)&v4 defaultValue];

  return defaultValue;
}

- (BOOL)requireDay
{
  os_unfair_lock_lock(&self->super._lock);
  requireDay = self->_requireDay;
  os_unfair_lock_unlock(&self->super._lock);
  return requireDay;
}

- (BOOL)requireMonth
{
  os_unfair_lock_lock(&self->super._lock);
  requireMonth = self->_requireMonth;
  os_unfair_lock_unlock(&self->super._lock);
  return requireMonth;
}

- (BOOL)requireYear
{
  os_unfair_lock_lock(&self->super._lock);
  requireYear = self->_requireYear;
  os_unfair_lock_unlock(&self->super._lock);
  return requireYear;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:&stru_282E746B8];
  v11.receiver = self;
  v11.super_class = DIAttributeDate;
  v4 = [(DIAttribute *)&v11 description];
  [v3 appendFormat:@"%@", v4];

  os_unfair_lock_lock(&self->super._lock);
  if (self->_requireDay)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"requireDay: '%@'; ", v5];
  if (self->_requireMonth)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"requireMonth: '%@'; ", v6];
  if (self->_requireYear)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"requireYear: '%@'; ", v7];
  os_unfair_lock_unlock(&self->super._lock);
  defaultValue = [(DIAttributeDate *)self defaultValue];
  [v3 appendFormat:@"defaultValue: '%@'; ", defaultValue];

  getCurrentValue = [(DIAttributeDate *)self getCurrentValue];
  [v3 appendFormat:@"currentValue: '%@'; ", getCurrentValue];

  [v3 appendFormat:@">"];

  return v3;
}

@end