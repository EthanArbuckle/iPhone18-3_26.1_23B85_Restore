@interface EKMutableCalendarDate
- (id)copyWithZone:(_NSZone *)a3;
- (void)addComponents:(id)a3;
- (void)addDays:(int64_t)a3;
- (void)addHours:(int64_t)a3;
- (void)addMinutes:(int64_t)a3;
- (void)addMonths:(int64_t)a3;
- (void)addSeconds:(int64_t)a3;
- (void)addYears:(int64_t)a3;
@end

@implementation EKMutableCalendarDate

- (id)copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock(&self->super._lock);
  date = self->super._date;
  v5 = self->super._components;
  v6 = date;
  os_unfair_lock_unlock(&self->super._lock);
  v7 = [[EKCalendarDate alloc] initWithDate:v6 components:v5 calendar:self->super._calendar];

  return v7;
}

- (void)addYears:(int64_t)a3
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = [(NSDate *)self->super._date dateByAddingYears:a3 inCalendar:self->super._calendar];
  date = self->super._date;
  self->super._date = v5;

  dateCacheKey = self->super._dateCacheKey;
  self->super._dateCacheKey = 0;

  components = self->super._components;
  self->super._components = 0;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)addMonths:(int64_t)a3
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = [(NSDate *)self->super._date dateByAddingMonths:a3 inCalendar:self->super._calendar];
  date = self->super._date;
  self->super._date = v5;

  dateCacheKey = self->super._dateCacheKey;
  self->super._dateCacheKey = 0;

  components = self->super._components;
  self->super._components = 0;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)addDays:(int64_t)a3
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = [(NSDate *)self->super._date dateByAddingDays:a3 inCalendar:self->super._calendar];
  date = self->super._date;
  self->super._date = v5;

  dateCacheKey = self->super._dateCacheKey;
  self->super._dateCacheKey = 0;

  components = self->super._components;
  self->super._components = 0;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)addHours:(int64_t)a3
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = [(NSDate *)self->super._date dateByAddingHours:a3 inCalendar:self->super._calendar];
  date = self->super._date;
  self->super._date = v5;

  dateCacheKey = self->super._dateCacheKey;
  self->super._dateCacheKey = 0;

  components = self->super._components;
  self->super._components = 0;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)addMinutes:(int64_t)a3
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = [(NSDate *)self->super._date dateByAddingMinutes:a3 inCalendar:self->super._calendar];
  date = self->super._date;
  self->super._date = v5;

  dateCacheKey = self->super._dateCacheKey;
  self->super._dateCacheKey = 0;

  components = self->super._components;
  self->super._components = 0;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)addSeconds:(int64_t)a3
{
  os_unfair_lock_lock(&self->super._lock);
  v5 = [(NSDate *)self->super._date dateByAddingTimeInterval:a3];
  date = self->super._date;
  self->super._date = v5;

  dateCacheKey = self->super._dateCacheKey;
  self->super._dateCacheKey = 0;

  components = self->super._components;
  self->super._components = 0;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)addComponents:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super._lock);
  v5 = [(NSCalendar *)self->super._calendar dateByAddingComponents:v4 toDate:self->super._date options:0];

  date = self->super._date;
  self->super._date = v5;

  dateCacheKey = self->super._dateCacheKey;
  self->super._dateCacheKey = 0;

  components = self->super._components;
  self->super._components = 0;

  os_unfair_lock_unlock(&self->super._lock);
}

@end