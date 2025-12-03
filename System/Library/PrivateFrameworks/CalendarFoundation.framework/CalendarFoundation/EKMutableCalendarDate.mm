@interface EKMutableCalendarDate
- (id)copyWithZone:(_NSZone *)zone;
- (void)addComponents:(id)components;
- (void)addDays:(int64_t)days;
- (void)addHours:(int64_t)hours;
- (void)addMinutes:(int64_t)minutes;
- (void)addMonths:(int64_t)months;
- (void)addSeconds:(int64_t)seconds;
- (void)addYears:(int64_t)years;
@end

@implementation EKMutableCalendarDate

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock(&self->super._lock);
  date = self->super._date;
  v5 = self->super._components;
  v6 = date;
  os_unfair_lock_unlock(&self->super._lock);
  v7 = [[EKCalendarDate alloc] initWithDate:v6 components:v5 calendar:self->super._calendar];

  return v7;
}

- (void)addYears:(int64_t)years
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = [(NSDate *)self->super._date dateByAddingYears:years inCalendar:self->super._calendar];
  date = self->super._date;
  self->super._date = v5;

  dateCacheKey = self->super._dateCacheKey;
  self->super._dateCacheKey = 0;

  components = self->super._components;
  self->super._components = 0;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)addMonths:(int64_t)months
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = [(NSDate *)self->super._date dateByAddingMonths:months inCalendar:self->super._calendar];
  date = self->super._date;
  self->super._date = v5;

  dateCacheKey = self->super._dateCacheKey;
  self->super._dateCacheKey = 0;

  components = self->super._components;
  self->super._components = 0;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)addDays:(int64_t)days
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = [(NSDate *)self->super._date dateByAddingDays:days inCalendar:self->super._calendar];
  date = self->super._date;
  self->super._date = v5;

  dateCacheKey = self->super._dateCacheKey;
  self->super._dateCacheKey = 0;

  components = self->super._components;
  self->super._components = 0;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)addHours:(int64_t)hours
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = [(NSDate *)self->super._date dateByAddingHours:hours inCalendar:self->super._calendar];
  date = self->super._date;
  self->super._date = v5;

  dateCacheKey = self->super._dateCacheKey;
  self->super._dateCacheKey = 0;

  components = self->super._components;
  self->super._components = 0;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)addMinutes:(int64_t)minutes
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = [(NSDate *)self->super._date dateByAddingMinutes:minutes inCalendar:self->super._calendar];
  date = self->super._date;
  self->super._date = v5;

  dateCacheKey = self->super._dateCacheKey;
  self->super._dateCacheKey = 0;

  components = self->super._components;
  self->super._components = 0;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)addSeconds:(int64_t)seconds
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = [(NSDate *)self->super._date dateByAddingTimeInterval:seconds];
  date = self->super._date;
  self->super._date = v5;

  dateCacheKey = self->super._dateCacheKey;
  self->super._dateCacheKey = 0;

  components = self->super._components;
  self->super._components = 0;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)addComponents:(id)components
{
  componentsCopy = components;
  os_unfair_lock_lock(&self->super._lock);
  v5 = [(NSCalendar *)self->super._calendar dateByAddingComponents:componentsCopy toDate:self->super._date options:0];

  date = self->super._date;
  self->super._date = v5;

  dateCacheKey = self->super._dateCacheKey;
  self->super._dateCacheKey = 0;

  components = self->super._components;
  self->super._components = 0;

  os_unfair_lock_unlock(&self->super._lock);
}

@end