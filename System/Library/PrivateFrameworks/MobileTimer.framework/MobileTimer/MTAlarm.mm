@interface MTAlarm
+ (BOOL)_date:(id)_date isOnDay:(int64_t)day calendar:(id)calendar;
+ (BOOL)_isInternalBuild;
+ (MTAlarm)alarmWithHour:(unint64_t)hour minute:(unint64_t)minute;
+ (id)alarm;
+ (id)mostRecentlyUpdatedAlarmForAlarms:(id)alarms;
+ (id)propertiesAffectingBedtime;
+ (id)propertiesAffectingNotification;
+ (id)propertiesAffectingSessions;
+ (id)propertiesAffectingSnooze;
+ (id)propertiesAffectingSync;
+ (id)propertiesAffectingWaketime;
+ (id)sleepAlarmWithHour:(int64_t)hour minute:(int64_t)minute;
+ (id)sleepAlarmWithHour:(int64_t)hour minute:(int64_t)minute bedtimeHour:(int64_t)bedtimeHour bedtimeMinute:(int64_t)bedtimeMinute;
+ (id)sleepAlarmWithHour:(int64_t)hour minute:(int64_t)minute year:(int64_t)year month:(int64_t)month day:(int64_t)day bedtimeHour:(int64_t)bedtimeHour bedtimeMinute:(int64_t)bedtimeMinute;
+ (id)sleepAlarmWithId:(id)id;
+ (id)sleepAlarmWithSchedule:(unint64_t)schedule;
+ (id)sleepScheduleString:(unint64_t)byte7;
- (BOOL)_isEqualToAlarm:(id)alarm checkLastModified:(BOOL)modified;
- (BOOL)confirmedLastBedtimeReminder;
- (BOOL)isBedtimeSnoozed;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFiring;
- (BOOL)isSnoozed;
- (BOOL)overridesAlarm:(id)alarm trigger:(id)trigger calendar:(id)calendar;
- (BOOL)overridesNextAlarm:(id)alarm date:(id)date calendar:(id)calendar;
- (BOOL)overridesScheduledObject:(id)object calendar:(id)calendar;
- (BOOL)shouldBeScheduled;
- (BOOL)shouldBypassWidgetReload;
- (MTAlarm)init;
- (MTAlarm)initWithCurrentTimeFromCurrentDateProvider:(id)provider;
- (MTAlarm)initWithHour:(unint64_t)hour minute:(unint64_t)minute;
- (MTAlarm)initWithHour:(unint64_t)hour minute:(unint64_t)minute currentDateProvider:(id)provider;
- (MTAlarm)initWithIdentifier:(id)identifier;
- (MTAlarm)initWithMTCDAlarm:(id)alarm;
- (MTIntentAlarm)intentAlarm;
- (NSDate)nextFireDate;
- (NSString)displayTitle;
- (NSURL)alarmURL;
- (double)sleepDurationSeconds;
- (id)_earliestTriggerDateForDate:(id)date;
- (id)_initCommon;
- (id)_nextDateHelperWithDate:(id)date calendar:(id)calendar;
- (id)alarmIDIntentObject;
- (id)alarmIDString;
- (id)alarmIntentDisplayString;
- (id)bedtimeComponents;
- (id)dateComponents;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)initFromDeserializer:(id)deserializer;
- (id)intentLabel;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)nextTrigger;
- (id)nextTriggerAfterDate:(id)date ofType:(unint64_t)type;
- (id)nextTriggersAfterDate:(id)date inclusionOptions:(unint64_t)options;
- (id)singleTimeOverrideDateInCalendar:(id)calendar;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)timeObject;
- (id)upcomingTriggersAfterDate:(id)date;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)_copyStateOntoAlarm:(id)alarm;
- (void)_updatePropertiesFromDeserializer:(id)deserializer;
- (void)resetSnoozeFireDate;
- (void)serializeWithSerializer:(id)serializer;
- (void)setBedtimeReminderMinutes:(unint64_t)minutes;
- (void)setTitle:(id)title;
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
        alarmID = [(MTAlarm *)self alarmID];
        v8 = 138543362;
        v9 = alarmID;
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

- (id)upcomingTriggersAfterDate:(id)date
{
  v4 = [(MTAlarm *)self nextTriggersAfterDate:date includeBedtime:1];
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

- (BOOL)overridesScheduledObject:(id)object calendar:(id)calendar
{
  calendarCopy = calendar;
  objectCopy = object;
  scheduleable = [objectCopy scheduleable];
  trigger = [objectCopy trigger];

  LOBYTE(objectCopy) = [(MTAlarm *)self overridesAlarm:scheduleable trigger:trigger calendar:calendarCopy];
  return objectCopy;
}

- (id)alarmIntentDisplayString
{
  title = [(MTAlarm *)self title];
  if (!title)
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
    hour = [(MTAlarm *)self hour];
    minute = [(MTAlarm *)self minute];
    v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
    v12 = [v8 dateBySettingHour:hour minute:minute second:0 ofDate:v11 options:0];

    v4 = [MEMORY[0x1E696AB78] localizedStringFromDate:v12 dateStyle:0 timeStyle:1];

    if (v4)
    {
      goto LABEL_3;
    }

    title = [(MTAlarm *)self displayTitle];
  }

  v4 = title;
LABEL_3:

  return v4;
}

- (id)alarmIDIntentObject
{
  alarmIDString = [(MTAlarm *)self alarmIDString];

  if (alarmIDString)
  {
    v4 = objc_alloc(MEMORY[0x1E696E910]);
    alarmIDString2 = [(MTAlarm *)self alarmIDString];
    alarmIntentDisplayString = [(MTAlarm *)self alarmIntentDisplayString];
    v7 = [v4 initWithIdentifier:alarmIDString2 displayString:alarmIntentDisplayString];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)intentLabel
{
  title = [(MTAlarm *)self title];
  v4 = [title length];

  if (v4)
  {
    title2 = [(MTAlarm *)self title];
  }

  else
  {
    title2 = 0;
  }

  return title2;
}

- (id)timeObject
{
  v3 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  hour = [(MTAlarm *)self hour];
  minute = [(MTAlarm *)self minute];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v7 = [v3 dateBySettingHour:hour minute:minute second:0 ofDate:v6 options:0];

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
  alarmIDString = [(MTAlarm *)self alarmIDString];

  if (alarmIDString)
  {
    v4 = [MTIntentAlarm alloc];
    alarmIDString2 = [(MTAlarm *)self alarmIDString];
    alarmIntentDisplayString = [(MTAlarm *)self alarmIntentDisplayString];
    alarmIDString = [(MTIntentAlarm *)v4 initWithIdentifier:alarmIDString2 displayString:alarmIntentDisplayString];

    dateComponents = [(MTAlarm *)self dateComponents];
    [(MTIntentAlarm *)alarmIDString setDateComponents:dateComponents];

    displayTitle = [(MTAlarm *)self displayTitle];
    [(MTIntentAlarm *)alarmIDString setLabel:displayTitle];

    v9 = MTRepeatDaysForAlarmRepeatSchedule([(MTAlarm *)self repeatSchedule]);
    [(MTIntentAlarm *)alarmIDString setRepeatSchedule:v9];
  }

  return alarmIDString;
}

- (BOOL)confirmedLastBedtimeReminder
{
  bedtimeDismissedDate = [(MTAlarm *)self bedtimeDismissedDate];
  if (bedtimeDismissedDate && [(MTAlarm *)self bedtimeDismissedAction]== 2)
  {
    firedDate = [(MTAlarm *)self firedDate];
    if (firedDate)
    {
      bedtimeDismissedDate2 = [(MTAlarm *)self bedtimeDismissedDate];
      firedDate2 = [(MTAlarm *)self firedDate];
      v7 = [bedtimeDismissedDate2 mtIsAfterOrSameAsDate:firedDate2];
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
  v2 = objc_alloc_init(self);

  return v2;
}

+ (MTAlarm)alarmWithHour:(unint64_t)hour minute:(unint64_t)minute
{
  v4 = [[self alloc] initWithHour:hour minute:minute];

  return v4;
}

+ (id)sleepAlarmWithSchedule:(unint64_t)schedule
{
  v5 = [MTAlarm sleepScheduleString:?];
  v6 = [self sleepAlarmWithId:v5];
  [v6 setRepeatSchedule:schedule];

  return v6;
}

+ (id)sleepAlarmWithId:(id)id
{
  idCopy = id;
  alarm = [self alarm];
  if (idCopy)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:idCopy];
    v7 = alarm[2];
    alarm[2] = v6;
  }

  [alarm setSleepAlarm:1];
  v8 = [MTSound defaultSoundForCategory:3];
  [alarm setSound:v8];

  [alarm setRepeatSchedule:127];
  [alarm setBedtimeReminderMinutes:15];
  [alarm setSleepSchedule:1];
  [alarm setSilentModeOptions:{objc_msgSend(objc_opt_class(), "defaultSilentModeOptions")}];
  [alarm setSleepModeOptions:{objc_msgSend(objc_opt_class(), "defaultSleepModeOptions")}];

  return alarm;
}

+ (id)sleepAlarmWithHour:(int64_t)hour minute:(int64_t)minute
{
  sleepAlarm = [self sleepAlarm];
  [sleepAlarm setHour:hour];
  [sleepAlarm setMinute:minute];

  return sleepAlarm;
}

+ (id)sleepAlarmWithHour:(int64_t)hour minute:(int64_t)minute bedtimeHour:(int64_t)bedtimeHour bedtimeMinute:(int64_t)bedtimeMinute
{
  v8 = [self sleepAlarmWithHour:hour minute:minute];
  [v8 setBedtimeHour:bedtimeHour];
  [v8 setBedtimeMinute:bedtimeMinute];

  return v8;
}

+ (id)sleepAlarmWithHour:(int64_t)hour minute:(int64_t)minute year:(int64_t)year month:(int64_t)month day:(int64_t)day bedtimeHour:(int64_t)bedtimeHour bedtimeMinute:(int64_t)bedtimeMinute
{
  if (year == 0x7FFFFFFFFFFFFFFFLL || month == 0x7FFFFFFFFFFFFFFFLL || day == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [self sleepAlarmWithHour:hour minute:minute bedtimeHour:bedtimeHour bedtimeMinute:{bedtimeMinute, day}];
  }

  else
  {
    v17 = [self sleepAlarmWithSchedule:0];
    [v17 setHour:hour];
    [v17 setMinute:minute];
    [v17 setYear:year];
    [v17 setMonth:month];
    [v17 setDay:day];
    [v17 setBedtimeHour:bedtimeHour];
    [v17 setBedtimeMinute:bedtimeMinute];
  }

  return v17;
}

- (MTAlarm)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _initCommon = [(MTAlarm *)self _initCommon];
  if (_initCommon)
  {
    v6 = [identifierCopy copy];
    alarmID = _initCommon->_alarmID;
    _initCommon->_alarmID = v6;
  }

  return _initCommon;
}

