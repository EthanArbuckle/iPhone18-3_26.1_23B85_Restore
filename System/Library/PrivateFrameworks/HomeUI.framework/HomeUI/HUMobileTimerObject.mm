@interface HUMobileTimerObject
- (BOOL)_alarmIDsMatch:(id)match;
- (BOOL)_timerIDsMatch:(id)match;
- (BOOL)isEqual:(id)equal;
- (BOOL)isIgnorableTimerObject;
- (HUMobileTimerObject)initWithAlarm:(id)alarm;
- (HUMobileTimerObject)initWithTimer:(id)timer;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation HUMobileTimerObject

- (HUMobileTimerObject)initWithAlarm:(id)alarm
{
  alarmCopy = alarm;
  v11.receiver = self;
  v11.super_class = HUMobileTimerObject;
  v6 = [(HUMobileTimerObject *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_alarm, alarm);
    alarmID = [alarmCopy alarmID];
    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = alarmID;
  }

  return v7;
}

- (HUMobileTimerObject)initWithTimer:(id)timer
{
  timerCopy = timer;
  v11.receiver = self;
  v11.super_class = HUMobileTimerObject;
  v6 = [(HUMobileTimerObject *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timer, timer);
    timerID = [timerCopy timerID];
    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = timerID;
  }

  return v7;
}

- (unint64_t)hash
{
  alarm = [(HUMobileTimerObject *)self alarm];
  if (alarm)
  {
    goto LABEL_2;
  }

  timer = [(HUMobileTimerObject *)self timer];

  if (!timer)
  {
    alarm = [MEMORY[0x277CCA890] currentHandler];
    [alarm handleFailureInMethod:a2 object:self file:@"HUMobileTimerObject.m" lineNumber:41 description:@"HUMobileTimerObject must wrap an alarm or a timer"];
LABEL_2:
  }

  alarm2 = [(HUMobileTimerObject *)self alarm];

  if (alarm2)
  {
    [(HUMobileTimerObject *)self alarm];
  }

  else
  {
    [(HUMobileTimerObject *)self timer];
  }
  v7 = ;
  v8 = [v7 hash];

  return v8;
}

- (BOOL)_timerIDsMatch:(id)match
{
  matchCopy = match;
  timer = [(HUMobileTimerObject *)self timer];

  v6 = 0;
  if (matchCopy && timer)
  {
    timer2 = [(HUMobileTimerObject *)self timer];
    timerID = [timer2 timerID];
    timerID2 = [matchCopy timerID];
    v6 = [timerID isEqual:timerID2];
  }

  return v6;
}

