@interface DNDModeAssertionLifetime
+ (id)_secureCodingLifetimeClasses;
+ (id)lifetimeForUserRequest;
+ (id)lifetimeMatchingScheduleWithIdentifier:(id)identifier;
+ (id)lifetimeUntilEndOfCalendarEventWithUniqueID:(id)d occurrenceDate:(id)date;
+ (id)lifetimeUntilEndOfScheduleWithIdentifier:(id)identifier;
+ (id)lifetimeWithCalendarEventUniqueID:(id)d occurrenceDate:(id)date;
+ (id)lifetimeWithDateInterval:(id)interval;
+ (id)lifetimeWithDuration:(double)duration;
+ (id)lifetimeWithExplicitRegion:(id)region;
- (DNDModeAssertionLifetime)initWithCoder:(id)coder;
- (id)_init;
@end

@implementation DNDModeAssertionLifetime

+ (id)lifetimeWithDuration:(double)duration
{
  v4 = fmin(duration, 86400.0);
  v5 = objc_alloc(MEMORY[0x277CCA970]);
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 initWithStartDate:date duration:v4];

  v8 = [self lifetimeWithDateInterval:v7];

  return v8;
}

+ (id)lifetimeWithDateInterval:(id)interval
{
  intervalCopy = interval;
  v4 = [[DNDModeAssertionDateIntervalLifetime alloc] initWithDateInterval:intervalCopy];

  return v4;
}

+ (id)lifetimeUntilEndOfCalendarEventWithUniqueID:(id)d occurrenceDate:(id)date
{
  dateCopy = date;
  dCopy = d;
  v7 = [[DNDModeAssertionCalendarEventLifetime alloc] initWithEventUniqueID:dCopy occurrenceDate:dateCopy onlyDuringEvent:0];

  return v7;
}

+ (id)lifetimeWithCalendarEventUniqueID:(id)d occurrenceDate:(id)date
{
  dateCopy = date;
  dCopy = d;
  v7 = [[DNDModeAssertionCalendarEventLifetime alloc] initWithEventUniqueID:dCopy occurrenceDate:dateCopy onlyDuringEvent:1];

  return v7;
}

+ (id)lifetimeMatchingScheduleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[DNDModeAssertionScheduleLifetime alloc] initWithScheduleIdentifier:identifierCopy behavior:0];

  return v4;
}

+ (id)lifetimeUntilEndOfScheduleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[DNDModeAssertionScheduleLifetime alloc] initWithScheduleIdentifier:identifierCopy behavior:1];

  return v4;
}

+ (id)lifetimeWithExplicitRegion:(id)region
{
  regionCopy = region;
  v4 = [[DNDModeAssertionExplicitRegionLifetime alloc] initWithRegion:regionCopy];

  return v4;
}

+ (id)lifetimeForUserRequest
{
  _init = [(DNDModeAssertionLifetime *)[DNDModeAssertionUserRequestedLifetime alloc] _init];

  return _init;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = DNDModeAssertionLifetime;
  return [(DNDModeAssertionLifetime *)&v3 init];
}

- (DNDModeAssertionLifetime)initWithCoder:(id)coder
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