- (MTAlarm)init
{
  v3 = MTCurrentDateProvider();
  v4 = [(MTAlarm *)self initWithCurrentTimeFromCurrentDateProvider:v3];

  return v4;
}

- (MTAlarm)initWithCurrentTimeFromCurrentDateProvider:(id)provider
{
  v4 = MEMORY[0x1E695DEE8];
  providerCopy = provider;
  currentCalendar = [v4 currentCalendar];
  v7 = providerCopy[2](providerCopy);
  v8 = [currentCalendar components:96 fromDate:v7];

  v9 = -[MTAlarm initWithHour:minute:currentDateProvider:](self, "initWithHour:minute:currentDateProvider:", [v8 hour], objc_msgSend(v8, "minute"), providerCopy);
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

- (MTAlarm)initWithHour:(unint64_t)hour minute:(unint64_t)minute
{
  v7 = MTCurrentDateProvider();
  v8 = [(MTAlarm *)self initWithHour:hour minute:minute currentDateProvider:v7];

  return v8;
}

- (MTAlarm)initWithHour:(unint64_t)hour minute:(unint64_t)minute currentDateProvider:(id)provider
{
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = MTAlarm;
  v9 = [(MTAlarm *)&v18 init];
  if (v9)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v11 = *(v9 + 2);
    *(v9 + 2) = uUID;

    *(v9 + 3) = hour;
    *(v9 + 4) = minute;
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
    v15 = [providerCopy copy];
    v16 = *(v9 + 29);
    *(v9 + 29) = v15;
  }

  return v9;
}

- (MTAlarm)initWithMTCDAlarm:(id)alarm
{
  alarmCopy = alarm;
  v5 = [MTMutableAlarm alloc];
  mtid = [alarmCopy mtid];
  v7 = [(MTAlarm *)v5 initWithIdentifier:mtid];

  -[MTAlarm setHour:](v7, "setHour:", [alarmCopy hour]);
  -[MTAlarm setMinute:](v7, "setMinute:", [alarmCopy minute]);
  title = [alarmCopy title];
  [(MTAlarm *)v7 setTitle:title];

  -[MTAlarm setEnabled:](v7, "setEnabled:", [alarmCopy enabled]);
  -[MTAlarm setDay:](v7, "setDay:", [alarmCopy day]);
  -[MTAlarm setMonth:](v7, "setMonth:", [alarmCopy month]);
  -[MTAlarm setYear:](v7, "setYear:", [alarmCopy year]);
  -[MTAlarm setRepeatSchedule:](v7, "setRepeatSchedule:", [alarmCopy repeatSchedule]);
  -[MTAlarm setSilentModeOptions:](v7, "setSilentModeOptions:", [alarmCopy silentModeOptions]);
  -[MTAlarm setSleepAlarm:](v7, "setSleepAlarm:", [alarmCopy sleepAlarm]);
  -[MTAlarm setSleepSchedule:](v7, "setSleepSchedule:", [alarmCopy sleepSchedule]);
  -[MTAlarm setAllowsSnooze:](v7, "setAllowsSnooze:", [alarmCopy allowsSnooze]);
  -[MTAlarm setSnoozeDuration:](v7, "setSnoozeDuration:", [alarmCopy snoozeDuration]);
  snoozeFireDate = [alarmCopy snoozeFireDate];
  [(MTAlarm *)v7 setSnoozeFireDate:snoozeFireDate];

  firedDate = [alarmCopy firedDate];
  [(MTAlarm *)v7 setFiredDate:firedDate];

  dismissedDate = [alarmCopy dismissedDate];
  [(MTAlarm *)v7 setDismissedDate:dismissedDate];

  -[MTAlarm setDismissedAction:](v7, "setDismissedAction:", [alarmCopy dismissedAction]);
  lastModifiedDate = [alarmCopy lastModifiedDate];
  [(MTAlarm *)v7 setLastModifiedDate:lastModifiedDate];

  keepOffUntilDate = [alarmCopy keepOffUntilDate];
  [(MTAlarm *)v7 setKeepOffUntilDate:keepOffUntilDate];

  siriContextDecoded = [alarmCopy siriContextDecoded];
  [(MTAlarm *)v7 setSiriContext:siriContextDecoded];

  v15 = [MTSound alloc];
  sound = [alarmCopy sound];

  v17 = [(MTSound *)v15 initWithMTCDSound:sound];
  [(MTAlarm *)v7 setSound:v17];

  v18 = [(MTMutableAlarm *)v7 copy];
  return v18;
}

- (void)setBedtimeReminderMinutes:(unint64_t)minutes
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:minutes];
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
  alarmID = [(MTAlarm *)self alarmID];
  uUIDString = [alarmID UUIDString];

  return uUIDString;
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
  alarmID = [(MTAlarm *)self alarmID];
  uUIDString = [alarmID UUIDString];
  v4 = [@"x-apple-clock:alarm?id=" stringByAppendingString:uUIDString];

  v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];

  return v5;
}

- (BOOL)isSnoozed
{
  snoozeFireDate = [(MTAlarm *)self snoozeFireDate];
  v3 = snoozeFireDate != 0;

  return v3;
}

- (BOOL)isBedtimeSnoozed
{
  bedtimeSnoozeFireDate = [(MTAlarm *)self bedtimeSnoozeFireDate];
  v3 = bedtimeSnoozeFireDate != 0;

  return v3;
}

