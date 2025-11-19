@interface INIntent(MTAlarmIntent)
+ (MTCreateAlarmIntent)mt_intentForAlarmCreate:()MTAlarmIntent;
+ (MTToggleAlarmIntent)mt_intentForAlarmDisable:()MTAlarmIntent;
+ (MTToggleAlarmIntent)mt_intentForAlarmEnable:()MTAlarmIntent;
+ (MTUpdateAlarmIntent)mt_intentForAlarmUpdate:()MTAlarmIntent;
+ (void)mt_deleteDonationsForAlarm:()MTAlarmIntent completion:;
- (id)mt_initWithAlarm:()MTAlarmIntent verb:;
@end

@implementation INIntent(MTAlarmIntent)

+ (MTCreateAlarmIntent)mt_intentForAlarmCreate:()MTAlarmIntent
{
  v4 = a3;
  v5 = objc_alloc_init(MTCreateAlarmIntent);
  [(MTCreateAlarmIntent *)v5 _setExtensionBundleId:@"com.apple.mobiletimer-framework.MobileTimerIntents"];
  [(MTCreateAlarmIntent *)v5 _setLaunchId:@"com.apple.mobiletimer"];
  v6 = [a1 mt_nanoAlarmBundleIDForAlarm:v4];
  [(MTCreateAlarmIntent *)v5 _setNanoLaunchId:v6];

  v7 = [v4 intentLabel];
  [(MTCreateAlarmIntent *)v5 setLabel:v7];

  v8 = [v4 dateComponents];
  [(MTCreateAlarmIntent *)v5 setDateComponents:v8];

  v9 = [v4 repeatSchedule];
  v10 = MTRepeatDaysForAlarmRepeatSchedule(v9);
  [(MTCreateAlarmIntent *)v5 setRepeatSchedule:v10];

  return v5;
}

+ (MTUpdateAlarmIntent)mt_intentForAlarmUpdate:()MTAlarmIntent
{
  v4 = a3;
  v5 = objc_alloc_init(MTUpdateAlarmIntent);
  [(MTUpdateAlarmIntent *)v5 _setExtensionBundleId:@"com.apple.mobiletimer-framework.MobileTimerIntents"];
  [(MTUpdateAlarmIntent *)v5 _setLaunchId:@"com.apple.mobiletimer"];
  v6 = [a1 mt_nanoAlarmBundleIDForAlarm:v4];
  [(MTUpdateAlarmIntent *)v5 _setNanoLaunchId:v6];

  v7 = [v4 alarmIDIntentObject];

  [(MTUpdateAlarmIntent *)v5 setAlarmID:v7];

  return v5;
}

+ (MTToggleAlarmIntent)mt_intentForAlarmEnable:()MTAlarmIntent
{
  v4 = a3;
  v5 = objc_alloc_init(MTToggleAlarmIntent);
  [(MTToggleAlarmIntent *)v5 _setExtensionBundleId:@"com.apple.mobiletimer-framework.MobileTimerIntents"];
  [(MTToggleAlarmIntent *)v5 _setLaunchId:@"com.apple.mobiletimer"];
  v6 = [a1 mt_nanoAlarmBundleIDForAlarm:v4];
  [(MTToggleAlarmIntent *)v5 _setNanoLaunchId:v6];

  v7 = [v4 intentAlarm];

  [(MTToggleAlarmIntent *)v5 setAlarm:v7];
  [(MTToggleAlarmIntent *)v5 setOperation:1];
  [(MTToggleAlarmIntent *)v5 setState:1];

  return v5;
}

+ (MTToggleAlarmIntent)mt_intentForAlarmDisable:()MTAlarmIntent
{
  v4 = a3;
  v5 = objc_alloc_init(MTToggleAlarmIntent);
  [(MTToggleAlarmIntent *)v5 _setExtensionBundleId:@"com.apple.mobiletimer-framework.MobileTimerIntents"];
  [(MTToggleAlarmIntent *)v5 _setLaunchId:@"com.apple.mobiletimer"];
  v6 = [a1 mt_nanoAlarmBundleIDForAlarm:v4];
  [(MTToggleAlarmIntent *)v5 _setNanoLaunchId:v6];

  v7 = [v4 intentAlarm];

  [(MTToggleAlarmIntent *)v5 setAlarm:v7];
  [(MTToggleAlarmIntent *)v5 setOperation:1];
  [(MTToggleAlarmIntent *)v5 setState:2];

  return v5;
}

- (id)mt_initWithAlarm:()MTAlarmIntent verb:
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setHour:{objc_msgSend(v7, "hour")}];
  [v8 setMinute:{objc_msgSend(v7, "minute")}];
  v9 = [v7 displayTitle];
  v10 = [v7 alarmIDString];
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:7];
  v12 = [v7 repeatSchedule];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49__INIntent_MTAlarmIntent__mt_initWithAlarm_verb___block_invoke;
  v17[3] = &unk_1E7B0DEB0;
  v13 = v11;
  v18 = v13;
  MTAlarmRepeatScheduleEnumerateDays(v12, v17);
  v14 = objc_opt_new();
  [v14 na_safeSetObject:v8 forKey:@"time"];
  [v14 na_safeSetObject:v9 forKey:@"label"];
  [v14 na_safeSetObject:v10 forKey:@"identifier"];
  if ([v13 count])
  {
    [v14 setObject:v13 forKeyedSubscript:@"repeat"];
  }

  v15 = [a1 initWithDomain:@"Alarm" verb:v6 parametersByName:v14];

  return v15;
}

+ (void)mt_deleteDonationsForAlarm:()MTAlarmIntent completion:
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = @"com.apple.mobiletimer";
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v8 = getCSSearchableIndexClass_softClass;
  v18 = getCSSearchableIndexClass_softClass;
  if (!getCSSearchableIndexClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getCSSearchableIndexClass_block_invoke;
    v14[3] = &unk_1E7B0C600;
    v14[4] = &v15;
    __getCSSearchableIndexClass_block_invoke(v14);
    v8 = v16[3];
  }

  v9 = v8;
  _Block_object_dispose(&v15, 8);
  v10 = [v8 defaultSearchableIndex];
  v11 = [v5 alarmIDString];
  v19[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v10 deleteInteractionsWithGroupIdentifiers:v12 bundleID:v7 protectionClass:0 completionHandler:v6];

  v13 = *MEMORY[0x1E69E9840];
}

@end