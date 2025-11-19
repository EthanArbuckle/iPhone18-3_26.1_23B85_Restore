@interface FCCDateProvider
- (FCCDateProvider)init;
- (id)coachingCalendar;
- (id)coachingDate;
@end

@implementation FCCDateProvider

- (id)coachingDate
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"CoachingDate"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  }

  v4 = v3;

  return v4;
}

- (FCCDateProvider)init
{
  v7.receiver = self;
  v7.super_class = FCCDateProvider;
  v2 = [(FCCDateProvider *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEBD0]);
    v4 = [v3 initWithSuiteName:*MEMORY[0x277CCE4C8]];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v4;
  }

  return v2;
}

- (id)coachingCalendar
{
  v2 = [(NSUserDefaults *)self->_userDefaults stringForKey:@"CoachingCalendarIdentifier"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA80]) initWithCalendarIdentifier:v2];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = [MEMORY[0x277CBEA80] currentCalendar];
    }

    v6 = v5;
  }

  else
  {
    v6 = [MEMORY[0x277CBEA80] currentCalendar];
  }

  return v6;
}

@end