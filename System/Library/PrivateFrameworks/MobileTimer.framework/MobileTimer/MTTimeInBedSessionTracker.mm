@interface MTTimeInBedSessionTracker
+ (BOOL)_shouldUseBedtimeDismissedDateForAlarm:(id)alarm;
- (id)_createSleepSessionWithUserWakeTime:(id)time endReason:(unint64_t)reason;
- (id)processedSessionForSession:(id)session;
- (void)endSessionWithDate:(id)date reason:(unint64_t)reason;
@end

@implementation MTTimeInBedSessionTracker

+ (BOOL)_shouldUseBedtimeDismissedDateForAlarm:(id)alarm
{
  v29 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  bedtimeDismissedDate = [alarmCopy bedtimeDismissedDate];
  if (bedtimeDismissedDate && (v6 = bedtimeDismissedDate, v7 = [alarmCopy bedtimeDismissedAction], v6, v7 == 2))
  {
    bedtimeComponents = [alarmCopy bedtimeComponents];
    v9 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    bedtimeDismissedDate2 = [alarmCopy bedtimeDismissedDate];
    v11 = [v9 mtPreviousDateBeforeDate:bedtimeDismissedDate2 matchingComponents:bedtimeComponents];

    bedtimeDismissedDate3 = [alarmCopy bedtimeDismissedDate];
    v13 = [v9 mtNextDateAfterDate:bedtimeDismissedDate3 matchingComponents:bedtimeComponents];

    bedtimeDismissedDate4 = [alarmCopy bedtimeDismissedDate];
    [bedtimeDismissedDate4 timeIntervalSinceDate:v11];
    v16 = v15;

    bedtimeDismissedDate5 = [alarmCopy bedtimeDismissedDate];
    [v13 timeIntervalSinceDate:bedtimeDismissedDate5];
    v19 = v18;

    v20 = v16 < 4500.0 || v19 < 3600.0;
    if (!v20)
    {
      v21 = MTLogForCategory(7);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        bedtimeDismissedDate6 = [alarmCopy bedtimeDismissedDate];
        v25 = 138543618;
        selfCopy = self;
        v27 = 2112;
        v28 = bedtimeDismissedDate6;
        _os_log_impl(&dword_1B1F9F000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring user bedtime %@.", &v25, 0x16u);
      }
    }
  }

  else
  {
    v20 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)endSessionWithDate:(id)date reason:(unint64_t)reason
{
  v16 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v7 = MTLogForCategory(7);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MTSleepSessionEndReasonDescription(reason);
    v12 = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ stopping session with reason %{public}@", &v12, 0x16u);
  }

  v9 = [(MTTimeInBedSessionTracker *)self _createSleepSessionWithUserWakeTime:dateCopy endReason:reason];

  sleepSessionTrackerDelegate = [(MTSleepSessionTracker *)self sleepSessionTrackerDelegate];
  [sleepSessionTrackerDelegate sleepSessionTracker:self sessionDidComplete:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_createSleepSessionWithUserWakeTime:(id)time endReason:(unint64_t)reason
{
  v50 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  cachedAlarm = [(MTSleepSessionTracker *)self cachedAlarm];
  if ([objc_opt_class() _shouldUseBedtimeDismissedDateForAlarm:cachedAlarm] && (objc_msgSend(cachedAlarm, "bedtimeDismissedDate"), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = MTLogForCategory(7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ User bed time was: %@", buf, 0x16u);
    }
  }

  else
  {
    v9 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    bedtimeComponents = [cachedAlarm bedtimeComponents];
    v7 = [v9 mtPreviousDateBeforeDate:timeCopy matchingComponents:bedtimeComponents];

    v11 = MTLogForCategory(7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ User bed time unset.  Using: %@", buf, 0x16u);
    }

    if (!v7)
    {
      NSLog(&cfstr_UnexpectedNilU.isa);
      v34 = 0;
      goto LABEL_27;
    }
  }

  dismissedDate = [cachedAlarm dismissedDate];
  v13 = [timeCopy isEqualToDate:dismissedDate];
  if (reason)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  if ((v14 & 1) == 0)
  {
    NSLog(&cfstr_WakeTimesDonTA.isa);
  }

  v15 = MTLogForCategory(7);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = timeCopy;
    _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ User wake time was: %@", buf, 0x16u);
  }

  bedtimeComponents2 = [cachedAlarm bedtimeComponents];
  v38 = [v7 mtDateNearestMatchingComponents:bedtimeComponents2];

  dateComponents = [cachedAlarm dateComponents];
  v37 = [timeCopy mtDateNearestMatchingComponents:dateComponents];

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v18 = getHKMetadataKeyTimeZoneSymbolLoc_ptr;
  v43 = getHKMetadataKeyTimeZoneSymbolLoc_ptr;
  if (!getHKMetadataKeyTimeZoneSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getHKMetadataKeyTimeZoneSymbolLoc_block_invoke;
    v48 = &unk_1E7B0C600;
    v49 = &v40;
    v19 = HealthKitLibrary();
    v20 = dlsym(v19, "HKMetadataKeyTimeZone");
    *(v49[1] + 24) = v20;
    getHKMetadataKeyTimeZoneSymbolLoc_ptr = *(v49[1] + 24);
    v18 = v41[3];
  }

  _Block_object_dispose(&v40, 8);
  if (!v18)
  {
    [MTTimeInBedSessionTracker _createSleepSessionWithUserWakeTime:endReason:];
  }

  v21 = *v18;
  v44[0] = v21;
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  name = [systemTimeZone name];
  v46[0] = name;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v24 = get_HKPrivateMetadataKeySleepAlarmUserSetBedtimeSymbolLoc_ptr;
  v43 = get_HKPrivateMetadataKeySleepAlarmUserSetBedtimeSymbolLoc_ptr;
  if (!get_HKPrivateMetadataKeySleepAlarmUserSetBedtimeSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __get_HKPrivateMetadataKeySleepAlarmUserSetBedtimeSymbolLoc_block_invoke;
    v48 = &unk_1E7B0C600;
    v49 = &v40;
    v25 = HealthKitLibrary();
    v26 = dlsym(v25, "_HKPrivateMetadataKeySleepAlarmUserSetBedtime");
    *(v49[1] + 24) = v26;
    get_HKPrivateMetadataKeySleepAlarmUserSetBedtimeSymbolLoc_ptr = *(v49[1] + 24);
    v24 = v41[3];
  }

  _Block_object_dispose(&v40, 8);
  if (!v24)
  {
    [MTTimeInBedSessionTracker _createSleepSessionWithUserWakeTime:endReason:];
  }

  v27 = *v24;
  v44[1] = v27;
  v46[1] = v38;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v28 = get_HKPrivateMetadataKeySleepAlarmUserWakeTimeSymbolLoc_ptr;
  v43 = get_HKPrivateMetadataKeySleepAlarmUserWakeTimeSymbolLoc_ptr;
  if (!get_HKPrivateMetadataKeySleepAlarmUserWakeTimeSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __get_HKPrivateMetadataKeySleepAlarmUserWakeTimeSymbolLoc_block_invoke;
    v48 = &unk_1E7B0C600;
    v49 = &v40;
    v29 = HealthKitLibrary();
    v30 = dlsym(v29, "_HKPrivateMetadataKeySleepAlarmUserWakeTime");
    *(v49[1] + 24) = v30;
    get_HKPrivateMetadataKeySleepAlarmUserWakeTimeSymbolLoc_ptr = *(v49[1] + 24);
    v28 = v41[3];
  }

  _Block_object_dispose(&v40, 8);
  if (!v28)
  {
    [MTTimeInBedSessionTracker _createSleepSessionWithUserWakeTime:endReason:];
  }

  v45 = *v28;
  v46[2] = v37;
  v31 = MEMORY[0x1E695DF20];
  v32 = v45;
  v33 = [v31 dictionaryWithObjects:v46 forKeys:v44 count:3];
  v34 = [MTTimeInBedSession timeInBedSessionWithStartDate:v7 endDate:timeCopy intervals:0 endReason:reason metadata:v33];

  [v34 setNeedsAdditionalProcessing:1];
LABEL_27:

  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

- (id)processedSessionForSession:(id)session
{
  v58 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v37 = objc_opt_new();
  inBedDetector = [MEMORY[0x1E69978C8] inBedDetector];
  startDate = [sessionCopy startDate];
  v38 = sessionCopy;
  endDate = [sessionCopy endDate];
  v49 = 0;
  v36 = inBedDetector;
  v7 = [inBedDetector detectInBedBetweenBedtimeDate:startDate wakupDate:endDate error:&v49];
  v35 = v49;

  v8 = MTLogForCategory(7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 count];
    *buf = 138543618;
    selfCopy2 = self;
    v53 = 2048;
    v54 = v9;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Found %lu in-bed intervals", buf, 0x16u);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v46;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v45 + 1) + 8 * i);
        v15 = MTLogForCategory(7);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          startDate2 = [v14 startDate];
          endDate2 = [v14 endDate];
          *buf = 138543874;
          selfCopy2 = self;
          v53 = 2112;
          v54 = startDate2;
          v55 = 2112;
          v56 = endDate2;
          _os_log_impl(&dword_1B1F9F000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ _CDInBedDetection [%@ - %@]", buf, 0x20u);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v11);
  }

  v18 = v35;
  if (!obj || v35)
  {
    v32 = MTLogForCategory(7);
    v21 = v37;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [(MTTimeInBedSessionTracker *)self processedSessionForSession:v35, v32];
    }

    v31 = 0;
    v26 = v38;
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v19 = obj;
    v20 = [v19 countByEnumeratingWithState:&v41 objects:v50 count:16];
    v21 = v37;
    if (v20)
    {
      v22 = v20;
      v23 = *v42;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v42 != v23)
          {
            objc_enumerationMutation(v19);
          }

          _mt_dateInterval = [*(*(&v41 + 1) + 8 * j) _mt_dateInterval];
          [v37 na_safeAddObject:_mt_dateInterval];
        }

        v22 = [v19 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v22);
    }

    v26 = v38;
    startDate3 = [v38 startDate];
    endDate3 = [v38 endDate];
    endReason = [v38 endReason];
    metadata = [v38 metadata];
    v31 = [MTTimeInBedSession timeInBedSessionWithStartDate:startDate3 endDate:endDate3 intervals:v37 endReason:endReason metadata:metadata];

    [v31 setNeedsAdditionalProcessing:0];
  }

  v33 = *MEMORY[0x1E69E9840];

  return v31;
}

- (void)_createSleepSessionWithUserWakeTime:endReason:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *get_HKPrivateMetadataKeySleepAlarmUserWakeTime(void)"];
  [v0 handleFailureInFunction:v1 file:@"MTTimeInBedSessionTracker.m" lineNumber:22 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_createSleepSessionWithUserWakeTime:endReason:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *get_HKPrivateMetadataKeySleepAlarmUserSetBedtime(void)"];
  [v0 handleFailureInFunction:v1 file:@"MTTimeInBedSessionTracker.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_createSleepSessionWithUserWakeTime:endReason:.cold.3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getHKMetadataKeyTimeZone(void)"];
  [v0 handleFailureInFunction:v1 file:@"MTTimeInBedSessionTracker.m" lineNumber:20 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)processedSessionForSession:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ In bed detector failed to detect time-in-bed with error: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end