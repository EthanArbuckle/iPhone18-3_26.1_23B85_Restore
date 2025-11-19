@interface DNDModeAssertionLifetime
+ (id)_secureCodingLifetimeClasses;
+ (id)lifetimeForUserRequest;
+ (id)lifetimeMatchingScheduleWithIdentifier:(id)a3;
+ (id)lifetimeUntilEndOfCalendarEventWithUniqueID:(id)a3 occurrenceDate:(id)a4;
+ (id)lifetimeUntilEndOfScheduleWithIdentifier:(id)a3;
+ (id)lifetimeWithCalendarEventUniqueID:(id)a3 occurrenceDate:(id)a4;
+ (id)lifetimeWithDateInterval:(id)a3;
+ (id)lifetimeWithDuration:(double)a3;
+ (id)lifetimeWithExplicitRegion:(id)a3;
- (DNDModeAssertionLifetime)initWithCoder:(id)a3;
- (id)_init;
@end

@implementation DNDModeAssertionLifetime

+ (id)lifetimeWithDuration:(double)a3
{
  v4 = fmin(a3, 86400.0);
  v5 = objc_alloc(MEMORY[0x277CCA970]);
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 initWithStartDate:v6 duration:v4];

  v8 = [a1 lifetimeWithDateInterval:v7];

  return v8;
}

+ (id)lifetimeWithDateInterval:(id)a3
{
  v3 = a3;
  v4 = [[DNDModeAssertionDateIntervalLifetime alloc] initWithDateInterval:v3];

  return v4;
}

+ (id)lifetimeUntilEndOfCalendarEventWithUniqueID:(id)a3 occurrenceDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[DNDModeAssertionCalendarEventLifetime alloc] initWithEventUniqueID:v6 occurrenceDate:v5 onlyDuringEvent:0];

  return v7;
}

+ (id)lifetimeWithCalendarEventUniqueID:(id)a3 occurrenceDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[DNDModeAssertionCalendarEventLifetime alloc] initWithEventUniqueID:v6 occurrenceDate:v5 onlyDuringEvent:1];

  return v7;
}

+ (id)lifetimeMatchingScheduleWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[DNDModeAssertionScheduleLifetime alloc] initWithScheduleIdentifier:v3 behavior:0];

  return v4;
}

+ (id)lifetimeUntilEndOfScheduleWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[DNDModeAssertionScheduleLifetime alloc] initWithScheduleIdentifier:v3 behavior:1];

  return v4;
}

+ (id)lifetimeWithExplicitRegion:(id)a3
{
  v3 = a3;
  v4 = [[DNDModeAssertionExplicitRegionLifetime alloc] initWithRegion:v3];

  return v4;
}

+ (id)lifetimeForUserRequest
{
  v2 = [(DNDModeAssertionLifetime *)[DNDModeAssertionUserRequestedLifetime alloc] _init];

  return v2;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = DNDModeAssertionLifetime;
  return [(DNDModeAssertionLifetime *)&v3 init];
}

- (DNDModeAssertionLifetime)initWithCoder:(id)a3
{
  [(DNDModeAssertionLifetime *)self doesNotRecognizeSelector:a2];

  return [(DNDModeAssertionLifetime *)self _init];
}

+ (id)_secureCodingLifetimeClasses
{
  if (_secureCodingLifetimeClasses_onceToken != -1)
  {
    +[DNDModeAssertionLifetime _secureCodingLifetimeClasses];
  }

  v3 = _secureCodingLifetimeClasses_lifetimeClasses;

  return v3;
}

uint64_t __56__DNDModeAssertionLifetime__secureCodingLifetimeClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v0 setWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0}];
  v6 = _secureCodingLifetimeClasses_lifetimeClasses;
  _secureCodingLifetimeClasses_lifetimeClasses = v5;

  return MEMORY[0x2821F96F8](v5, v6);
}

@end