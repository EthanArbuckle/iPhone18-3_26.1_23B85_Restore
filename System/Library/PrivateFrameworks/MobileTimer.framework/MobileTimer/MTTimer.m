@interface MTTimer
+ (BOOL)isActiveTimer:(id)a3;
+ (BOOL)stateChangeIsAllowableFromState:(unint64_t)a3 toState:(unint64_t)a4;
+ (id)_timerTimeForState:(unint64_t)a3 remainingTime:(double)a4 currentDateProvider:(id)a5;
+ (id)currentTimerFromTimers:(id)a3;
+ (id)descriptionForState:(unint64_t)a3;
+ (id)firstActiveTimerFromTimers:(id)a3;
+ (id)propertiesAffectingSessions;
- (BOOL)_isEqualToTimer:(id)a3 checkLastModified:(BOOL)a4;
- (BOOL)hasDefaultTitle;
- (BOOL)isCurrentTimer;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFiring;
- (MTTimer)initWithId:(id)a3 state:(unint64_t)a4 duration:(double)a5 currentDateProvider:(id)a6;
- (MTTimer)initWithIdentifier:(id)a3;
- (MTTimer)initWithMTCDTimer:(id)a3;
- (MTTimer)initWithState:(unint64_t)a3 duration:(double)a4;
- (MTTimer)initWithState:(unint64_t)a3 duration:(double)a4 currentDateProvider:(id)a5;
- (NSDate)fireDate;
- (NSString)description;
- (NSString)displayTitle;
- (NSString)timerIDString;
- (NSURL)timerURL;
- (double)remainingTime;
- (id)_initCommon;
- (id)initFromDeserializer:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)nextTrigger;
- (id)nextTriggerAfterDate:(id)a3;
- (id)timerByRestarting;
- (id)timerByUpdatingWithState:(unint64_t)a3;
- (id)upcomingTriggersAfterDate:(id)a3;
- (int64_t)compare:(id)a3;
- (int64_t)type;
- (unint64_t)hash;
- (void)_copyStateOntoTimer:(id)a3;
- (void)_setDuration:(double)a3;
- (void)serializeWithSerializer:(id)a3;
- (void)setDuration:(double)a3;
- (void)setSound:(id)a3;
- (void)setState:(unint64_t)a3;
@end

@implementation MTTimer

- (BOOL)isCurrentTimer
{
  v2 = [(MTTimer *)self title];
  v3 = [v2 isEqualToString:@"CURRENT_TIMER"];

  return v3;
}

