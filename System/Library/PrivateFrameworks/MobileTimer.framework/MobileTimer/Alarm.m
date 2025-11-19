@interface Alarm
+ (BOOL)verifyDaySetting:(id)a3 withMessageList:(id)a4;
+ (BOOL)verifyHourSetting:(id)a3 withMessageList:(id)a4;
+ (BOOL)verifyIdSetting:(id)a3 withMessageList:(id)a4;
+ (BOOL)verifyMinuteSetting:(id)a3 withMessageList:(id)a4;
+ (BOOL)verifySettings:(id)a3;
- (Alarm)initWithSettings:(id)a3;
- (AlarmDelegate)delegate;
- (BOOL)isActive;
- (BOOL)isEqual:(id)a3;
- (NSArray)repeatDays;
- (NSDictionary)settings;
- (NSString)alarmID;
- (NSString)uiTitle;
- (NSString)vibrationID;
- (NSURL)alarmIDURL;
- (id)_newBaseDateComponentsForDay:(int64_t)a3;
- (id)debugDescription;
- (int64_t)bedtimeHour;
- (int64_t)bedtimeMinute;
- (int64_t)compareTime:(id)a3;
- (unint64_t)hash;
- (void)applyChangesFromEditingProxy;
- (void)applySettings:(id)a3;
- (void)dropEditingProxy;
- (void)markModified;
- (void)prepareEditingProxy;
- (void)refreshActiveState;
- (void)setAllowsSnooze:(BOOL)a3;
- (void)setBedtimeHour:(int64_t)a3;
- (void)setBedtimeMinute:(int64_t)a3;
- (void)setBedtimeReminderMinutes:(id)a3;
- (void)setDaySetting:(unsigned int)a3;
- (void)setHour:(unsigned int)a3;
- (void)setIsSleepAlarm:(BOOL)a3;
- (void)setMinute:(unsigned int)a3;
- (void)setSound:(id)a3 ofType:(int64_t)a4;
- (void)setSoundVolume:(id)a3;
- (void)setTitle:(id)a3;
- (void)setVibrationID:(id)a3;
@end

@implementation Alarm

- (Alarm)initWithSettings:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = Alarm;
  v5 = [(Alarm *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF00] distantPast];
    lastModified = v5->_lastModified;
    v5->_lastModified = v6;

    v5->_revision = 0;
    [(Alarm *)v5 applySettings:v4];
    v8 = v5;
  }

  return v5;
}

