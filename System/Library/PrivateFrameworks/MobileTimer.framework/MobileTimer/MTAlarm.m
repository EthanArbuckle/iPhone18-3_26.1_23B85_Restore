@interface MTAlarm
+ (BOOL)_date:(id)a3 isOnDay:(int64_t)a4 calendar:(id)a5;
+ (BOOL)_isInternalBuild;
+ (MTAlarm)alarmWithHour:(unint64_t)a3 minute:(unint64_t)a4;
+ (id)alarm;
+ (id)mostRecentlyUpdatedAlarmForAlarms:(id)a3;
+ (id)propertiesAffectingBedtime;
+ (id)propertiesAffectingNotification;
+ (id)propertiesAffectingSessions;
+ (id)propertiesAffectingSnooze;
+ (id)propertiesAffectingSync;
+ (id)propertiesAffectingWaketime;
+ (id)sleepAlarmWithHour:(int64_t)a3 minute:(int64_t)a4;
+ (id)sleepAlarmWithHour:(int64_t)a3 minute:(int64_t)a4 bedtimeHour:(int64_t)a5 bedtimeMinute:(int64_t)a6;
+ (id)sleepAlarmWithHour:(int64_t)a3 minute:(int64_t)a4 year:(int64_t)a5 month:(int64_t)a6 day:(int64_t)a7 bedtimeHour:(int64_t)a8 bedtimeMinute:(int64_t)a9;
+ (id)sleepAlarmWithId:(id)a3;
+ (id)sleepAlarmWithSchedule:(unint64_t)a3;
+ (id)sleepScheduleString:(unint64_t)byte7;
- (BOOL)_isEqualToAlarm:(id)a3 checkLastModified:(BOOL)a4;
- (BOOL)confirmedLastBedtimeReminder;
- (BOOL)isBedtimeSnoozed;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFiring;
- (BOOL)isSnoozed;
- (BOOL)overridesAlarm:(id)a3 trigger:(id)a4 calendar:(id)a5;
- (BOOL)overridesNextAlarm:(id)a3 date:(id)a4 calendar:(id)a5;
- (BOOL)overridesScheduledObject:(id)a3 calendar:(id)a4;
- (BOOL)shouldBeScheduled;
- (BOOL)shouldBypassWidgetReload;
- (MTAlarm)init;
- (MTAlarm)initWithCurrentTimeFromCurrentDateProvider:(id)a3;
- (MTAlarm)initWithHour:(unint64_t)a3 minute:(unint64_t)a4;
- (MTAlarm)initWithHour:(unint64_t)a3 minute:(unint64_t)a4 currentDateProvider:(id)a5;
- (MTAlarm)initWithIdentifier:(id)a3;
- (MTAlarm)initWithMTCDAlarm:(id)a3;
- (MTIntentAlarm)intentAlarm;
- (NSDate)nextFireDate;
- (NSString)displayTitle;
- (NSURL)alarmURL;
- (double)sleepDurationSeconds;
- (id)_earliestTriggerDateForDate:(id)a3;
- (id)_initCommon;
- (id)_nextDateHelperWithDate:(id)a3 calendar:(id)a4;
- (id)alarmIDIntentObject;
- (id)alarmIDString;
- (id)alarmIntentDisplayString;
- (id)bedtimeComponents;
- (id)dateComponents;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initFromDeserializer:(id)a3;
- (id)intentLabel;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)nextTrigger;
- (id)nextTriggerAfterDate:(id)a3 ofType:(unint64_t)a4;
- (id)nextTriggersAfterDate:(id)a3 inclusionOptions:(unint64_t)a4;
- (id)singleTimeOverrideDateInCalendar:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)timeObject;
- (id)upcomingTriggersAfterDate:(id)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)_copyStateOntoAlarm:(id)a3;
- (void)_updatePropertiesFromDeserializer:(id)a3;
- (void)resetSnoozeFireDate;
- (void)serializeWithSerializer:(id)a3;
- (void)setBedtimeReminderMinutes:(unint64_t)a3;
- (void)setTitle:(id)a3;
@end

@implementation MTAlarm

- (BOOL)shouldBeScheduled
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(MTAlarm *)self isSleepAlarm])
  {
    if ([(MTAlarm *)self sleepSchedule])
    {
      result = 1;
    }

    else
    {
      v5 = MTLogForCategory(3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(MTAlarm *)self alarmID];
        v8 = 138543362;
        v9 = v6;
        _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "Not scheduling %{public}@ because sleep schedule is disabled", &v8, 0xCu);
      }

      result = 0;
    }

    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];

    return [(MTAlarm *)self isEnabled];
  }

  return result;
}

- (id)upcomingTriggersAfterDate:(id)a3
{
  v4 = [(MTAlarm *)self nextTriggersAfterDate:a3 includeBedtime:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MTAlarm_MTScheduling__upcomingTriggersAfterDate___block_invoke;
  v7[3] = &unk_1E7B0DE38;
  v7[4] = self;
  v5 = [v4 na_filter:v7];

  return v5;
}

uint64_t __51__MTAlarm_MTScheduling__upcomingTriggersAfterDate___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) isSleepAlarm] && objc_msgSend(v3, "isForAlert") && (objc_msgSend(*(a1 + 32), "isSingleTimeAlarm") & 1) == 0 && (objc_msgSend(*(a1 + 32), "isEnabled") & 1) == 0)
  {
    v5 = MTLogForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) alarmID];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "Not scheduling alarm %{public}@ because it's disabled", &v9, 0xCu);
    }

    goto LABEL_12;
  }

  if ([v3 isBedtimeRelated] && (MTShouldHandleForBedtime() & 1) == 0)
  {
    v5 = MTLogForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "Not scheduling bedtime triggers", &v9, 2u);
    }

LABEL_12:

    v4 = 0;
    goto LABEL_13;
  }

  v4 = 1;
LABEL_13:

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)overridesScheduledObject:(id)a3 calendar:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 scheduleable];
  v9 = [v7 trigger];

  LOBYTE(v7) = [(MTAlarm *)self overridesAlarm:v8 trigger:v9 calendar:v6];
  return v7;
}

- (id)alarmIntentDisplayString
{
  v3 = [(MTAlarm *)self title];
  if (!v3)
  {
    if ([(MTAlarm *)self isSleepAlarm])
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v4 = [v6 deferredLocalizedIntentsStringWithFormat:@"BED_TIME" fromTable:0 bundle:v7];

      if (v4)
      {
        goto LABEL_3;
      }
    }

    v8 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    v9 = [(MTAlarm *)self hour];
    v10 = [(MTAlarm *)self minute];
    v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
    v12 = [v8 dateBySettingHour:v9 minute:v10 second:0 ofDate:v11 options:0];

    v4 = [MEMORY[0x1E696AB78] localizedStringFromDate:v12 dateStyle:0 timeStyle:1];

    if (v4)
    {
      goto LABEL_3;
    }

    v3 = [(MTAlarm *)self displayTitle];
  }

  v4 = v3;
LABEL_3:

  return v4;
}

- (id)alarmIDIntentObject
{
  v3 = [(MTAlarm *)self alarmIDString];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696E910]);
    v5 = [(MTAlarm *)self alarmIDString];
    v6 = [(MTAlarm *)self alarmIntentDisplayString];
    v7 = [v4 initWithIdentifier:v5 displayString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)intentLabel
{
  v3 = [(MTAlarm *)self title];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(MTAlarm *)self title];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)timeObject
{
  v3 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v4 = [(MTAlarm *)self hour];
  v5 = [(MTAlarm *)self minute];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v7 = [v3 dateBySettingHour:v4 minute:v5 second:0 ofDate:v6 options:0];

  v8 = [MEMORY[0x1E696AB78] localizedStringFromDate:v7 dateStyle:0 timeStyle:1];
  v9 = objc_alloc(MEMORY[0x1E696E910]);
  v10 = MEMORY[0x1E696AEC0];
  [v7 timeIntervalSinceReferenceDate];
  v12 = [v10 stringWithFormat:@"%f", v11];
  v13 = [v9 initWithIdentifier:v12 displayString:v8];

  return v13;
}

- (MTIntentAlarm)intentAlarm
{
  v3 = [(MTAlarm *)self alarmIDString];

  if (v3)
  {
    v4 = [MTIntentAlarm alloc];
    v5 = [(MTAlarm *)self alarmIDString];
    v6 = [(MTAlarm *)self alarmIntentDisplayString];
    v3 = [(MTIntentAlarm *)v4 initWithIdentifier:v5 displayString:v6];

    v7 = [(MTAlarm *)self dateComponents];
    [(MTIntentAlarm *)v3 setDateComponents:v7];

    v8 = [(MTAlarm *)self displayTitle];
    [(MTIntentAlarm *)v3 setLabel:v8];

    v9 = MTRepeatDaysForAlarmRepeatSchedule([(MTAlarm *)self repeatSchedule]);
    [(MTIntentAlarm *)v3 setRepeatSchedule:v9];
  }

  return v3;
}

- (BOOL)confirmedLastBedtimeReminder
{
  v3 = [(MTAlarm *)self bedtimeDismissedDate];
  if (v3 && [(MTAlarm *)self bedtimeDismissedAction]== 2)
  {
    v4 = [(MTAlarm *)self firedDate];
    if (v4)
    {
      v5 = [(MTAlarm *)self bedtimeDismissedDate];
      v6 = [(MTAlarm *)self firedDate];
      v7 = [v5 mtIsAfterOrSameAsDate:v6];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)alarm
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (MTAlarm)alarmWithHour:(unint64_t)a3 minute:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithHour:a3 minute:a4];

  return v4;
}

+ (id)sleepAlarmWithSchedule:(unint64_t)a3
{
  v5 = [MTAlarm sleepScheduleString:?];
  v6 = [a1 sleepAlarmWithId:v5];
  [v6 setRepeatSchedule:a3];

  return v6;
}

+ (id)sleepAlarmWithId:(id)a3
{
  v4 = a3;
  v5 = [a1 alarm];
  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];
    v7 = v5[2];
    v5[2] = v6;
  }

  [v5 setSleepAlarm:1];
  v8 = [MTSound defaultSoundForCategory:3];
  [v5 setSound:v8];

  [v5 setRepeatSchedule:127];
  [v5 setBedtimeReminderMinutes:15];
  [v5 setSleepSchedule:1];
  [v5 setSilentModeOptions:{objc_msgSend(objc_opt_class(), "defaultSilentModeOptions")}];
  [v5 setSleepModeOptions:{objc_msgSend(objc_opt_class(), "defaultSleepModeOptions")}];

  return v5;
}

+ (id)sleepAlarmWithHour:(int64_t)a3 minute:(int64_t)a4
{
  v6 = [a1 sleepAlarm];
  [v6 setHour:a3];
  [v6 setMinute:a4];

  return v6;
}

+ (id)sleepAlarmWithHour:(int64_t)a3 minute:(int64_t)a4 bedtimeHour:(int64_t)a5 bedtimeMinute:(int64_t)a6
{
  v8 = [a1 sleepAlarmWithHour:a3 minute:a4];
  [v8 setBedtimeHour:a5];
  [v8 setBedtimeMinute:a6];

  return v8;
}

+ (id)sleepAlarmWithHour:(int64_t)a3 minute:(int64_t)a4 year:(int64_t)a5 month:(int64_t)a6 day:(int64_t)a7 bedtimeHour:(int64_t)a8 bedtimeMinute:(int64_t)a9
{
  if (a5 == 0x7FFFFFFFFFFFFFFFLL || a6 == 0x7FFFFFFFFFFFFFFFLL || a7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [a1 sleepAlarmWithHour:a3 minute:a4 bedtimeHour:a8 bedtimeMinute:{a9, a7}];
  }

  else
  {
    v17 = [a1 sleepAlarmWithSchedule:0];
    [v17 setHour:a3];
    [v17 setMinute:a4];
    [v17 setYear:a5];
    [v17 setMonth:a6];
    [v17 setDay:a7];
    [v17 setBedtimeHour:a8];
    [v17 setBedtimeMinute:a9];
  }

  return v17;
}