- (NSString)description
{
  v16 = MEMORY[0x1E696AEC0];
  v15 = objc_opt_class();
  v3 = [(MTTimer *)self timerID];
  v4 = [(MTTimer *)self title];
  v5 = [MTTimer descriptionForState:[(MTTimer *)self state]];
  [(MTTimer *)self duration];
  v7 = v6;
  v8 = [(MTTimer *)self firedDate];
  v9 = [(MTTimer *)self dismissedDate];
  v10 = [(MTTimer *)self sound];
  v11 = [(MTTimer *)self siriContext];
  v12 = [(MTTimer *)self timerContext];
  v13 = [v16 stringWithFormat:@"<%@:%p TimerID: %@, Title: %@, state:%@, duration:%d, firedDate: %@, dismissedDate: %@, sound: %@, siriContext: %@>, timerContext: %@>", v15, self, v3, v4, v5, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (NSString)timerIDString
{
  v2 = [(MTTimer *)self timerID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)_initCommon
{
  v7.receiver = self;
  v7.super_class = MTTimer;
  v2 = [(MTTimer *)&v7 init];
  v3 = MTCurrentDateProvider();
  v4 = [v3 copy];
  currentDateProvider = v2->_currentDateProvider;
  v2->_currentDateProvider = v4;

  return v2;
}

- (id)upcomingTriggersAfterDate:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(MTTimer *)self nextTriggerAfterDate:a3];
  v4 = v3;
  if (v3)
  {
    v8[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)propertiesAffectingSessions
{
  if (propertiesAffectingSessions_onceToken != -1)
  {
    +[MTTimer(Properties) propertiesAffectingSessions];
  }

  v3 = propertiesAffectingSessions_propertiesAffectingSessions;

  return v3;
}

void __50__MTTimer_Properties__propertiesAffectingSessions__block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"MTTimerState";
  v5[1] = @"MTTimerFireTimerClass";
  v5[2] = @"MTTimerFireTime";
  v5[3] = @"MTTimerTitle";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = propertiesAffectingSessions_propertiesAffectingSessions;
  propertiesAffectingSessions_propertiesAffectingSessions = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (MTTimer)initWithState:(unint64_t)a3 duration:(double)a4
{
  v7 = MTCurrentDateProvider();
  v8 = [(MTTimer *)self initWithState:a3 duration:v7 currentDateProvider:a4];

  return v8;
}

- (MTTimer)initWithState:(unint64_t)a3 duration:(double)a4 currentDateProvider:(id)a5
{
  v8 = MEMORY[0x1E696AFB0];
  v9 = a5;
  v10 = [v8 UUID];
  v11 = [(MTTimer *)self initWithId:v10 state:a3 duration:v9 currentDateProvider:a4];

  return v11;
}

- (MTTimer)initWithId:(id)a3 state:(unint64_t)a4 duration:(double)a5 currentDateProvider:(id)a6
{
  v11 = a3;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = MTTimer;
  v13 = [(MTTimer *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_timerID, a3);
    v14->_state = a4;
    if (a4 >= 4)
    {
      NSLog(&cfstr_StateMustBeAVa.isa, a4);
      v14->_state = 0;
    }

    v14->_duration = a5;
    v15 = [v12 copy];
    currentDateProvider = v14->_currentDateProvider;
    v14->_currentDateProvider = v15;

    v17 = [objc_opt_class() _timerTimeForState:a4 remainingTime:v14->_currentDateProvider currentDateProvider:a5];
    fireTime = v14->_fireTime;
    v14->_fireTime = v17;

    v19 = [MTSound defaultSoundForCategory:1];
    sound = v14->_sound;
    v14->_sound = v19;
  }

  return v14;
}

- (MTTimer)initWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MTTimer *)self _initCommon];
  if (v5)
  {
    v6 = [v4 copy];
    timerID = v5->_timerID;
    v5->_timerID = v6;
  }

  return v5;
}

- (MTTimer)initWithMTCDTimer:(id)a3
{
  v4 = a3;
  [v4 duration];
  v6 = v5;
  v7 = [v4 state];
  v8 = [MTMutableTimer alloc];
  v9 = [v4 mtid];
  v10 = MTCurrentDateProvider();
  v11 = [(MTTimer *)v8 initWithId:v9 state:v7 duration:v10 currentDateProvider:v6];

  v12 = [v4 timerURL];
  [(MTTimer *)v11 setTimerURL:v12];

  v13 = [v4 firedDate];
  [(MTTimer *)v11 setFiredDate:v13];

  v14 = [v4 title];
  [(MTTimer *)v11 setTitle:v14];

  v15 = [v4 lastModifiedDate];
  [(MTTimer *)v11 setLastModifiedDate:v15];

  v16 = [v4 dismissedDate];
  [(MTTimer *)v11 setDismissedDate:v16];

  v17 = MEMORY[0x1E696ACD0];
  v18 = [v4 fireTime];
  v19 = [v17 unarchiveObjectWithData:v18];
  [(MTTimer *)v11 setFireTime:v19];

  v20 = [v4 siriContextDecoded];
  [(MTTimer *)v11 setSiriContext:v20];

  v21 = [v4 timerContextDecoded];
  [(MTTimer *)v11 setTimerContext:v21];

  v22 = [MTSound alloc];
  v23 = [v4 sound];

  v24 = [(MTSound *)v22 initWithMTCDSound:v23];
  [(MTTimer *)v11 setSound:v24];

  v25 = [(MTMutableTimer *)v11 copy];
  return v25;
}

+ (id)currentTimerFromTimers:(id)a3
{
  v3 = a3;
  v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_51];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 firstObject];
  }

  v7 = v6;

  return v7;
}