- (void)applySettings:(id)a3
{
  v33[14] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32[0] = @"alarmId";
  v32[1] = @"hour";
  v33[0] = &stru_1F29360E0;
  v33[1] = &unk_1F2965E40;
  v32[2] = @"minute";
  v32[3] = @"allowsSnooze";
  v33[2] = &unk_1F2965E40;
  v33[3] = MEMORY[0x1E695E110];
  v32[4] = @"isSleepAlarm";
  v32[5] = @"bedtimeHour";
  v33[4] = MEMORY[0x1E695E110];
  v33[5] = &unk_1F2965E40;
  v32[6] = @"bedtimeMinute";
  v32[7] = @"daySetting";
  v33[6] = &unk_1F2965E40;
  v33[7] = &unk_1F2965E40;
  v32[8] = @"title";
  v32[9] = @"soundType";
  v33[8] = &stru_1F29360E0;
  v33[9] = &unk_1F2965E58;
  v32[10] = @"sound";
  v32[11] = @"vibe";
  v33[10] = &stru_1F29360E0;
  v33[11] = &stru_1F29360E0;
  v33[12] = self->_lastModified;
  v32[12] = @"lastModified";
  v32[13] = @"revision";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_revision];
  v33[13] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:14];
  v7 = [v6 mutableCopy];
  settings = self->_settings;
  self->_settings = v7;

  if (v4)
  {
    v9 = [v4 objectForKey:@"alarmId"];
    alarmID = self->_alarmID;
    self->_alarmID = v9;

    [(NSMutableDictionary *)self->_settings setObject:self->_alarmID forKey:@"alarmId"];
    v11 = [v4 objectForKey:@"hour"];
    -[Alarm setHour:](self, "setHour:", [v11 unsignedIntValue]);

    v12 = [v4 objectForKey:@"minute"];
    -[Alarm setMinute:](self, "setMinute:", [v12 unsignedIntValue]);

    v13 = [v4 objectForKey:@"allowsSnooze"];
    -[Alarm setAllowsSnooze:](self, "setAllowsSnooze:", [v13 BOOLValue]);

    v14 = [v4 objectForKey:@"soundType"];
    if (!v14)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInt:1];
    }

    v15 = [v4 objectForKey:@"sound"];
    -[Alarm setSound:ofType:](self, "setSound:ofType:", v15, [v14 intValue]);

    v16 = [v4 objectForKey:@"soundVolume"];
    [(Alarm *)self setSoundVolume:v16];

    v17 = [v4 objectForKey:@"vibe"];
    [(Alarm *)self setVibrationID:v17];

    v18 = [v4 objectForKey:@"title"];
    [(Alarm *)self setTitle:v18];

    v19 = [v4 objectForKey:@"daySetting"];
    -[Alarm setDaySetting:](self, "setDaySetting:", [v19 unsignedIntValue]);

    v20 = [v4 objectForKey:@"isSleepAlarm"];
    -[Alarm setIsSleepAlarm:](self, "setIsSleepAlarm:", [v20 BOOLValue]);

    v21 = [v4 objectForKey:@"bedtimeReminderMinutes"];
    [(Alarm *)self setBedtimeReminderMinutes:v21];

    v22 = [v4 objectForKey:@"bedtimeHour"];
    -[Alarm setBedtimeHour:](self, "setBedtimeHour:", [v22 integerValue]);

    v23 = [v4 objectForKey:@"bedtimeMinute"];
    -[Alarm setBedtimeMinute:](self, "setBedtimeMinute:", [v23 integerValue]);

    v24 = [v4 objectForKey:@"lastModified"];

    if (v24)
    {
      v25 = [v4 objectForKey:@"lastModified"];
      lastModified = self->_lastModified;
      self->_lastModified = v25;

      [(NSMutableDictionary *)self->_settings setObject:self->_lastModified forKey:@"lastModified"];
    }

    v27 = [v4 objectForKey:@"revision"];

    if (v27)
    {
      v28 = [v4 objectForKey:@"revision"];
      self->_revision = [v28 unsignedIntValue];

      v29 = self->_settings;
      v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_revision];
      [(NSMutableDictionary *)v29 setObject:v30 forKey:@"revision"];
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)prepareEditingProxy
{
  [(Alarm *)self dropEditingProxy];
  v3 = objc_alloc_init(Alarm);
  editingProxy = self->_editingProxy;
  self->_editingProxy = v3;

  v5 = self->_editingProxy;
  v6 = [(Alarm *)self settings];
  [(Alarm *)v5 applySettings:v6];

  self->_editingProxy->_pretendActiveIfProxy = [(Alarm *)self isActive];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@::%@", @"AlarmEditingProxyID", self->_alarmID];
  [(Alarm *)self->_editingProxy setAlarmID:v10];
  v7 = self->_editingProxy;
  settings = v7->_settings;
  v9 = [(Alarm *)v7 alarmID];
  [(NSMutableDictionary *)settings setObject:v9 forKey:@"alarmId"];

  [(Alarm *)self->_editingProxy setAlarmIDURL:0];
}

- (void)applyChangesFromEditingProxy
{
  [(Alarm *)self setHour:[(Alarm *)self->_editingProxy hour]];
  [(Alarm *)self setMinute:[(Alarm *)self->_editingProxy minute]];
  [(Alarm *)self setDaySetting:[(Alarm *)self->_editingProxy daySetting]];
  [(Alarm *)self setAllowsSnooze:[(Alarm *)self->_editingProxy allowsSnooze]];
  v3 = [(Alarm *)self->_editingProxy sound];
  [(Alarm *)self setSound:v3 ofType:[(Alarm *)self->_editingProxy soundType]];

  v4 = [(Alarm *)self->_editingProxy vibrationID];
  [(Alarm *)self setVibrationID:v4];

  v5 = [(Alarm *)self->_editingProxy title];
  [(Alarm *)self setTitle:v5];
}

- (void)dropEditingProxy
{
  editingProxy = self->_editingProxy;
  self->_editingProxy = 0;
  MEMORY[0x1EEE66BB8]();
}

+ (BOOL)verifyIdSetting:(id)a3 withMessageList:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = @"Settings :: ID is wrong type";
LABEL_6:
    [v6 addObject:v8];
    v7 = 0;
    goto LABEL_7;
  }

  if (![v5 length])
  {
    v8 = @"Settings :: ID is invalid";
    goto LABEL_6;
  }

  v7 = 1;
