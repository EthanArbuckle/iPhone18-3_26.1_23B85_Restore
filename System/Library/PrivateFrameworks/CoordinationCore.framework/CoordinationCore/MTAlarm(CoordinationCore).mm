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
  if (!v4 || [a1 isFiring])
  {
    goto LABEL_3;
  }

  if ([v4 isFiring])
  {
    goto LABEL_5;
  }

  if ([a1 isSnoozed])
  {
LABEL_3:
    v5 = a1;
LABEL_6:
    v6 = v5;
    goto LABEL_7;
  }

  if ([v4 isSnoozed])
  {
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  v6 = a1;
  v8 = [v4 lastModifiedDate];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 lastModifiedDate];
    v11 = [v6 lastModifiedDate];
    if ([v10 compare:v11] == 1)
    {
    }

    else
    {
      v12 = [v6 lastModifiedDate];

      if (v12)
      {
        goto LABEL_7;
      }
    }

    v13 = v4;

    v6 = v13;
  }

LABEL_7:

  return v6;
}

- (id)co_sanitizedHomeKitAlarm
{
  v2 = [a1 siriContext];
  v3 = *MEMORY[0x277CFCEC8];
  v4 = [v2 objectForKey:*MEMORY[0x277CFCEC8]];
  v5 = [v2 objectForKey:@"COAlarmSiriContextIsMediaSystemKey"];
  if (v4 | v5 || ([a1 isFiring] & 1) != 0 || (objc_msgSend(a1, "isSnoozed") & 1) != 0)
  {
    v6 = COCoreLogForCategory(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MTAlarm(CoordinationCore) *)a1 co_sanitizedHomeKitAlarm];
    }

    v7 = [a1 mutableCopy];
    [v7 setFiredDate:0];
    [v7 setSnoozeFireDate:0];
    [v7 setDismissedDate:0];
    if (v4)
    {
      v8 = [v2 mutableCopy];
      [v8 removeObjectForKey:v3];
      [v8 removeObjectForKey:@"COAlarmSiriContextIsMediaSystemKey"];
      [v7 setSiriContext:v8];
    }
  }

  else
  {
    v7 = a1;
  }

  return v7;
}

- (id)co_targetReference
{
  v1 = [a1 siriContext];
  v2 = [v1 objectForKey:*MEMORY[0x277CFCEC8]];

  return v2;
}

- (uint64_t)co_isMediaSystemOriginating
{
  v1 = [a1 siriContext];
  v2 = [v1 objectForKey:@"COAlarmSiriContextIsMediaSystemKey"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)co_HomeKitAlarmCopy
{
  v2 = objc_alloc_init(MEMORY[0x277D296F0]);
  [v2 setHour:{objc_msgSend(a1, "hour")}];
  [v2 setMinute:{objc_msgSend(a1, "minute")}];
  [v2 setEnabled:{objc_msgSend(a1, "isEnabled")}];
  [v2 setRepeatSchedule:{objc_msgSend(a1, "repeatSchedule")}];
  v3 = [a1 title];
  [v2 setTitle:v3];

  v4 = [a1 sound];
  [v2 setSound:v4];

  v5 = [a1 siriContext];
  [v2 setSiriContext:v5];

  return v2;
}

- (id)co_alarmUpdatedWithHomeKitAlarm:()CoordinationCore
{
  v4 = a3;
  v5 = [a1 lastModifiedDate];
  v6 = [v4 co_HomeKitSaveDate];
  v7 = v6;
  v8 = 0;
  if (!v5 || !v6)
  {
    goto LABEL_36;
  }

  if ([v6 compare:v5] == -1)
  {
    v8 = 0;
    goto LABEL_36;
  }

  v9 = [v4 isEnabled];
  v10 = [v4 hour];
  v11 = [v4 minute];
  v12 = [v4 title];
  v24 = [v4 repeatSchedule];
  v13 = [v4 sound];
  if (v9 == [a1 isEnabled])
  {
    if ([a1 hour] == v10)
    {
      if ([a1 minute] == v11)
      {
        v8 = 0;
        goto LABEL_18;
      }

LABEL_16:
      v8 = [a1 mutableCopy];
      goto LABEL_17;
    }

LABEL_12:
    v8 = [a1 mutableCopy];
    goto LABEL_13;
  }

  v8 = [a1 mutableCopy];
  [v8 setEnabled:v9];
  if ([a1 hour] == v10)
  {
    goto LABEL_14;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_13:
  [v8 setHour:v10];
LABEL_14:
  if ([a1 minute] == v11)
  {
    goto LABEL_18;
  }

  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_17:
  [v8 setMinute:v11];
LABEL_18:
  v14 = [a1 title];
  v15 = v14;
  if (v12 == v14)
  {
  }

  else
  {
    v16 = [a1 title];
    v17 = [v12 isEqual:v16];

    if ((v17 & 1) == 0)
    {
      v18 = v24;
      if (!v8)
      {
        v8 = [a1 mutableCopy];
      }

      [v8 setTitle:v12];
      goto LABEL_25;
    }
  }

  v18 = v24;
LABEL_25:
  if ([a1 repeatSchedule] != v18)
  {
    if (!v8)
    {
      v8 = [a1 mutableCopy];
    }

    [v8 setRepeatSchedule:v18];
  }

  v19 = [a1 sound];
  v20 = v19;
  if (v13 == v19)
  {
  }

  else
  {
    v21 = [a1 sound];
    v22 = [v13 isEqual:v21];

    if ((v22 & 1) == 0)
    {
      if (!v8)
      {
        v8 = [a1 mutableCopy];
      }

      [v8 setSound:v13];
    }
  }

LABEL_36:

  return v8;
}

- (void)co_sanitizedHomeKitAlarm
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 alarmID];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_244378000, a2, OS_LOG_TYPE_ERROR, "%@ required sanitizing!", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end