+ (id)firstActiveTimerFromTimers:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([a1 isActiveTimer:{v9, v13}])
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (BOOL)isActiveTimer:(id)a3
{
  v3 = a3;
  v4 = [v3 state] == 3 || objc_msgSend(v3, "state") == 2;

  return v4;
}

- (NSURL)timerURL
{
  v2 = [(MTTimer *)self timerID];
  v3 = [v2 UUIDString];
  v4 = [@"x-apple-clock:timer?id=" stringByAppendingString:v3];

  v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];

  return v5;
}

- (double)remainingTime
{
  v2 = [(MTTimer *)self fireTime];
  [v2 remainingTime];
  v4 = v3;

  return v4;
}

- (NSDate)fireDate
{
  if ([(MTTimer *)self state]== 3)
  {
    v3 = (*(self->_currentDateProvider + 2))();
    [(MTTimer *)self remainingTime];
    v4 = [v3 dateByAddingTimeInterval:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)displayTitle
{
  if ([(MTTimer *)self hasDefaultTitle])
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"TIMER_DEFAULT_TITLE" value:&stru_1F29360E0 table:@"Localizable"];
  }

  else
  {
    v4 = [(MTTimer *)self title];
  }

  return v4;
}

- (BOOL)hasDefaultTitle
{
  v3 = [(MTTimer *)self title];
  if ([v3 isEqualToString:@"CURRENT_TIMER"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MTTimer *)self title];
    if ([v5 length])
    {
      v6 = [(MTTimer *)self title];
      v4 = v6 == 0;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)timerByRestarting
{
  v2 = [(MTTimer *)self timerByUpdatingWithState:1];
  v3 = [v2 timerByUpdatingWithState:3];

  return v3;
}

- (id)timerByUpdatingWithState:(unint64_t)a3
{
  v4 = [(MTTimer *)self mutableCopy];
  [v4 setState:a3];

  return v4;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(MTTimer *)self fireTime];
  v6 = [v4 fireTime];
  v7 = [v5 compare:v6];

  if (!v7)
  {
    v8 = [(MTTimer *)self displayTitle];
    v9 = [v4 displayTitle];
    v7 = [v8 compare:v9];

    if (!v7)
    {
      v10 = [(MTTimer *)self timerIDString];
      v11 = [v4 timerIDString];
      v7 = [v10 compare:v11];
    }
  }

  return v7;
}

- (id)nextTrigger
{
  v3 = (*(self->_currentDateProvider + 2))();
  v4 = [(MTTimer *)self nextTriggerAfterDate:v3];

  return v4;
}