LABEL_7:

  return v7;
}

+ (BOOL)verifyHourSetting:(id)a3 withMessageList:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([v5 intValue] & 0x80000000) == 0 && objc_msgSend(v5, "intValue") < 24)
    {
      v8 = 1;
      goto LABEL_7;
    }

    v7 = @"Settings :: hour is invalid";
  }

  else
  {
    v7 = @"Settings :: hour is wrong type";
  }

  [v6 addObject:v7];
  v8 = 0;
LABEL_7:

  return v8;
}

+ (BOOL)verifyMinuteSetting:(id)a3 withMessageList:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([v5 intValue] & 0x80000000) == 0 && objc_msgSend(v5, "intValue") < 60)
    {
      v8 = 1;
      goto LABEL_7;
    }

    v7 = @"Settings :: minute is invalid";
  }

  else
  {
    v7 = @"Settings :: minute is wrong type";
  }

  [v6 addObject:v7];
  v8 = 0;
LABEL_7:

  return v8;
}

+ (BOOL)verifyDaySetting:(id)a3 withMessageList:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = @"Settings :: day setting is wrong type";
LABEL_6:
    [v6 addObject:v8];
    v7 = 0;
    goto LABEL_7;
  }

  if ([v5 unsignedIntValue] >= 0x80)
  {
    v8 = @"Settings :: day setting is invalid";
    goto LABEL_6;
  }

  v7 = 1;
LABEL_7:

  return v7;
}

+ (BOOL)verifySettings:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
  v5 = v4;
  if (v3)
  {
    v6 = [v3 objectForKey:@"alarmId"];
    v7 = [Alarm verifyIdSetting:v6 withMessageList:v5];

    v8 = [v3 objectForKey:@"hour"];
    v9 = [Alarm verifyHourSetting:v8 withMessageList:v5];

    v10 = [v3 objectForKey:@"minute"];
    v11 = [Alarm verifyMinuteSetting:v10 withMessageList:v5];

    v12 = [v3 objectForKey:@"daySetting"];
    LODWORD(v10) = [Alarm verifyDaySetting:v12 withMessageList:v5];

    if (v10 && v11 && v9 && v7)
    {
      v13 = 1;
      goto LABEL_20;
    }

    v23 = v3;
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Settings :: settings %@", v3];
    [v5 addObject:v14];
  }

  else
  {
    v23 = 0;
    [v4 addObject:@"Settings is nil"];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v5;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    v19 = MEMORY[0x1E698B6B8];
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        NSLog(&stru_1F29367E0.isa, *(*(&v24 + 1) + 8 * i));
        if (__shouldLog == 1 && atomic_load_explicit(v19, memory_order_acquire) >= 6)
        {
          _CPLog();
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  v13 = 0;
  v3 = v23;
LABEL_20:

  v21 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)_newBaseDateComponentsForDay:(int64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setYear:2014];
  [v4 setMonth:1];
  [v4 setWeekdayOrdinal:1];
  if (a3 < 7)
  {
    v5 = a3 + 1;
  }

  else
  {
    v5 = 1;
  }

  [v4 setWeekday:v5];
  return v4;
}

- (void)refreshActiveState
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained alarmDidUpdate:self];
}

- (void)markModified
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF00]);
  lastModified = self->_lastModified;
  self->_lastModified = v3;

  ++self->_revision;
  [(NSMutableDictionary *)self->_settings setObject:self->_lastModified forKey:@"lastModified"];
  settings = self->_settings;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_revision];
  [(NSMutableDictionary *)settings setObject:v6 forKey:@"revision"];
}

uint64_t __23__Alarm_timeComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 hour];
  if (v6 > [v5 hour])
  {
    goto LABEL_2;
  }

  v8 = [v4 hour];
  if (v8 < [v5 hour])
  {
    v7 = -1;
    goto LABEL_9;
  }

  v9 = [v4 minute];
  if (v9 > [v5 minute])
  {
LABEL_2:
    v7 = 1;
  }

  else
  {
    v10 = [v4 minute];
    if (v10 >= [v5 minute])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

LABEL_9:

  return v7;
}

