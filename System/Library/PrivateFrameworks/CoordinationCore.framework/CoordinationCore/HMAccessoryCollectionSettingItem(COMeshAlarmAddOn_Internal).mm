@interface HMAccessoryCollectionSettingItem(COMeshAlarmAddOn_Internal)
- (id)_co_alarm;
- (id)co_alarm;
@end

@implementation HMAccessoryCollectionSettingItem(COMeshAlarmAddOn_Internal)

- (id)_co_alarm
{
  value = [self value];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [value count])
  {
    v2 = [objc_alloc(MEMORY[0x277D29720]) initWithEncodedDictionary:value];
    v3 = [v2 decodeObjectForKey:@"MTAlarms"];
    firstObject = [v3 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)co_alarm
{
  _co_alarm = [self _co_alarm];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    co_sanitizedHomeKitAlarm = [_co_alarm co_sanitizedHomeKitAlarm];
  }

  else
  {
    co_sanitizedHomeKitAlarm = 0;
  }

  return co_sanitizedHomeKitAlarm;
}

@end