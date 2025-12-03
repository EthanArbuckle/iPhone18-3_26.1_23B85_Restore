@interface MTAlarm(CoordinationCore)
- (id)COPreferredAlarm:()CoordinationCore;
- (id)co_HomeKitAlarmCopy;
- (id)co_alarmUpdatedWithHomeKitAlarm:()CoordinationCore;
- (id)co_sanitizedHomeKitAlarm;
- (id)co_targetReference;
- (uint64_t)co_isMediaSystemOriginating;
- (void)co_sanitizedHomeKitAlarm;
@end

@implementation MTAlarm(CoordinationCore)

- (id)COPreferredAlarm:()CoordinationCore
{
  v4 = a3;
  if (!v4 || [self isFiring])
  {
    goto LABEL_3;
  }

  if ([v4 isFiring])
  {
    goto LABEL_5;
  }

  if ([self isSnoozed])
  {
LABEL_3:
    selfCopy = self;
LABEL_6:
    selfCopy2 = selfCopy;
    goto LABEL_7;
  }

  if ([v4 isSnoozed])
  {
LABEL_5:
    selfCopy = v4;
    goto LABEL_6;
  }

  selfCopy2 = self;
  lastModifiedDate = [v4 lastModifiedDate];
  if (lastModifiedDate)
  {
    v9 = lastModifiedDate;
    lastModifiedDate2 = [v4 lastModifiedDate];
    lastModifiedDate3 = [selfCopy2 lastModifiedDate];
    if ([lastModifiedDate2 compare:lastModifiedDate3] == 1)
    {
    }

    else
    {
      lastModifiedDate4 = [selfCopy2 lastModifiedDate];

      if (lastModifiedDate4)
      {
        goto LABEL_7;
      }
    }

    v13 = v4;

    selfCopy2 = v13;
  }

LABEL_7:

  return selfCopy2;
}

- (id)co_sanitizedHomeKitAlarm
{
  siriContext = [self siriContext];
  v3 = *MEMORY[0x277CFCEC8];
  v4 = [siriContext objectForKey:*MEMORY[0x277CFCEC8]];
  v5 = [siriContext objectForKey:@"COAlarmSiriContextIsMediaSystemKey"];
  if (v4 | v5 || ([self isFiring] & 1) != 0 || (objc_msgSend(self, "isSnoozed") & 1) != 0)
  {
    v6 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MTAlarm(CoordinationCore) *)self co_sanitizedHomeKitAlarm];
    }

    selfCopy = [self mutableCopy];
    [selfCopy setFiredDate:0];
    [selfCopy setSnoozeFireDate:0];
    [selfCopy setDismissedDate:0];
    if (v4)
    {
      v8 = [siriContext mutableCopy];
      [v8 removeObjectForKey:v3];
      [v8 removeObjectForKey:@"COAlarmSiriContextIsMediaSystemKey"];
      [selfCopy setSiriContext:v8];
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)co_targetReference
{
  siriContext = [self siriContext];
  v2 = [siriContext objectForKey:*MEMORY[0x277CFCEC8]];

  return v2;
}

- (uint64_t)co_isMediaSystemOriginating
{
  siriContext = [self siriContext];
  v2 = [siriContext objectForKey:@"COAlarmSiriContextIsMediaSystemKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)co_HomeKitAlarmCopy
{
  v2 = objc_alloc_init(MEMORY[0x277D296F0]);
  [v2 setHour:{objc_msgSend(self, "hour")}];
  [v2 setMinute:{objc_msgSend(self, "minute")}];
  [v2 setEnabled:{objc_msgSend(self, "isEnabled")}];
  [v2 setRepeatSchedule:{objc_msgSend(self, "repeatSchedule")}];
  title = [self title];
  [v2 setTitle:title];

  sound = [self sound];
  [v2 setSound:sound];

  siriContext = [self siriContext];
  [v2 setSiriContext:siriContext];

  return v2;
}

- (id)co_alarmUpdatedWithHomeKitAlarm:()CoordinationCore
{
  v4 = a3;
  lastModifiedDate = [self lastModifiedDate];
  co_HomeKitSaveDate = [v4 co_HomeKitSaveDate];
  v7 = co_HomeKitSaveDate;
  v8 = 0;
  if (!lastModifiedDate || !co_HomeKitSaveDate)
  {
    goto LABEL_36;
  }

  if ([co_HomeKitSaveDate compare:lastModifiedDate] == -1)
  {
    v8 = 0;
    goto LABEL_36;
  }

  isEnabled = [v4 isEnabled];
  hour = [v4 hour];
  minute = [v4 minute];
  title = [v4 title];
  repeatSchedule = [v4 repeatSchedule];
  sound = [v4 sound];
  if (isEnabled == [self isEnabled])
  {
    if ([self hour] == hour)
    {
      if ([self minute] == minute)
      {
        v8 = 0;
        goto LABEL_18;
      }

LABEL_16:
      v8 = [self mutableCopy];
      goto LABEL_17;
    }

LABEL_12:
    v8 = [self mutableCopy];
    goto LABEL_13;
  }

  v8 = [self mutableCopy];
  [v8 setEnabled:isEnabled];
  if ([self hour] == hour)
  {
    goto LABEL_14;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_13:
  [v8 setHour:hour];
LABEL_14:
  if ([self minute] == minute)
  {
    goto LABEL_18;
  }

  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_17:
  [v8 setMinute:minute];
LABEL_18:
  title2 = [self title];
  v15 = title2;
  if (title == title2)
  {
  }

  else
  {
    title3 = [self title];
    v17 = [title isEqual:title3];

    if ((v17 & 1) == 0)
    {
      v18 = repeatSchedule;
      if (!v8)
      {
        v8 = [self mutableCopy];
      }

      [v8 setTitle:title];
      goto LABEL_25;
    }
  }

  v18 = repeatSchedule;
LABEL_25:
  if ([self repeatSchedule] != v18)
  {
    if (!v8)
    {
      v8 = [self mutableCopy];
    }

    [v8 setRepeatSchedule:v18];
  }

  sound2 = [self sound];
  v20 = sound2;
  if (sound == sound2)
  {
  }

  else
  {
    sound3 = [self sound];
    v22 = [sound isEqual:sound3];

    if ((v22 & 1) == 0)
    {
      if (!v8)
      {
        v8 = [self mutableCopy];
      }

      [v8 setSound:sound];
    }
  }

LABEL_36:

  return v8;
}

- (void)co_sanitizedHomeKitAlarm
{
  v7 = *MEMORY[0x277D85DE8];
  alarmID = [self alarmID];
  v5 = 138412290;
  v6 = alarmID;
  _os_log_error_impl(&dword_244378000, a2, OS_LOG_TYPE_ERROR, "%@ required sanitizing!", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end