- (MTAlarm)initWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MTAlarm *)self _initCommon];
  if (v5)
  {
    v6 = [v4 copy];
    alarmID = v5->_alarmID;
    v5->_alarmID = v6;
  }

  return v5;
}

- (MTAlarm)init
{
  v3 = MTCurrentDateProvider();
  v4 = [(MTAlarm *)self initWithCurrentTimeFromCurrentDateProvider:v3];

  return v4;
}

- (MTAlarm)initWithCurrentTimeFromCurrentDateProvider:(id)a3
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = v5[2](v5);
  v8 = [v6 components:96 fromDate:v7];

  v9 = -[MTAlarm initWithHour:minute:currentDateProvider:](self, "initWithHour:minute:currentDateProvider:", [v8 hour], objc_msgSend(v8, "minute"), v5);
  return v9;
}

- (id)_initCommon
{
  v7.receiver = self;
  v7.super_class = MTAlarm;
  v2 = [(MTAlarm *)&v7 init];
  v3 = MTCurrentDateProvider();
  v4 = *(v2 + 29);
  *(v2 + 29) = v3;

  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  *(v2 + 40) = vnegq_f64(v5);
  *(v2 + 7) = 0x7FFFFFFFFFFFFFFFLL;
  *(v2 + 14) = [objc_opt_class() defaultSnoozeDuration];
  return v2;
}

- (MTAlarm)initWithHour:(unint64_t)a3 minute:(unint64_t)a4
{
  v7 = MTCurrentDateProvider();
  v8 = [(MTAlarm *)self initWithHour:a3 minute:a4 currentDateProvider:v7];

  return v8;
}

- (MTAlarm)initWithHour:(unint64_t)a3 minute:(unint64_t)a4 currentDateProvider:(id)a5
{
  v8 = a5;
  v18.receiver = self;
  v18.super_class = MTAlarm;
  v9 = [(MTAlarm *)&v18 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = *(v9 + 2);
    *(v9 + 2) = v10;

    *(v9 + 3) = a3;
    *(v9 + 4) = a4;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    *(v9 + 40) = vnegq_f64(v12);
    *(v9 + 7) = 0x7FFFFFFFFFFFFFFFLL;
    v9[12] = 1;
    v9[14] = 1;
    *(v9 + 14) = [objc_opt_class() defaultSnoozeDuration];
    v13 = [MTSound defaultSoundForCategory:0];
    v14 = *(v9 + 17);
    *(v9 + 17) = v13;

    *(v9 + 13) = [objc_opt_class() defaultSilentModeOptions];
    v15 = [v8 copy];
    v16 = *(v9 + 29);
    *(v9 + 29) = v15;
  }

  return v9;
}

- (MTAlarm)initWithMTCDAlarm:(id)a3
{
  v4 = a3;
  v5 = [MTMutableAlarm alloc];
  v6 = [v4 mtid];
  v7 = [(MTAlarm *)v5 initWithIdentifier:v6];

  -[MTAlarm setHour:](v7, "setHour:", [v4 hour]);
  -[MTAlarm setMinute:](v7, "setMinute:", [v4 minute]);
  v8 = [v4 title];
  [(MTAlarm *)v7 setTitle:v8];

  -[MTAlarm setEnabled:](v7, "setEnabled:", [v4 enabled]);
  -[MTAlarm setDay:](v7, "setDay:", [v4 day]);
  -[MTAlarm setMonth:](v7, "setMonth:", [v4 month]);
  -[MTAlarm setYear:](v7, "setYear:", [v4 year]);
  -[MTAlarm setRepeatSchedule:](v7, "setRepeatSchedule:", [v4 repeatSchedule]);
  -[MTAlarm setSilentModeOptions:](v7, "setSilentModeOptions:", [v4 silentModeOptions]);
  -[MTAlarm setSleepAlarm:](v7, "setSleepAlarm:", [v4 sleepAlarm]);
  -[MTAlarm setSleepSchedule:](v7, "setSleepSchedule:", [v4 sleepSchedule]);
  -[MTAlarm setAllowsSnooze:](v7, "setAllowsSnooze:", [v4 allowsSnooze]);
  -[MTAlarm setSnoozeDuration:](v7, "setSnoozeDuration:", [v4 snoozeDuration]);
  v9 = [v4 snoozeFireDate];
  [(MTAlarm *)v7 setSnoozeFireDate:v9];

  v10 = [v4 firedDate];
  [(MTAlarm *)v7 setFiredDate:v10];

  v11 = [v4 dismissedDate];
  [(MTAlarm *)v7 setDismissedDate:v11];

  -[MTAlarm setDismissedAction:](v7, "setDismissedAction:", [v4 dismissedAction]);
  v12 = [v4 lastModifiedDate];
  [(MTAlarm *)v7 setLastModifiedDate:v12];

  v13 = [v4 keepOffUntilDate];
  [(MTAlarm *)v7 setKeepOffUntilDate:v13];

  v14 = [v4 siriContextDecoded];
  [(MTAlarm *)v7 setSiriContext:v14];

  v15 = [MTSound alloc];
  v16 = [v4 sound];

  v17 = [(MTSound *)v15 initWithMTCDSound:v16];
  [(MTAlarm *)v7 setSound:v17];

  v18 = [(MTMutableAlarm *)v7 copy];
  return v18;
}

- (void)setBedtimeReminderMinutes:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  bedtimeReminder = self->_bedtimeReminder;
  self->_bedtimeReminder = v4;

  MEMORY[0x1EEE66BB8](v4, bedtimeReminder);
}

+ (BOOL)_isInternalBuild
{
  if (_isInternalBuild_onceToken != -1)
  {
    +[MTAlarm _isInternalBuild];
  }

  return _isInternalBuild_isInternal;
}

uint64_t __27__MTAlarm__isInternalBuild__block_invoke()
{
  result = MGGetBoolAnswer();
  _isInternalBuild_isInternal = result;
  return result;
}

- (id)alarmIDString
{
  v2 = [(MTAlarm *)self alarmID];
  v3 = [v2 UUIDString];

  return v3;
}

+ (id)sleepScheduleString:(unint64_t)byte7
{
  v3 = *MEMORY[0x1E695E480];
  v4 = CFUUIDCreateWithBytes(*MEMORY[0x1E695E480], byte7, byte7, byte7, byte7, byte7, byte7, byte7, byte7, byte7, byte7, byte7, byte7, byte7, byte7, byte7, byte7);
  v5 = CFUUIDCreateString(v3, v4);

  return v5;
}

- (id)dateComponents
{
  v3 = objc_opt_new();
  [v3 setHour:{-[MTAlarm hour](self, "hour")}];
  [v3 setMinute:{-[MTAlarm minute](self, "minute")}];
  [v3 setDay:{-[MTAlarm day](self, "day")}];
  [v3 setMonth:{-[MTAlarm month](self, "month")}];
  [v3 setYear:{-[MTAlarm year](self, "year")}];
  [v3 setSecond:0];

  return v3;
}

- (id)bedtimeComponents
{
  v3 = objc_opt_new();
  [v3 setHour:{-[MTAlarm bedtimeHour](self, "bedtimeHour")}];
  [v3 setMinute:{-[MTAlarm bedtimeMinute](self, "bedtimeMinute")}];
  [v3 setSecond:0];

  return v3;
}

- (NSURL)alarmURL
{
  v2 = [(MTAlarm *)self alarmID];
  v3 = [v2 UUIDString];
  v4 = [@"x-apple-clock:alarm?id=" stringByAppendingString:v3];

  v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];

  return v5;
}