- (id)nextTriggerAfterDate:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MTTimer *)self lastModifiedDate];
  if (v5)
  {
    v6 = v5;
    v7 = [(MTTimer *)self lastModifiedDate];
    v8 = [v7 mtIsAfterDate:v4];

    if (v8)
    {
      v9 = MTLogForCategory(4);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(MTTimer *)self timerID];
        v11 = [(MTTimer *)self lastModifiedDate];
        v41 = 138543874;
        v42 = v10;
        v43 = 2114;
        v44 = v4;
        v45 = 2114;
        v46 = v11;
        _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ modified after %{public}@ (%{public}@)", &v41, 0x20u);
      }

      v12 = [(MTTimer *)self lastModifiedDate];

      v4 = v12;
    }
  }

  v13 = [(MTTimer *)self firedDate];
  if (v13)
  {
    v14 = v13;
    v15 = [(MTTimer *)self firedDate];
    v16 = [v15 mtIsAfterDate:v4];

    if (v16)
    {
      v17 = MTLogForCategory(4);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(MTTimer *)self timerID];
        v19 = [(MTTimer *)self firedDate];
        v41 = 138543874;
        v42 = v18;
        v43 = 2114;
        v44 = v4;
        v45 = 2114;
        v46 = v19;
        _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ already fired after %{public}@ (%{public}@)", &v41, 0x20u);
      }

      v20 = [(MTTimer *)self firedDate];

      v4 = v20;
    }
  }

  v21 = [(MTTimer *)self dismissedDate];
  if (v21)
  {
    v22 = v21;
    v23 = [(MTTimer *)self dismissedDate];
    v24 = [v23 mtIsAfterDate:v4];

    if (v24)
    {
      v25 = MTLogForCategory(4);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(MTTimer *)self timerID];
        v27 = [(MTTimer *)self dismissedDate];
        v41 = 138543874;
        v42 = v26;
        v43 = 2114;
        v44 = v4;
        v45 = 2114;
        v46 = v27;
        _os_log_impl(&dword_1B1F9F000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ already dismissed after %{public}@ (%{public}@)", &v41, 0x20u);
      }

      v28 = [(MTTimer *)self dismissedDate];

      v4 = v28;
    }
  }

  v29 = MTLogForCategory(4);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    [(MTTimer *)self nextTriggerAfterDate:v4, v29];
  }

  if ([(MTTimer *)self state]== 3)
  {
    v30 = objc_opt_class();
    v31 = [(MTTimer *)self fireTime];
    if (v31)
    {
      if (objc_opt_isKindOfClass())
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      v33 = v32;
      if (!v33)
      {
        [MTTimerScheduler _queue_scheduleTimers:v31 withCompletion:v30];
      }
    }

    else
    {
      v33 = 0;
    }

    v35 = [v33 date];
    if ([v35 mtIsAfterOrSameAsDate:v4])
    {
      v34 = [MTTrigger triggerWithDate:v35 triggerType:0];
    }

    else
    {
      v36 = MTLogForCategory(4);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v41 = 138543618;
        v42 = v35;
        v43 = 2114;
        v44 = v4;
        _os_log_impl(&dword_1B1F9F000, v36, OS_LOG_TYPE_DEFAULT, "Next trigger date %{public}@ is prior to requested date %{public}@", &v41, 0x16u);
      }

      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v37 = MTLogForCategory(4);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [(MTTimer *)self timerID];
    v41 = 138543618;
    v42 = v38;
    v43 = 2114;
    v44 = v34;
    _os_log_impl(&dword_1B1F9F000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ has next trigger %{public}@", &v41, 0x16u);
  }

  v39 = *MEMORY[0x1E69E9840];

  return v34;
}

- (BOOL)isFiring
{
  if ([(MTTimer *)self state]== 3)
  {
    return 0;
  }

  v4 = [(MTTimer *)self firedDate];
  if (v4)
  {
    v5 = [(MTTimer *)self dismissedDate];
    if (v5)
    {
      v6 = [(MTTimer *)self firedDate];
      v7 = [(MTTimer *)self dismissedDate];
      v3 = [v6 mtIsAfterDate:v7];
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)descriptionForState:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"Invalid State";
  }

  else
  {
    return off_1E7B0FDC8[a3];
  }
}

+ (BOOL)stateChangeIsAllowableFromState:(unint64_t)a3 toState:(unint64_t)a4
{
  if (a3 == 2 && a4 == 2)
  {
    return 1;
  }

  return a3 == 3 || a4 != 2;
}

- (void)setState:(unint64_t)a3
{
  if (a3 < 4)
  {
    if (self->_state != a3)
    {
      v5 = [(MTTimer *)self fireTime];
      [v5 remainingTime];
      v7 = v6;

      if (a3 == 1)
      {
        [(MTTimer *)self duration];
        v7 = v8;
      }

      v9 = [objc_opt_class() _timerTimeForState:a3 remainingTime:self->_currentDateProvider currentDateProvider:v7];
      [(MTTimer *)self setFireTime:v9];

      self->_state = a3;
    }
  }

  else
  {
    NSLog(&cfstr_StateMustBeAVa.isa, a2, a3);
  }
}

- (void)setSound:(id)a3
{
  v4 = a3;
  if (self->_sound != v4)
  {
    if (!v4)
    {
      v4 = [MTSound defaultSoundForCategory:1];
    }

    v7 = v4;
    v5 = [(MTSound *)v4 copy];
    sound = self->_sound;
    self->_sound = v5;

    v4 = v7;
  }
}

