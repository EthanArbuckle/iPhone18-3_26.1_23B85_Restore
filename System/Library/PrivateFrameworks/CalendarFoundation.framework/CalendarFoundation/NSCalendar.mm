@interface NSCalendar
@end

@implementation NSCalendar

void __56__NSCalendar_CalClassAdditions__CalGregorianGMTCalendar__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEE8]);
  v1 = [v0 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v2 = CalGregorianGMTCalendar_gregorianGMTCalendar;
  CalGregorianGMTCalendar_gregorianGMTCalendar = v1;

  v3 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
  [CalGregorianGMTCalendar_gregorianGMTCalendar setTimeZone:v3];
}

void __66__NSCalendar_CalClassAdditions__sharedAutoupdatingCurrentCalendar__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) autoupdatingCurrentCalendar];
  v1 = [v3 copy];
  v2 = sharedAutoupdatingCurrentCalendar_autoupdatingCalendar;
  sharedAutoupdatingCurrentCalendar_autoupdatingCalendar = v1;
}

void __57__NSCalendar_CalClassAdditions__CalYearlessDateThreshold__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEE8]);
  v4 = [v0 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v1 = [objc_alloc(MEMORY[0x1E695DFE8]) initWithName:@"UTC"];
  [v4 setTimeZone:v1];
  v2 = [v4 dateWithEra:1 year:1605 month:1 day:1 hour:0 minute:0 second:0 nanosecond:0];
  v3 = CalYearlessDateThreshold_s_threshold;
  CalYearlessDateThreshold_s_threshold = v2;
}

uint64_t __71__NSCalendar_CalClassAdditions__CalOccurrencesForBirthday_inDateRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (v6 && (v10 = v6, [*(a1 + 32) endDate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v10, "CalIsAfterOrSameAsDate:", v7), v7, !v8))
  {
    if ([*(a1 + 32) containsDate:v10])
    {
      [*(a1 + 40) addObject:v10];
    }
  }

  else
  {
    *a4 = 1;
  }

  return MEMORY[0x1EEE66BB8]();
}

void __63__NSCalendar_CalClassAdditions__CalDateFromBirthdayComponents___block_invoke(uint64_t a1, void *a2, int a3, _BYTE *a4)
{
  v8 = a2;
  if (a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (v8)
    {
LABEL_9:
      *a4 = 1;
      goto LABEL_10;
    }

    v9 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __63__NSCalendar_CalClassAdditions__CalDateFromBirthdayComponents___block_invoke_cold_2(a1, v9);
    }

LABEL_8:

    goto LABEL_9;
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 24);
  *(v10 + 24) = v11 + 1;
  if (v11 >= 5)
  {
    v9 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __63__NSCalendar_CalClassAdditions__CalDateFromBirthdayComponents___block_invoke_cold_1(a1, v9);
    }

    goto LABEL_8;
  }

LABEL_10:
}

void __63__NSCalendar_CalClassAdditions__CalDateFromBirthdayComponents___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "BirthdayCal: enumerateDatesStartingAfterDate seems to be looping forever for birthday components: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __63__NSCalendar_CalClassAdditions__CalDateFromBirthdayComponents___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "BirthdayCal: unexpected nil date for birthday components: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end