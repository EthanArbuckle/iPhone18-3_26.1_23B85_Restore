@interface HDNotificationEngineConfiguration
- (HDNotificationEngineConfiguration)init;
- (HDNotificationEngineConfiguration)initWithCalendar:(id)a3 startGenerationDate:(id)a4 endGenerationDate:(id)a5;
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

- (HDNotificationEngineConfiguration)initWithCalendar:(id)a3 startGenerationDate:(id)a4 endGenerationDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = HDNotificationEngineConfiguration;
  v12 = [(HDNotificationEngineConfiguration *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    startGenerationDate = v12->_startGenerationDate;
    v12->_startGenerationDate = v13;

    v15 = [v11 copy];
    endGenerationDate = v12->_endGenerationDate;
    v12->_endGenerationDate = v15;

    objc_storeStrong(&v12->_calendar, a3);
  }

  return v12;
}

@end