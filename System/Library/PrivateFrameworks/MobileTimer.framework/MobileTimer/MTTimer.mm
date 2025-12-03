@interface MTTimer
+ (BOOL)isActiveTimer:(id)timer;
+ (BOOL)stateChangeIsAllowableFromState:(unint64_t)state toState:(unint64_t)toState;
+ (id)_timerTimeForState:(unint64_t)state remainingTime:(double)time currentDateProvider:(id)provider;
+ (id)currentTimerFromTimers:(id)timers;
+ (id)descriptionForState:(unint64_t)state;
+ (id)firstActiveTimerFromTimers:(id)timers;
+ (id)propertiesAffectingSessions;
- (BOOL)_isEqualToTimer:(id)timer checkLastModified:(BOOL)modified;
- (BOOL)hasDefaultTitle;
- (BOOL)isCurrentTimer;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFiring;
- (MTTimer)initWithId:(id)id state:(unint64_t)state duration:(double)duration currentDateProvider:(id)provider;
- (MTTimer)initWithIdentifier:(id)identifier;
- (MTTimer)initWithMTCDTimer:(id)timer;
- (MTTimer)initWithState:(unint64_t)state duration:(double)duration;
- (MTTimer)initWithState:(unint64_t)state duration:(double)duration currentDateProvider:(id)provider;
- (NSDate)fireDate;
- (NSString)description;
- (NSString)displayTitle;
- (NSString)timerIDString;
- (NSURL)timerURL;
- (double)remainingTime;
- (id)_initCommon;
- (id)initFromDeserializer:(id)deserializer;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)nextTrigger;
- (id)nextTriggerAfterDate:(id)date;
- (id)timerByRestarting;
- (id)timerByUpdatingWithState:(unint64_t)state;
- (id)upcomingTriggersAfterDate:(id)date;
- (int64_t)compare:(id)compare;
- (int64_t)type;
- (unint64_t)hash;
- (void)_copyStateOntoTimer:(id)timer;
- (void)_setDuration:(double)duration;
- (void)serializeWithSerializer:(id)serializer;
- (void)setDuration:(double)duration;
- (void)setSound:(id)sound;
- (void)setState:(unint64_t)state;
@end

@implementation MTTimer

- (BOOL)isCurrentTimer
{
  title = [(MTTimer *)self title];
  v3 = [title isEqualToString:@"CURRENT_TIMER"];

  return v3;
}

- (NSString)description
{
  v16 = MEMORY[0x1E696AEC0];
  v15 = objc_opt_class();
  timerID = [(MTTimer *)self timerID];
  title = [(MTTimer *)self title];
  v5 = [MTTimer descriptionForState:[(MTTimer *)self state]];
  [(MTTimer *)self duration];
  v7 = v6;
  firedDate = [(MTTimer *)self firedDate];
  dismissedDate = [(MTTimer *)self dismissedDate];
  sound = [(MTTimer *)self sound];
  siriContext = [(MTTimer *)self siriContext];
  timerContext = [(MTTimer *)self timerContext];
  v13 = [v16 stringWithFormat:@"<%@:%p TimerID: %@, Title: %@, state:%@, duration:%d, firedDate: %@, dismissedDate: %@, sound: %@, siriContext: %@>, timerContext: %@>", v15, self, timerID, title, v5, v7, firedDate, dismissedDate, sound, siriContext, timerContext];

  return v13;
}

- (NSString)timerIDString
{
  timerID = [(MTTimer *)self timerID];
  uUIDString = [timerID UUIDString];

  return uUIDString;
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

- (id)upcomingTriggersAfterDate:(id)date
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(MTTimer *)self nextTriggerAfterDate:date];
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

- (MTTimer)initWithState:(unint64_t)state duration:(double)duration
{
  v7 = MTCurrentDateProvider();
  v8 = [(MTTimer *)self initWithState:state duration:v7 currentDateProvider:duration];

  return v8;
}