- (void)resetSnoozeFireDate
{
  [(MTAlarm *)self setSnoozeFireDate:0];
  lastModifiedDate = [(MTAlarm *)self lastModifiedDate];
  [(MTAlarm *)self setDismissedDate:lastModifiedDate];

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
    firedDate = [(MTAlarm *)self firedDate];
    if (firedDate)
    {
      dismissedDate = [(MTAlarm *)self dismissedDate];
      if (dismissedDate)
      {
        firedDate2 = [(MTAlarm *)self firedDate];
        dismissedDate2 = [(MTAlarm *)self dismissedDate];
        if ([firedDate2 mtIsAfterDate:dismissedDate2])
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

- (void)setTitle:(id)title
{
  titleCopy = title;
  if ([titleCopy length])
  {
    v4 = titleCopy;
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
  title = [(MTAlarm *)self title];
  v3 = title;
  if (title)
  {
    v4 = title;
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

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  hour = [(MTAlarm *)self hour];
  if (hour < [compareCopy hour])
  {
    goto LABEL_2;
  }

  hour2 = [(MTAlarm *)self hour];
  if (hour2 > [compareCopy hour])
  {
    goto LABEL_4;
  }

  minute = [(MTAlarm *)self minute];
  if (minute < [compareCopy minute])
  {
LABEL_2:
    v6 = -1;
    goto LABEL_5;
  }

  minute2 = [(MTAlarm *)self minute];
  if (minute2 > [compareCopy minute])
  {
LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  displayTitle = [(MTAlarm *)self displayTitle];
  displayTitle2 = [compareCopy displayTitle];
  v6 = [displayTitle compare:displayTitle2];

  if (!v6)
  {
    alarmID = [(MTAlarm *)self alarmID];
    uUIDString = [alarmID UUIDString];
    alarmID2 = [compareCopy alarmID];
    uUIDString2 = [alarmID2 UUIDString];
    v6 = [uUIDString compare:uUIDString2];
  }

LABEL_5:

  return v6;
}

- (NSDate)nextFireDate
{
  nextTrigger = [(MTAlarm *)self nextTrigger];
  triggerDate = [nextTrigger triggerDate];

  return triggerDate;
}

- (id)nextTrigger
{
  v3 = (*(self->_currentDateProvider + 2))();
  v4 = [(MTAlarm *)self nextTriggerAfterDate:v3];

  return v4;
}

- (id)nextTriggerAfterDate:(id)date ofType:(unint64_t)type
{
  v5 = [(MTAlarm *)self nextTriggersAfterDate:date inclusionOptions:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__MTAlarm_nextTriggerAfterDate_ofType___block_invoke;
  v8[3] = &__block_descriptor_40_e19_B16__0__MTTrigger_8l;
  v8[4] = type;
  v6 = [v5 na_firstObjectPassingTest:v8];

  return v6;
}

- (id)nextTriggersAfterDate:(id)date inclusionOptions:(unint64_t)options
{
  optionsCopy = options;
  v54 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    alarmID = [(MTAlarm *)self alarmID];
    v49 = 138543618;
    v50 = alarmID;
    v51 = 2114;
    *v52 = dateCopy;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "Date before computing earlierst trigger date for %{public}@: %{public}@", &v49, 0x16u);
  }

  v9 = [(MTAlarm *)self _earliestTriggerDateForDate:dateCopy];

  v10 = MTLogForCategory(3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    alarmID2 = [(MTAlarm *)self alarmID];
    v49 = 138543618;
    v50 = alarmID2;
    v51 = 2114;
    *v52 = v9;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "Computing next fire date for %{public}@ after %{public}@", &v49, 0x16u);
  }

  array = [MEMORY[0x1E695DF70] array];
  v13 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v14 = MTLogForCategory(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    alarmID3 = [(MTAlarm *)self alarmID];
    isSnoozed = [(MTAlarm *)self isSnoozed];
    repeats = [(MTAlarm *)self repeats];
    v49 = 138543874;
    v50 = alarmID3;
    v51 = 1024;
    *v52 = isSnoozed;
    *&v52[4] = 1024;
    *&v52[6] = repeats;
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
        alarmID4 = [(MTAlarm *)self alarmID];
        v49 = 138543618;
        v50 = alarmID4;
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
        alarmID5 = [(MTAlarm *)self alarmID];
        v49 = 138543618;
        v50 = alarmID5;
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
      alarmID6 = [(MTAlarm *)self alarmID];
      v49 = 138543618;
      v50 = alarmID6;
      v51 = 2114;
      *v52 = v25;
      _os_log_impl(&dword_1B1F9F000, v26, OS_LOG_TYPE_DEFAULT, "Alarm %{public}@ alarm trigger: %{public}@", &v49, 0x16u);
    }

    [array addObject:v25];
    v28 = MTLogForCategory(3);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      alarmID7 = [(MTAlarm *)self alarmID];
      v49 = 138543874;
      v50 = alarmID7;
      v51 = 2114;
      *v52 = v18;
      *&v52[8] = 2114;
      v53 = v9;
      _os_log_impl(&dword_1B1F9F000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ has next fire date %{public}@ after %{public}@", &v49, 0x20u);
    }
  }

  v30 = optionsCopy & 1;
  v31 = MTLogForCategory(3);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    alarmID8 = [(MTAlarm *)self alarmID];
    v49 = 138543618;
    v50 = alarmID8;
    v51 = 1024;
    *v52 = v30;
    _os_log_impl(&dword_1B1F9F000, v31, OS_LOG_TYPE_DEFAULT, "Alarm %{public}@ include snooze: %d", &v49, 0x12u);
  }

  if (v30 && [(MTAlarm *)self isSnoozed])
  {
    snoozeFireDate = [(MTAlarm *)self snoozeFireDate];
    v34 = [snoozeFireDate mtIsBeforeOrSameAsDate:v9];

    snoozeFireDate4 = MTLogForCategory(3);
    v36 = os_log_type_enabled(snoozeFireDate4, OS_LOG_TYPE_DEFAULT);
    if (v34)
    {
      if (!v36)
      {
LABEL_39:

        goto LABEL_40;
      }

      snoozeFireDate2 = [(MTAlarm *)self snoozeFireDate];
      alarmID9 = [(MTAlarm *)self alarmID];
      v49 = 138543618;
      v50 = snoozeFireDate2;
      v51 = 2114;
      *v52 = alarmID9;
      _os_log_impl(&dword_1B1F9F000, snoozeFireDate4, OS_LOG_TYPE_DEFAULT, "Snooze has already fired (%{public}@) for alert %{public}@", &v49, 0x16u);
    }

    else
    {
      if (v36)
      {
        snoozeFireDate3 = [(MTAlarm *)self snoozeFireDate];
        alarmID10 = [(MTAlarm *)self alarmID];
        v49 = 138543618;
        v50 = snoozeFireDate3;
        v51 = 2114;
        *v52 = alarmID10;
        _os_log_impl(&dword_1B1F9F000, snoozeFireDate4, OS_LOG_TYPE_DEFAULT, "Snooze hasn't fired yet (%{public}@) for alert %{public}@", &v49, 0x16u);
      }

      snoozeFireDate4 = [(MTAlarm *)self snoozeFireDate];
      if ([(MTAlarm *)self isSleepAlarm])
      {
        v41 = 5;
      }

      else
      {
        v41 = 1;
      }

      snoozeFireDate2 = [MTTrigger triggerWithDate:snoozeFireDate4 triggerType:v41];
      [array addObject:snoozeFireDate2];
    }

    goto LABEL_39;
  }

LABEL_40:
  [array sortUsingComparator:&__block_literal_global_73];
  v42 = MTLogForCategory(3);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    alarmID11 = [(MTAlarm *)self alarmID];
    v49 = 138543618;
    v50 = alarmID11;
    v51 = 2114;
    *v52 = array;
    _os_log_impl(&dword_1B1F9F000, v42, OS_LOG_TYPE_DEFAULT, "Alarm %{public}@ candidate triggers after sorting: %{public}@", &v49, 0x16u);
  }

  firstObject = [array firstObject];
  v45 = MTLogForCategory(3);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    alarmID12 = [(MTAlarm *)self alarmID];
    v49 = 138543618;
    v50 = alarmID12;
    v51 = 2114;
    *v52 = firstObject;
    _os_log_impl(&dword_1B1F9F000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@ has next trigger %{public}@", &v49, 0x16u);
  }

  v47 = *MEMORY[0x1E69E9840];

  return array;
}

uint64_t __50__MTAlarm_nextTriggersAfterDate_inclusionOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 triggerDate];
  v6 = [v4 triggerDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_earliestTriggerDateForDate:(id)date
{
  v32 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v5 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__MTAlarm__earliestTriggerDateForDate___block_invoke;
  aBlock[3] = &unk_1E7B0E518;
  v6 = dateCopy;
  v25 = v6;
  selfCopy = self;
  v7 = v5;
  v27 = v7;
  v8 = _Block_copy(aBlock);
  dismissedDate = [(MTAlarm *)self dismissedDate];
  v8[2](v8, @"dismissed", dismissedDate);

  bedtimeDismissedDate = [(MTAlarm *)self bedtimeDismissedDate];
  v8[2](v8, @"bedtime dismissed", bedtimeDismissedDate);

  firedDate = [(MTAlarm *)self firedDate];
  v8[2](v8, @"fired", firedDate);

  bedtimeFiredDate = [(MTAlarm *)self bedtimeFiredDate];
  v8[2](v8, @"bedtime fired", bedtimeFiredDate);

  keepOffUntilDate = [(MTAlarm *)self keepOffUntilDate];
  v8[2](v8, @"keep off until", keepOffUntilDate);

  lastModifiedDate = [(MTAlarm *)self lastModifiedDate];
  v8[2](v8, @"modified", lastModifiedDate);

  overriddenForDate = [(MTAlarm *)self overriddenForDate];
  v8[2](v8, @"overriden for date", overriddenForDate);

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
    alarmID = [(MTAlarm *)self alarmID];
    *buf = 138543618;
    v29 = alarmID;
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

- (id)_nextDateHelperWithDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  dateComponents = [(MTAlarm *)self dateComponents];
  if ([(MTAlarm *)self repeats]&& [(MTAlarm *)self repeatSchedule]!= 127)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__7;
    v26 = __Block_byref_object_dispose__7;
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    repeatSchedule = [(MTAlarm *)self repeatSchedule];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __44__MTAlarm__nextDateHelperWithDate_calendar___block_invoke;
    v17 = &unk_1E7B0E540;
    selfCopy = self;
    v19 = dateCopy;
    v10 = calendarCopy;
    v11 = 0;
    v20 = v10;
    v21 = &v22;
    do
    {
      if ((MTAlarmRepeatScheduleFromDay(v11) & repeatSchedule) != 0)
      {
        v16(&v14, v11);
      }

      ++v11;
    }

    while (v11 != 7);
    [dateComponents setWeekday:{objc_msgSend(v10, "component:fromDate:", 512, v23[5], v14, v15)}];

    _Block_object_dispose(&v22, 8);
  }

  v12 = [calendarCopy mtNextDateAfterDate:dateCopy matchingComponents:dateComponents];

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

- (id)singleTimeOverrideDateInCalendar:(id)calendar
{
  calendarCopy = calendar;
  if (![(MTAlarm *)self isSingleTimeAlarm])
  {
    [(MTAlarm *)a2 singleTimeOverrideDateInCalendar:?];
  }

  dateComponents = [(MTAlarm *)self dateComponents];
  v7 = [calendarCopy dateFromComponents:dateComponents];

  return v7;
}

- (BOOL)overridesNextAlarm:(id)alarm date:(id)date calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  alarmCopy = alarm;
  if (![(MTAlarm *)self isSingleTimeAlarm])
  {
    [MTAlarm overridesNextAlarm:a2 date:self calendar:?];
  }

  v12 = [alarmCopy nextTriggerAfterDate:dateCopy ofType:4];
  v13 = [(MTAlarm *)self overridesAlarm:alarmCopy trigger:v12 calendar:calendarCopy];

  return v13;
}