- (void)setDuration:(double)a3
{
  if ([(MTTimer *)self state]!= 1)
  {
    NSLog(&cfstr_TimerDurationC.isa);
  }

  if ([(MTTimer *)self state]== 1)
  {
    if (a3 > 0.0)
    {

      [(MTTimer *)self _setDuration:a3];
    }

    else
    {
      NSLog(&cfstr_TimerDurationM.isa);
    }
  }
}

- (void)_setDuration:(double)a3
{
  if (self->_duration != a3)
  {
    self->_duration = a3;
    if ([(MTTimer *)self state]== 1)
    {
      v4 = [objc_opt_class() _timerTimeForState:1 remainingTime:self->_currentDateProvider currentDateProvider:self->_duration];
      [(MTTimer *)self setFireTime:v4];
    }
  }
}

- (unint64_t)hash
{
  v2 = [(MTTimer *)self timerID];
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
    v8 = [(MTTimer *)self isEqualToTimer:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isEqualToTimer:(id)a3 checkLastModified:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MTTimer *)self timerID];
  v8 = [v6 timerID];
  if ([v7 isEqual:v8])
  {
    v9 = [(MTTimer *)self state];
    if (v9 == [v6 state])
    {
      [(MTTimer *)self duration];
      v11 = round(v10);
      [v6 duration];
      if (v11 == round(v12))
      {
        v13 = [(MTTimer *)self fireTime];
        v14 = [v6 fireTime];
        if (v13 != v14)
        {
          v15 = [(MTTimer *)self fireTime];
          v76 = [v6 fireTime];
          v77 = v15;
          if (![v15 isEqual:?])
          {
            v16 = 0;
            goto LABEL_54;
          }
        }

        v18 = [(MTTimer *)self title];
        v78 = [v6 title];
        if (v18 != v78)
        {
          v19 = [(MTTimer *)self title];
          v74 = [v6 title];
          v75 = v19;
          if (![v19 isEqual:v74])
          {
            v16 = 0;
            v20 = v78;
LABEL_52:

LABEL_53:
            if (v13 == v14)
            {
LABEL_55:

              goto LABEL_8;
            }

LABEL_54:

            goto LABEL_55;
          }
        }

        if (v4)
        {
          v21 = [v6 lastModifiedDate];
          v65 = [(MTTimer *)self lastModifiedDate];
          v66 = v21;
          if (v21 == v65)
          {
            v73 = 0;
          }

          else
          {
            v22 = [v6 lastModifiedDate];
            v23 = [(MTTimer *)self lastModifiedDate];
            if (([v22 isEqual:v23] & 1) == 0)
            {

              v16 = 0;
              goto LABEL_51;
            }

            v58 = v22;
            v73 = 1;
            v57 = v23;
          }
        }

        else
        {
          v73 = 0;
        }

        v24 = [(MTTimer *)self firedDate];
        v25 = [v6 firedDate];
        v72 = v24;
        v26 = v24 == v25;
        v27 = v25;
        if (v26)
        {
          v71 = v25;
        }

        else
        {
          v28 = [(MTTimer *)self firedDate];
          v67 = [v6 firedDate];
          v68 = v28;
          if (![v28 isEqual:?])
          {
            v16 = 0;
            v35 = v27;
            v36 = v72;
            goto LABEL_45;
          }

          v71 = v27;
        }

        v29 = [(MTTimer *)self dismissedDate];
        v30 = [v6 dismissedDate];
        v69 = v29;
        v70 = v18;
        v26 = v29 == v30;
        v31 = v30;
        if (!v26)
        {
          v32 = [(MTTimer *)self dismissedDate];
          v60 = [v6 dismissedDate];
          v61 = v32;
          if (![v32 isEqual:?])
          {
            v33 = v71;
            v16 = 0;
            v34 = v69;
LABEL_43:

LABEL_44:
            v36 = v72;
            v35 = v33;
            v26 = v72 == v33;
            v18 = v70;
            if (v26)
            {

              if (v73)
              {
LABEL_46:

                if (!v4)
                {
LABEL_51:
                  v20 = v78;
                  if (v18 == v78)
                  {
                    goto LABEL_53;
                  }

                  goto LABEL_52;
                }

LABEL_50:

                goto LABEL_51;
              }

LABEL_49:
              if (!v4)
              {
                goto LABEL_51;
              }

              goto LABEL_50;
            }

LABEL_45:

            if (v73)
            {
              goto LABEL_46;
            }

            goto LABEL_49;
          }
        }

        v37 = [(MTTimer *)self sound];
        v62 = [v6 sound];
        v63 = v37;
        v64 = v31;
        if (v37 != v62)
        {
          v38 = [(MTTimer *)self sound];
          v54 = [v6 sound];
          v55 = v38;
          v39 = [v38 isEqual:?];
          v40 = v71;
          if (!v39)
          {
            v16 = 0;
            v45 = v62;
            v44 = v63;
            goto LABEL_40;
          }
        }

        v41 = [(MTTimer *)self siriContext];
        v56 = [v6 siriContext];
        v59 = v41;
        if (v41 == v56 || (-[MTTimer siriContext](self, "siriContext"), v42 = objc_claimAutoreleasedReturnValue(), [v6 siriContext], v51 = objc_claimAutoreleasedReturnValue(), v52 = v42, objc_msgSend(v42, "isEqual:")))
        {
          v46 = [(MTTimer *)self timerContext];
          v47 = [v6 timerContext];
          v48 = v47;
          v53 = v46;
          if (v46 == v47)
          {

            v16 = 1;
          }

          else
          {
            v49 = [(MTTimer *)self timerContext];
            v50 = [v6 timerContext];
            v16 = [v49 isEqual:v50];
          }

          v43 = v56;
          if (v59 == v56)
          {
LABEL_39:

            v45 = v62;
            v44 = v63;
            v40 = v71;
            if (v63 == v62)
            {
              v33 = v71;
LABEL_42:

              v34 = v69;
              v31 = v64;
              if (v69 == v64)
              {
                goto LABEL_44;
              }

              goto LABEL_43;
            }

LABEL_40:
            v33 = v40;

            goto LABEL_42;
          }
        }

        else
        {
          v16 = 0;
          v43 = v56;
        }

        goto LABEL_39;
      }
    }
  }

  v16 = 0;