- (BOOL)isSnoozed
{
  v2 = [(MTAlarm *)self snoozeFireDate];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isBedtimeSnoozed
{
  v2 = [(MTAlarm *)self bedtimeSnoozeFireDate];
  v3 = v2 != 0;

  return v3;
}

- (void)resetSnoozeFireDate
{
  [(MTAlarm *)self setSnoozeFireDate:0];
  v3 = [(MTAlarm *)self lastModifiedDate];
  [(MTAlarm *)self setDismissedDate:v3];

  [(MTAlarm *)self setDismissedAction:6];
}

- (BOOL)isFiring
{
  if ([(MTAlarm *)self isSleepAlarm]&& ![(MTAlarm *)self isEnabled])
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v3 = [(MTAlarm *)self firedDate];
    if (v3)
    {
      v4 = [(MTAlarm *)self dismissedDate];
      if (v4)
      {
        v5 = [(MTAlarm *)self firedDate];
        v6 = [(MTAlarm *)self dismissedDate];
        if ([v5 mtIsAfterDate:v6])
        {
          v7 = ![(MTAlarm *)self isSnoozed];
        }

        else
        {
          LOBYTE(v7) = 0;
        }
      }

      else
      {
        v7 = ![(MTAlarm *)self isSnoozed];
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (void)setTitle:(id)a3
{
  v7 = a3;
  if ([v7 length])
  {
    v4 = v7;
  }

  else
  {

    v4 = 0;
  }

  v8 = v4;
  v5 = [v4 copy];
  title = self->_title;
  self->_title = v5;
}

- (NSString)displayTitle
{
  v2 = [(MTAlarm *)self title];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [v5 localizedStringForKey:@"ALARM_DEFAULT_TITLE" value:&stru_1F29360E0 table:@"Localizable"];
  }

  return v4;
}

- (double)sleepDurationSeconds
{
  if (![(MTAlarm *)self isSleepAlarm])
  {
    return 0.0;
  }

  v3 = objc_opt_new();
  [v3 setHour:{-[MTAlarm bedtimeHour](self, "bedtimeHour")}];
  [v3 setMinute:{-[MTAlarm bedtimeMinute](self, "bedtimeMinute")}];
  v4 = objc_opt_new();
  [v4 setHour:{-[MTAlarm hour](self, "hour")}];
  [v4 setMinute:{-[MTAlarm minute](self, "minute")}];
  v5 = (*(self->_currentDateProvider + 2))();
  [v4 mtTimeIntervalSinceComponents:v3 now:v5];
  v7 = v6;

  return v7;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(MTAlarm *)self hour];
  if (v5 < [v4 hour])
  {
    goto LABEL_2;
  }

  v7 = [(MTAlarm *)self hour];
  if (v7 > [v4 hour])
  {
    goto LABEL_4;
  }

  v9 = [(MTAlarm *)self minute];
  if (v9 < [v4 minute])
  {
LABEL_2:
    v6 = -1;
    goto LABEL_5;
  }

  v10 = [(MTAlarm *)self minute];
  if (v10 > [v4 minute])
  {
LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  v11 = [(MTAlarm *)self displayTitle];
  v12 = [v4 displayTitle];
  v6 = [v11 compare:v12];

  if (!v6)
  {
    v13 = [(MTAlarm *)self alarmID];
    v14 = [v13 UUIDString];
    v15 = [v4 alarmID];
    v16 = [v15 UUIDString];
    v6 = [v14 compare:v16];
  }

LABEL_5:

  return v6;
}

- (NSDate)nextFireDate
{
  v2 = [(MTAlarm *)self nextTrigger];
  v3 = [v2 triggerDate];

  return v3;
}

- (id)nextTrigger
{
  v3 = (*(self->_currentDateProvider + 2))();
  v4 = [(MTAlarm *)self nextTriggerAfterDate:v3];

  return v4;
}

- (id)nextTriggerAfterDate:(id)a3 ofType:(unint64_t)a4
{
  v5 = [(MTAlarm *)self nextTriggersAfterDate:a3 inclusionOptions:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__MTAlarm_nextTriggerAfterDate_ofType___block_invoke;
  v8[3] = &__block_descriptor_40_e19_B16__0__MTTrigger_8l;
  v8[4] = a4;
  v6 = [v5 na_firstObjectPassingTest:v8];

  return v6;
}

- (id)nextTriggersAfterDate:(id)a3 inclusionOptions:(unint64_t)a4
{
  v4 = a4;
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(MTAlarm *)self alarmID];
    v49 = 138543618;
    v50 = v8;
    v51 = 2114;
    *v52 = v6;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "Date before computing earlierst trigger date for %{public}@: %{public}@", &v49, 0x16u);
  }

  v9 = [(MTAlarm *)self _earliestTriggerDateForDate:v6];

  v10 = MTLogForCategory(3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(MTAlarm *)self alarmID];
    v49 = 138543618;
    v50 = v11;
    v51 = 2114;
    *v52 = v9;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "Computing next fire date for %{public}@ after %{public}@", &v49, 0x16u);
  }

  v12 = [MEMORY[0x1E695DF70] array];
  v13 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v14 = MTLogForCategory(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(MTAlarm *)self alarmID];
    v16 = [(MTAlarm *)self isSnoozed];
    v17 = [(MTAlarm *)self repeats];
    v49 = 138543874;
    v50 = v15;
    v51 = 1024;
    *v52 = v16;
    *&v52[4] = 1024;
    *&v52[6] = v17;
    _os_log_impl(&dword_1B1F9F000, v14, OS_LOG_TYPE_DEFAULT, "Alarm %{public}@ is snoozed:%d, repeats: %d", &v49, 0x18u);
  }

  if ([(MTAlarm *)self isSnoozed]&& ![(MTAlarm *)self repeats])
  {
    v18 = 0;
  }

  else
  {
    if ([(MTAlarm *)self isSingleTimeAlarm])
    {
      v18 = [(MTAlarm *)self singleTimeOverrideDateInCalendar:v13];
      v19 = MTLogForCategory(3);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(MTAlarm *)self alarmID];
        v49 = 138543618;
        v50 = v20;
        v51 = 2114;
        *v52 = v18;
        _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_DEFAULT, "Alarm %{public}@ override alarm date: %{public}@", &v49, 0x16u);
      }

      v21 = +[MTTrigger triggerWithDate:triggerType:isPastOverrideEvent:](MTTrigger, "triggerWithDate:triggerType:isPastOverrideEvent:", v18, 4, [v9 mtIsAfterOrSameAsDate:v18]);
    }

    else
    {
      v18 = [(MTAlarm *)self _nextDateHelperWithDate:v9 calendar:v13];
      v22 = MTLogForCategory(3);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [(MTAlarm *)self alarmID];
        v49 = 138543618;
        v50 = v23;
        v51 = 2114;
        *v52 = v18;
        _os_log_impl(&dword_1B1F9F000, v22, OS_LOG_TYPE_DEFAULT, "Alarm %{public}@ next alarm date: %{public}@", &v49, 0x16u);
      }

      if ([(MTAlarm *)self isSleepAlarm])
      {
        v24 = 4;
      }

      else
      {
        v24 = 0;
      }

      v21 = [MTTrigger triggerWithDate:v18 triggerType:v24];
    }

    v25 = v21;
    v26 = MTLogForCategory(3);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(MTAlarm *)self alarmID];
      v49 = 138543618;
      v50 = v27;
      v51 = 2114;
      *v52 = v25;
      _os_log_impl(&dword_1B1F9F000, v26, OS_LOG_TYPE_DEFAULT, "Alarm %{public}@ alarm trigger: %{public}@", &v49, 0x16u);
    }

    [v12 addObject:v25];
    v28 = MTLogForCategory(3);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [(MTAlarm *)self alarmID];
      v49 = 138543874;
      v50 = v29;
      v51 = 2114;
      *v52 = v18;
      *&v52[8] = 2114;
      v53 = v9;
      _os_log_impl(&dword_1B1F9F000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ has next fire date %{public}@ after %{public}@", &v49, 0x20u);
    }
  }

  v30 = v4 & 1;
  v31 = MTLogForCategory(3);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [(MTAlarm *)self alarmID];
    v49 = 138543618;
    v50 = v32;
    v51 = 1024;
    *v52 = v30;
    _os_log_impl(&dword_1B1F9F000, v31, OS_LOG_TYPE_DEFAULT, "Alarm %{public}@ include snooze: %d", &v49, 0x12u);
  }

  if (v30 && [(MTAlarm *)self isSnoozed])
  {
    v33 = [(MTAlarm *)self snoozeFireDate];
    v34 = [v33 mtIsBeforeOrSameAsDate:v9];

    v35 = MTLogForCategory(3);
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (v34)
    {
      if (!v36)
      {
LABEL_39:

        goto LABEL_40;
      }

      v37 = [(MTAlarm *)self snoozeFireDate];
      v38 = [(MTAlarm *)self alarmID];
      v49 = 138543618;
      v50 = v37;
      v51 = 2114;
      *v52 = v38;
      _os_log_impl(&dword_1B1F9F000, v35, OS_LOG_TYPE_DEFAULT, "Snooze has already fired (%{public}@) for alert %{public}@", &v49, 0x16u);
    }

    else
    {
      if (v36)
      {
        v39 = [(MTAlarm *)self snoozeFireDate];
        v40 = [(MTAlarm *)self alarmID];
        v49 = 138543618;
        v50 = v39;
        v51 = 2114;
        *v52 = v40;
        _os_log_impl(&dword_1B1F9F000, v35, OS_LOG_TYPE_DEFAULT, "Snooze hasn't fired yet (%{public}@) for alert %{public}@", &v49, 0x16u);
      }

      v35 = [(MTAlarm *)self snoozeFireDate];
      if ([(MTAlarm *)self isSleepAlarm])
      {
        v41 = 5;
      }

      else
      {
        v41 = 1;
      }

      v37 = [MTTrigger triggerWithDate:v35 triggerType:v41];
      [v12 addObject:v37];
    }

    goto LABEL_39;
  }

LABEL_40:
  [v12 sortUsingComparator:&__block_literal_global_73];
  v42 = MTLogForCategory(3);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = [(MTAlarm *)self alarmID];
    v49 = 138543618;
    v50 = v43;
    v51 = 2114;
    *v52 = v12;
    _os_log_impl(&dword_1B1F9F000, v42, OS_LOG_TYPE_DEFAULT, "Alarm %{public}@ candidate triggers after sorting: %{public}@", &v49, 0x16u);
  }

  v44 = [v12 firstObject];
  v45 = MTLogForCategory(3);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = [(MTAlarm *)self alarmID];
    v49 = 138543618;
    v50 = v46;
    v51 = 2114;
    *v52 = v44;
    _os_log_impl(&dword_1B1F9F000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@ has next trigger %{public}@", &v49, 0x16u);
  }

  v47 = *MEMORY[0x1E69E9840];

  return v12;
}

uint64_t __50__MTAlarm_nextTriggersAfterDate_inclusionOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 triggerDate];
  v6 = [v4 triggerDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_earliestTriggerDateForDate:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__MTAlarm__earliestTriggerDateForDate___block_invoke;
  aBlock[3] = &unk_1E7B0E518;
  v6 = v4;
  v25 = v6;
  v26 = self;
  v7 = v5;
  v27 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [(MTAlarm *)self dismissedDate];
  v8[2](v8, @"dismissed", v9);

  v10 = [(MTAlarm *)self bedtimeDismissedDate];
  v8[2](v8, @"bedtime dismissed", v10);

  v11 = [(MTAlarm *)self firedDate];
  v8[2](v8, @"fired", v11);

  v12 = [(MTAlarm *)self bedtimeFiredDate];
  v8[2](v8, @"bedtime fired", v12);

  v13 = [(MTAlarm *)self keepOffUntilDate];
  v8[2](v8, @"keep off until", v13);

  v14 = [(MTAlarm *)self lastModifiedDate];
  v8[2](v8, @"modified", v14);

  v15 = [(MTAlarm *)self overriddenForDate];
  v8[2](v8, @"overriden for date", v15);

  v16 = [MEMORY[0x1E695DF00] mtLatest:v7];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v6;
  }

  v19 = v18;

  v20 = MTLogForCategory(3);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(MTAlarm *)self alarmID];
    *buf = 138543618;
    v29 = v21;
    v30 = 2114;
    v31 = v19;
    _os_log_impl(&dword_1B1F9F000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ earliest trigger date: %{public}@", buf, 0x16u);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v19;
}

void __39__MTAlarm__earliestTriggerDateForDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v9 = MTLogForCategory(3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 40) alarmID];
      v16 = 138543874;
      v17 = v13;
      v18 = 2114;
      v19 = v5;
      v20 = 2114;
      v21 = 0;
      v14 = "%{public}@ %{public}@ %{public}@ is nil";
LABEL_10:
      _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, v14, &v16, 0x20u);
    }

LABEL_11:

    goto LABEL_12;
  }

  v8 = [v6 mtIsAfterDate:*(a1 + 32)];
  v9 = MTLogForCategory(3);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v10)
    {
      v13 = [*(a1 + 40) alarmID];
      v16 = 138543874;
      v17 = v13;
      v18 = 2114;
      v19 = v5;
      v20 = 2114;
      v21 = v7;
      v14 = "%{public}@ %{public}@ %{public}@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v10)
  {
    v11 = [*(a1 + 40) alarmID];
    v12 = *(a1 + 32);
    v16 = 138544130;
    v17 = v11;
    v18 = 2114;
    v19 = v5;
    v20 = 2114;
    v21 = v12;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ after %{public}@ (%{public}@)", &v16, 0x2Au);
  }

  [*(a1 + 48) addObject:v7];
LABEL_12:

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_nextDateHelperWithDate:(id)a3 calendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTAlarm *)self dateComponents];
  if ([(MTAlarm *)self repeats]&& [(MTAlarm *)self repeatSchedule]!= 127)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__7;
    v26 = __Block_byref_object_dispose__7;
    v27 = [MEMORY[0x1E695DF00] distantFuture];
    v9 = [(MTAlarm *)self repeatSchedule];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __44__MTAlarm__nextDateHelperWithDate_calendar___block_invoke;
    v17 = &unk_1E7B0E540;
    v18 = self;
    v19 = v6;
    v10 = v7;
    v11 = 0;
    v20 = v10;
    v21 = &v22;
    do
    {
      if ((MTAlarmRepeatScheduleFromDay(v11) & v9) != 0)
      {
        v16(&v14, v11);
      }

      ++v11;
    }

    while (v11 != 7);
    [v8 setWeekday:{objc_msgSend(v10, "component:fromDate:", 512, v23[5], v14, v15)}];

    _Block_object_dispose(&v22, 8);
  }

  v12 = [v7 mtNextDateAfterDate:v6 matchingComponents:v8];

  return v12;
}

void __44__MTAlarm__nextDateHelperWithDate_calendar___block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 32);
  if (![objc_opt_class() _date:*(a1 + 40) isOnDay:a2 calendar:*(a1 + 48)])
  {
LABEL_5:
    if (a2 < 7)
    {
      v7 = a2 + 1;
    }

    else
    {
      v7 = 0;
    }

    v6 = [*(a1 + 48) mtNextDateAfterDate:*(a1 + 40) matchingUnit:512 value:v7];
    goto LABEL_9;
  }

  v5 = [*(a1 + 48) components:30 fromDate:*(a1 + 40)];
  [v5 setHour:{objc_msgSend(*(a1 + 32), "hour")}];
  [v5 setMinute:{objc_msgSend(*(a1 + 32), "minute")}];
  v11 = [*(a1 + 48) dateFromComponents:v5];
  if ([v11 mtIsBeforeOrSameAsDate:*(a1 + 40)])
  {

    goto LABEL_5;
  }

  v6 = v11;
  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_9:
  v12 = v6;
  v8 = [v6 earlierDate:*(*(*(a1 + 56) + 8) + 40)];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)singleTimeOverrideDateInCalendar:(id)a3
{
  v5 = a3;
  if (![(MTAlarm *)self isSingleTimeAlarm])
  {
    [(MTAlarm *)a2 singleTimeOverrideDateInCalendar:?];
  }

  v6 = [(MTAlarm *)self dateComponents];
  v7 = [v5 dateFromComponents:v6];

  return v7;
}