- (BOOL)_alarmIDsMatch:(id)match
{
  matchCopy = match;
  alarm = [(HUMobileTimerObject *)self alarm];

  v6 = 0;
  if (matchCopy && alarm)
  {
    alarm2 = [(HUMobileTimerObject *)self alarm];
    alarmID = [alarm2 alarmID];
    alarmID2 = [matchCopy alarmID];
    v6 = [alarmID isEqual:alarmID2];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  alarm = [(HUMobileTimerObject *)self alarm];
  if (alarm)
  {
    goto LABEL_2;
  }

  timer = [(HUMobileTimerObject *)self timer];

  if (!timer)
  {
    alarm = [MEMORY[0x277CCA890] currentHandler];
    [alarm handleFailureInMethod:a2 object:self file:@"HUMobileTimerObject.m" lineNumber:70 description:@"HUMobileTimerObject must wrap an alarm or a timer"];
LABEL_2:
  }

  objc_opt_class();
  v8 = equalCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    goto LABEL_17;
  }

  alarm2 = [(HUMobileTimerObject *)self alarm];

  if (!alarm2)
  {
    timer2 = [(HUMobileTimerObject *)self timer];

    if (timer2)
    {
      timer3 = [v10 timer];

      if (!timer3)
      {
        v18 = objc_opt_class();
        NSLog(&cfstr_ComparingNonTi.isa, v18);
      }

      timer4 = [v10 timer];
      v15 = [(HUMobileTimerObject *)self _timerIDsMatch:timer4];
      goto LABEL_16;
    }

LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  alarm3 = [v10 alarm];

  if (!alarm3)
  {
    v13 = objc_opt_class();
    NSLog(&cfstr_ComparingNonAl.isa, v13);
  }

  timer4 = [v10 alarm];
  v15 = [(HUMobileTimerObject *)self _alarmIDsMatch:timer4];
LABEL_16:
  v19 = v15;

LABEL_18:
  return v19;
}

- (BOOL)isIgnorableTimerObject
{
  timer = [(HUMobileTimerObject *)self timer];

  if (timer)
  {
    timer2 = [(HUMobileTimerObject *)self timer];
    isCurrentTimer = [timer2 isCurrentTimer];

    if (isCurrentTimer)
    {
      return 1;
    }

    timer3 = [(HUMobileTimerObject *)self timer];
    if ([timer3 state] == 1)
    {
      timer4 = [(HUMobileTimerObject *)self timer];
      isFiring = [timer4 isFiring];

      if (!isFiring)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  alarm = [(HUMobileTimerObject *)self alarm];
  if (alarm)
  {
    v6 = alarm;
    alarm2 = [compareCopy alarm];

    if (alarm2)
    {
      alarm3 = [(HUMobileTimerObject *)self alarm];
      alarm4 = [compareCopy alarm];
LABEL_7:
      v13 = alarm4;
      v14 = [alarm3 compare:alarm4];

      goto LABEL_11;
    }
  }

  timer = [(HUMobileTimerObject *)self timer];
  if (timer)
  {
    v11 = timer;
    timer2 = [compareCopy timer];

    if (timer2)
    {
      alarm3 = [(HUMobileTimerObject *)self timer];
      alarm4 = [compareCopy timer];
      goto LABEL_7;
    }
  }

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *v17 = 0;
    _os_log_error_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_ERROR, "Error: comparing an MTAlarm to an MTTimer is not allowed.", v17, 2u);
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)description
{
  alarm = [(HUMobileTimerObject *)self alarm];
  if (alarm)
  {
    goto LABEL_2;
  }

  timer = [(HUMobileTimerObject *)self timer];

  if (!timer)
  {
    alarm = [MEMORY[0x277CCA890] currentHandler];
    [alarm handleFailureInMethod:a2 object:self file:@"HUMobileTimerObject.m" lineNumber:123 description:@"HUMobileTimerObject must wrap an alarm or a timer"];
LABEL_2:
  }

  v6 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  alarm2 = [(HUMobileTimerObject *)self alarm];

  v8 = MEMORY[0x277CCACA8];
  if (alarm2)
  {
    alarm3 = [(HUMobileTimerObject *)self alarm];
    v10 = [v8 stringWithFormat:@"%p", alarm3];
    [v6 appendString:v10 withName:@"MTAlarm"];

    alarm4 = [(HUMobileTimerObject *)self alarm];
    alarmID = [alarm4 alarmID];
    v13 = [v6 appendObject:alarmID withName:@"AlarmID"];

    alarm5 = [(HUMobileTimerObject *)self alarm];
    v15 = [v6 appendBool:objc_msgSend(alarm5 withName:{"isEnabled"), @"Enabled"}];

    alarm6 = [(HUMobileTimerObject *)self alarm];
    title = [alarm6 title];
    v18 = [v6 appendObject:title withName:@"Title"];

    v19 = MEMORY[0x277CCACA8];
    alarm7 = [(HUMobileTimerObject *)self alarm];
    hour = [alarm7 hour];
    alarm8 = [(HUMobileTimerObject *)self alarm];
    v23 = [v19 stringWithFormat:@"%lu:%lu", hour, objc_msgSend(alarm8, "minute")];
    v24 = [v6 appendObject:v23 withName:@"HH:MM"];
  }

  else
  {
    timer2 = [(HUMobileTimerObject *)self timer];
    v26 = [v8 stringWithFormat:@"%p", timer2];
    [v6 appendString:v26 withName:@"MTTimer"];

    timer3 = [(HUMobileTimerObject *)self timer];
    timerID = [timer3 timerID];
    v29 = [v6 appendObject:timerID withName:@"TimerID"];

    timer4 = [(HUMobileTimerObject *)self timer];
    v31 = [v6 appendUnsignedInteger:objc_msgSend(timer4 withName:{"state"), @"State"}];

    timer5 = [(HUMobileTimerObject *)self timer];
    title2 = [timer5 title];
    v34 = [v6 appendObject:title2 withName:@"Title"];

    timer6 = [(HUMobileTimerObject *)self timer];
    [timer6 remainingTime];
    v36 = [v6 appendTimeInterval:@"Remaining" withName:1 decomposeUnits:?];

    alarm7 = [(HUMobileTimerObject *)self timer];
    [alarm7 duration];
    v37 = [v6 appendTimeInterval:@"of" withName:1 decomposeUnits:?];
  }

  build = [v6 build];

  return build;
}

@end