- (MTTimer)initWithState:(unint64_t)state duration:(double)duration currentDateProvider:(id)provider
{
  v8 = MEMORY[0x1E696AFB0];
  providerCopy = provider;
  uUID = [v8 UUID];
  v11 = [(MTTimer *)self initWithId:uUID state:state duration:providerCopy currentDateProvider:duration];

  return v11;
}

- (MTTimer)initWithId:(id)id state:(unint64_t)state duration:(double)duration currentDateProvider:(id)provider
{
  idCopy = id;
  providerCopy = provider;
  v22.receiver = self;
  v22.super_class = MTTimer;
  v13 = [(MTTimer *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_timerID, id);
    v14->_state = state;
    if (state >= 4)
    {
      NSLog(&cfstr_StateMustBeAVa.isa, state);
      v14->_state = 0;
    }

    v14->_duration = duration;
    v15 = [providerCopy copy];
    currentDateProvider = v14->_currentDateProvider;
    v14->_currentDateProvider = v15;

    v17 = [objc_opt_class() _timerTimeForState:state remainingTime:v14->_currentDateProvider currentDateProvider:duration];
    fireTime = v14->_fireTime;
    v14->_fireTime = v17;

    v19 = [MTSound defaultSoundForCategory:1];
    sound = v14->_sound;
    v14->_sound = v19;
  }

  return v14;
}

- (MTTimer)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _initCommon = [(MTTimer *)self _initCommon];
  if (_initCommon)
  {
    v6 = [identifierCopy copy];
    timerID = _initCommon->_timerID;
    _initCommon->_timerID = v6;
  }

  return _initCommon;
}

- (MTTimer)initWithMTCDTimer:(id)timer
{
  timerCopy = timer;
  [timerCopy duration];
  v6 = v5;
  state = [timerCopy state];
  v8 = [MTMutableTimer alloc];
  mtid = [timerCopy mtid];
  v10 = MTCurrentDateProvider();
  v11 = [(MTTimer *)v8 initWithId:mtid state:state duration:v10 currentDateProvider:v6];

  timerURL = [timerCopy timerURL];
  [(MTTimer *)v11 setTimerURL:timerURL];

  firedDate = [timerCopy firedDate];
  [(MTTimer *)v11 setFiredDate:firedDate];

  title = [timerCopy title];
  [(MTTimer *)v11 setTitle:title];

  lastModifiedDate = [timerCopy lastModifiedDate];
  [(MTTimer *)v11 setLastModifiedDate:lastModifiedDate];

  dismissedDate = [timerCopy dismissedDate];
  [(MTTimer *)v11 setDismissedDate:dismissedDate];

  v17 = MEMORY[0x1E696ACD0];
  fireTime = [timerCopy fireTime];
  v19 = [v17 unarchiveObjectWithData:fireTime];
  [(MTTimer *)v11 setFireTime:v19];

  siriContextDecoded = [timerCopy siriContextDecoded];
  [(MTTimer *)v11 setSiriContext:siriContextDecoded];

  timerContextDecoded = [timerCopy timerContextDecoded];
  [(MTTimer *)v11 setTimerContext:timerContextDecoded];

  v22 = [MTSound alloc];
  sound = [timerCopy sound];

  v24 = [(MTSound *)v22 initWithMTCDSound:sound];
  [(MTTimer *)v11 setSound:v24];

  v25 = [(MTMutableTimer *)v11 copy];
  return v25;
}

+ (id)currentTimerFromTimers:(id)timers
{
  timersCopy = timers;
  v4 = [timersCopy na_firstObjectPassingTest:&__block_literal_global_51];
  v5 = v4;
  if (v4)
  {
    firstObject = v4;
  }

  else
  {
    firstObject = [timersCopy firstObject];
  }

  v7 = firstObject;

  return v7;
}