- (BOOL)overridesNextAlarm:(id)a3 date:(id)a4 calendar:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  if (![(MTAlarm *)self isSingleTimeAlarm])
  {
    [MTAlarm overridesNextAlarm:a2 date:self calendar:?];
  }

  v12 = [v11 nextTriggerAfterDate:v9 ofType:4];
  v13 = [(MTAlarm *)self overridesAlarm:v11 trigger:v12 calendar:v10];

  return v13;
}

- (BOOL)overridesAlarm:(id)a3 trigger:(id)a4 calendar:(id)a5
{
  v8 = a5;
  v9 = a4;
  if (![(MTAlarm *)self isSingleTimeAlarm])
  {
    [MTAlarm overridesAlarm:a2 trigger:self calendar:?];
  }

  v10 = [(MTAlarm *)self singleTimeOverrideDateInCalendar:v8];
  v11 = [v9 triggerDate];

  v12 = [v8 isDate:v10 inSameDayAsDate:v11];
  return v12;
}

+ (BOOL)_date:(id)a3 isOnDay:(int64_t)a4 calendar:(id)a5
{
  if (a4 < 7)
  {
    v5 = a4 + 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 == [a5 component:512 fromDate:a3];
}

+ (id)mostRecentlyUpdatedAlarmForAlarms:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_19;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v20;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v19 + 1) + 8 * i);
      if (!v6)
      {
        goto LABEL_14;
      }

      v10 = [v6 lastModifiedDate];
      if (!v10)
      {
        v14 = [v9 lastModifiedDate];
        v3 = v14;
        if (v14)
        {

LABEL_14:
          v15 = v9;

          v6 = v15;
          continue;
        }
      }

      v11 = [v9 lastModifiedDate];
      v12 = [v6 lastModifiedDate];
      v13 = [v11 mtIsAfterDate:v12];

      if (!v10)
      {

        if ((v13 & 1) == 0)
        {
          continue;
        }

        goto LABEL_14;
      }

      if (v13)
      {
        goto LABEL_14;
      }
    }

    v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v5);