LABEL_8:

  return v16;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [MTMutableTimer allocWithZone:a3];
  v5 = [(MTTimer *)self timerID];
  v6 = [(MTTimer *)v4 initWithIdentifier:v5];

  [(MTTimer *)self _copyStateOntoTimer:v6];
  return v6;
}

- (void)_copyStateOntoTimer:(id)a3
{
  v4 = a3;
  v5 = [(MTTimer *)self currentDateProvider];
  [v4 setCurrentDateProvider:v5];

  v6 = [(MTTimer *)self fireTime];
  [v4 setFireTime:v6];

  [(MTTimer *)self duration];
  [v4 _setDuration:?];
  [v4 setState:{-[MTTimer state](self, "state")}];
  v7 = [(MTTimer *)self title];
  [v4 setTitle:v7];

  v8 = [(MTTimer *)self lastModifiedDate];
  [v4 setLastModifiedDate:v8];

  v9 = [(MTTimer *)self firedDate];
  [v4 setFiredDate:v9];

  v10 = [(MTTimer *)self dismissedDate];
  [v4 setDismissedDate:v10];

  v11 = [(MTTimer *)self sound];
  [v4 setSound:v11];

  v12 = [(MTTimer *)self siriContext];
  [v4 setSiriContext:v12];

  v13 = [(MTTimer *)self timerContext];
  [v4 setTimerContext:v13];
}

