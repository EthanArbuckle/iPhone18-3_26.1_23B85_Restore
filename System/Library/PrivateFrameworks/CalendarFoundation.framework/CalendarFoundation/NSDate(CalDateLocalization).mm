@interface NSDate(CalDateLocalization)
- (__CFString)localizedStringWithFormat:()CalDateLocalization timeZone:;
- (id)localizedStringWithFormat:()CalDateLocalization;
@end

@implementation NSDate(CalDateLocalization)

- (id)localizedStringWithFormat:()CalDateLocalization
{
  v4 = a3;
  v5 = +[CalChronometry activeTimeZone];
  v6 = [self localizedStringWithFormat:v4 timeZone:v5];

  return v6;
}

- (__CFString)localizedStringWithFormat:()CalDateLocalization timeZone:
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  objc_sync_enter(v8);
  +[CalDateLocalization initializeFormatters];
  v9 = [CalDateLocalization _dateFormatterForKey:v6];
  v10 = v9;
  if (v9)
  {
    v11 = *MEMORY[0x1E695E5D8];
    v12 = CFDateFormatterCopyProperty(v9, *MEMORY[0x1E695E5D8]);
    if (v7 && ([v7 isEqualToTimeZone:v12] & 1) == 0)
    {
      CFDateFormatterSetProperty(v10, v11, v7);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    StringWithDate = CFDateFormatterCreateStringWithDate(0, v10, self);
  }

  else
  {
    v14 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [NSDate(CalDateLocalization) localizedStringWithFormat:v6 timeZone:v14];
    }

    StringWithDate = &stru_1F379FFA8;
  }

  objc_sync_exit(v8);

  return StringWithDate;
}

- (void)localizedStringWithFormat:()CalDateLocalization timeZone:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[NSDate(CalDateLocalization) localizedStringWithFormat:timeZone:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "%s ERROR: unable to localize date because no formatter exists for %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end