LABEL_19:

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(MTAlarm *)self alarmID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(MTAlarm *)self isEqualToAlarm:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isEqualToAlarm:(id)a3 checkLastModified:(BOOL)a4
{
  v6 = a4;
  v8 = a3;
  v9 = [v8 alarmID];
  v10 = [(MTAlarm *)self alarmID];
  if (v9 != v10)
  {
    v11 = [v8 alarmID];
    v127 = [(MTAlarm *)self alarmID];
    v128 = v11;
    if (![v11 isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v12 = [v8 hour];
  if (v12 != -[MTAlarm hour](self, "hour") || (v13 = [v8 minute], v13 != -[MTAlarm minute](self, "minute")) || (v14 = objc_msgSend(v8, "bedtimeHour"), v14 != -[MTAlarm bedtimeHour](self, "bedtimeHour")) || (v15 = objc_msgSend(v8, "bedtimeMinute"), v15 != -[MTAlarm bedtimeMinute](self, "bedtimeMinute")))
  {
LABEL_10:
    v19 = 0;
    v20 = 0;
    memset(v133, 0, sizeof(v133));
    *&v131[20] = 0;
    *&v131[12] = 0;
    v21 = 0;
    *v131 = 0;
    v132 = 0;
    memset(v129, 0, sizeof(v129));
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v131[8] = 0;
    goto LABEL_11;
  }

  v16 = [v8 bedtimeReminder];
  v125 = [(MTAlarm *)self bedtimeReminder];
  v126 = v16;
  v17 = v16 == v125;
  v18 = v16 != v125;
  if (v17)
  {
    HIDWORD(v133[4]) = v18;
  }

  else
  {
    v4 = [v8 bedtimeReminder];
    v123 = [(MTAlarm *)self bedtimeReminder];
    v124 = v4;
    if (![v4 isEqual:?])
    {
      v20 = 0;
      memset(v133, 0, 36);
      *&v131[20] = 0;
      *&v131[12] = 0;
      v21 = 0;
      *v131 = 0;
      v132 = 0;
      memset(v129, 0, sizeof(v129));
      v130 = 0;
      v22 = 0;
      v23 = 0;
      v131[8] = 0;
      v19 = 1;
      HIDWORD(v133[4]) = 1;
      goto LABEL_11;
    }

    HIDWORD(v133[4]) = v18;
  }

  v31 = [v8 sleepMode];
  if (v31 != -[MTAlarm sleepMode](self, "sleepMode") || (v32 = [v8 sleepModeOptions], v32 != -[MTAlarm sleepModeOptions](self, "sleepModeOptions")) || (v33 = objc_msgSend(v8, "sleepTracking"), v33 != -[MTAlarm sleepTracking](self, "sleepTracking")) || (v34 = objc_msgSend(v8, "day"), v34 != -[MTAlarm day](self, "day")) || (v35 = objc_msgSend(v8, "month"), v35 != -[MTAlarm month](self, "month")) || (v36 = objc_msgSend(v8, "year"), v36 != -[MTAlarm year](self, "year")))
  {
    v20 = 0;
    memset(v133, 0, 36);
    *&v131[20] = 0;
    *&v131[12] = 0;
    v21 = 0;
    *v131 = 0;
    v132 = 0;
    memset(v129, 0, sizeof(v129));
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v131[8] = 0;
LABEL_82:
    v19 = 1;
    goto LABEL_11;
  }

  v37 = [v8 overriddenForDate];
  v121 = [(MTAlarm *)self overriddenForDate];
  v122 = v37;
  v17 = v37 == v121;
  v38 = v37 != v121;
  if (v17)
  {
    LODWORD(v133[4]) = v38;
  }

  else
  {
    v4 = [v8 overriddenForDate];
    [(MTAlarm *)self overriddenForDate];
    v119 = v120 = v4;
    if (![v4 isEqual:?])
    {
      memset(v133, 0, 32);
      *&v131[20] = 0;
      *&v131[12] = 0;
      v21 = 0;
      *v131 = 0;
      v132 = 0;
      memset(v129, 0, sizeof(v129));
      v130 = 0;
      v22 = 0;
      v23 = 0;
      v131[8] = 0;
      v19 = 1;
      v20 = 1;
      LODWORD(v133[4]) = 1;
      goto LABEL_11;
    }

    LODWORD(v133[4]) = v38;
  }

  v39 = [v8 timeInBedTracking];
  if (v39 != [(MTAlarm *)self timeInBedTracking])
  {
    goto LABEL_99;
  }

  v40 = [v8 sleepSchedule];
  if (v40 != [(MTAlarm *)self sleepSchedule])
  {
    goto LABEL_99;
  }

  v21 = v6;
  v41 = [v8 repeatSchedule];
  if (v41 != [(MTAlarm *)self repeatSchedule])
  {
    goto LABEL_99;
  }

  v42 = [v8 isEnabled];
  if (v42 != -[MTAlarm isEnabled](self, "isEnabled") || (v43 = [v8 silentModeOptions], v43 != -[MTAlarm silentModeOptions](self, "silentModeOptions")) || (v44 = objc_msgSend(v8, "isSleepAlarm"), v44 != -[MTAlarm isSleepAlarm](self, "isSleepAlarm")) || (v45 = objc_msgSend(v8, "allowsSnooze"), v45 != -[MTAlarm allowsSnooze](self, "allowsSnooze")) || (v46 = objc_msgSend(v8, "snoozeDuration"), v46 != -[MTAlarm snoozeDuration](self, "snoozeDuration")) || (v47 = objc_msgSend(v8, "onboardingVersion"), v47 != -[MTAlarm onboardingVersion](self, "onboardingVersion")) || (v48 = objc_msgSend(v8, "dismissedAction"), v48 != -[MTAlarm dismissedAction](self, "dismissedAction")) || (v49 = objc_msgSend(v8, "bedtimeDismissedAction"), v49 != -[MTAlarm bedtimeDismissedAction](self, "bedtimeDismissedAction")))
  {
LABEL_99:
    memset(v133, 0, 32);
    *&v131[20] = 0;
    *&v131[12] = 0;
    v21 = 0;
    *v131 = 0;
    v132 = 0;
    memset(v129, 0, sizeof(v129));
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v131[8] = 0;
    v19 = 1;
    v20 = 1;
    goto LABEL_11;
  }

  v50 = [v8 snoozeFireDate];
  v117 = [(MTAlarm *)self snoozeFireDate];
  v118 = v50;
  HIDWORD(v133[3]) = v50 != v117;
  if (v50 != v117)
  {
    v51 = [v8 snoozeFireDate];
    v115 = [(MTAlarm *)self snoozeFireDate];
    v116 = v51;
    if (![v51 isEqual:?])
    {
      *&v131[20] = 0;
      *&v131[12] = 0;
      v21 = 0;
      *v131 = 0;
      memset(v133 + 4, 0, 24);
      memset(v129, 0, sizeof(v129));
      v130 = 0;
      v22 = 0;
      v23 = 0;
      v131[8] = 0;
      v19 = 1;
      v20 = 1;
      v132 = 0;
      LODWORD(v133[0]) = 1;
      HIDWORD(v133[3]) = 1;
      goto LABEL_11;
    }
  }

  v52 = [v8 bedtimeSnoozeFireDate];
  v113 = [(MTAlarm *)self bedtimeSnoozeFireDate];
  v114 = v52;
  LODWORD(v133[3]) = v52 != v113;
  if (v52 != v113)
  {
    v53 = [v8 bedtimeSnoozeFireDate];
    v111 = [(MTAlarm *)self bedtimeSnoozeFireDate];
    v112 = v53;
    if (![v53 isEqual:?])
    {
      v21 = 0;
      memset(v131, 0, 24);
      memset(v129, 0, sizeof(v129));
      v130 = 0;
      v22 = 0;
      v23 = 0;
      v19 = 1;
      v20 = 1;
      LODWORD(v133[0]) = 1;
      memset(v133 + 4, 0, 20);
      *&v131[24] = 1;
      v132 = 0;
      LODWORD(v133[3]) = 1;
      goto LABEL_11;
    }
  }

  v54 = [v8 firedDate];
  v109 = [(MTAlarm *)self firedDate];
  v110 = v54;
  HIDWORD(v133[2]) = v54 != v109;
  if (v54 != v109)
  {
    v55 = [v8 firedDate];
    v107 = [(MTAlarm *)self firedDate];
    v108 = v55;
    if (![v55 isEqual:?])
    {
      *&v131[12] = 0;
      v21 = 0;
      *v131 = 0;
      *(v133 + 4) = 0uLL;
      memset(v129, 0, sizeof(v129));
      v130 = 0;
      v22 = 0;
      v23 = 0;
      v131[8] = 0;
      v19 = 1;
      v20 = 1;
      v132 = 0;
      LODWORD(v133[0]) = 1;
      *&v131[20] = 0x100000001;
      HIDWORD(v133[2]) = 1;
      goto LABEL_11;
    }
  }

  v56 = [v8 dismissedDate];
  v105 = [(MTAlarm *)self dismissedDate];
  v106 = v56;
  LODWORD(v133[2]) = v56 != v105;
  if (v56 != v105)
  {
    v57 = [v8 dismissedDate];
    v103 = [(MTAlarm *)self dismissedDate];
    v104 = v57;
    if (![v57 isEqual:?])
    {
      v21 = 0;
      v133[1] = 0;
      *v131 = 0;
      memset(v129, 0, sizeof(v129));
      v130 = 0;
      v22 = 0;
      v23 = 0;
      v19 = 1;
      v20 = 1;
      v133[0] = 1;
      v132 = 0;
      *&v131[16] = 0;
      *&v131[20] = 0x100000001;
      v131[8] = 0;
      *&v131[12] = 1;
      LODWORD(v133[2]) = 1;
      goto LABEL_11;
    }
  }

  if (!v6)
  {
    HIDWORD(v133[1]) = 0;
    goto LABEL_116;
  }

  v58 = [v8 lastModifiedDate];
  v101 = [(MTAlarm *)self lastModifiedDate];
  v102 = v58;
  if (v58 == v101)
  {
    HIDWORD(v133[1]) = 0;
    goto LABEL_116;
  }

  v59 = [v8 lastModifiedDate];
  v99 = [(MTAlarm *)self lastModifiedDate];
  v100 = v59;
  if (![v59 isEqual:?])
  {
    *v131 = 0;
    *(v133 + 4) = 0;
    memset(v129, 0, sizeof(v129));
    v130 = 0;
    v22 = 0;
    v23 = 0;
    v20 = 1;
    v132 = 0;
    LODWORD(v133[0]) = 1;
    *&v131[16] = 0;
    *&v131[20] = 0x100000001;
    v131[8] = 0;
    *&v131[12] = 1;
    v21 = 1;
    HIDWORD(v133[1]) = 1;
    goto LABEL_82;
  }

  HIDWORD(v133[1]) = 1;
LABEL_116:
  v60 = [v8 bedtimeFiredDate];
  v97 = [(MTAlarm *)self bedtimeFiredDate];
  v98 = v60;
  LODWORD(v133[1]) = v60 != v97;
  if (v60 == v97 || ([v8 bedtimeFiredDate], v61 = objc_claimAutoreleasedReturnValue(), -[MTAlarm bedtimeFiredDate](self, "bedtimeFiredDate"), v95 = objc_claimAutoreleasedReturnValue(), v96 = v61, objc_msgSend(v61, "isEqual:")))
  {
    v62 = [v8 bedtimeDismissedDate];
    v93 = [(MTAlarm *)self bedtimeDismissedDate];
    v94 = v62;
    HIDWORD(v133[0]) = v62 != v93;
    if (v62 == v93 || ([v8 bedtimeDismissedDate], v63 = objc_claimAutoreleasedReturnValue(), -[MTAlarm bedtimeDismissedDate](self, "bedtimeDismissedDate"), v91 = objc_claimAutoreleasedReturnValue(), v92 = v63, objc_msgSend(v63, "isEqual:")))
    {
      v64 = [v8 keepOffUntilDate];
      v89 = [(MTAlarm *)self keepOffUntilDate];
      v90 = v64;
      v132 = v64 != v89;
      if (v64 == v89 || ([v8 keepOffUntilDate], v65 = objc_claimAutoreleasedReturnValue(), -[MTAlarm keepOffUntilDate](self, "keepOffUntilDate"), v87 = objc_claimAutoreleasedReturnValue(), v88 = v65, objc_msgSend(v65, "isEqual:")))
      {
        v66 = [v8 title];
        v85 = [(MTAlarm *)self title];
        v86 = v66;
        *&v131[16] = v66 != v85;
        if (v66 == v85 || ([v8 title], v67 = objc_claimAutoreleasedReturnValue(), -[MTAlarm title](self, "title"), v83 = objc_claimAutoreleasedReturnValue(), v84 = v67, objc_msgSend(v67, "isEqual:")))
        {
          v68 = [v8 sound];
          v81 = [(MTAlarm *)self sound];
          v82 = v68;
          *&v131[4] = v68 != v81;
          if (v68 == v81 || ([v8 sound], v69 = objc_claimAutoreleasedReturnValue(), -[MTAlarm sound](self, "sound"), v79 = objc_claimAutoreleasedReturnValue(), v80 = v69, objc_msgSend(v69, "isEqual:")))
          {
            v70 = [v8 siriContext];
            v77 = [(MTAlarm *)self siriContext];
            v78 = v70;
            v130 = v70 != v77;
            if (v70 == v77 || ([v8 siriContext], v71 = objc_claimAutoreleasedReturnValue(), -[MTAlarm siriContext](self, "siriContext"), v75 = objc_claimAutoreleasedReturnValue(), v76 = v71, objc_msgSend(v71, "isEqual:")))
            {
              v72 = [v8 bypassReloadDate];
              v4 = [(MTAlarm *)self bypassReloadDate];
              v74 = v72;
              if (v72 == v4)
              {
                v23 = 0;
                v19 = 1;
                v20 = 1;
                LODWORD(v133[0]) = 1;
                *&v131[20] = 1;
                *&v131[24] = 1;
                v131[8] = 1;
                *&v131[12] = 1;
                *v131 = 1;
                *&v129[12] = 1;
                *&v129[16] = 1;
                *&v129[4] = 1;
                *&v129[8] = 1;
                *v129 = 1;
                v22 = 1;
              }

              else
              {
                v5 = [v8 bypassReloadDate];
                self = [(MTAlarm *)self bypassReloadDate];
                v73 = [v5 isEqual:self];
                v19 = 1;
                v20 = 1;
                v23 = 1;
                LODWORD(v133[0]) = 1;
                *&v131[20] = 1;
                *&v131[24] = 1;
                v131[8] = v73;
                *&v131[12] = 1;
                *v131 = 1;
                *&v129[12] = 1;
                *&v129[16] = 1;
                *&v129[4] = 1;
                *&v129[8] = 1;
                *v129 = 1;
                v22 = 1;
              }
            }

            else
            {
              v22 = 0;
              v23 = 0;
              v19 = 1;
              v20 = 1;
              LODWORD(v133[0]) = 1;
              *&v131[20] = 1;
              *&v131[24] = 1;
              v131[8] = 0;
              *&v131[12] = 1;
              *v131 = 1;
              *&v129[12] = 1;
              *&v129[16] = 1;
              *&v129[4] = 1;
              *&v129[8] = 1;
              *v129 = 1;
              v130 = 1;
            }
          }

          else
          {
            v22 = 0;
            v23 = 0;
            v19 = 1;
            v20 = 1;
            LODWORD(v133[0]) = 1;
            *&v131[20] = 1;
            *&v131[24] = 1;
            v131[8] = 0;
            *&v131[12] = 1;
            v130 = 0;
            *v131 = 1;
            *&v129[12] = 1;
            *&v129[16] = 1;
            *&v129[8] = 1;
            *v129 = 0;
            *&v129[4] = 1;
            *&v131[4] = 1;
          }
        }

        else
        {
          *v129 = 0;
          *&v131[4] = 0;
          v22 = 0;
          v23 = 0;
          v19 = 1;
          v20 = 1;
          LODWORD(v133[0]) = 1;
          *&v131[20] = 1;
          *&v131[24] = 1;
          *&v131[12] = 1;
          v130 = 0;
          *v131 = 1;
          *&v129[12] = 1;
          *&v129[16] = 1;
          *&v129[8] = 1;
          *&v131[16] = 1;
        }
      }

      else
      {
        *&v129[4] = 0;
        *&v131[4] = 0;
        *v129 = 0;
        v22 = 0;
        v23 = 0;
        v19 = 1;
        v20 = 1;
        LODWORD(v133[0]) = 1;
        *&v131[24] = 1;
        *&v131[16] = 0;
        *&v131[20] = 1;
        *&v131[12] = 1;
        v130 = 0;
        *v131 = 1;
        *&v129[12] = 1;
        *&v129[16] = 1;
        v132 = 1;
      }
    }

    else
    {
      *v129 = 0;
      *&v129[8] = 0;
      *&v131[4] = 0;
      v22 = 0;
      v23 = 0;
      v19 = 1;
      v20 = 1;
      v132 = 0;
      v133[0] = 0x100000001;
      *&v131[16] = 0;
      *&v131[20] = 0x100000001;
      *&v131[12] = 1;
      v130 = 0;
      *v131 = 1;
      *&v129[16] = 1;
    }
  }

  else
  {
    *&v131[4] = 0;
    memset(v129, 0, sizeof(v129));
    v22 = 0;
    v23 = 0;
    v19 = 1;
    v20 = 1;
    v133[0] = 1;
    v132 = 0;
    *&v131[16] = 0;
    *&v131[20] = 0x100000001;
    *&v131[12] = 1;
    v130 = 0;
    *v131 = 1;
    LODWORD(v133[1]) = 1;
  }

LABEL_11:
  if (v23)
  {
    v24 = v10;
    v25 = v9;
    v26 = v20;
    v27 = v19;
    v28 = v21;
    v29 = v22;

    v22 = v29;
    v21 = v28;
    v19 = v27;
    v20 = v26;
    v9 = v25;
    v10 = v24;
  }

  if (v22)
  {
  }

  if (v130)
  {
  }

  if (*v129)
  {
  }

  if (*&v131[4])
  {
  }

  if (*&v129[4])
  {
  }

  if (*&v131[16])
  {
  }

  if (*&v129[8])
  {
  }

  if (v132)
  {
  }

  if (*&v129[12])
  {
  }

  if (HIDWORD(v133[0]))
  {
  }

  if (*&v129[16])
  {
  }

  if (LODWORD(v133[1]))
  {
  }

  if (*v131)
  {
  }

  if (HIDWORD(v133[1]))
  {
  }

  if (v21)
  {
  }

  if (LODWORD(v133[2]))
  {
  }

  if (*&v131[12])
  {
  }

  if (HIDWORD(v133[2]))
  {
  }

  if (*&v131[20])
  {
  }

  if (LODWORD(v133[3]))
  {
  }

  if (*&v131[24])
  {
  }

  if (HIDWORD(v133[3]))
  {
  }

  if (LODWORD(v133[0]))
  {
  }

  if (LODWORD(v133[4]))
  {

    if (!v20)
    {
      goto LABEL_61;
    }
  }

  else if (!v20)
  {
LABEL_61:
    if (HIDWORD(v133[4]))
    {
      goto LABEL_62;
    }

LABEL_66:
    if (!v19)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  if (!HIDWORD(v133[4]))
  {
    goto LABEL_66;
  }

LABEL_62:

  if (v19)
  {
LABEL_67:
  }

LABEL_68:
  if (v9 != v10)
  {
  }

  return v131[8];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [MTMutableAlarm allocWithZone:a3];
  v5 = [(MTAlarm *)self alarmID];
  v6 = [(MTAlarm *)v4 initWithIdentifier:v5];

  [(MTAlarm *)self _copyStateOntoAlarm:v6];
  return v6;
}

- (void)_copyStateOntoAlarm:(id)a3
{
  v4 = a3;
  [v4 setHour:{-[MTAlarm hour](self, "hour")}];
  [v4 setMinute:{-[MTAlarm minute](self, "minute")}];
  [v4 setBedtimeHour:{-[MTAlarm bedtimeHour](self, "bedtimeHour")}];
  [v4 setBedtimeMinute:{-[MTAlarm bedtimeMinute](self, "bedtimeMinute")}];
  v5 = [(MTAlarm *)self bedtimeReminder];
  [v4 setBedtimeReminder:v5];

  [v4 setSleepMode:{-[MTAlarm sleepMode](self, "sleepMode")}];
  [v4 setSleepModeOptions:{-[MTAlarm sleepModeOptions](self, "sleepModeOptions")}];
  [v4 setSleepTracking:{-[MTAlarm sleepTracking](self, "sleepTracking")}];
  [v4 setDay:{-[MTAlarm day](self, "day")}];
  [v4 setMonth:{-[MTAlarm month](self, "month")}];
  [v4 setYear:{-[MTAlarm year](self, "year")}];
  [v4 setTimeInBedTracking:{-[MTAlarm timeInBedTracking](self, "timeInBedTracking")}];
  [v4 setSleepSchedule:{-[MTAlarm sleepSchedule](self, "sleepSchedule")}];
  [v4 setRepeatSchedule:{-[MTAlarm repeatSchedule](self, "repeatSchedule")}];
  [v4 setEnabled:{-[MTAlarm isEnabled](self, "isEnabled")}];
  [v4 setSilentModeOptions:{-[MTAlarm silentModeOptions](self, "silentModeOptions")}];
  [v4 setSleepAlarm:{-[MTAlarm isSleepAlarm](self, "isSleepAlarm")}];
  [v4 setAllowsSnooze:{-[MTAlarm allowsSnooze](self, "allowsSnooze")}];
  [v4 setSnoozeDuration:{-[MTAlarm snoozeDuration](self, "snoozeDuration")}];
  v6 = [(MTAlarm *)self snoozeFireDate];
  [v4 setSnoozeFireDate:v6];

  v7 = [(MTAlarm *)self bedtimeSnoozeFireDate];
  [v4 setBedtimeSnoozeFireDate:v7];

  v8 = [(MTAlarm *)self firedDate];
  [v4 setFiredDate:v8];

  v9 = [(MTAlarm *)self dismissedDate];
  [v4 setDismissedDate:v9];

  [v4 setDismissedAction:{-[MTAlarm dismissedAction](self, "dismissedAction")}];
  v10 = [(MTAlarm *)self lastModifiedDate];
  [v4 setLastModifiedDate:v10];

  v11 = [(MTAlarm *)self bedtimeFiredDate];
  [v4 setBedtimeFiredDate:v11];

  v12 = [(MTAlarm *)self bedtimeDismissedDate];
  [v4 setBedtimeDismissedDate:v12];

  [v4 setBedtimeDismissedAction:{-[MTAlarm bedtimeDismissedAction](self, "bedtimeDismissedAction")}];
  v13 = [(MTAlarm *)self keepOffUntilDate];
  [v4 setKeepOffUntilDate:v13];

  v14 = [(MTAlarm *)self overriddenForDate];
  [v4 setOverriddenForDate:v14];

  v15 = [(MTAlarm *)self title];
  [v4 setTitle:v15];

  v16 = [(MTAlarm *)self sound];
  [v4 setSound:v16];

  [v4 setOnboardingVersion:{-[MTAlarm onboardingVersion](self, "onboardingVersion")}];
  v17 = [(MTAlarm *)self currentDateProvider];
  [v4 setCurrentDateProvider:v17];

  v18 = [(MTAlarm *)self siriContext];
  [v4 setSiriContext:v18];

  v19 = [(MTAlarm *)self bypassReloadDate];
  [v4 setBypassReloadDate:v19];
}

- (id)initFromDeserializer:(id)a3
{
  v4 = a3;
  v5 = [(MTAlarm *)self _initCommon];
  v6 = v5;
  if (v5)
  {
    [v5 _updatePropertiesFromDeserializer:v4];
  }

  return v6;
}

- (void)_updatePropertiesFromDeserializer:(id)a3
{
  v125 = *MEMORY[0x1E69E9840];
  v119 = a3;
  v4 = [v119 mtCoder];
  if ([v4 mtType] != 3)
  {
    v118 = 0;
    LOBYTE(v15) = 0;
    v16 = 0;
    v17 = 0;
    v120 = 0;
    v18 = 0;
    v19 = 0;
    v117 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_105;
  }

  [v4 decodeFloatForKey:@"MTAlarmDataVersion"];
  v6 = v5;
  v7 = v5 < 1.2;
  if (v5 < 1.2)
  {
    self->_enabled = [v4 decodeBoolForKey:@"MTAlarmActive"];
  }

  if (v6 < 1.3)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmID"];
    alarmID = self->_alarmID;
    self->_alarmID = v8;
  }

  if (v6 < 1.4 && v6 >= 1.2)
  {
    self->_enabled = [v4 decodeIntegerForKey:@"MTAlarmActive"] != 0;
    v7 = 1;
  }

  if (v6 < 1.6)
  {
    v10 = [v4 decodeBoolForKey:@"MTAlarmIsSleep"];
    self->_sleepAlarm = v10;
    if ((v10 & 1) == 0)
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmSound"];
      v12 = [[MTSound alloc] initWithSound:v11 usingVolume:0];
      sound = self->_sound;
      self->_sound = v12;
    }

    v14 = v10 ^ 1;
    if (v6 >= 1.8 || !self->_sleepAlarm)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v6 < 1.8)
  {
    v23 = [v4 decodeBoolForKey:@"MTAlarmIsSleep"];
    v14 = 0;
    self->_sleepAlarm = v23;
    if (!v23)
    {
LABEL_21:
      v15 = 1;
      goto LABEL_23;
    }

LABEL_18:
    v24 = MTLogForCategory(3);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = +[MTPairedDevicePreferences sharedInstance];
      *buf = 67109120;
      v122 = [v25 pushAlertsEnabled];
      _os_log_impl(&dword_1B1F9F000, v24, OS_LOG_TYPE_DEFAULT, "[Migration] (1.8) pushAlertsEnabled: %d", buf, 8u);
    }

    goto LABEL_21;
  }

  v14 = 0;
  v15 = 0;
LABEL_23:
  if (v6 < 1.9)
  {
    if (v14)
    {
      v26 = self->_sound;
    }

    else
    {
      v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmSound"];
    }

    if ([(MTSound *)v26 soundType]== 1)
    {
      v27 = *MEMORY[0x1E69DA928];
      v28 = [(MTSound *)v26 vibrationIdentifier];
      [(MTSound *)v26 soundVolume];
      v30 = v29 = v7;
      v31 = [MTSound toneSoundWithIdentifier:v27 vibrationIdentifer:v28 volume:v30];
      objc_storeStrong(&self->_sound, v31);

      v7 = v29;
    }

    else
    {
      v32 = v26;
      v28 = self->_sound;
      self->_sound = v32;
    }

    LOBYTE(v14) = 1;
  }

  if (v6 >= 2.2)
  {
    LOBYTE(v120) = 0;
    v33 = 0;
    goto LABEL_44;
  }

  if (!v15)
  {
    v34 = [v4 decodeBoolForKey:@"MTAlarmIsSleep"];
    self->_sleepAlarm = v34;
    if (v34)
    {
      goto LABEL_34;
    }

LABEL_38:
    LOBYTE(v120) = 0;
    v33 = 0;
    goto LABEL_43;
  }

  if (!self->_sleepAlarm)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v7)
  {
    self->_sleepSchedule = self->_enabled;
LABEL_40:
    if ([v4 decodeBoolForKey:@"MTAlarmSleepModeDetectionKey"])
    {
      self->_sleepModeOptions = 32;
    }

    LOBYTE(v7) = 1;
    self->_timeInBedTracking = 1;
    LOBYTE(v120) = 1;
    v33 = 1;
    goto LABEL_43;
  }

  v35 = [v4 decodeBoolForKey:@"MTAlarmEnabled"];
  sleepAlarm = self->_sleepAlarm;
  self->_enabled = v35;
  self->_sleepSchedule = v35;
  if (sleepAlarm)
  {
    goto LABEL_40;
  }

  v33 = 0;
  LOBYTE(v7) = 1;
  LOBYTE(v120) = 1;
LABEL_43:
  v15 = 1;
LABEL_44:
  BYTE4(v118) = v14;
  if (v6 < 2.3)
  {
    if (v15)
    {
      v37 = self->_sleepAlarm;
    }

    else
    {
      v37 = [v4 decodeBoolForKey:@"MTAlarmIsSleep"];
    }

    self->_sleepAlarm = v37;
    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmDismissDate"];
    p_dismissedDate = &self->_dismissedDate;
    dismissedDate = self->_dismissedDate;
    self->_dismissedDate = v38;

    self->_dismissedAction = 0;
    if (!self->_sleepAlarm)
    {
      v117 = 0;
      LOBYTE(v118) = 0;
LABEL_69:
      v15 = 1;
      goto LABEL_70;
    }

    v41 = v33;
    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmWakeupForSleepTracking"];
    v43 = v42;
    if (!v42)
    {
      v43 = *p_dismissedDate;
    }

    objc_storeStrong(&self->_dismissedDate, v43);
    self->_dismissedAction = 5;
    if ([(NSDate *)v42 mtIsAfterDate:self->_dismissedDate])
    {
      v44 = v42;
    }

    else
    {
      v44 = 0;
    }

    objc_storeStrong(&self->_keepOffUntilDate, v44);
    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmBedtimeForSleepTracking"];
    objc_storeStrong(&self->_bedtimeDismissedDate, v45);
    v46 = 1;
    if (v45)
    {
      v46 = 2;
    }

    self->_bedtimeDismissedAction = v46;
    v47 = [v4 decodeBoolForKey:@"MTAlarmFiring"];
    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmFireDate"];
    firedDate = self->_firedDate;
    self->_firedDate = v48;

    if ((v47 & 1) != 0 || (v50 = self->_firedDate) == 0)
    {
      LOBYTE(v118) = 0;
      v33 = v41;
    }

    else
    {
      if (*p_dismissedDate)
      {
        v33 = v41;
        if (![(NSDate *)self->_firedDate mtIsAfterDate:?])
        {
          LOBYTE(v118) = 0;
          goto LABEL_68;
        }

        v50 = self->_firedDate;
      }

      else
      {
        v33 = v41;
      }

      objc_storeStrong(&self->_bedtimeFiredDate, v50);
      v51 = self->_firedDate;
      self->_firedDate = 0;

      LOBYTE(v118) = 1;
    }

LABEL_68:

    v117 = 1;
    goto LABEL_69;
  }

  v117 = 0;
  LOBYTE(v118) = 0;
LABEL_70:
  BYTE4(v120) = v6 < 2.4;
  v18 = v33;
  if (v6 < 2.4)
  {
    v52 = [v4 decodeIntegerForKey:@"MTAlarmOnboardingVersion"];
    self->_onboardingVersion = v52;
    v18 = v33;
    if (!v52)
    {
      self->_sleepModeOptions = [objc_opt_class() defaultSleepModeOptions];
      v18 = 1;
    }
  }

  v16 = v33;
  if (v6 < 2.5 && (v53 = [v4 decodeIntegerForKey:@"MTAlarmOnboardingVersion"], self->_onboardingVersion = v53, BYTE4(v120) = 1, v53))
  {
    self->_sleepMode = 1;
    self->_sleepModeOptions = [objc_opt_class() defaultSleepModeOptions];
    v18 = 1;
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  if (v6 < 2.6)
  {
    if (v15)
    {
      if (self->_sleepAlarm)
      {
LABEL_80:
        v54 = [v4 decodeBoolForKey:@"MTAlarmEnabled"];
        v55 = [v4 decodeBoolForKey:@"MTAlarmSleepScheduleKey"];
        v56 = MTLogForCategory(3);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v122 = v54;
          v123 = 1024;
          v124 = v55;
          _os_log_impl(&dword_1B1F9F000, v56, OS_LOG_TYPE_DEFAULT, "[Migration] (2.6) old enabled: %d, sleepSchedule: %d", buf, 0xEu);
        }

        v57 = (v54 | v55) & 1;
        self->_enabled = v57;
        self->_sleepSchedule = v57;
        v58 = MTLogForCategory(3);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          enabled = self->_enabled;
          sleepSchedule = self->_sleepSchedule;
          *buf = 67109376;
          v122 = enabled;
          v123 = 1024;
          v124 = sleepSchedule;
          _os_log_impl(&dword_1B1F9F000, v58, OS_LOG_TYPE_DEFAULT, "[Migration] (2.6) new enabled: %d, sleepSchedule: %d", buf, 0xEu);
        }

        LOBYTE(v120) = 1;
        v15 = 1;
        LOBYTE(v7) = 1;
        goto LABEL_87;
      }
    }

    else
    {
      v61 = [v4 decodeBoolForKey:@"MTAlarmIsSleep"];
      self->_sleepAlarm = v61;
      if (v61)
      {
        goto LABEL_80;
      }
    }

    v15 = 1;
  }

