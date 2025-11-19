@interface CLSHolidayCalendarEventOverrides
- (CLSHolidayCalendarEventOverrides)initWithUUID:(id)a3 countryCode:(id)a4 dateRuleOverrides:(id)a5 locationScore:(double)a6 sceneImportanceOverrides:(id)a7;
@end

@implementation CLSHolidayCalendarEventOverrides

- (CLSHolidayCalendarEventOverrides)initWithUUID:(id)a3 countryCode:(id)a4 dateRuleOverrides:(id)a5 locationScore:(double)a6 sceneImportanceOverrides:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = CLSHolidayCalendarEventOverrides;
  v17 = [(CLSHolidayCalendarEventOverrides *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_uuid, a3);
    objc_storeStrong(&v18->_countryCode, a4);
    objc_storeStrong(&v18->_dateRuleOverrides, a5);
    v18->_locationScore = a6;
    objc_storeStrong(&v18->_sceneImportanceOverrides, a7);
  }

  return v18;
}

@end