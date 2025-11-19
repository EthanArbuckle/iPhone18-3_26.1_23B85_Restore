@interface HMAccessoryCollectionSettingItem(COMeshAlarmAddOn_Internal)
- (id)_co_alarm;
- (id)co_alarm;
@end

@implementation HMAccessoryCollectionSettingItem(COMeshAlarmAddOn_Internal)

- (id)_co_alarm
{
  v1 = [a1 value];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v1 count])
  {
    v2 = [objc_alloc(MEMORY[0x277D29720]) initWithEncodedDictionary:v1];
    v3 = [v2 decodeObjectForKey:@"MTAlarms"];
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)co_alarm
{
  v1 = [a1 _co_alarm];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 co_sanitizedHomeKitAlarm];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end