LABEL_87:
  if (v6 >= 3.0)
  {
    v20 = 0;
    goto LABEL_95;
  }

  if (!v15)
  {
    v66 = [v4 decodeBoolForKey:@"MTAlarmIsSleep"];
    self->_sleepAlarm = v66;
    if (v66)
    {
      goto LABEL_90;
    }

LABEL_93:
    v20 = 0;
    goto LABEL_94;
  }

  if (!self->_sleepAlarm)
  {
    goto LABEL_93;
  }

LABEL_90:
  v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmRepeatSchedule"];
  self->_repeatSchedule = [v62 unsignedIntegerValue];

  v63 = [MTAlarm sleepScheduleString:self->_repeatSchedule];
  v64 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v63];
  v65 = self->_alarmID;
  self->_alarmID = v64;

  v20 = 1;
LABEL_94:
  LOBYTE(v15) = 1;
LABEL_95:
  v21 = v6 < 4.0;
  if (v6 < 4.0)
  {
    self->_silentModeOptions = [objc_opt_class() defaultSilentModeOptions];
  }

  v22 = v6 < 5.0;
  if (v6 >= 5.0)
  {
    if (!v7)
    {
      v22 = 0;
      goto LABEL_104;
    }
  }

  else
  {
    self->_snoozeDuration = [objc_opt_class() defaultSnoozeDuration];
    if (!v7)
    {
      v22 = 1;
LABEL_104:
      v19 = v6 < 2.3;
LABEL_105:
      self->_enabled = [v4 decodeBoolForKey:@"MTAlarmEnabled"];
      if (v15)
      {
        goto LABEL_107;
      }

      goto LABEL_106;
    }
  }

  v19 = v6 < 2.3;
  if ((v15 & 1) == 0)
  {
LABEL_106:
    self->_sleepAlarm = [v4 decodeBoolForKey:@"MTAlarmIsSleep"];
  }