- (id)initFromDeserializer:(id)a3
{
  v73 = *MEMORY[0x1E69E9840];
  v4 = [a3 mtCoder];
  v5 = [(MTTimer *)self _initCommon];
  if (!v5)
  {
    goto LABEL_41;
  }

  if ([v4 mtType] == 3)
  {
    [v4 decodeFloatForKey:@"MTTimerDataVersion"];
    v7 = v6;
    if (v6 < 1.3)
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerID"];
      v9 = *(v5 + 1);
      *(v5 + 1) = v8;
    }

    if (v7 >= 1.4)
    {
      if (v7 >= 1.5)
      {
        if (v7 >= 1.6)
        {
          v12 = 0;
          goto LABEL_26;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerSound"];
      v11 = [v10 soundVolume];
      v12 = v11 != 0;

      if (v11)
      {
        v13 = [v10 toneIdentifier];
        v14 = [v10 vibrationIdentifier];
        v15 = [MTSound toneSoundWithIdentifier:v13 vibrationIdentifer:v14 volume:0];
        v16 = *(v5 + 9);
        *(v5 + 9) = v15;

        if (v7 < 1.5)
        {
          v17 = *(v5 + 9);
          goto LABEL_15;
        }

        goto LABEL_17;
      }

      if (v7 >= 1.5)
      {
LABEL_17:
        if (v7 >= 1.6)
        {
LABEL_26:
          v29 = MTLogForCategory(4);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v70 = v5;
            v71 = 2048;
            v72 = v7;
            _os_log_impl(&dword_1B1F9F000, v29, OS_LOG_TYPE_INFO, "%{public}@ read data version: %f", buf, 0x16u);
          }

          goto LABEL_29;
        }

        if (v11)
        {
LABEL_19:
          v22 = *(v5 + 9);
LABEL_21:
          v23 = v22;
          if ([v22 soundType] == 1)
          {
            v24 = *MEMORY[0x1E69DA928];
            v25 = [v23 soundVolume];
            v26 = [MTSound toneSoundWithIdentifier:v24 vibrationIdentifer:0 volume:v25];
            v27 = *(v5 + 9);
            *(v5 + 9) = v26;
          }

          else
          {
            v28 = v23;
            v25 = *(v5 + 9);
            *(v5 + 9) = v28;
          }

          goto LABEL_25;
        }

LABEL_20:
        v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerSound"];
        goto LABEL_21;
      }
    }

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerSound"];
LABEL_15:
    v18 = v17;
    v19 = [v17 toneIdentifier];
    v20 = [MTSound toneSoundWithIdentifier:v19 vibrationIdentifer:0 volume:0];
    v21 = *(v5 + 9);
    *(v5 + 9) = v20;

    if (v7 >= 1.6)
    {
LABEL_25:
      v12 = 1;
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_29:
  if (!*(v5 + 1))
  {
    v30 = objc_alloc(MEMORY[0x1E696AFB0]);
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerID"];
    v32 = [v30 initWithUUIDString:v31];
    v33 = *(v5 + 1);
    *(v5 + 1) = v32;
  }

  v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerState"];
  *(v5 + 3) = [v34 unsignedIntegerValue];

  if (*(v5 + 3) >= 4uLL)
  {
    NSLog(&cfstr_StateMustBeAVa_0.isa, *(v5 + 3));
    *(v5 + 3) = 0;
  }

  [v4 decodeDoubleForKey:@"MTTimerDuration"];
  *(v5 + 4) = v35;
  v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerFireTimerClass"];
  v37 = objc_opt_class();
  v38 = NSStringFromClass(v37);
  v39 = [v36 isEqualToString:v38];

  if (v39 || (v40 = objc_opt_class(), NSStringFromClass(v40), v41 = objc_claimAutoreleasedReturnValue(), v42 = [v36 isEqualToString:v41], v41, v42))
  {
    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerFireTime"];
    v44 = *(v5 + 10);
    *(v5 + 10) = v43;
  }

  else
  {
    v44 = MTLogForCategory(4);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [(MTTimer *)v36 initFromDeserializer:v44];
    }
  }

  v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerTitle"];
  v46 = *(v5 + 8);
  *(v5 + 8) = v45;

  v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerLastModifiedDate"];
  v48 = *(v5 + 6);
  *(v5 + 6) = v47;

  v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerFiredDate"];
  v50 = *(v5 + 5);
  *(v5 + 5) = v49;

  v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerDismissedDate"];
  v52 = *(v5 + 7);
  *(v5 + 7) = v51;

  if (!v12)
  {
    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerSound"];
    v54 = *(v5 + 9);
    *(v5 + 9) = v53;
  }

  v55 = MEMORY[0x1E695DFD8];
  v56 = objc_opt_class();
  v57 = objc_opt_class();
  v58 = [v55 setWithObjects:{v56, v57, objc_opt_class(), 0}];
  v59 = [v4 decodeObjectOfClasses:v58 forKey:@"MTTimerSiriContext"];
  v60 = *(v5 + 11);
  *(v5 + 11) = v59;

  v61 = MEMORY[0x1E695DFD8];
  v62 = objc_opt_class();
  v63 = objc_opt_class();
  v64 = [v61 setWithObjects:{v62, v63, objc_opt_class(), 0}];
  v65 = [v4 decodeObjectOfClasses:v64 forKey:@"MTTimerContext"];
  v66 = *(v5 + 12);
  *(v5 + 12) = v65;

LABEL_41:
  v67 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)serializeWithSerializer:(id)a3
{
  v18 = [a3 mtCoder];
  if ([v18 mtType] == 2)
  {
    LODWORD(v4) = 1070386381;
    [v18 encodeFloat:@"MTTimerDataVersion" forKey:v4];
  }

  v5 = [(MTTimer *)self timerIDString];
  [v18 encodeObject:v5 forKey:@"MTTimerID"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTTimer state](self, "state")}];
  [v18 encodeObject:v6 forKey:@"MTTimerState"];

  [(MTTimer *)self duration];
  [v18 encodeDouble:@"MTTimerDuration" forKey:?];
  v7 = [(MTTimer *)self fireTime];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v18 encodeObject:v9 forKey:@"MTTimerFireTimerClass"];

  v10 = [(MTTimer *)self fireTime];
  [v18 encodeObject:v10 forKey:@"MTTimerFireTime"];

  v11 = [(MTTimer *)self title];
  [v18 encodeObject:v11 forKey:@"MTTimerTitle"];

  v12 = [(MTTimer *)self lastModifiedDate];
  [v18 encodeObject:v12 forKey:@"MTTimerLastModifiedDate"];

  v13 = [(MTTimer *)self firedDate];
  [v18 encodeObject:v13 forKey:@"MTTimerFiredDate"];

  v14 = [(MTTimer *)self dismissedDate];
  [v18 encodeObject:v14 forKey:@"MTTimerDismissedDate"];

  v15 = [(MTTimer *)self sound];
  [v18 encodeObject:v15 forKey:@"MTTimerSound"];

  v16 = [(MTTimer *)self siriContext];
  [v18 encodeObject:v16 forKey:@"MTTimerSiriContext"];

  v17 = [(MTTimer *)self timerContext];
  [v18 encodeObject:v17 forKey:@"MTTimerContext"];
}