- (int64_t)compareTime:(id)a3
{
  v4 = a3;
  v5 = +[Alarm timeComparator];
  v6 = (v5)[2](v5, self, v4);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    hour = self->_hour;
    if (hour != [v6 hour] || (minute = self->_minute, minute != objc_msgSend(v6, "minute")))
    {
      v12 = 0;
LABEL_17:

      goto LABEL_18;
    }

    title = self->_title;
    v10 = [v6 title];
    if (title == v10 || (v11 = self->_title, [v6 title], v3 = objc_claimAutoreleasedReturnValue(), -[NSString isEqualToString:](v11, "isEqualToString:", v3)))
    {
      sound = self->_sound;
      v14 = [v6 sound];
      if (-[NSString isEqualToString:](sound, "isEqualToString:", v14) && (v15 = -[Alarm isActive](self, "isActive"), v15 == [v6 isActive]) && (daySetting = self->_daySetting, daySetting == objc_msgSend(v6, "daySetting")))
      {
        allowsSnooze = self->_allowsSnooze;
        v12 = allowsSnooze == [v6 allowsSnooze];
      }

      else
      {
        v12 = 0;
      }

      if (title == v10)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_16:
    goto LABEL_17;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (unint64_t)hash
{
  v2 = [(Alarm *)self alarmID];
  v3 = [v2 hash];

  return v3;
}

- (NSString)alarmID
{
  alarmID = self->_alarmID;
  if (!alarmID)
  {
    v4 = *MEMORY[0x1E695E480];
    v5 = CFUUIDCreate(*MEMORY[0x1E695E480]);
    v6 = CFUUIDCreateString(v4, v5);
    v7 = self->_alarmID;
    self->_alarmID = v6;

    [(NSMutableDictionary *)self->_settings setObject:self->_alarmID forKey:@"alarmId"];
    CFRelease(v5);
    alarmID = self->_alarmID;
  }

  return alarmID;
}

- (NSURL)alarmIDURL
{
  alarmIDURL = self->_alarmIDURL;
  if (!alarmIDURL)
  {
    v4 = objc_alloc(MEMORY[0x1E695DFF8]);
    v5 = [(Alarm *)self alarmID];
    v6 = [@"x-apple-clock:alarm?id=" stringByAppendingString:v5];
    v7 = [v4 initWithString:v6];
    v8 = self->_alarmIDURL;
    self->_alarmIDURL = v7;

    alarmIDURL = self->_alarmIDURL;
  }

  return alarmIDURL;
}

- (NSDictionary)settings
{
  v2 = [(NSMutableDictionary *)self->_settings copy];

  return v2;
}

- (void)setHour:(unsigned int)a3
{
  self->_hour = a3;
  settings = self->_settings;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  [(NSMutableDictionary *)settings setObject:v4 forKey:@"hour"];
}

- (void)setMinute:(unsigned int)a3
{
  self->_minute = a3;
  settings = self->_settings;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  [(NSMutableDictionary *)settings setObject:v4 forKey:@"minute"];
}

- (BOOL)isActive
{
  if (self->_forceActiveForMigration)
  {
    return 1;
  }

  if (self->_pretendActiveIfProxy)
  {
    return [(NSString *)self->_alarmID hasPrefix:@"AlarmEditingProxyID"];
  }

  return 0;
}

- (void)setIsSleepAlarm:(BOOL)a3
{
  self->_isSleepAlarm = a3;
  settings = self->_settings;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [(NSMutableDictionary *)settings setObject:v4 forKey:@"isSleepAlarm"];
}

- (void)setBedtimeReminderMinutes:(id)a3
{
  settings = self->_settings;
  if (a3)
  {
    [(NSMutableDictionary *)settings setObject:a3 forKey:@"bedtimeReminderMinutes"];
  }

  else
  {
    [(NSMutableDictionary *)settings removeObjectForKey:@"bedtimeReminderMinutes"];
  }
}

- (int64_t)bedtimeHour
{
  v2 = [(NSMutableDictionary *)self->_settings objectForKey:@"bedtimeHour"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setBedtimeHour:(int64_t)a3
{
  settings = self->_settings;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)settings setObject:v4 forKey:@"bedtimeHour"];
}

- (int64_t)bedtimeMinute
{
  v2 = [(NSMutableDictionary *)self->_settings objectForKey:@"bedtimeMinute"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setBedtimeMinute:(int64_t)a3
{
  settings = self->_settings;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)settings setObject:v4 forKey:@"bedtimeMinute"];
}

- (NSArray)repeatDays
{
  repeatDays = self->_repeatDays;
  if (!repeatDays)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:7];
    for (i = 0; i != 7; ++i)
    {
      if ((self->_daySetting & RepeatDayMap[i]) != 0)
      {
        v6 = [MEMORY[0x1E696AD98] numberWithInt:i];
        [v4 addObject:v6];
      }
    }

    v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v4];
    v8 = self->_repeatDays;
    self->_repeatDays = v7;

    repeatDays = self->_repeatDays;
  }

  return repeatDays;
}

