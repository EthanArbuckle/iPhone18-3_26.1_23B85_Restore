@interface HDMHLoggingPatternDetector
- (HDMHLoggingPatternDetector)initWithProfile:(id)profile;
- (HDProfile)profile;
- (id)isUnpleasantLoggingPatternDetectedWithCurrentDate:(id)date gregorianCalendar:(id)calendar pendingStateOfMind:(id)mind error:(id *)error;
@end

@implementation HDMHLoggingPatternDetector

- (HDMHLoggingPatternDetector)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDMHLoggingPatternDetector;
  v5 = [(HDMHLoggingPatternDetector *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (id)isUnpleasantLoggingPatternDetectedWithCurrentDate:(id)date gregorianCalendar:(id)calendar pendingStateOfMind:(id)mind error:(id *)error
{
  dateCopy = date;
  calendarCopy = calendar;
  mindCopy = mind;
  v13 = [dateCopy hk_dayIndexWithCalendar:calendarCopy];
  v14 = *MEMORY[0x277D28048];
  v15 = v13 - *MEMORY[0x277D28048];
  if ([mindCopy reflectiveInterval] == 2)
  {
    v16 = mindCopy;
  }

  else
  {
    v16 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v18 = [MEMORY[0x277D10880] predicateForReflectiveInterval:2];
  LOBYTE(v24) = 1;
  v19 = [[HDMHDaySummaryEnumerator alloc] initWithProfile:WeakRetained dayIndexRange:v15 + 1 gregorianCalendar:v14 predicate:calendarCopy pendingDailyStateOfMind:v18 ascending:v16, v24];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __123__HDMHLoggingPatternDetector_isUnpleasantLoggingPatternDetectedWithCurrentDate_gregorianCalendar_pendingStateOfMind_error___block_invoke;
  v25[3] = &unk_2798AAEF0;
  v25[4] = &v30;
  v25[5] = &v26;
  if ([(HDMHDaySummaryEnumerator *)v19 enumerateWithError:error handler:v25])
  {
    v21 = v31[3] >= *MEMORY[0x277D28058] && v27[3] < *MEMORY[0x277D28050];
    v22 = [MEMORY[0x277CCABB0] numberWithInt:v21];
  }

  else
  {
    v22 = 0;
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v22;
}

void __123__HDMHLoggingPatternDetector_isUnpleasantLoggingPatternDetectedWithCurrentDate_gregorianCalendar_pendingStateOfMind_error___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 dailyStateOfMind];
  v3 = [v6 valenceClassification] == 2 || objc_msgSend(v6, "valenceClassification") == 1 || objc_msgSend(v6, "valenceClassification") == 3;
  v4 = [v6 valenceClassification] == 6 || objc_msgSend(v6, "valenceClassification") == 7 || objc_msgSend(v6, "valenceClassification") == 5;
  if (v3 || v4)
  {
    v5 = 40;
    if (v3)
    {
      v5 = 32;
    }

    ++*(*(*(a1 + v5) + 8) + 24);
  }
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end