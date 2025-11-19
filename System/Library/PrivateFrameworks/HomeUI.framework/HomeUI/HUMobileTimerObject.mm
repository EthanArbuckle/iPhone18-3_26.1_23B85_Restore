@interface HUMobileTimerObject
- (BOOL)_alarmIDsMatch:(id)a3;
- (BOOL)_timerIDsMatch:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isIgnorableTimerObject;
- (HUMobileTimerObject)initWithAlarm:(id)a3;
- (HUMobileTimerObject)initWithTimer:(id)a3;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation HUMobileTimerObject

- (HUMobileTimerObject)initWithAlarm:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HUMobileTimerObject;
  v6 = [(HUMobileTimerObject *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_alarm, a3);
    v8 = [v5 alarmID];
    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = v8;
  }

  return v7;
}

- (HUMobileTimerObject)initWithTimer:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HUMobileTimerObject;
  v6 = [(HUMobileTimerObject *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timer, a3);
    v8 = [v5 timerID];
    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = v8;
  }

  return v7;
}

- (unint64_t)hash
{
  v4 = [(HUMobileTimerObject *)self alarm];
  if (v4)
  {
    goto LABEL_2;
  }

  v5 = [(HUMobileTimerObject *)self timer];

  if (!v5)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"HUMobileTimerObject.m" lineNumber:41 description:@"HUMobileTimerObject must wrap an alarm or a timer"];
LABEL_2:
  }

  v6 = [(HUMobileTimerObject *)self alarm];

  if (v6)
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

- (BOOL)_timerIDsMatch:(id)a3
{
  v4 = a3;
  v5 = [(HUMobileTimerObject *)self timer];

  v6 = 0;
  if (v4 && v5)
  {
    v7 = [(HUMobileTimerObject *)self timer];
    v8 = [v7 timerID];
    v9 = [v4 timerID];
    v6 = [v8 isEqual:v9];
  }

  return v6;
}

- (BOOL)_alarmIDsMatch:(id)a3
{
  v4 = a3;
  v5 = [(HUMobileTimerObject *)self alarm];

  v6 = 0;
  if (v4 && v5)
  {
    v7 = [(HUMobileTimerObject *)self alarm];
    v8 = [v7 alarmID];
    v9 = [v4 alarmID];
    v6 = [v8 isEqual:v9];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = [(HUMobileTimerObject *)self alarm];
  if (v6)
  {
    goto LABEL_2;
  }

  v7 = [(HUMobileTimerObject *)self timer];

  if (!v7)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HUMobileTimerObject.m" lineNumber:70 description:@"HUMobileTimerObject must wrap an alarm or a timer"];
LABEL_2:
  }

  objc_opt_class();
  v8 = v5;
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

  v11 = [(HUMobileTimerObject *)self alarm];

  if (!v11)
  {
    v16 = [(HUMobileTimerObject *)self timer];

    if (v16)
    {
      v17 = [v10 timer];

      if (!v17)
      {
        v18 = objc_opt_class();
        NSLog(&cfstr_ComparingNonTi.isa, v18);
      }

      v14 = [v10 timer];
      v15 = [(HUMobileTimerObject *)self _timerIDsMatch:v14];
      goto LABEL_16;
    }

LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  v12 = [v10 alarm];

  if (!v12)
  {
    v13 = objc_opt_class();
    NSLog(&cfstr_ComparingNonAl.isa, v13);
  }

  v14 = [v10 alarm];
  v15 = [(HUMobileTimerObject *)self _alarmIDsMatch:v14];
LABEL_16:
  v19 = v15;

LABEL_18:
  return v19;
}

- (BOOL)isIgnorableTimerObject
{
  v3 = [(HUMobileTimerObject *)self timer];

  if (v3)
  {
    v4 = [(HUMobileTimerObject *)self timer];
    v5 = [v4 isCurrentTimer];

    if (v5)
    {
      return 1;
    }

    v7 = [(HUMobileTimerObject *)self timer];
    if ([v7 state] == 1)
    {
      v8 = [(HUMobileTimerObject *)self timer];
      v9 = [v8 isFiring];

      if (!v9)
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(HUMobileTimerObject *)self alarm];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 alarm];

    if (v7)
    {
      v8 = [(HUMobileTimerObject *)self alarm];
      v9 = [v4 alarm];
LABEL_7:
      v13 = v9;
      v14 = [v8 compare:v9];

      goto LABEL_11;
    }
  }

  v10 = [(HUMobileTimerObject *)self timer];
  if (v10)
  {
    v11 = v10;
    v12 = [v4 timer];

    if (v12)
    {
      v8 = [(HUMobileTimerObject *)self timer];
      v9 = [v4 timer];
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
  v4 = [(HUMobileTimerObject *)self alarm];
  if (v4)
  {
    goto LABEL_2;
  }

  v5 = [(HUMobileTimerObject *)self timer];

  if (!v5)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"HUMobileTimerObject.m" lineNumber:123 description:@"HUMobileTimerObject must wrap an alarm or a timer"];
LABEL_2:
  }

  v6 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v7 = [(HUMobileTimerObject *)self alarm];

  v8 = MEMORY[0x277CCACA8];
  if (v7)
  {
    v9 = [(HUMobileTimerObject *)self alarm];
    v10 = [v8 stringWithFormat:@"%p", v9];
    [v6 appendString:v10 withName:@"MTAlarm"];

    v11 = [(HUMobileTimerObject *)self alarm];
    v12 = [v11 alarmID];
    v13 = [v6 appendObject:v12 withName:@"AlarmID"];

    v14 = [(HUMobileTimerObject *)self alarm];
    v15 = [v6 appendBool:objc_msgSend(v14 withName:{"isEnabled"), @"Enabled"}];

    v16 = [(HUMobileTimerObject *)self alarm];
    v17 = [v16 title];
    v18 = [v6 appendObject:v17 withName:@"Title"];

    v19 = MEMORY[0x277CCACA8];
    v20 = [(HUMobileTimerObject *)self alarm];
    v21 = [v20 hour];
    v22 = [(HUMobileTimerObject *)self alarm];
    v23 = [v19 stringWithFormat:@"%lu:%lu", v21, objc_msgSend(v22, "minute")];
    v24 = [v6 appendObject:v23 withName:@"HH:MM"];
  }

  else
  {
    v25 = [(HUMobileTimerObject *)self timer];
    v26 = [v8 stringWithFormat:@"%p", v25];
    [v6 appendString:v26 withName:@"MTTimer"];

    v27 = [(HUMobileTimerObject *)self timer];
    v28 = [v27 timerID];
    v29 = [v6 appendObject:v28 withName:@"TimerID"];

    v30 = [(HUMobileTimerObject *)self timer];
    v31 = [v6 appendUnsignedInteger:objc_msgSend(v30 withName:{"state"), @"State"}];

    v32 = [(HUMobileTimerObject *)self timer];
    v33 = [v32 title];
    v34 = [v6 appendObject:v33 withName:@"Title"];

    v35 = [(HUMobileTimerObject *)self timer];
    [v35 remainingTime];
    v36 = [v6 appendTimeInterval:@"Remaining" withName:1 decomposeUnits:?];

    v20 = [(HUMobileTimerObject *)self timer];
    [v20 duration];
    v37 = [v6 appendTimeInterval:@"of" withName:1 decomposeUnits:?];
  }

  v38 = [v6 build];

  return v38;
}

@end