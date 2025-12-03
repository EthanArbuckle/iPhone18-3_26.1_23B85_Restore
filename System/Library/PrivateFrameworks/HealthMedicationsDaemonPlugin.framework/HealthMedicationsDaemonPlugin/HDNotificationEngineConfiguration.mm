@interface HDNotificationEngineConfiguration
- (HDNotificationEngineConfiguration)init;
- (HDNotificationEngineConfiguration)initWithCalendar:(id)calendar startGenerationDate:(id)date endGenerationDate:(id)generationDate;
@end

@implementation HDNotificationEngineConfiguration

- (HDNotificationEngineConfiguration)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDNotificationEngineConfiguration)initWithCalendar:(id)calendar startGenerationDate:(id)date endGenerationDate:(id)generationDate
{
  calendarCopy = calendar;
  dateCopy = date;
  generationDateCopy = generationDate;
  v18.receiver = self;
  v18.super_class = HDNotificationEngineConfiguration;
  v12 = [(HDNotificationEngineConfiguration *)&v18 init];
  if (v12)
  {
    v13 = [dateCopy copy];
    startGenerationDate = v12->_startGenerationDate;
    v12->_startGenerationDate = v13;

    v15 = [generationDateCopy copy];
    endGenerationDate = v12->_endGenerationDate;
    v12->_endGenerationDate = v15;

    objc_storeStrong(&v12->_calendar, calendar);
  }

  return v12;
}

@end