+ (id)_timerTimeForState:(unint64_t)a3 remainingTime:(double)a4 currentDateProvider:(id)a5
{
  v7 = a5;
  if (a3 <= 2)
  {
    if (a3 - 1 < 2)
    {
      v8 = [[MTTimerTimeInterval alloc] initWithTimeInterval:a4];
      goto LABEL_11;
    }

    if (!a3)
    {
      goto LABEL_8;
    }

LABEL_9:
    NSLog(&cfstr_StateMustBeAVa.isa, a3);
    goto LABEL_10;
  }

  if (a3 != 4)
  {
    if (a3 == 3)
    {
      v9 = [MTTimerDate alloc];
      v10 = MEMORY[0x1E695DF00];
      v11 = v7[2](v7);
      v12 = [v10 dateWithTimeInterval:v11 sinceDate:a4];
      v8 = [(MTTimerDate *)v9 initWithDate:v12 currentDateProvider:v7];

      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_8:
  NSLog(&cfstr_UnexpectedTime_0.isa, a3);
LABEL_10:
  v8 = 0;
LABEL_11:

  return v8;
}

- (int64_t)type
{
  v2 = [(MTTimer *)self siriContext];
  v3 = MTIntentsTimerTypeFromSiriContext(v2);

  return v3;
}

- (void)nextTriggerAfterDate:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 timerID];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = a2;
  _os_log_debug_impl(&dword_1B1F9F000, a3, OS_LOG_TYPE_DEBUG, "Computing next fire date for %{public}@ after %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)initFromDeserializer:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "Illegal fire time class %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end