LABEL_107:
  if ((v118 & 0x100000000) == 0)
  {
    v67 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmSound"];
    v68 = self->_sound;
    self->_sound = v67;
  }

  self->_sleepTracking = [v4 decodeBoolForKey:@"MTAlarmSleepTrackingKey"];
  if ((v16 & 1) == 0)
  {
    self->_timeInBedTracking = [v4 decodeBoolForKey:@"MTAlarmTimeInBedTrackingKey"];
  }

  if ((v17 & 1) == 0)
  {
    self->_sleepMode = [v4 decodeBoolForKey:@"MTAlarmBedtimeDoNotDisturb"];
  }

  if (v120)
  {
    if (v18)
    {
      goto LABEL_115;
    }
  }

  else
  {
    self->_sleepSchedule = [v4 decodeBoolForKey:@"MTAlarmSleepScheduleKey"];
    if (v18)
    {
LABEL_115:
      if (v21)
      {
        goto LABEL_116;
      }

      goto LABEL_139;
    }
  }

  self->_sleepModeOptions = [v4 decodeIntegerForKey:@"MTAlarmBedtimeDoNotDisturbOptions"];
  if (v21)
  {
LABEL_116:
    if (v19)
    {
      goto LABEL_118;
    }

    goto LABEL_117;
  }

LABEL_139:
  self->_silentModeOptions = [v4 decodeIntegerForKey:@"MTAlarmSilentModeOptions"];
  if (!v19)
  {
LABEL_117:
    v69 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmDismissDate"];
    v70 = self->_dismissedDate;
    self->_dismissedDate = v69;

    self->_dismissedAction = [v4 decodeIntegerForKey:@"MTAlarmDismissAction"];
    v71 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmBedtimeDismissDate"];
    bedtimeDismissedDate = self->_bedtimeDismissedDate;
    self->_bedtimeDismissedDate = v71;

    self->_bedtimeDismissedAction = [v4 decodeIntegerForKey:@"MTAlarmBedtimeDismissAction"];
    v73 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmKeepOffUntilDate"];
    keepOffUntilDate = self->_keepOffUntilDate;
    self->_keepOffUntilDate = v73;
  }

LABEL_118:
  if ((v120 & 0x100000000) == 0)
  {
    self->_onboardingVersion = [v4 decodeIntegerForKey:@"MTAlarmOnboardingVersion"];
  }

  if ((v117 & 1) == 0)
  {
    v75 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmFireDate"];
    v76 = self->_firedDate;
    self->_firedDate = v75;
  }

  if ((v118 & 1) == 0)
  {
    v77 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmBedtimeFireDate"];
    bedtimeFiredDate = self->_bedtimeFiredDate;
    self->_bedtimeFiredDate = v77;
  }

  if ((v20 & 1) == 0)
  {
    v79 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmRepeatSchedule"];
    self->_repeatSchedule = [v79 unsignedIntegerValue];
  }

  if (!self->_alarmID)
  {
    v80 = objc_alloc(MEMORY[0x1E696AFB0]);
    v81 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmID"];
    v82 = [v80 initWithUUIDString:v81];
    v83 = self->_alarmID;
    self->_alarmID = v82;
  }

  v84 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmHour"];
  self->_hour = [v84 integerValue];

  v85 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmMinute"];
  self->_minute = [v85 integerValue];

  v86 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmBedtimeHour"];
  self->_bedtimeHour = [v86 integerValue];

  v87 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmBedtimeMinute"];
  self->_bedtimeMinute = [v87 integerValue];

  v88 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmDay"];
  v89 = [v88 integerValue];

  if ([(MTAlarm *)self isValidDateComponent:v89])
  {
    self->_day = v89;
  }

  v90 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmMonth"];
  v91 = [v90 integerValue];

  if ([(MTAlarm *)self isValidDateComponent:v91])
  {
    self->_month = v91;
  }

  v92 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmYear"];
  v93 = [v92 integerValue];

  if ([(MTAlarm *)self isValidDateComponent:v93])
  {
    self->_year = v93;
  }

  v94 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmBedtimeReminderMinutes"];
  bedtimeReminder = self->_bedtimeReminder;
  self->_bedtimeReminder = v94;

  self->_allowsSnooze = [v4 decodeBoolForKey:@"MTAlarmAllowsSnooze"];
  if (!v22)
  {
    v96 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmSnoozeDuration"];
    if ([v96 longLongValue])
    {
      v97 = [v96 longLongValue];
    }

    else
    {
      v97 = [objc_opt_class() defaultSnoozeDuration];
    }

    self->_snoozeDuration = v97;
  }

  v98 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmSnoozeFireDate"];
  snoozeFireDate = self->_snoozeFireDate;
  self->_snoozeFireDate = v98;

  v100 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmBedtimeSnoozeFireDate"];
  bedtimeSnoozeFireDate = self->_bedtimeSnoozeFireDate;
  self->_bedtimeSnoozeFireDate = v100;

  v102 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmLastModifiedDate"];
  lastModifiedDate = self->_lastModifiedDate;
  self->_lastModifiedDate = v102;

  v104 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmTitle"];
  title = self->_title;
  self->_title = v104;

  v106 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmOverriddenForDate"];
  overriddenForDate = self->_overriddenForDate;
  self->_overriddenForDate = v106;

  v108 = MEMORY[0x1E695DFD8];
  v109 = objc_opt_class();
  v110 = objc_opt_class();
  v111 = [v108 setWithObjects:{v109, v110, objc_opt_class(), 0}];
  v112 = [v4 decodeObjectOfClasses:v111 forKey:@"MTAlarmSiriContext"];
  siriContext = self->_siriContext;
  self->_siriContext = v112;

  v114 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmBypassReloadDate"];
  bypassReloadDate = self->_bypassReloadDate;
  self->_bypassReloadDate = v114;

  v116 = *MEMORY[0x1E69E9840];
}

- (void)serializeWithSerializer:(id)a3
{
  v29 = [a3 mtCoder];
  if ([v29 mtType] == 2)
  {
    LODWORD(v4) = 5.0;
    [v29 encodeFloat:@"MTAlarmDataVersion" forKey:v4];
  }

  v5 = [(MTAlarm *)self alarmIDString];
  [v29 encodeObject:v5 forKey:@"MTAlarmID"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTAlarm hour](self, "hour")}];
  [v29 encodeObject:v6 forKey:@"MTAlarmHour"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTAlarm minute](self, "minute")}];
  [v29 encodeObject:v7 forKey:@"MTAlarmMinute"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTAlarm bedtimeHour](self, "bedtimeHour")}];
  [v29 encodeObject:v8 forKey:@"MTAlarmBedtimeHour"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTAlarm bedtimeMinute](self, "bedtimeMinute")}];
  [v29 encodeObject:v9 forKey:@"MTAlarmBedtimeMinute"];

  v10 = [(MTAlarm *)self bedtimeReminder];
  [v29 encodeObject:v10 forKey:@"MTAlarmBedtimeReminderMinutes"];

  [v29 encodeBool:-[MTAlarm sleepMode](self forKey:{"sleepMode"), @"MTAlarmBedtimeDoNotDisturb"}];
  [v29 encodeInteger:-[MTAlarm sleepModeOptions](self forKey:{"sleepModeOptions"), @"MTAlarmBedtimeDoNotDisturbOptions"}];
  [v29 encodeBool:-[MTAlarm sleepTracking](self forKey:{"sleepTracking"), @"MTAlarmSleepTrackingKey"}];
  if ([(MTAlarm *)self isValidDateComponent:[(MTAlarm *)self day]])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTAlarm day](self, "day")}];
    [v29 encodeObject:v11 forKey:@"MTAlarmDay"];
  }

  if ([(MTAlarm *)self isValidDateComponent:[(MTAlarm *)self month]])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTAlarm month](self, "month")}];
    [v29 encodeObject:v12 forKey:@"MTAlarmMonth"];
  }

  if ([(MTAlarm *)self isValidDateComponent:[(MTAlarm *)self year]])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTAlarm year](self, "year")}];
    [v29 encodeObject:v13 forKey:@"MTAlarmYear"];
  }

  [v29 encodeBool:-[MTAlarm timeInBedTracking](self forKey:{"timeInBedTracking"), @"MTAlarmTimeInBedTrackingKey"}];
  [v29 encodeBool:-[MTAlarm sleepSchedule](self forKey:{"sleepSchedule"), @"MTAlarmSleepScheduleKey"}];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTAlarm repeatSchedule](self, "repeatSchedule")}];
  [v29 encodeObject:v14 forKey:@"MTAlarmRepeatSchedule"];

  [v29 encodeBool:-[MTAlarm isEnabled](self forKey:{"isEnabled"), @"MTAlarmEnabled"}];
  [v29 encodeInteger:-[MTAlarm silentModeOptions](self forKey:{"silentModeOptions"), @"MTAlarmSilentModeOptions"}];
  [v29 encodeBool:-[MTAlarm isSleepAlarm](self forKey:{"isSleepAlarm"), @"MTAlarmIsSleep"}];
  [v29 encodeBool:-[MTAlarm allowsSnooze](self forKey:{"allowsSnooze"), @"MTAlarmAllowsSnooze"}];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTAlarm snoozeDuration](self, "snoozeDuration")}];
  [v29 encodeObject:v15 forKey:@"MTAlarmSnoozeDuration"];

  v16 = [(MTAlarm *)self snoozeFireDate];
  [v29 encodeObject:v16 forKey:@"MTAlarmSnoozeFireDate"];

  v17 = [(MTAlarm *)self bedtimeSnoozeFireDate];
  [v29 encodeObject:v17 forKey:@"MTAlarmBedtimeSnoozeFireDate"];

  v18 = [(MTAlarm *)self firedDate];
  [v29 encodeObject:v18 forKey:@"MTAlarmFireDate"];

  v19 = [(MTAlarm *)self dismissedDate];
  [v29 encodeObject:v19 forKey:@"MTAlarmDismissDate"];

  [v29 encodeInteger:-[MTAlarm dismissedAction](self forKey:{"dismissedAction"), @"MTAlarmDismissAction"}];
  v20 = [(MTAlarm *)self lastModifiedDate];
  [v29 encodeObject:v20 forKey:@"MTAlarmLastModifiedDate"];

  v21 = [(MTAlarm *)self bedtimeFiredDate];
  [v29 encodeObject:v21 forKey:@"MTAlarmBedtimeFireDate"];

  v22 = [(MTAlarm *)self bedtimeDismissedDate];
  [v29 encodeObject:v22 forKey:@"MTAlarmBedtimeDismissDate"];

  [v29 encodeInteger:-[MTAlarm bedtimeDismissedAction](self forKey:{"bedtimeDismissedAction"), @"MTAlarmBedtimeDismissAction"}];
  v23 = [(MTAlarm *)self keepOffUntilDate];
  [v29 encodeObject:v23 forKey:@"MTAlarmKeepOffUntilDate"];

  v24 = [(MTAlarm *)self title];
  [v29 encodeObject:v24 forKey:@"MTAlarmTitle"];

  v25 = [(MTAlarm *)self sound];
  [v29 encodeObject:v25 forKey:@"MTAlarmSound"];

  [v29 encodeInteger:-[MTAlarm onboardingVersion](self forKey:{"onboardingVersion"), @"MTAlarmOnboardingVersion"}];
  if ([v29 mtType] != 2)
  {
    v26 = [(MTAlarm *)self overriddenForDate];
    [v29 encodeObject:v26 forKey:@"MTAlarmOverriddenForDate"];
  }

  v27 = [(MTAlarm *)self siriContext];
  [v29 encodeObject:v27 forKey:@"MTAlarmSiriContext"];

  if ([v29 mtType] != 2)
  {
    v28 = [(MTAlarm *)self bypassReloadDate];
    [v29 encodeObject:v28 forKey:@"MTAlarmBypassReloadDate"];
  }
}