- (BOOL)overridesAlarm:(id)alarm trigger:(id)trigger calendar:(id)calendar
{
  calendarCopy = calendar;
  triggerCopy = trigger;
  if (![(MTAlarm *)self isSingleTimeAlarm])
  {
    [MTAlarm overridesAlarm:a2 trigger:self calendar:?];
  }

  v10 = [(MTAlarm *)self singleTimeOverrideDateInCalendar:calendarCopy];
  triggerDate = [triggerCopy triggerDate];

  v12 = [calendarCopy isDate:v10 inSameDayAsDate:triggerDate];
  return v12;
}

+ (BOOL)_date:(id)_date isOnDay:(int64_t)day calendar:(id)calendar
{
  if (day < 7)
  {
    v5 = day + 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 == [calendar component:512 fromDate:_date];
}

+ (id)mostRecentlyUpdatedAlarmForAlarms:(id)alarms
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = alarms;
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

      lastModifiedDate = [v6 lastModifiedDate];
      if (!lastModifiedDate)
      {
        lastModifiedDate2 = [v9 lastModifiedDate];
        v3 = lastModifiedDate2;
        if (lastModifiedDate2)
        {

LABEL_14:
          v15 = v9;

          v6 = v15;
          continue;
        }
      }

      lastModifiedDate3 = [v9 lastModifiedDate];
      lastModifiedDate4 = [v6 lastModifiedDate];
      v13 = [lastModifiedDate3 mtIsAfterDate:lastModifiedDate4];

      if (!lastModifiedDate)
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
  alarmID = [(MTAlarm *)self alarmID];
  v3 = [alarmID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
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

- (BOOL)_isEqualToAlarm:(id)alarm checkLastModified:(BOOL)modified
{
  modifiedCopy = modified;
  alarmCopy = alarm;
  alarmID = [alarmCopy alarmID];
  alarmID2 = [(MTAlarm *)self alarmID];
  if (alarmID != alarmID2)
  {
    alarmID3 = [alarmCopy alarmID];
    alarmID4 = [(MTAlarm *)self alarmID];
    v128 = alarmID3;
    if (![alarmID3 isEqual:?])
    {
      goto LABEL_10;
    }
  }

  hour = [alarmCopy hour];
  if (hour != -[MTAlarm hour](self, "hour") || (v13 = [alarmCopy minute], v13 != -[MTAlarm minute](self, "minute")) || (v14 = objc_msgSend(alarmCopy, "bedtimeHour"), v14 != -[MTAlarm bedtimeHour](self, "bedtimeHour")) || (v15 = objc_msgSend(alarmCopy, "bedtimeMinute"), v15 != -[MTAlarm bedtimeMinute](self, "bedtimeMinute")))
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

  bedtimeReminder = [alarmCopy bedtimeReminder];
  bedtimeReminder2 = [(MTAlarm *)self bedtimeReminder];
  v126 = bedtimeReminder;
  v17 = bedtimeReminder == bedtimeReminder2;
  v18 = bedtimeReminder != bedtimeReminder2;
  if (v17)
  {
    HIDWORD(v133[4]) = v18;
  }

  else
  {
    bedtimeReminder3 = [alarmCopy bedtimeReminder];
    bedtimeReminder4 = [(MTAlarm *)self bedtimeReminder];
    v124 = bedtimeReminder3;
    if (![bedtimeReminder3 isEqual:?])
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

  sleepMode = [alarmCopy sleepMode];
  if (sleepMode != -[MTAlarm sleepMode](self, "sleepMode") || (v32 = [alarmCopy sleepModeOptions], v32 != -[MTAlarm sleepModeOptions](self, "sleepModeOptions")) || (v33 = objc_msgSend(alarmCopy, "sleepTracking"), v33 != -[MTAlarm sleepTracking](self, "sleepTracking")) || (v34 = objc_msgSend(alarmCopy, "day"), v34 != -[MTAlarm day](self, "day")) || (v35 = objc_msgSend(alarmCopy, "month"), v35 != -[MTAlarm month](self, "month")) || (v36 = objc_msgSend(alarmCopy, "year"), v36 != -[MTAlarm year](self, "year")))
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

  overriddenForDate = [alarmCopy overriddenForDate];
  overriddenForDate2 = [(MTAlarm *)self overriddenForDate];
  v122 = overriddenForDate;
  v17 = overriddenForDate == overriddenForDate2;
  v38 = overriddenForDate != overriddenForDate2;
  if (v17)
  {
    LODWORD(v133[4]) = v38;
  }

  else
  {
    bedtimeReminder3 = [alarmCopy overriddenForDate];
    [(MTAlarm *)self overriddenForDate];
    v119 = v120 = bedtimeReminder3;
    if (![bedtimeReminder3 isEqual:?])
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

  timeInBedTracking = [alarmCopy timeInBedTracking];
  if (timeInBedTracking != [(MTAlarm *)self timeInBedTracking])
  {
    goto LABEL_99;
  }

  sleepSchedule = [alarmCopy sleepSchedule];
  if (sleepSchedule != [(MTAlarm *)self sleepSchedule])
  {
    goto LABEL_99;
  }

  v21 = modifiedCopy;
  repeatSchedule = [alarmCopy repeatSchedule];
  if (repeatSchedule != [(MTAlarm *)self repeatSchedule])
  {
    goto LABEL_99;
  }

  isEnabled = [alarmCopy isEnabled];
  if (isEnabled != -[MTAlarm isEnabled](self, "isEnabled") || (v43 = [alarmCopy silentModeOptions], v43 != -[MTAlarm silentModeOptions](self, "silentModeOptions")) || (v44 = objc_msgSend(alarmCopy, "isSleepAlarm"), v44 != -[MTAlarm isSleepAlarm](self, "isSleepAlarm")) || (v45 = objc_msgSend(alarmCopy, "allowsSnooze"), v45 != -[MTAlarm allowsSnooze](self, "allowsSnooze")) || (v46 = objc_msgSend(alarmCopy, "snoozeDuration"), v46 != -[MTAlarm snoozeDuration](self, "snoozeDuration")) || (v47 = objc_msgSend(alarmCopy, "onboardingVersion"), v47 != -[MTAlarm onboardingVersion](self, "onboardingVersion")) || (v48 = objc_msgSend(alarmCopy, "dismissedAction"), v48 != -[MTAlarm dismissedAction](self, "dismissedAction")) || (v49 = objc_msgSend(alarmCopy, "bedtimeDismissedAction"), v49 != -[MTAlarm bedtimeDismissedAction](self, "bedtimeDismissedAction")))
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

  snoozeFireDate = [alarmCopy snoozeFireDate];
  snoozeFireDate2 = [(MTAlarm *)self snoozeFireDate];
  v118 = snoozeFireDate;
  HIDWORD(v133[3]) = snoozeFireDate != snoozeFireDate2;
  if (snoozeFireDate != snoozeFireDate2)
  {
    snoozeFireDate3 = [alarmCopy snoozeFireDate];
    snoozeFireDate4 = [(MTAlarm *)self snoozeFireDate];
    v116 = snoozeFireDate3;
    if (![snoozeFireDate3 isEqual:?])
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

  bedtimeSnoozeFireDate = [alarmCopy bedtimeSnoozeFireDate];
  bedtimeSnoozeFireDate2 = [(MTAlarm *)self bedtimeSnoozeFireDate];
  v114 = bedtimeSnoozeFireDate;
  LODWORD(v133[3]) = bedtimeSnoozeFireDate != bedtimeSnoozeFireDate2;
  if (bedtimeSnoozeFireDate != bedtimeSnoozeFireDate2)
  {
    bedtimeSnoozeFireDate3 = [alarmCopy bedtimeSnoozeFireDate];
    bedtimeSnoozeFireDate4 = [(MTAlarm *)self bedtimeSnoozeFireDate];
    v112 = bedtimeSnoozeFireDate3;
    if (![bedtimeSnoozeFireDate3 isEqual:?])
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

  firedDate = [alarmCopy firedDate];
  firedDate2 = [(MTAlarm *)self firedDate];
  v110 = firedDate;
  HIDWORD(v133[2]) = firedDate != firedDate2;
  if (firedDate != firedDate2)
  {
    firedDate3 = [alarmCopy firedDate];
    firedDate4 = [(MTAlarm *)self firedDate];
    v108 = firedDate3;
    if (![firedDate3 isEqual:?])
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

  dismissedDate = [alarmCopy dismissedDate];
  dismissedDate2 = [(MTAlarm *)self dismissedDate];
  v106 = dismissedDate;
  LODWORD(v133[2]) = dismissedDate != dismissedDate2;
  if (dismissedDate != dismissedDate2)
  {
    dismissedDate3 = [alarmCopy dismissedDate];
    dismissedDate4 = [(MTAlarm *)self dismissedDate];
    v104 = dismissedDate3;
    if (![dismissedDate3 isEqual:?])
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

  if (!modifiedCopy)
  {
    HIDWORD(v133[1]) = 0;
    goto LABEL_116;
  }

  lastModifiedDate = [alarmCopy lastModifiedDate];
  lastModifiedDate2 = [(MTAlarm *)self lastModifiedDate];
  v102 = lastModifiedDate;
  if (lastModifiedDate == lastModifiedDate2)
  {
    HIDWORD(v133[1]) = 0;
    goto LABEL_116;
  }

  lastModifiedDate3 = [alarmCopy lastModifiedDate];
  lastModifiedDate4 = [(MTAlarm *)self lastModifiedDate];
  v100 = lastModifiedDate3;
  if (![lastModifiedDate3 isEqual:?])
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
  bedtimeFiredDate = [alarmCopy bedtimeFiredDate];
  bedtimeFiredDate2 = [(MTAlarm *)self bedtimeFiredDate];
  v98 = bedtimeFiredDate;
  LODWORD(v133[1]) = bedtimeFiredDate != bedtimeFiredDate2;
  if (bedtimeFiredDate == bedtimeFiredDate2 || ([alarmCopy bedtimeFiredDate], v61 = objc_claimAutoreleasedReturnValue(), -[MTAlarm bedtimeFiredDate](self, "bedtimeFiredDate"), v95 = objc_claimAutoreleasedReturnValue(), v96 = v61, objc_msgSend(v61, "isEqual:")))
  {
    bedtimeDismissedDate = [alarmCopy bedtimeDismissedDate];
    bedtimeDismissedDate2 = [(MTAlarm *)self bedtimeDismissedDate];
    v94 = bedtimeDismissedDate;
    HIDWORD(v133[0]) = bedtimeDismissedDate != bedtimeDismissedDate2;
    if (bedtimeDismissedDate == bedtimeDismissedDate2 || ([alarmCopy bedtimeDismissedDate], v63 = objc_claimAutoreleasedReturnValue(), -[MTAlarm bedtimeDismissedDate](self, "bedtimeDismissedDate"), v91 = objc_claimAutoreleasedReturnValue(), v92 = v63, objc_msgSend(v63, "isEqual:")))
    {
      keepOffUntilDate = [alarmCopy keepOffUntilDate];
      keepOffUntilDate2 = [(MTAlarm *)self keepOffUntilDate];
      v90 = keepOffUntilDate;
      v132 = keepOffUntilDate != keepOffUntilDate2;
      if (keepOffUntilDate == keepOffUntilDate2 || ([alarmCopy keepOffUntilDate], v65 = objc_claimAutoreleasedReturnValue(), -[MTAlarm keepOffUntilDate](self, "keepOffUntilDate"), v87 = objc_claimAutoreleasedReturnValue(), v88 = v65, objc_msgSend(v65, "isEqual:")))
      {
        title = [alarmCopy title];
        title2 = [(MTAlarm *)self title];
        v86 = title;
        *&v131[16] = title != title2;
        if (title == title2 || ([alarmCopy title], v67 = objc_claimAutoreleasedReturnValue(), -[MTAlarm title](self, "title"), v83 = objc_claimAutoreleasedReturnValue(), v84 = v67, objc_msgSend(v67, "isEqual:")))
        {
          sound = [alarmCopy sound];
          sound2 = [(MTAlarm *)self sound];
          v82 = sound;
          *&v131[4] = sound != sound2;
          if (sound == sound2 || ([alarmCopy sound], v69 = objc_claimAutoreleasedReturnValue(), -[MTAlarm sound](self, "sound"), v79 = objc_claimAutoreleasedReturnValue(), v80 = v69, objc_msgSend(v69, "isEqual:")))
          {
            siriContext = [alarmCopy siriContext];
            siriContext2 = [(MTAlarm *)self siriContext];
            v78 = siriContext;
            v130 = siriContext != siriContext2;
            if (siriContext == siriContext2 || ([alarmCopy siriContext], v71 = objc_claimAutoreleasedReturnValue(), -[MTAlarm siriContext](self, "siriContext"), v75 = objc_claimAutoreleasedReturnValue(), v76 = v71, objc_msgSend(v71, "isEqual:")))
            {
              bypassReloadDate = [alarmCopy bypassReloadDate];
              bedtimeReminder3 = [(MTAlarm *)self bypassReloadDate];
              v74 = bypassReloadDate;
              if (bypassReloadDate == bedtimeReminder3)
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
                bypassReloadDate2 = [alarmCopy bypassReloadDate];
                self = [(MTAlarm *)self bypassReloadDate];
                v73 = [bypassReloadDate2 isEqual:self];
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
    v24 = alarmID2;
    v25 = alarmID;
    v26 = v20;
    v27 = v19;
    v28 = v21;
    v29 = v22;

    v22 = v29;
    v21 = v28;
    v19 = v27;
    v20 = v26;
    alarmID = v25;
    alarmID2 = v24;
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
  if (alarmID != alarmID2)
  {
  }

  return v131[8];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [MTMutableAlarm allocWithZone:zone];
  alarmID = [(MTAlarm *)self alarmID];
  v6 = [(MTAlarm *)v4 initWithIdentifier:alarmID];

  [(MTAlarm *)self _copyStateOntoAlarm:v6];
  return v6;
}

- (void)_copyStateOntoAlarm:(id)alarm
{
  alarmCopy = alarm;
  [alarmCopy setHour:{-[MTAlarm hour](self, "hour")}];
  [alarmCopy setMinute:{-[MTAlarm minute](self, "minute")}];
  [alarmCopy setBedtimeHour:{-[MTAlarm bedtimeHour](self, "bedtimeHour")}];
  [alarmCopy setBedtimeMinute:{-[MTAlarm bedtimeMinute](self, "bedtimeMinute")}];
  bedtimeReminder = [(MTAlarm *)self bedtimeReminder];
  [alarmCopy setBedtimeReminder:bedtimeReminder];

  [alarmCopy setSleepMode:{-[MTAlarm sleepMode](self, "sleepMode")}];
  [alarmCopy setSleepModeOptions:{-[MTAlarm sleepModeOptions](self, "sleepModeOptions")}];
  [alarmCopy setSleepTracking:{-[MTAlarm sleepTracking](self, "sleepTracking")}];
  [alarmCopy setDay:{-[MTAlarm day](self, "day")}];
  [alarmCopy setMonth:{-[MTAlarm month](self, "month")}];
  [alarmCopy setYear:{-[MTAlarm year](self, "year")}];
  [alarmCopy setTimeInBedTracking:{-[MTAlarm timeInBedTracking](self, "timeInBedTracking")}];
  [alarmCopy setSleepSchedule:{-[MTAlarm sleepSchedule](self, "sleepSchedule")}];
  [alarmCopy setRepeatSchedule:{-[MTAlarm repeatSchedule](self, "repeatSchedule")}];
  [alarmCopy setEnabled:{-[MTAlarm isEnabled](self, "isEnabled")}];
  [alarmCopy setSilentModeOptions:{-[MTAlarm silentModeOptions](self, "silentModeOptions")}];
  [alarmCopy setSleepAlarm:{-[MTAlarm isSleepAlarm](self, "isSleepAlarm")}];
  [alarmCopy setAllowsSnooze:{-[MTAlarm allowsSnooze](self, "allowsSnooze")}];
  [alarmCopy setSnoozeDuration:{-[MTAlarm snoozeDuration](self, "snoozeDuration")}];
  snoozeFireDate = [(MTAlarm *)self snoozeFireDate];
  [alarmCopy setSnoozeFireDate:snoozeFireDate];

  bedtimeSnoozeFireDate = [(MTAlarm *)self bedtimeSnoozeFireDate];
  [alarmCopy setBedtimeSnoozeFireDate:bedtimeSnoozeFireDate];

  firedDate = [(MTAlarm *)self firedDate];
  [alarmCopy setFiredDate:firedDate];

  dismissedDate = [(MTAlarm *)self dismissedDate];
  [alarmCopy setDismissedDate:dismissedDate];

  [alarmCopy setDismissedAction:{-[MTAlarm dismissedAction](self, "dismissedAction")}];
  lastModifiedDate = [(MTAlarm *)self lastModifiedDate];
  [alarmCopy setLastModifiedDate:lastModifiedDate];

  bedtimeFiredDate = [(MTAlarm *)self bedtimeFiredDate];
  [alarmCopy setBedtimeFiredDate:bedtimeFiredDate];

  bedtimeDismissedDate = [(MTAlarm *)self bedtimeDismissedDate];
  [alarmCopy setBedtimeDismissedDate:bedtimeDismissedDate];

  [alarmCopy setBedtimeDismissedAction:{-[MTAlarm bedtimeDismissedAction](self, "bedtimeDismissedAction")}];
  keepOffUntilDate = [(MTAlarm *)self keepOffUntilDate];
  [alarmCopy setKeepOffUntilDate:keepOffUntilDate];

  overriddenForDate = [(MTAlarm *)self overriddenForDate];
  [alarmCopy setOverriddenForDate:overriddenForDate];

  title = [(MTAlarm *)self title];
  [alarmCopy setTitle:title];

  sound = [(MTAlarm *)self sound];
  [alarmCopy setSound:sound];

  [alarmCopy setOnboardingVersion:{-[MTAlarm onboardingVersion](self, "onboardingVersion")}];
  currentDateProvider = [(MTAlarm *)self currentDateProvider];
  [alarmCopy setCurrentDateProvider:currentDateProvider];

  siriContext = [(MTAlarm *)self siriContext];
  [alarmCopy setSiriContext:siriContext];

  bypassReloadDate = [(MTAlarm *)self bypassReloadDate];
  [alarmCopy setBypassReloadDate:bypassReloadDate];
}

- (id)initFromDeserializer:(id)deserializer
{
  deserializerCopy = deserializer;
  _initCommon = [(MTAlarm *)self _initCommon];
  v6 = _initCommon;
  if (_initCommon)
  {
    [_initCommon _updatePropertiesFromDeserializer:deserializerCopy];
  }

  return v6;
}

- (void)_updatePropertiesFromDeserializer:(id)deserializer
{
  v125 = *MEMORY[0x1E69E9840];
  deserializerCopy = deserializer;
  mtCoder = [deserializerCopy mtCoder];
  if ([mtCoder mtType] != 3)
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

  [mtCoder decodeFloatForKey:@"MTAlarmDataVersion"];
  v6 = v5;
  v7 = v5 < 1.2;
  if (v5 < 1.2)
  {
    self->_enabled = [mtCoder decodeBoolForKey:@"MTAlarmActive"];
  }

  if (v6 < 1.3)
  {
    v8 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmID"];
    alarmID = self->_alarmID;
    self->_alarmID = v8;
  }

  if (v6 < 1.4 && v6 >= 1.2)
  {
    self->_enabled = [mtCoder decodeIntegerForKey:@"MTAlarmActive"] != 0;
    v7 = 1;
  }

  if (v6 < 1.6)
  {
    v10 = [mtCoder decodeBoolForKey:@"MTAlarmIsSleep"];
    self->_sleepAlarm = v10;
    if ((v10 & 1) == 0)
    {
      v11 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmSound"];
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
    v23 = [mtCoder decodeBoolForKey:@"MTAlarmIsSleep"];
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
      pushAlertsEnabled = [v25 pushAlertsEnabled];
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
      v26 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmSound"];
    }

    if ([(MTSound *)v26 soundType]== 1)
    {
      v27 = *MEMORY[0x1E69DA928];
      vibrationIdentifier = [(MTSound *)v26 vibrationIdentifier];
      [(MTSound *)v26 soundVolume];
      v30 = v29 = v7;
      v31 = [MTSound toneSoundWithIdentifier:v27 vibrationIdentifer:vibrationIdentifier volume:v30];
      objc_storeStrong(&self->_sound, v31);

      v7 = v29;
    }

    else
    {
      v32 = v26;
      vibrationIdentifier = self->_sound;
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
    v34 = [mtCoder decodeBoolForKey:@"MTAlarmIsSleep"];
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
    if ([mtCoder decodeBoolForKey:@"MTAlarmSleepModeDetectionKey"])
    {
      self->_sleepModeOptions = 32;
    }

    LOBYTE(v7) = 1;
    self->_timeInBedTracking = 1;
    LOBYTE(v120) = 1;
    v33 = 1;
    goto LABEL_43;
  }

  v35 = [mtCoder decodeBoolForKey:@"MTAlarmEnabled"];
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
      v37 = [mtCoder decodeBoolForKey:@"MTAlarmIsSleep"];
    }

    self->_sleepAlarm = v37;
    v38 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmDismissDate"];
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
    v42 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmWakeupForSleepTracking"];
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
    v45 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmBedtimeForSleepTracking"];
    objc_storeStrong(&self->_bedtimeDismissedDate, v45);
    v46 = 1;
    if (v45)
    {
      v46 = 2;
    }

    self->_bedtimeDismissedAction = v46;
    v47 = [mtCoder decodeBoolForKey:@"MTAlarmFiring"];
    v48 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmFireDate"];
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
    v52 = [mtCoder decodeIntegerForKey:@"MTAlarmOnboardingVersion"];
    self->_onboardingVersion = v52;
    v18 = v33;
    if (!v52)
    {
      self->_sleepModeOptions = [objc_opt_class() defaultSleepModeOptions];
      v18 = 1;
    }
  }

  v16 = v33;
  if (v6 < 2.5 && (v53 = [mtCoder decodeIntegerForKey:@"MTAlarmOnboardingVersion"], self->_onboardingVersion = v53, BYTE4(v120) = 1, v53))
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
        v54 = [mtCoder decodeBoolForKey:@"MTAlarmEnabled"];
        v55 = [mtCoder decodeBoolForKey:@"MTAlarmSleepScheduleKey"];
        v56 = MTLogForCategory(3);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          pushAlertsEnabled = v54;
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
          pushAlertsEnabled = enabled;
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
      v61 = [mtCoder decodeBoolForKey:@"MTAlarmIsSleep"];
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
    v66 = [mtCoder decodeBoolForKey:@"MTAlarmIsSleep"];
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
  v62 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmRepeatSchedule"];
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
      self->_enabled = [mtCoder decodeBoolForKey:@"MTAlarmEnabled"];
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
    self->_sleepAlarm = [mtCoder decodeBoolForKey:@"MTAlarmIsSleep"];
  }

LABEL_107:
  if ((v118 & 0x100000000) == 0)
  {
    v67 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmSound"];
    v68 = self->_sound;
    self->_sound = v67;
  }

  self->_sleepTracking = [mtCoder decodeBoolForKey:@"MTAlarmSleepTrackingKey"];
  if ((v16 & 1) == 0)
  {
    self->_timeInBedTracking = [mtCoder decodeBoolForKey:@"MTAlarmTimeInBedTrackingKey"];
  }

  if ((v17 & 1) == 0)
  {
    self->_sleepMode = [mtCoder decodeBoolForKey:@"MTAlarmBedtimeDoNotDisturb"];
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
    self->_sleepSchedule = [mtCoder decodeBoolForKey:@"MTAlarmSleepScheduleKey"];
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

  self->_sleepModeOptions = [mtCoder decodeIntegerForKey:@"MTAlarmBedtimeDoNotDisturbOptions"];
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
  self->_silentModeOptions = [mtCoder decodeIntegerForKey:@"MTAlarmSilentModeOptions"];
  if (!v19)
  {
LABEL_117:
    v69 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmDismissDate"];
    v70 = self->_dismissedDate;
    self->_dismissedDate = v69;

    self->_dismissedAction = [mtCoder decodeIntegerForKey:@"MTAlarmDismissAction"];
    v71 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmBedtimeDismissDate"];
    bedtimeDismissedDate = self->_bedtimeDismissedDate;
    self->_bedtimeDismissedDate = v71;

    self->_bedtimeDismissedAction = [mtCoder decodeIntegerForKey:@"MTAlarmBedtimeDismissAction"];
    v73 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmKeepOffUntilDate"];
    keepOffUntilDate = self->_keepOffUntilDate;
    self->_keepOffUntilDate = v73;
  }

LABEL_118:
  if ((v120 & 0x100000000) == 0)
  {
    self->_onboardingVersion = [mtCoder decodeIntegerForKey:@"MTAlarmOnboardingVersion"];
  }

  if ((v117 & 1) == 0)
  {
    v75 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmFireDate"];
    v76 = self->_firedDate;
    self->_firedDate = v75;
  }

  if ((v118 & 1) == 0)
  {
    v77 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmBedtimeFireDate"];
    bedtimeFiredDate = self->_bedtimeFiredDate;
    self->_bedtimeFiredDate = v77;
  }

  if ((v20 & 1) == 0)
  {
    v79 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmRepeatSchedule"];
    self->_repeatSchedule = [v79 unsignedIntegerValue];
  }

  if (!self->_alarmID)
  {
    v80 = objc_alloc(MEMORY[0x1E696AFB0]);
    v81 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmID"];
    v82 = [v80 initWithUUIDString:v81];
    v83 = self->_alarmID;
    self->_alarmID = v82;
  }

  v84 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmHour"];
  self->_hour = [v84 integerValue];

  v85 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmMinute"];
  self->_minute = [v85 integerValue];

  v86 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmBedtimeHour"];
  self->_bedtimeHour = [v86 integerValue];

  v87 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmBedtimeMinute"];
  self->_bedtimeMinute = [v87 integerValue];

  v88 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmDay"];
  integerValue = [v88 integerValue];

  if ([(MTAlarm *)self isValidDateComponent:integerValue])
  {
    self->_day = integerValue;
  }

  v90 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmMonth"];
  integerValue2 = [v90 integerValue];

  if ([(MTAlarm *)self isValidDateComponent:integerValue2])
  {
    self->_month = integerValue2;
  }

  v92 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmYear"];
  integerValue3 = [v92 integerValue];

  if ([(MTAlarm *)self isValidDateComponent:integerValue3])
  {
    self->_year = integerValue3;
  }

  v94 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmBedtimeReminderMinutes"];
  bedtimeReminder = self->_bedtimeReminder;
  self->_bedtimeReminder = v94;

  self->_allowsSnooze = [mtCoder decodeBoolForKey:@"MTAlarmAllowsSnooze"];
  if (!v22)
  {
    v96 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmSnoozeDuration"];
    if ([v96 longLongValue])
    {
      longLongValue = [v96 longLongValue];
    }

    else
    {
      longLongValue = [objc_opt_class() defaultSnoozeDuration];
    }

    self->_snoozeDuration = longLongValue;
  }

  v98 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmSnoozeFireDate"];
  snoozeFireDate = self->_snoozeFireDate;
  self->_snoozeFireDate = v98;

  v100 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmBedtimeSnoozeFireDate"];
  bedtimeSnoozeFireDate = self->_bedtimeSnoozeFireDate;
  self->_bedtimeSnoozeFireDate = v100;

  v102 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmLastModifiedDate"];
  lastModifiedDate = self->_lastModifiedDate;
  self->_lastModifiedDate = v102;

  v104 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmTitle"];
  title = self->_title;
  self->_title = v104;

  v106 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmOverriddenForDate"];
  overriddenForDate = self->_overriddenForDate;
  self->_overriddenForDate = v106;

  v108 = MEMORY[0x1E695DFD8];
  v109 = objc_opt_class();
  v110 = objc_opt_class();
  v111 = [v108 setWithObjects:{v109, v110, objc_opt_class(), 0}];
  v112 = [mtCoder decodeObjectOfClasses:v111 forKey:@"MTAlarmSiriContext"];
  siriContext = self->_siriContext;
  self->_siriContext = v112;

  v114 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTAlarmBypassReloadDate"];
  bypassReloadDate = self->_bypassReloadDate;
  self->_bypassReloadDate = v114;

  v116 = *MEMORY[0x1E69E9840];
}

- (void)serializeWithSerializer:(id)serializer
{
  mtCoder = [serializer mtCoder];
  if ([mtCoder mtType] == 2)
  {
    LODWORD(v4) = 5.0;
    [mtCoder encodeFloat:@"MTAlarmDataVersion" forKey:v4];
  }

  alarmIDString = [(MTAlarm *)self alarmIDString];
  [mtCoder encodeObject:alarmIDString forKey:@"MTAlarmID"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTAlarm hour](self, "hour")}];
  [mtCoder encodeObject:v6 forKey:@"MTAlarmHour"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTAlarm minute](self, "minute")}];
  [mtCoder encodeObject:v7 forKey:@"MTAlarmMinute"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTAlarm bedtimeHour](self, "bedtimeHour")}];
  [mtCoder encodeObject:v8 forKey:@"MTAlarmBedtimeHour"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTAlarm bedtimeMinute](self, "bedtimeMinute")}];
  [mtCoder encodeObject:v9 forKey:@"MTAlarmBedtimeMinute"];

  bedtimeReminder = [(MTAlarm *)self bedtimeReminder];
  [mtCoder encodeObject:bedtimeReminder forKey:@"MTAlarmBedtimeReminderMinutes"];

  [mtCoder encodeBool:-[MTAlarm sleepMode](self forKey:{"sleepMode"), @"MTAlarmBedtimeDoNotDisturb"}];
  [mtCoder encodeInteger:-[MTAlarm sleepModeOptions](self forKey:{"sleepModeOptions"), @"MTAlarmBedtimeDoNotDisturbOptions"}];
  [mtCoder encodeBool:-[MTAlarm sleepTracking](self forKey:{"sleepTracking"), @"MTAlarmSleepTrackingKey"}];
  if ([(MTAlarm *)self isValidDateComponent:[(MTAlarm *)self day]])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTAlarm day](self, "day")}];
    [mtCoder encodeObject:v11 forKey:@"MTAlarmDay"];
  }

  if ([(MTAlarm *)self isValidDateComponent:[(MTAlarm *)self month]])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTAlarm month](self, "month")}];
    [mtCoder encodeObject:v12 forKey:@"MTAlarmMonth"];
  }

  if ([(MTAlarm *)self isValidDateComponent:[(MTAlarm *)self year]])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTAlarm year](self, "year")}];
    [mtCoder encodeObject:v13 forKey:@"MTAlarmYear"];
  }

  [mtCoder encodeBool:-[MTAlarm timeInBedTracking](self forKey:{"timeInBedTracking"), @"MTAlarmTimeInBedTrackingKey"}];
  [mtCoder encodeBool:-[MTAlarm sleepSchedule](self forKey:{"sleepSchedule"), @"MTAlarmSleepScheduleKey"}];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTAlarm repeatSchedule](self, "repeatSchedule")}];
  [mtCoder encodeObject:v14 forKey:@"MTAlarmRepeatSchedule"];

  [mtCoder encodeBool:-[MTAlarm isEnabled](self forKey:{"isEnabled"), @"MTAlarmEnabled"}];
  [mtCoder encodeInteger:-[MTAlarm silentModeOptions](self forKey:{"silentModeOptions"), @"MTAlarmSilentModeOptions"}];
  [mtCoder encodeBool:-[MTAlarm isSleepAlarm](self forKey:{"isSleepAlarm"), @"MTAlarmIsSleep"}];
  [mtCoder encodeBool:-[MTAlarm allowsSnooze](self forKey:{"allowsSnooze"), @"MTAlarmAllowsSnooze"}];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTAlarm snoozeDuration](self, "snoozeDuration")}];
  [mtCoder encodeObject:v15 forKey:@"MTAlarmSnoozeDuration"];

  snoozeFireDate = [(MTAlarm *)self snoozeFireDate];
  [mtCoder encodeObject:snoozeFireDate forKey:@"MTAlarmSnoozeFireDate"];

  bedtimeSnoozeFireDate = [(MTAlarm *)self bedtimeSnoozeFireDate];
  [mtCoder encodeObject:bedtimeSnoozeFireDate forKey:@"MTAlarmBedtimeSnoozeFireDate"];

  firedDate = [(MTAlarm *)self firedDate];
  [mtCoder encodeObject:firedDate forKey:@"MTAlarmFireDate"];

  dismissedDate = [(MTAlarm *)self dismissedDate];
  [mtCoder encodeObject:dismissedDate forKey:@"MTAlarmDismissDate"];

  [mtCoder encodeInteger:-[MTAlarm dismissedAction](self forKey:{"dismissedAction"), @"MTAlarmDismissAction"}];
  lastModifiedDate = [(MTAlarm *)self lastModifiedDate];
  [mtCoder encodeObject:lastModifiedDate forKey:@"MTAlarmLastModifiedDate"];

  bedtimeFiredDate = [(MTAlarm *)self bedtimeFiredDate];
  [mtCoder encodeObject:bedtimeFiredDate forKey:@"MTAlarmBedtimeFireDate"];

  bedtimeDismissedDate = [(MTAlarm *)self bedtimeDismissedDate];
  [mtCoder encodeObject:bedtimeDismissedDate forKey:@"MTAlarmBedtimeDismissDate"];

  [mtCoder encodeInteger:-[MTAlarm bedtimeDismissedAction](self forKey:{"bedtimeDismissedAction"), @"MTAlarmBedtimeDismissAction"}];
  keepOffUntilDate = [(MTAlarm *)self keepOffUntilDate];
  [mtCoder encodeObject:keepOffUntilDate forKey:@"MTAlarmKeepOffUntilDate"];

  title = [(MTAlarm *)self title];
  [mtCoder encodeObject:title forKey:@"MTAlarmTitle"];

  sound = [(MTAlarm *)self sound];
  [mtCoder encodeObject:sound forKey:@"MTAlarmSound"];

  [mtCoder encodeInteger:-[MTAlarm onboardingVersion](self forKey:{"onboardingVersion"), @"MTAlarmOnboardingVersion"}];
  if ([mtCoder mtType] != 2)
  {
    overriddenForDate = [(MTAlarm *)self overriddenForDate];
    [mtCoder encodeObject:overriddenForDate forKey:@"MTAlarmOverriddenForDate"];
  }

  siriContext = [(MTAlarm *)self siriContext];
  [mtCoder encodeObject:siriContext forKey:@"MTAlarmSiriContext"];

  if ([mtCoder mtType] != 2)
  {
    bypassReloadDate = [(MTAlarm *)self bypassReloadDate];
    [mtCoder encodeObject:bypassReloadDate forKey:@"MTAlarmBypassReloadDate"];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(MTAlarm *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  alarmID = [(MTAlarm *)self alarmID];
  v5 = [v3 appendObject:alarmID withName:@"id"];

  v6 = [v3 appendBool:-[MTAlarm isSleepAlarm](self withName:"isSleepAlarm") ifEqualTo:{@"sleep", 1}];
  v7 = [v3 appendBool:-[MTAlarm isEnabled](self withName:{"isEnabled"), @"enabled"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(MTAlarm *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  alarmID = [(MTAlarm *)self alarmID];
  v6 = [v4 appendObject:alarmID withName:@"id"];

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
  snoozeFireDate = [(MTAlarm *)self snoozeFireDate];
  v19 = [v4 appendObject:snoozeFireDate withName:@"snoozeFireDate" skipIfNil:1];

  v20 = [v4 appendBool:-[MTAlarm isFiring](self withName:"isFiring") ifEqualTo:{@"isFiring", 1}];
  title = [(MTAlarm *)self title];
  [v4 appendString:title withName:@"title" skipIfEmpty:1];

  siriContext = [(MTAlarm *)self siriContext];
  v23 = [v4 appendObject:siriContext withName:@"siriContext" skipIfNil:1];

  bypassReloadDate = [(MTAlarm *)self bypassReloadDate];
  v25 = [v4 appendBool:bypassReloadDate != 0 withName:@"bypassReloadDate" ifEqualTo:1];

  v26 = [v4 appendBool:-[MTAlarm breaksThroughSilentModeOnThisDevice](self withName:"breaksThroughSilentModeOnThisDevice") ifEqualTo:{@"breaksThroughSilentMode", 1}];
  sound = [(MTAlarm *)self sound];
  v28 = [v4 appendObject:sound withName:@"sound" skipIfNil:1];

  return v4;
}

- (BOOL)shouldBypassWidgetReload
{
  bypassReloadDate = [(MTAlarm *)self bypassReloadDate];

  if (!bypassReloadDate)
  {
    return 0;
  }

  bypassReloadDate2 = [(MTAlarm *)self bypassReloadDate];
  v5 = [bypassReloadDate2 dateByAddingTimeInterval:10.0];

  v6 = (*(self->_currentDateProvider + 2))();
  LOBYTE(bypassReloadDate2) = [v6 mtIsBeforeDate:v5];

  return bypassReloadDate2;
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
  block[4] = self;
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