+ (id)firstActiveTimerFromTimers:(id)timers
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  timersCopy = timers;
  v5 = [timersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(timersCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([self isActiveTimer:{v9, v13}])
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [timersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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

+ (BOOL)isActiveTimer:(id)timer
{
  timerCopy = timer;
  v4 = [timerCopy state] == 3 || objc_msgSend(timerCopy, "state") == 2;

  return v4;
}

- (NSURL)timerURL
{
  timerID = [(MTTimer *)self timerID];
  uUIDString = [timerID UUIDString];
  v4 = [@"x-apple-clock:timer?id=" stringByAppendingString:uUIDString];

  v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];

  return v5;
}

- (double)remainingTime
{
  fireTime = [(MTTimer *)self fireTime];
  [fireTime remainingTime];
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
    title = [v3 localizedStringForKey:@"TIMER_DEFAULT_TITLE" value:&stru_1F29360E0 table:@"Localizable"];
  }

  else
  {
    title = [(MTTimer *)self title];
  }

  return title;
}

- (BOOL)hasDefaultTitle
{
  title = [(MTTimer *)self title];
  if ([title isEqualToString:@"CURRENT_TIMER"])
  {
    v4 = 1;
  }

  else
  {
    title2 = [(MTTimer *)self title];
    if ([title2 length])
    {
      title3 = [(MTTimer *)self title];
      v4 = title3 == 0;
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

- (id)timerByUpdatingWithState:(unint64_t)state
{
  v4 = [(MTTimer *)self mutableCopy];
  [v4 setState:state];

  return v4;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  fireTime = [(MTTimer *)self fireTime];
  fireTime2 = [compareCopy fireTime];
  v7 = [fireTime compare:fireTime2];

  if (!v7)
  {
    displayTitle = [(MTTimer *)self displayTitle];
    displayTitle2 = [compareCopy displayTitle];
    v7 = [displayTitle compare:displayTitle2];

    if (!v7)
    {
      timerIDString = [(MTTimer *)self timerIDString];
      timerIDString2 = [compareCopy timerIDString];
      v7 = [timerIDString compare:timerIDString2];
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

- (id)nextTriggerAfterDate:(id)date
{
  v47 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  lastModifiedDate = [(MTTimer *)self lastModifiedDate];
  if (lastModifiedDate)
  {
    v6 = lastModifiedDate;
    lastModifiedDate2 = [(MTTimer *)self lastModifiedDate];
    v8 = [lastModifiedDate2 mtIsAfterDate:dateCopy];

    if (v8)
    {
      v9 = MTLogForCategory(4);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        timerID = [(MTTimer *)self timerID];
        lastModifiedDate3 = [(MTTimer *)self lastModifiedDate];
        v41 = 138543874;
        v42 = timerID;
        v43 = 2114;
        v44 = dateCopy;
        v45 = 2114;
        v46 = lastModifiedDate3;
        _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ modified after %{public}@ (%{public}@)", &v41, 0x20u);
      }

      lastModifiedDate4 = [(MTTimer *)self lastModifiedDate];

      dateCopy = lastModifiedDate4;
    }
  }

  firedDate = [(MTTimer *)self firedDate];
  if (firedDate)
  {
    v14 = firedDate;
    firedDate2 = [(MTTimer *)self firedDate];
    v16 = [firedDate2 mtIsAfterDate:dateCopy];

    if (v16)
    {
      v17 = MTLogForCategory(4);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        timerID2 = [(MTTimer *)self timerID];
        firedDate3 = [(MTTimer *)self firedDate];
        v41 = 138543874;
        v42 = timerID2;
        v43 = 2114;
        v44 = dateCopy;
        v45 = 2114;
        v46 = firedDate3;
        _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ already fired after %{public}@ (%{public}@)", &v41, 0x20u);
      }

      firedDate4 = [(MTTimer *)self firedDate];

      dateCopy = firedDate4;
    }
  }

  dismissedDate = [(MTTimer *)self dismissedDate];
  if (dismissedDate)
  {
    v22 = dismissedDate;
    dismissedDate2 = [(MTTimer *)self dismissedDate];
    v24 = [dismissedDate2 mtIsAfterDate:dateCopy];

    if (v24)
    {
      v25 = MTLogForCategory(4);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        timerID3 = [(MTTimer *)self timerID];
        dismissedDate3 = [(MTTimer *)self dismissedDate];
        v41 = 138543874;
        v42 = timerID3;
        v43 = 2114;
        v44 = dateCopy;
        v45 = 2114;
        v46 = dismissedDate3;
        _os_log_impl(&dword_1B1F9F000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ already dismissed after %{public}@ (%{public}@)", &v41, 0x20u);
      }

      dismissedDate4 = [(MTTimer *)self dismissedDate];

      dateCopy = dismissedDate4;
    }
  }

  v29 = MTLogForCategory(4);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    [(MTTimer *)self nextTriggerAfterDate:dateCopy, v29];
  }

  if ([(MTTimer *)self state]== 3)
  {
    v30 = objc_opt_class();
    fireTime = [(MTTimer *)self fireTime];
    if (fireTime)
    {
      if (objc_opt_isKindOfClass())
      {
        v32 = fireTime;
      }

      else
      {
        v32 = 0;
      }

      v33 = v32;
      if (!v33)
      {
        [MTTimerScheduler _queue_scheduleTimers:fireTime withCompletion:v30];
      }
    }

    else
    {
      v33 = 0;
    }

    date = [v33 date];
    if ([date mtIsAfterOrSameAsDate:dateCopy])
    {
      v34 = [MTTrigger triggerWithDate:date triggerType:0];
    }

    else
    {
      v36 = MTLogForCategory(4);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v41 = 138543618;
        v42 = date;
        v43 = 2114;
        v44 = dateCopy;
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
    timerID4 = [(MTTimer *)self timerID];
    v41 = 138543618;
    v42 = timerID4;
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

  firedDate = [(MTTimer *)self firedDate];
  if (firedDate)
  {
    dismissedDate = [(MTTimer *)self dismissedDate];
    if (dismissedDate)
    {
      firedDate2 = [(MTTimer *)self firedDate];
      dismissedDate2 = [(MTTimer *)self dismissedDate];
      v3 = [firedDate2 mtIsAfterDate:dismissedDate2];
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

+ (id)descriptionForState:(unint64_t)state
{
  if (state > 3)
  {
    return @"Invalid State";
  }

  else
  {
    return off_1E7B0FDC8[state];
  }
}

+ (BOOL)stateChangeIsAllowableFromState:(unint64_t)state toState:(unint64_t)toState
{
  if (state == 2 && toState == 2)
  {
    return 1;
  }

  return state == 3 || toState != 2;
}

- (void)setState:(unint64_t)state
{
  if (state < 4)
  {
    if (self->_state != state)
    {
      fireTime = [(MTTimer *)self fireTime];
      [fireTime remainingTime];
      v7 = v6;

      if (state == 1)
      {
        [(MTTimer *)self duration];
        v7 = v8;
      }

      v9 = [objc_opt_class() _timerTimeForState:state remainingTime:self->_currentDateProvider currentDateProvider:v7];
      [(MTTimer *)self setFireTime:v9];

      self->_state = state;
    }
  }

  else
  {
    NSLog(&cfstr_StateMustBeAVa.isa, a2, state);
  }
}

- (void)setSound:(id)sound
{
  soundCopy = sound;
  if (self->_sound != soundCopy)
  {
    if (!soundCopy)
    {
      soundCopy = [MTSound defaultSoundForCategory:1];
    }

    v7 = soundCopy;
    v5 = [(MTSound *)soundCopy copy];
    sound = self->_sound;
    self->_sound = v5;

    soundCopy = v7;
  }
}

- (void)setDuration:(double)duration
{
  if ([(MTTimer *)self state]!= 1)
  {
    NSLog(&cfstr_TimerDurationC.isa);
  }

  if ([(MTTimer *)self state]== 1)
  {
    if (duration > 0.0)
    {

      [(MTTimer *)self _setDuration:duration];
    }

    else
    {
      NSLog(&cfstr_TimerDurationM.isa);
    }
  }
}

- (void)_setDuration:(double)duration
{
  if (self->_duration != duration)
  {
    self->_duration = duration;
    if ([(MTTimer *)self state]== 1)
    {
      v4 = [objc_opt_class() _timerTimeForState:1 remainingTime:self->_currentDateProvider currentDateProvider:self->_duration];
      [(MTTimer *)self setFireTime:v4];
    }
  }
}

- (unint64_t)hash
{
  timerID = [(MTTimer *)self timerID];
  v3 = [timerID hash];

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
    v8 = [(MTTimer *)self isEqualToTimer:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isEqualToTimer:(id)timer checkLastModified:(BOOL)modified
{
  modifiedCopy = modified;
  timerCopy = timer;
  timerID = [(MTTimer *)self timerID];
  timerID2 = [timerCopy timerID];
  if ([timerID isEqual:timerID2])
  {
    state = [(MTTimer *)self state];
    if (state == [timerCopy state])
    {
      [(MTTimer *)self duration];
      v11 = round(v10);
      [timerCopy duration];
      if (v11 == round(v12))
      {
        fireTime = [(MTTimer *)self fireTime];
        fireTime2 = [timerCopy fireTime];
        if (fireTime != fireTime2)
        {
          fireTime3 = [(MTTimer *)self fireTime];
          fireTime4 = [timerCopy fireTime];
          v77 = fireTime3;
          if (![fireTime3 isEqual:?])
          {
            v16 = 0;
            goto LABEL_54;
          }
        }

        title = [(MTTimer *)self title];
        title2 = [timerCopy title];
        if (title != title2)
        {
          title3 = [(MTTimer *)self title];
          title4 = [timerCopy title];
          v75 = title3;
          if (![title3 isEqual:title4])
          {
            v16 = 0;
            v20 = title2;
LABEL_52:

LABEL_53:
            if (fireTime == fireTime2)
            {
LABEL_55:

              goto LABEL_8;
            }

LABEL_54:

            goto LABEL_55;
          }
        }

        if (modifiedCopy)
        {
          lastModifiedDate = [timerCopy lastModifiedDate];
          lastModifiedDate2 = [(MTTimer *)self lastModifiedDate];
          v66 = lastModifiedDate;
          if (lastModifiedDate == lastModifiedDate2)
          {
            v73 = 0;
          }

          else
          {
            lastModifiedDate3 = [timerCopy lastModifiedDate];
            lastModifiedDate4 = [(MTTimer *)self lastModifiedDate];
            if (([lastModifiedDate3 isEqual:lastModifiedDate4] & 1) == 0)
            {

              v16 = 0;
              goto LABEL_51;
            }

            v58 = lastModifiedDate3;
            v73 = 1;
            v57 = lastModifiedDate4;
          }
        }

        else
        {
          v73 = 0;
        }

        firedDate = [(MTTimer *)self firedDate];
        firedDate2 = [timerCopy firedDate];
        v72 = firedDate;
        v26 = firedDate == firedDate2;
        v27 = firedDate2;
        if (v26)
        {
          v71 = firedDate2;
        }

        else
        {
          firedDate3 = [(MTTimer *)self firedDate];
          firedDate4 = [timerCopy firedDate];
          v68 = firedDate3;
          if (![firedDate3 isEqual:?])
          {
            v16 = 0;
            v35 = v27;
            v36 = v72;
            goto LABEL_45;
          }

          v71 = v27;
        }

        dismissedDate = [(MTTimer *)self dismissedDate];
        dismissedDate2 = [timerCopy dismissedDate];
        v69 = dismissedDate;
        v70 = title;
        v26 = dismissedDate == dismissedDate2;
        v31 = dismissedDate2;
        if (!v26)
        {
          dismissedDate3 = [(MTTimer *)self dismissedDate];
          dismissedDate4 = [timerCopy dismissedDate];
          v61 = dismissedDate3;
          if (![dismissedDate3 isEqual:?])
          {
            v33 = v71;
            v16 = 0;
            v34 = v69;
LABEL_43:

LABEL_44:
            v36 = v72;
            v35 = v33;
            v26 = v72 == v33;
            title = v70;
            if (v26)
            {

              if (v73)
              {
LABEL_46:

                if (!modifiedCopy)
                {
LABEL_51:
                  v20 = title2;
                  if (title == title2)
                  {
                    goto LABEL_53;
                  }

                  goto LABEL_52;
                }

LABEL_50:

                goto LABEL_51;
              }

LABEL_49:
              if (!modifiedCopy)
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

        sound = [(MTTimer *)self sound];
        sound2 = [timerCopy sound];
        v63 = sound;
        v64 = v31;
        if (sound != sound2)
        {
          sound3 = [(MTTimer *)self sound];
          sound4 = [timerCopy sound];
          v55 = sound3;
          v39 = [sound3 isEqual:?];
          v40 = v71;
          if (!v39)
          {
            v16 = 0;
            v45 = sound2;
            v44 = v63;
            goto LABEL_40;
          }
        }

        siriContext = [(MTTimer *)self siriContext];
        siriContext2 = [timerCopy siriContext];
        v59 = siriContext;
        if (siriContext == siriContext2 || (-[MTTimer siriContext](self, "siriContext"), v42 = objc_claimAutoreleasedReturnValue(), [timerCopy siriContext], v51 = objc_claimAutoreleasedReturnValue(), v52 = v42, objc_msgSend(v42, "isEqual:")))
        {
          timerContext = [(MTTimer *)self timerContext];
          timerContext2 = [timerCopy timerContext];
          v48 = timerContext2;
          v53 = timerContext;
          if (timerContext == timerContext2)
          {

            v16 = 1;
          }

          else
          {
            timerContext3 = [(MTTimer *)self timerContext];
            timerContext4 = [timerCopy timerContext];
            v16 = [timerContext3 isEqual:timerContext4];
          }

          v43 = siriContext2;
          if (v59 == siriContext2)
          {
LABEL_39:

            v45 = sound2;
            v44 = v63;
            v40 = v71;
            if (v63 == sound2)
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
          v43 = siriContext2;
        }

        goto LABEL_39;
      }
    }
  }

  v16 = 0;
LABEL_8:

  return v16;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [MTMutableTimer allocWithZone:zone];
  timerID = [(MTTimer *)self timerID];
  v6 = [(MTTimer *)v4 initWithIdentifier:timerID];

  [(MTTimer *)self _copyStateOntoTimer:v6];
  return v6;
}

- (void)_copyStateOntoTimer:(id)timer
{
  timerCopy = timer;
  currentDateProvider = [(MTTimer *)self currentDateProvider];
  [timerCopy setCurrentDateProvider:currentDateProvider];

  fireTime = [(MTTimer *)self fireTime];
  [timerCopy setFireTime:fireTime];

  [(MTTimer *)self duration];
  [timerCopy _setDuration:?];
  [timerCopy setState:{-[MTTimer state](self, "state")}];
  title = [(MTTimer *)self title];
  [timerCopy setTitle:title];

  lastModifiedDate = [(MTTimer *)self lastModifiedDate];
  [timerCopy setLastModifiedDate:lastModifiedDate];

  firedDate = [(MTTimer *)self firedDate];
  [timerCopy setFiredDate:firedDate];

  dismissedDate = [(MTTimer *)self dismissedDate];
  [timerCopy setDismissedDate:dismissedDate];

  sound = [(MTTimer *)self sound];
  [timerCopy setSound:sound];

  siriContext = [(MTTimer *)self siriContext];
  [timerCopy setSiriContext:siriContext];

  timerContext = [(MTTimer *)self timerContext];
  [timerCopy setTimerContext:timerContext];
}

- (id)initFromDeserializer:(id)deserializer
{
  v73 = *MEMORY[0x1E69E9840];
  mtCoder = [deserializer mtCoder];
  _initCommon = [(MTTimer *)self _initCommon];
  if (!_initCommon)
  {
    goto LABEL_41;
  }

  if ([mtCoder mtType] == 3)
  {
    [mtCoder decodeFloatForKey:@"MTTimerDataVersion"];
    v7 = v6;
    if (v6 < 1.3)
    {
      v8 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerID"];
      v9 = *(_initCommon + 1);
      *(_initCommon + 1) = v8;
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
      v10 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerSound"];
      soundVolume = [v10 soundVolume];
      v12 = soundVolume != 0;

      if (soundVolume)
      {
        toneIdentifier = [v10 toneIdentifier];
        vibrationIdentifier = [v10 vibrationIdentifier];
        v15 = [MTSound toneSoundWithIdentifier:toneIdentifier vibrationIdentifer:vibrationIdentifier volume:0];
        v16 = *(_initCommon + 9);
        *(_initCommon + 9) = v15;

        if (v7 < 1.5)
        {
          v17 = *(_initCommon + 9);
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
            v70 = _initCommon;
            v71 = 2048;
            v72 = v7;
            _os_log_impl(&dword_1B1F9F000, v29, OS_LOG_TYPE_INFO, "%{public}@ read data version: %f", buf, 0x16u);
          }

          goto LABEL_29;
        }

        if (soundVolume)
        {
LABEL_19:
          v22 = *(_initCommon + 9);
LABEL_21:
          v23 = v22;
          if ([v22 soundType] == 1)
          {
            v24 = *MEMORY[0x1E69DA928];
            soundVolume2 = [v23 soundVolume];
            v26 = [MTSound toneSoundWithIdentifier:v24 vibrationIdentifer:0 volume:soundVolume2];
            v27 = *(_initCommon + 9);
            *(_initCommon + 9) = v26;
          }

          else
          {
            v28 = v23;
            soundVolume2 = *(_initCommon + 9);
            *(_initCommon + 9) = v28;
          }

          goto LABEL_25;
        }

LABEL_20:
        v22 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerSound"];
        goto LABEL_21;
      }
    }

    v17 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerSound"];
LABEL_15:
    v18 = v17;
    toneIdentifier2 = [v17 toneIdentifier];
    v20 = [MTSound toneSoundWithIdentifier:toneIdentifier2 vibrationIdentifer:0 volume:0];
    v21 = *(_initCommon + 9);
    *(_initCommon + 9) = v20;

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
  if (!*(_initCommon + 1))
  {
    v30 = objc_alloc(MEMORY[0x1E696AFB0]);
    v31 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerID"];
    v32 = [v30 initWithUUIDString:v31];
    v33 = *(_initCommon + 1);
    *(_initCommon + 1) = v32;
  }

  v34 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerState"];
  *(_initCommon + 3) = [v34 unsignedIntegerValue];

  if (*(_initCommon + 3) >= 4uLL)
  {
    NSLog(&cfstr_StateMustBeAVa_0.isa, *(_initCommon + 3));
    *(_initCommon + 3) = 0;
  }

  [mtCoder decodeDoubleForKey:@"MTTimerDuration"];
  *(_initCommon + 4) = v35;
  v36 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerFireTimerClass"];
  v37 = objc_opt_class();
  v38 = NSStringFromClass(v37);
  v39 = [v36 isEqualToString:v38];

  if (v39 || (v40 = objc_opt_class(), NSStringFromClass(v40), v41 = objc_claimAutoreleasedReturnValue(), v42 = [v36 isEqualToString:v41], v41, v42))
  {
    v43 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerFireTime"];
    v44 = *(_initCommon + 10);
    *(_initCommon + 10) = v43;
  }

  else
  {
    v44 = MTLogForCategory(4);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [(MTTimer *)v36 initFromDeserializer:v44];
    }
  }

  v45 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerTitle"];
  v46 = *(_initCommon + 8);
  *(_initCommon + 8) = v45;

  v47 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerLastModifiedDate"];
  v48 = *(_initCommon + 6);
  *(_initCommon + 6) = v47;

  v49 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerFiredDate"];
  v50 = *(_initCommon + 5);
  *(_initCommon + 5) = v49;

  v51 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerDismissedDate"];
  v52 = *(_initCommon + 7);
  *(_initCommon + 7) = v51;

  if (!v12)
  {
    v53 = [mtCoder decodeObjectOfClass:objc_opt_class() forKey:@"MTTimerSound"];
    v54 = *(_initCommon + 9);
    *(_initCommon + 9) = v53;
  }

  v55 = MEMORY[0x1E695DFD8];
  v56 = objc_opt_class();
  v57 = objc_opt_class();
  v58 = [v55 setWithObjects:{v56, v57, objc_opt_class(), 0}];
  v59 = [mtCoder decodeObjectOfClasses:v58 forKey:@"MTTimerSiriContext"];
  v60 = *(_initCommon + 11);
  *(_initCommon + 11) = v59;

  v61 = MEMORY[0x1E695DFD8];
  v62 = objc_opt_class();
  v63 = objc_opt_class();
  v64 = [v61 setWithObjects:{v62, v63, objc_opt_class(), 0}];
  v65 = [mtCoder decodeObjectOfClasses:v64 forKey:@"MTTimerContext"];
  v66 = *(_initCommon + 12);
  *(_initCommon + 12) = v65;

LABEL_41:
  v67 = *MEMORY[0x1E69E9840];
  return _initCommon;
}

- (void)serializeWithSerializer:(id)serializer
{
  mtCoder = [serializer mtCoder];
  if ([mtCoder mtType] == 2)
  {
    LODWORD(v4) = 1070386381;
    [mtCoder encodeFloat:@"MTTimerDataVersion" forKey:v4];
  }

  timerIDString = [(MTTimer *)self timerIDString];
  [mtCoder encodeObject:timerIDString forKey:@"MTTimerID"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTTimer state](self, "state")}];
  [mtCoder encodeObject:v6 forKey:@"MTTimerState"];

  [(MTTimer *)self duration];
  [mtCoder encodeDouble:@"MTTimerDuration" forKey:?];
  fireTime = [(MTTimer *)self fireTime];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [mtCoder encodeObject:v9 forKey:@"MTTimerFireTimerClass"];

  fireTime2 = [(MTTimer *)self fireTime];
  [mtCoder encodeObject:fireTime2 forKey:@"MTTimerFireTime"];

  title = [(MTTimer *)self title];
  [mtCoder encodeObject:title forKey:@"MTTimerTitle"];

  lastModifiedDate = [(MTTimer *)self lastModifiedDate];
  [mtCoder encodeObject:lastModifiedDate forKey:@"MTTimerLastModifiedDate"];

  firedDate = [(MTTimer *)self firedDate];
  [mtCoder encodeObject:firedDate forKey:@"MTTimerFiredDate"];

  dismissedDate = [(MTTimer *)self dismissedDate];
  [mtCoder encodeObject:dismissedDate forKey:@"MTTimerDismissedDate"];

  sound = [(MTTimer *)self sound];
  [mtCoder encodeObject:sound forKey:@"MTTimerSound"];

  siriContext = [(MTTimer *)self siriContext];
  [mtCoder encodeObject:siriContext forKey:@"MTTimerSiriContext"];

  timerContext = [(MTTimer *)self timerContext];
  [mtCoder encodeObject:timerContext forKey:@"MTTimerContext"];
}

+ (id)_timerTimeForState:(unint64_t)state remainingTime:(double)time currentDateProvider:(id)provider
{
  providerCopy = provider;
  if (state <= 2)
  {
    if (state - 1 < 2)
    {
      v8 = [[MTTimerTimeInterval alloc] initWithTimeInterval:time];
      goto LABEL_11;
    }

    if (!state)
    {
      goto LABEL_8;
    }

LABEL_9:
    NSLog(&cfstr_StateMustBeAVa.isa, state);
    goto LABEL_10;
  }

  if (state != 4)
  {
    if (state == 3)
    {
      v9 = [MTTimerDate alloc];
      v10 = MEMORY[0x1E695DF00];
      v11 = providerCopy[2](providerCopy);
      v12 = [v10 dateWithTimeInterval:v11 sinceDate:time];
      v8 = [(MTTimerDate *)v9 initWithDate:v12 currentDateProvider:providerCopy];

      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_8:
  NSLog(&cfstr_UnexpectedTime_0.isa, state);
LABEL_10:
  v8 = 0;
LABEL_11:

  return v8;
}

- (int64_t)type
{
  siriContext = [(MTTimer *)self siriContext];
  v3 = MTIntentsTimerTypeFromSiriContext(siriContext);

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