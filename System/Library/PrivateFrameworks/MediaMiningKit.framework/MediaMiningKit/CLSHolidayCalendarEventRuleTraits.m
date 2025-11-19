@interface CLSHolidayCalendarEventRuleTraits
- (CLSHolidayCalendarEventRuleTraits)init;
- (id)description;
@end

@implementation CLSHolidayCalendarEventRuleTraits

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = CLSHolidayCalendarEventRuleTraits;
  v4 = [(CLSHolidayCalendarEventRuleTraits *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ location %lu, people %lu, numberOfPeople %lu, containsMe %d", v4, self->_locationTrait, self->_peopleTrait, self->_numberOfPeople, self->_containsMePerson];

  return v5;
}

- (CLSHolidayCalendarEventRuleTraits)init
{
  v3.receiver = self;
  v3.super_class = CLSHolidayCalendarEventRuleTraits;
  result = [(CLSHolidayCalendarEventRuleTraits *)&v3 init];
  if (result)
  {
    result->_containsMePerson = 1;
    result->_peopleTrait = 0;
    result->_locationTrait = 0;
    result->_numberOfPeople = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

@end