- (id)succinctDescription
{
  v2 = [(MTAlarm *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(MTAlarm *)self alarmID];
  v5 = [v3 appendObject:v4 withName:@"id"];

  v6 = [v3 appendBool:-[MTAlarm isSleepAlarm](self withName:"isSleepAlarm") ifEqualTo:{@"sleep", 1}];
  v7 = [v3 appendBool:-[MTAlarm isEnabled](self withName:{"isEnabled"), @"enabled"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(MTAlarm *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [(MTAlarm *)self alarmID];
  v6 = [v4 appendObject:v5 withName:@"id"];

  v7 = [v4 appendBool:-[MTAlarm isSleepAlarm](self withName:"isSleepAlarm") ifEqualTo:{@"sleep", 1}];
  v8 = [v4 appendBool:-[MTAlarm isEnabled](self withName:{"isEnabled"), @"enabled"}];
  v9 = [v4 appendInteger:-[MTAlarm hour](self withName:{"hour"), @"hour"}];
  v10 = [v4 appendInteger:-[MTAlarm minute](self withName:{"minute"), @"minute"}];
  if ([(MTAlarm *)self day]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v4 appendInteger:-[MTAlarm day](self withName:{"day"), @"day"}];
  }

  if ([(MTAlarm *)self month]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [v4 appendInteger:-[MTAlarm month](self withName:{"month"), @"month"}];
  }

  if ([(MTAlarm *)self year]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [v4 appendInteger:-[MTAlarm year](self withName:{"year"), @"year"}];
  }

  v14 = MTAlarmRepeatString([(MTAlarm *)self repeatSchedule]);
  [v4 appendString:v14 withName:@"schedule" skipIfEmpty:1];

  v15 = [v4 appendBool:-[MTAlarm allowsSnooze](self withName:{"allowsSnooze"), @"allowsSnooze"}];
  v16 = [v4 appendInteger:-[MTAlarm snoozeDuration](self withName:{"snoozeDuration"), @"snoozeDuration"}];
  v17 = [v4 appendBool:-[MTAlarm isSnoozed](self withName:"isSnoozed") ifEqualTo:{@"isSnoozed", 1}];
  v18 = [(MTAlarm *)self snoozeFireDate];
  v19 = [v4 appendObject:v18 withName:@"snoozeFireDate" skipIfNil:1];

  v20 = [v4 appendBool:-[MTAlarm isFiring](self withName:"isFiring") ifEqualTo:{@"isFiring", 1}];
  v21 = [(MTAlarm *)self title];
  [v4 appendString:v21 withName:@"title" skipIfEmpty:1];

  v22 = [(MTAlarm *)self siriContext];
  v23 = [v4 appendObject:v22 withName:@"siriContext" skipIfNil:1];

  v24 = [(MTAlarm *)self bypassReloadDate];
  v25 = [v4 appendBool:v24 != 0 withName:@"bypassReloadDate" ifEqualTo:1];

  v26 = [v4 appendBool:-[MTAlarm breaksThroughSilentModeOnThisDevice](self withName:"breaksThroughSilentModeOnThisDevice") ifEqualTo:{@"breaksThroughSilentMode", 1}];
  v27 = [(MTAlarm *)self sound];
  v28 = [v4 appendObject:v27 withName:@"sound" skipIfNil:1];

  return v4;
}

- (BOOL)shouldBypassWidgetReload
{
  v3 = [(MTAlarm *)self bypassReloadDate];

  if (!v3)
  {
    return 0;
  }

  v4 = [(MTAlarm *)self bypassReloadDate];
  v5 = [v4 dateByAddingTimeInterval:10.0];

  v6 = (*(self->_currentDateProvider + 2))();
  LOBYTE(v4) = [v6 mtIsBeforeDate:v5];

  return v4;
}

+ (id)propertiesAffectingWaketime
{
  if (propertiesAffectingWaketime_onceToken != -1)
  {
    +[MTAlarm(Properties) propertiesAffectingWaketime];
  }

  v3 = propertiesAffectingWaketime_propertiesAffectingWaketime;

  return v3;
}

void __50__MTAlarm_Properties__propertiesAffectingWaketime__block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"MTAlarmHour";
  v5[1] = @"MTAlarmMinute";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = propertiesAffectingWaketime_propertiesAffectingWaketime;
  propertiesAffectingWaketime_propertiesAffectingWaketime = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)propertiesAffectingBedtime
{
  if (propertiesAffectingBedtime_onceToken != -1)
  {
    +[MTAlarm(Properties) propertiesAffectingBedtime];
  }

  v3 = propertiesAffectingBedtime_propertiesAffectingBedtime;

  return v3;
}

void __49__MTAlarm_Properties__propertiesAffectingBedtime__block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"MTAlarmBedtimeHour";
  v5[1] = @"MTAlarmBedtimeMinute";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = propertiesAffectingBedtime_propertiesAffectingBedtime;
  propertiesAffectingBedtime_propertiesAffectingBedtime = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)propertiesAffectingSnooze
{
  if (propertiesAffectingSnooze_onceToken != -1)
  {
    +[MTAlarm(Properties) propertiesAffectingSnooze];
  }

  v3 = propertiesAffectingSnooze_propertiesAffectingSnooze;

  return v3;
}

void __48__MTAlarm_Properties__propertiesAffectingSnooze__block_invoke()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"MTAlarmHour";
  v5[1] = @"MTAlarmMinute";
  v5[2] = @"MTAlarmAllowsSnooze";
  v5[3] = @"MTAlarmSnoozeDuration";
  v5[4] = @"MTAlarmDismissDate";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v2 = [v0 setWithArray:v1];
  v3 = propertiesAffectingSnooze_propertiesAffectingSnooze;
  propertiesAffectingSnooze_propertiesAffectingSnooze = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)propertiesAffectingNotification
{
  if (propertiesAffectingNotification_onceToken != -1)
  {
    +[MTAlarm(Properties) propertiesAffectingNotification];
  }

  v3 = propertiesAffectingNotification_propertiesAffectingNotification;

  return v3;
}

void __54__MTAlarm_Properties__propertiesAffectingNotification__block_invoke()
{
  v5[23] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"MTAlarmHour";
  v5[1] = @"MTAlarmMinute";
  v5[2] = @"MTAlarmBedtimeHour";
  v5[3] = @"MTAlarmBedtimeMinute";
  v5[4] = @"MTAlarmRepeatSchedule";
  v5[5] = @"MTAlarmEnabled";
  v5[6] = @"MTAlarmBedtimeReminderMinutes";
  v5[7] = @"MTAlarmBedtimeDoNotDisturb";
  v5[8] = @"MTAlarmBedtimeDoNotDisturbOptions";
  v5[9] = @"MTAlarmSilentModeOptions";
  v5[10] = @"MTAlarmSleepScheduleKey";
  v5[11] = @"MTAlarmTimeInBedTrackingKey";
  v5[12] = @"MTAlarmSleepTrackingKey";
  v5[13] = @"MTAlarmBedtimeForSleepTracking";
  v5[14] = @"MTAlarmWakeupForSleepTracking";
  v5[15] = @"MTAlarmIsSleep";
  v5[16] = @"MTAlarmAllowsSnooze";
  v5[17] = @"MTAlarmSnoozeDuration";
  v5[18] = @"MTAlarmSnoozeFireDate";
  v5[19] = @"MTAlarmBedtimeSnoozeFireDate";
  v5[20] = @"MTAlarmTitle";
  v5[21] = @"MTAlarmSound";
  v5[22] = @"MTAlarmOnboardingVersion";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:23];
  v2 = [v0 setWithArray:v1];
  v3 = propertiesAffectingNotification_propertiesAffectingNotification;
  propertiesAffectingNotification_propertiesAffectingNotification = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)propertiesAffectingSync
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MTAlarm_Properties__propertiesAffectingSync__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (propertiesAffectingSync_onceToken[0] != -1)
  {
    dispatch_once(propertiesAffectingSync_onceToken, block);
  }

  v2 = propertiesAffectingSync_propertiesAffectingSync;

  return v2;
}

void __46__MTAlarm_Properties__propertiesAffectingSync__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E695DFD8];
  v4 = [*(a1 + 32) propertiesAffectingNotification];
  v2 = [v1 setWithSet:v4];
  v3 = propertiesAffectingSync_propertiesAffectingSync;
  propertiesAffectingSync_propertiesAffectingSync = v2;
}

+ (id)propertiesAffectingSessions
{
  if (propertiesAffectingSessions_onceToken_0 != -1)
  {
    +[MTAlarm(Properties) propertiesAffectingSessions];
  }

  v3 = propertiesAffectingSessions_propertiesAffectingSnooze;

  return v3;
}

void __50__MTAlarm_Properties__propertiesAffectingSessions__block_invoke()
{
  v5[13] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"MTAlarmHour";
  v5[1] = @"MTAlarmMinute";
  v5[2] = @"MTAlarmRepeatSchedule";
  v5[3] = @"MTAlarmEnabled";
  v5[4] = @"MTAlarmAllowsSnooze";
  v5[5] = @"MTAlarmSnoozeDuration";
  v5[6] = @"MTAlarmSnoozeFireDate";
  v5[7] = @"MTAlarmBedtimeSnoozeFireDate";
  v5[8] = @"MTAlarmTitle";
  v5[9] = @"MTAlarmSound";
  v5[10] = @"MTAlarmOnboardingVersion";
  v5[11] = @"MTAlarmFiring";
  v5[12] = @"MTAlarmDismissDate";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:13];
  v2 = [v0 setWithArray:v1];
  v3 = propertiesAffectingSessions_propertiesAffectingSnooze;
  propertiesAffectingSessions_propertiesAffectingSnooze = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (void)singleTimeOverrideDateInCalendar:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTAlarm.m" lineNumber:729 description:@"Must be a single time override"];
}

- (void)overridesNextAlarm:(uint64_t)a1 date:(uint64_t)a2 calendar:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTAlarm.m" lineNumber:735 description:@"Must be a single time override"];
}

- (void)overridesAlarm:(uint64_t)a1 trigger:(uint64_t)a2 calendar:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTAlarm.m" lineNumber:741 description:@"Must be a single time override"];
}

@end