- (void)setDaySetting:(unsigned int)a3
{
  self->_daySetting = a3;
  settings = self->_settings;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  [(NSMutableDictionary *)settings setObject:v5 forKey:@"daySetting"];

  repeatDays = self->_repeatDays;
  self->_repeatDays = 0;
}

- (void)setAllowsSnooze:(BOOL)a3
{
  self->_allowsSnooze = a3;
  settings = self->_settings;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [(NSMutableDictionary *)settings setObject:v4 forKey:@"allowsSnooze"];
}

- (void)setSound:(id)a3 ofType:(int64_t)a4
{
  obj = a3;
  if ([(NSString *)obj length])
  {
    v6 = obj;
  }

  else
  {

    v6 = 0;
  }

  if (!v6)
  {
    a4 = 0;
  }

  if (v6 != self->_sound)
  {
    objc_storeStrong(&self->_sound, v6);
    if (self->_sound)
    {
      sound = self->_sound;
    }

    else
    {
      sound = &stru_1F29360E0;
    }

    [(NSMutableDictionary *)self->_settings setObject:sound forKey:@"sound"];
  }

  if (a4 != self->_soundType)
  {
    self->_soundType = a4;
    settings = self->_settings;
    v9 = [MEMORY[0x1E696AD98] numberWithInt:a4];
    [(NSMutableDictionary *)settings setObject:v9 forKey:@"soundType"];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setSoundVolume:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (v5)
  {
    [v5 floatValue];
    if (v6 < 0.0 || ([v8 floatValue], v7 > 1.0))
    {
      [(Alarm *)a2 setSoundVolume:?];
    }

    [(NSMutableDictionary *)self->_settings setObject:v8 forKey:@"soundVolume"];
  }

  else
  {
    [(NSMutableDictionary *)self->_settings removeObjectForKey:@"soundVolume"];
  }
}

- (NSString)vibrationID
{
  vibrationID = self->_vibrationID;
  if (vibrationID)
  {
    v3 = vibrationID;
  }

  else
  {
    v4 = [MEMORY[0x1E69DA8F8] sharedVibrationManager];
    v3 = [v4 defaultVibrationIdentifierForAlertType:13];
  }

  return v3;
}

- (void)setVibrationID:(id)a3
{
  obj = a3;
  v4 = [MEMORY[0x1E69DA8F8] sharedVibrationManager];
  if ([v4 vibrationWithIdentifierIsValid:obj])
  {
    v5 = obj;
    if (obj)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v5 = [v4 defaultVibrationIdentifierForAlertType:13];
LABEL_6:
  obja = v5;
  if (v5 != self->_vibrationID)
  {
    objc_storeStrong(&self->_vibrationID, v5);
    [(NSMutableDictionary *)self->_settings setObject:self->_vibrationID forKey:@"vibe"];
  }
}

- (NSString)uiTitle
{
  title = self->_title;
  if (title)
  {
    v3 = title;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v3 = [v4 localizedStringForKey:@"ALARM_DEFAULT_TITLE" value:&stru_1F29360E0 table:0];
  }

  return v3;
}

- (void)setTitle:(id)a3
{
  v7 = a3;
  if ([(NSString *)v7 length])
  {
    v4 = v7;
  }

  else
  {

    v4 = 0;
  }

  p_title = &self->_title;
  if (v4 != self->_title)
  {
    v8 = v4;
    objc_storeStrong(p_title, v4);
    if (self->_title)
    {
      title = self->_title;
    }

    else
    {
      title = &stru_1F29360E0;
    }

    p_title = [(NSMutableDictionary *)self->_settings setObject:title forKey:@"title"];
    v4 = v8;
  }

  MEMORY[0x1EEE66BB8](p_title, v4);
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = Alarm;
  v4 = [(Alarm *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ %d:%02d 0x%04X %@ %@ <%@ #%i> %@", v4, self->_hour, self->_minute, self->_daySetting, self->_title, self->_sound, self->_lastModified, self->_revision, self->_alarmID];

  return v5;
}

- (AlarmDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSoundVolume:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"Alarm.m" lineNumber:494 description:{@"Invalid parameter not satisfying: %@", @"volumeIsValid"}];
}

@end