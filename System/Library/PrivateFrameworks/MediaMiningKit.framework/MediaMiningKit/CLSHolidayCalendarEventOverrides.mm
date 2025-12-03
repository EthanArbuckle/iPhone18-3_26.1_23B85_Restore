@interface CLSHolidayCalendarEventOverrides
- (CLSHolidayCalendarEventOverrides)initWithUUID:(id)d countryCode:(id)code dateRuleOverrides:(id)overrides locationScore:(double)score sceneImportanceOverrides:(id)importanceOverrides;
@end

@implementation CLSHolidayCalendarEventOverrides

- (CLSHolidayCalendarEventOverrides)initWithUUID:(id)d countryCode:(id)code dateRuleOverrides:(id)overrides locationScore:(double)score sceneImportanceOverrides:(id)importanceOverrides
{
  dCopy = d;
  codeCopy = code;
  overridesCopy = overrides;
  importanceOverridesCopy = importanceOverrides;
  v20.receiver = self;
  v20.super_class = CLSHolidayCalendarEventOverrides;
  v17 = [(CLSHolidayCalendarEventOverrides *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_uuid, d);
    objc_storeStrong(&v18->_countryCode, code);
    objc_storeStrong(&v18->_dateRuleOverrides, overrides);
    v18->_locationScore = score;
    objc_storeStrong(&v18->_sceneImportanceOverrides, importanceOverrides);
  }

  return v18;
}

@end