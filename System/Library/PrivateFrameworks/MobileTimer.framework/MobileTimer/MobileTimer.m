id MTLogForCategory(uint64_t a1)
{
  if (MTLogForCategory_onceToken != -1)
  {
    MTLogForCategory_cold_1();
  }

  v2 = MTLogForCategory_logObjects[a1];

  return v2;
}

uint64_t __MTLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.mobiletimer.logging", "MobileTimer");
  v1 = MTLogForCategory_logObjects;
  MTLogForCategory_logObjects = v0;

  v2 = os_log_create("com.apple.mobiletimer.logging", "Agent");
  v3 = qword_1ED8151C0;
  qword_1ED8151C0 = v2;

  v4 = os_log_create("com.apple.mobiletimer.logging", "XPC");
  v5 = qword_1ED8151C8;
  qword_1ED8151C8 = v4;

  v6 = os_log_create("com.apple.mobiletimer.logging", "Alarms");
  v7 = qword_1ED8151D0;
  qword_1ED8151D0 = v6;

  v8 = os_log_create("com.apple.mobiletimer.logging", "Timers");
  v9 = qword_1ED8151D8;
  qword_1ED8151D8 = v8;

  v10 = os_log_create("com.apple.mobiletimer.logging", "Stopwatches");
  v11 = qword_1ED8151E0;
  qword_1ED8151E0 = v10;

  v12 = os_log_create("com.apple.mobiletimer.logging", "Sync");
  v13 = qword_1ED8151E8;
  qword_1ED8151E8 = v12;

  v14 = os_log_create("com.apple.mobiletimer.logging", "Sleep");
  v15 = qword_1ED8151F0;
  qword_1ED8151F0 = v14;

  v16 = os_log_create("com.apple.mobiletimer.logging", "App");
  v17 = qword_1ED8151F8;
  qword_1ED8151F8 = v16;

  v18 = os_log_create("com.apple.mobiletimer.logging", "Activity");
  v19 = qword_1ED815200;
  qword_1ED815200 = v18;

  qword_1ED815208 = os_log_create("com.apple.mobiletimer.logging", "AlarmKit");

  return MEMORY[0x1EEE66BB8]();
}

id MTAlarmServerInterface()
{
  if (MTAlarmServerInterface_onceToken != -1)
  {
    MTAlarmServerInterface_cold_1();
  }

  v1 = MTAlarmServerInterface_alarmServerInterface;

  return v1;
}

void __MTAlarmServerInterface_block_invoke()
{
  v42[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2981AD8];
  v1 = MEMORY[0x1E695DFD8];
  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_getAlarmsWithCompletion_ argumentIndex:0 ofReply:1];

  v4 = MEMORY[0x1E695DFD8];
  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_getAlarmsWithCompletion_ argumentIndex:1 ofReply:1];

  v7 = MEMORY[0x1E695DFD8];
  v40 = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_getAlarmsWithCompletion_ argumentIndex:2 ofReply:1];

  v10 = MEMORY[0x1E695DFD8];
  v39 = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v12 = [v10 setWithArray:v11];
  [v0 setClasses:v12 forSelector:sel_getAlarmsWithCompletion_ argumentIndex:3 ofReply:1];

  v13 = MEMORY[0x1E695DFD8];
  v38 = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v15 = [v13 setWithArray:v14];
  [v0 setClasses:v15 forSelector:sel_addAlarm_withCompletion_ argumentIndex:0 ofReply:0];

  v16 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v16 forSelector:sel_addAlarm_withCompletion_ argumentIndex:0 ofReply:1];

  v17 = MEMORY[0x1E695DFD8];
  v37 = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v19 = [v17 setWithArray:v18];
  [v0 setClasses:v19 forSelector:sel_updateAlarm_withCompletion_ argumentIndex:0 ofReply:0];

  v20 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v20 forSelector:sel_updateAlarm_withCompletion_ argumentIndex:0 ofReply:1];

  v21 = MEMORY[0x1E695DFD8];
  v36 = objc_opt_class();
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v23 = [v21 setWithArray:v22];
  [v0 setClasses:v23 forSelector:sel_removeAlarm_withCompletion_ argumentIndex:0 ofReply:0];

  v24 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v24 forSelector:sel_removeAlarm_withCompletion_ argumentIndex:0 ofReply:1];

  v25 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v27 = [v25 setWithArray:v26];
  [v0 setClasses:v27 forSelector:sel_nextSleepAlarmWithCompletion_ argumentIndex:0 ofReply:1];

  v28 = MEMORY[0x1E695DFD8];
  v34 = objc_opt_class();
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v30 = [v28 setWithArray:v29];
  [v0 setClasses:v30 forSelector:sel_nextSleepAlarmWithCompletion_ argumentIndex:1 ofReply:1];

  v31 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v31 forSelector:sel_updateSleepAlarmsWithCompletion_ argumentIndex:0 ofReply:1];

  v32 = MTAlarmServerInterface_alarmServerInterface;
  MTAlarmServerInterface_alarmServerInterface = v0;

  v33 = *MEMORY[0x1E69E9840];
}

id MTTimerServerInterface()
{
  if (MTTimerServerInterface_onceToken != -1)
  {
    MTTimerServerInterface_cold_1();
  }

  v1 = MTTimerServerInterface_timerServerInterface;

  return v1;
}

void __MTTimerServerInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2982170];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_getTimersWithCompletion_ argumentIndex:0 ofReply:1];

  v4 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v4 forSelector:sel_getTimersWithCompletion_ argumentIndex:1 ofReply:1];

  v5 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v5 forSelector:sel_getTimersWithCompletion_ argumentIndex:2 ofReply:1];

  v6 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v6 forSelector:sel_addTimer_withCompletion_ argumentIndex:0 ofReply:0];

  v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v7 forSelector:sel_addTimer_withCompletion_ argumentIndex:0 ofReply:1];

  v8 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v8 forSelector:sel_updateTimer_withCompletion_ argumentIndex:0 ofReply:0];

  v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v9 forSelector:sel_updateTimer_withCompletion_ argumentIndex:0 ofReply:1];

  v10 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v10 forSelector:sel_removeTimer_withCompletion_ argumentIndex:0 ofReply:0];

  v11 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v11 forSelector:sel_removeTimer_withCompletion_ argumentIndex:0 ofReply:1];

  v12 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v12 forSelector:sel_dismissTimerWithIdentifier_withCompletion_ argumentIndex:0 ofReply:1];

  v13 = MTTimerServerInterface_timerServerInterface;
  MTTimerServerInterface_timerServerInterface = v0;
  v14 = v0;

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  [v14 setClasses:v17 forSelector:sel_getTimerDurationsWithCompletion_ argumentIndex:0 ofReply:1];

  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  [v14 setClasses:v20 forSelector:sel_getTimerDurationsWithCompletion_ argumentIndex:1 ofReply:1];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  [v14 setClasses:v23 forSelector:sel_getTimerDurationsWithCompletion_ argumentIndex:2 ofReply:1];

  v24 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v14 setClasses:v24 forSelector:sel_getTimerDurationsWithCompletion_ argumentIndex:3 ofReply:1];

  v25 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v14 setClasses:v25 forSelector:sel_getTimerDurationsWithCompletion_ argumentIndex:4 ofReply:1];

  v26 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v14 setClasses:v26 forSelector:sel_addRecentDuration_withCompletion_ argumentIndex:0 ofReply:0];

  v27 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v14 setClasses:v27 forSelector:sel_addRecentDuration_withCompletion_ argumentIndex:0 ofReply:1];

  v28 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v14 setClasses:v28 forSelector:sel_removeRecentDuration_withCompletion_ argumentIndex:0 ofReply:0];

  v29 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v14 setClasses:v29 forSelector:sel_removeRecentDuration_withCompletion_ argumentIndex:0 ofReply:1];

  v30 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v14 setClasses:v30 forSelector:sel_addFavoriteDuration_withCompletion_ argumentIndex:0 ofReply:0];

  v31 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v14 setClasses:v31 forSelector:sel_addFavoriteDuration_withCompletion_ argumentIndex:0 ofReply:1];

  v32 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v14 setClasses:v32 forSelector:sel_removeFavoriteDuration_withCompletion_ argumentIndex:0 ofReply:0];

  v33 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v14 setClasses:v33 forSelector:sel_removeFavoriteDuration_withCompletion_ argumentIndex:0 ofReply:1];

  v34 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v14 setClasses:v34 forSelector:sel_saveLatestDuration_withCompletion_ argumentIndex:0 ofReply:0];

  v35 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v14 setClasses:v35 forSelector:sel_saveLatestDuration_withCompletion_ argumentIndex:0 ofReply:1];
}

void __MTAlarmClientInterface_block_invoke()
{
  v22[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F297DAD8];
  v1 = MEMORY[0x1E695DFD8];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_alarmsAdded_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_alarmsUpdated_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x1E695DFD8];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_alarmsRemoved_ argumentIndex:0 ofReply:0];

  v10 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v12 = [v10 setWithArray:v11];
  [v0 setClasses:v12 forSelector:sel_alarmSnoozed_ argumentIndex:0 ofReply:0];

  v13 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v15 = [v13 setWithArray:v14];
  [v0 setClasses:v15 forSelector:sel_nextAlarmChanged_ argumentIndex:0 ofReply:0];

  v16 = MTAlarmClientInterface_alarmClientInterface;
  MTAlarmClientInterface_alarmClientInterface = v0;

  v17 = *MEMORY[0x1E69E9840];
}

id MTAlarmClientInterface()
{
  if (MTAlarmClientInterface_onceToken != -1)
  {
    MTAlarmClientInterface_cold_1();
  }

  v1 = MTAlarmClientInterface_alarmClientInterface;

  return v1;
}

void __MTTimerClientInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F297CB00];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_timersAdded_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_timersUpdated_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v0 setClasses:v9 forSelector:sel_timersRemoved_ argumentIndex:0 ofReply:0];

  v10 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v10 forSelector:sel_timerFired_ argumentIndex:0 ofReply:0];

  v11 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v11 forSelector:sel_timerDismissed_ argumentIndex:0 ofReply:0];

  v12 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v12 forSelector:sel_nextTimerChanged_ argumentIndex:0 ofReply:0];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [v0 setClasses:v15 forSelector:sel_recentTimerDurationsUpdated_ argumentIndex:0 ofReply:0];

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  [v0 setClasses:v18 forSelector:sel_favoriteTimerDurationsUpdated_ argumentIndex:0 ofReply:0];

  v19 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v19 forSelector:sel_latestTimerDurationUpdated_ argumentIndex:0 ofReply:0];

  v20 = MTTimerClientInterface_timerClientInterface;
  MTTimerClientInterface_timerClientInterface = v0;
}

id MTTimerClientInterface()
{
  if (MTTimerClientInterface_onceToken != -1)
  {
    MTTimerClientInterface_cold_1();
  }

  v1 = MTTimerClientInterface_timerClientInterface;

  return v1;
}

uint64_t __MTSessionServerInterface_block_invoke()
{
  MTSessionServerInterface_sessionServerInterface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F296FF60];

  return MEMORY[0x1EEE66BB8]();
}

id MTSessionServerInterface()
{
  if (MTSessionServerInterface_onceToken != -1)
  {
    MTSessionServerInterface_cold_1();
  }

  v1 = MTSessionServerInterface_sessionServerInterface;

  return v1;
}

void __MTSessionClientInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F297F1B8];
  v1 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v1 forSelector:sel_timerSessionEndedForId_ argumentIndex:0 ofReply:0];

  v2 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v2 forSelector:sel_alarmSessionEndedForId_ argumentIndex:0 ofReply:0];

  v3 = MTSessionClientInterface_sessionClientInterface;
  MTSessionClientInterface_sessionClientInterface = v0;
}

id MTSessionClientInterface()
{
  if (MTSessionClientInterface_onceToken != -1)
  {
    MTSessionClientInterface_cold_1();
  }

  v1 = MTSessionClientInterface_sessionClientInterface;

  return v1;
}

void sub_1B1FA38B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B1FA4A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FA4C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FA4E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1B1FA53F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MTCurrentDateProvider()
{
  if (MTCurrentDateProvider_onceToken != -1)
  {
    MTCurrentDateProvider_cold_1();
  }

  v0 = _Block_copy(MTCurrentDateProvider_currentDateProvider);

  return v0;
}

void __MTCurrentDateProvider_block_invoke()
{
  v0 = MTCurrentDateProvider_currentDateProvider;
  MTCurrentDateProvider_currentDateProvider = &__block_literal_global_43;
}

id MTStopwatchServerInterface()
{
  if (MTStopwatchServerInterface_onceToken != -1)
  {
    MTStopwatchServerInterface_cold_1();
  }

  v1 = MTStopwatchServerInterface_stopwatchServerInterface;

  return v1;
}

void __MTStopwatchServerInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F297FD70];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_getStopwatchesWithCompletion_ argumentIndex:0 ofReply:1];

  v4 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v4 forSelector:sel_getStopwatchesWithCompletion_ argumentIndex:1 ofReply:1];

  v5 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v5 forSelector:sel_createStopwatch_withCompletion_ argumentIndex:0 ofReply:0];

  v6 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v6 forSelector:sel_createStopwatch_withCompletion_ argumentIndex:0 ofReply:1];

  v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v7 forSelector:sel_updateStopwatch_withCompletion_ argumentIndex:0 ofReply:0];

  v8 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v8 forSelector:sel_updateStopwatch_withCompletion_ argumentIndex:0 ofReply:1];

  v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v9 forSelector:sel_deleteStopwatch_withCompletion_ argumentIndex:0 ofReply:0];

  v10 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v10 forSelector:sel_deleteStopwatch_withCompletion_ argumentIndex:0 ofReply:1];

  v11 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v11 forSelector:sel_didAddLap_forStopwatch_withCompletion_ argumentIndex:0 ofReply:0];

  v12 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v12 forSelector:sel_didAddLap_forStopwatch_withCompletion_ argumentIndex:1 ofReply:0];

  v13 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v13 forSelector:sel_didAddLap_forStopwatch_withCompletion_ argumentIndex:0 ofReply:1];

  v14 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v14 forSelector:sel_didClearAllLapsForStopwatch_withCompletion_ argumentIndex:0 ofReply:0];

  v15 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v15 forSelector:sel_didClearAllLapsForStopwatch_withCompletion_ argumentIndex:0 ofReply:1];

  v16 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v16 forSelector:sel_didStartLapTimerForStopwatch_withCompletion_ argumentIndex:0 ofReply:0];

  v17 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v17 forSelector:sel_didStartLapTimerForStopwatch_withCompletion_ argumentIndex:0 ofReply:1];

  v18 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v18 forSelector:sel_didPauseLapTimerForStopwatch_withCompletion_ argumentIndex:0 ofReply:0];

  v19 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v19 forSelector:sel_didPauseLapTimerForStopwatch_withCompletion_ argumentIndex:0 ofReply:1];

  v20 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v20 forSelector:sel_didLapLapTimerForStopwatch_withCompletion_ argumentIndex:0 ofReply:0];

  v21 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v21 forSelector:sel_didLapLapTimerForStopwatch_withCompletion_ argumentIndex:0 ofReply:1];

  v22 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v22 forSelector:sel_didResetLapTimerForStopwatch_withCompletion_ argumentIndex:0 ofReply:0];

  v23 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v23 forSelector:sel_didResetLapTimerForStopwatch_withCompletion_ argumentIndex:0 ofReply:1];

  v24 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v24 forSelector:sel_didResumeLapTimerForStopwatch_withCompletion_ argumentIndex:0 ofReply:0];

  v25 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v25 forSelector:sel_didResumeLapTimerForStopwatch_withCompletion_ argumentIndex:0 ofReply:1];

  v26 = MTStopwatchServerInterface_stopwatchServerInterface;
  MTStopwatchServerInterface_stopwatchServerInterface = v0;
}

id MTStopwatchClientInterface()
{
  if (MTStopwatchClientInterface_onceToken != -1)
  {
    MTStopwatchClientInterface_cold_1();
  }

  v1 = MTStopwatchClientInterface_stopwatchClientInterface;

  return v1;
}

void __MTStopwatchClientInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F296F500];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:sel_didCreateStopwatch_ argumentIndex:0 ofReply:0];

  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v2 forSelector:sel_didUpdateStopwatch_ argumentIndex:0 ofReply:0];

  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_didDeleteStopwatch_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:sel_didAddLap_forStopwatch_ argumentIndex:0 ofReply:0];

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:sel_didAddLap_forStopwatch_ argumentIndex:1 ofReply:0];

  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_didClearAllLapsForStopwatch_ argumentIndex:0 ofReply:0];

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v7 forSelector:sel_didStartLapTimerForStopwatch_ argumentIndex:0 ofReply:0];

  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v8 forSelector:sel_didPauseLapTimerForStopwatch_ argumentIndex:0 ofReply:0];

  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v9 forSelector:sel_didLapLapTimerForStopwatch_ argumentIndex:0 ofReply:0];

  v10 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v10 forSelector:sel_didResetLapTimerForStopwatch_ argumentIndex:0 ofReply:0];

  v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v11 forSelector:sel_didResumeLapTimerForStopwatch_ argumentIndex:0 ofReply:0];

  v12 = MTStopwatchClientInterface_stopwatchClientInterface;
  MTStopwatchClientInterface_stopwatchClientInterface = v0;
}

uint64_t sub_1B1FA666C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B20A98B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B1FA672C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B20A98B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B1FA67EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1FA6834(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B1FA6844()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1FA68E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1FA6920()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F530, &qword_1B20B9528);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B1FA69C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1FA6A00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F5B0, &qword_1B20B95E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B1FA6A94()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1FA6D70()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B1FA6DF0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B1FA6E28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1FA6E60()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1FA6E98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__CFString *MTSleepSessionEndReasonDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7B0C4A0[a1];
  }
}

id AlarmSoundForMediaItemId(void *a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(a1, "unsignedLongLongValue")}];
  v2 = [v1 stringValue];

  return v2;
}

void sub_1B1FAB1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAKCDaemonClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AlarmKitCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AlarmKitCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B0C620;
    v6 = 0;
    AlarmKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AlarmKitCoreLibraryCore_frameworkLibrary)
  {
    __getAKCDaemonClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("AKCDaemon");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAKCDaemonClass_block_invoke_cold_1();
  }

  getAKCDaemonClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AlarmKitCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AlarmKitCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1FADD44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  _Block_object_dispose((v2 - 120), 8);
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

Class __getCHSWidgetConfigurationReaderClass_block_invoke(uint64_t a1)
{
  ChronoServicesLibrary();
  result = objc_getClass("CHSWidgetConfigurationReader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCHSWidgetConfigurationReaderClass_block_invoke_cold_1();
  }

  getCHSWidgetConfigurationReaderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ChronoServicesLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ChronoServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ChronoServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7B0C828;
    v3 = 0;
    ChronoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ChronoServicesLibraryCore_frameworkLibrary)
  {
    ChronoServicesLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __ChronoServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ChronoServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCHSTimelineControllerClass_block_invoke(uint64_t a1)
{
  ChronoServicesLibrary();
  result = objc_getClass("CHSTimelineController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCHSTimelineControllerClass_block_invoke_cold_1();
  }

  getCHSTimelineControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MTIsAlarmReconciliationAllowed()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  v2 = [v1 isEqualToString:@"com.apple.mobiletimer"];
  return v2;
}

void sub_1B1FB29F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FB3138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B1FB33FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FB36A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FB38CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FB3C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B1FB5C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FB6954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FB6C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FBD088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMTAlarmKitAdoptionManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MobileTimerSupportLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MobileTimerSupportLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B0CE30;
    v6 = 0;
    MobileTimerSupportLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MobileTimerSupportLibraryCore_frameworkLibrary)
  {
    __getMTAlarmKitAdoptionManagerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("MTAlarmKitAdoptionManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMTAlarmKitAdoptionManagerClass_block_invoke_cold_1();
  }

  getMTAlarmKitAdoptionManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MobileTimerSupportLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileTimerSupportLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTPBAlarmReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(MTPBAlarmProperties);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !MTPBAlarmPropertiesReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1B1FC0E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B1FC1FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B1FC23D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B1FC27D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B1FC2BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B1FC2FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B1FC33F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B1FC37F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _handleLifeCycleNotification(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 didReceiveLifecycleNotification];
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_1B1FC6940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id GetTimeFormats()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = __formatHourMinSecSubsec;
  v3[1] = __formatHourMinSec;
  v3[2] = __formatMinSecSubsec;
  v3[3] = __formatMinSec;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:4];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

void ResetTimeFormatter()
{
  v0 = objc_alloc(MEMORY[0x1E695DF58]);
  v1 = [MEMORY[0x1E695DF58] currentLocale];
  v2 = [v1 localeIdentifier];
  locale = [v0 initWithLocaleIdentifier:v2];

  v3 = *MEMORY[0x1E695E480];
  DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(*MEMORY[0x1E695E480], @"HHmmssSS", 0, locale);
  v5 = __formatHourMinSecSubsec;
  __formatHourMinSecSubsec = DateFormatFromTemplate;

  v6 = CFDateFormatterCreateDateFormatFromTemplate(v3, @"HHmmss", 0, locale);
  v7 = __formatHourMinSec;
  __formatHourMinSec = v6;

  v8 = CFDateFormatterCreateDateFormatFromTemplate(v3, @"mmssSS", 0, locale);
  v9 = __formatMinSecSubsec;
  __formatMinSecSubsec = v8;

  v10 = CFDateFormatterCreateDateFormatFromTemplate(v3, @"mmss", 0, locale);
  v11 = __formatMinSec;
  __formatMinSec = v10;

  v12 = [(__CFLocale *)locale localeIdentifier];
  LODWORD(v1) = [v12 hasPrefix:@"ee_"];

  if (v1)
  {
    if ([__formatMinSecSubsec hasPrefix:@"'aɖabaƒoƒo' "])
    {
      v13 = [__formatMinSecSubsec substringFromIndex:{objc_msgSend(@"'aɖabaƒoƒo' ", "length")}];
      v14 = __formatMinSecSubsec;
      __formatMinSecSubsec = v13;
    }

    if ([__formatMinSec hasPrefix:@"'aɖabaƒoƒo' "])
    {
      v15 = [__formatMinSec substringFromIndex:{objc_msgSend(@"'aɖabaƒoƒo' ", "length")}];
      v16 = __formatMinSec;
      __formatMinSec = v15;
    }
  }

  v17 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v18 = __numberFormatter;
  __numberFormatter = v17;

  [__numberFormatter setNumberStyle:0];
  v19 = __numFormatHour;
  __numFormatHour = @"0";

  v20 = __numFormatMinSec;
  __numFormatMinSec = @"00";

  v21 = __numFormatMinNoLeadingZero;
  __numFormatMinNoLeadingZero = @"0";

  v22 = __numFormatSubsec;
  __numFormatSubsec = @"00";
}

id FormatTimeWithConfig(_BYTE *a1, int a2, int a3, __n128 a4)
{
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  TimeComponentsWithConfig = GetTimeComponentsWithConfig(a2, a3, &v26, &v25, &v24, &v23, a4);
  v7 = v26;
  v8 = v25;
  v9 = v24;
  v10 = v23;
  v11 = &__formatHourMinSecSubsec;
  if (!TimeComponentsWithConfig)
  {
    v11 = &__formatMinSecSubsec;
  }

  v12 = &__formatHourMinSec;
  if (!TimeComponentsWithConfig)
  {
    v12 = &__formatMinSec;
  }

  if (!a2)
  {
    v11 = v12;
  }

  v13 = *v11;
  if (a1)
  {
    *a1 = TimeComponentsWithConfig;
  }

  if (!TimeComponentsWithConfig)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HH%@", v13];

    v13 = v14;
  }

  v15 = [v13 stringByReplacingOccurrencesOfString:@"HH" withString:@"%1$@"];

  v16 = [v15 stringByReplacingOccurrencesOfString:@"H" withString:@"%1$@"];

  v17 = [v16 stringByReplacingOccurrencesOfString:@"mm" withString:@"%2$@"];

  v18 = [v17 stringByReplacingOccurrencesOfString:@"m" withString:@"%2$@"];

  v19 = [v18 stringByReplacingOccurrencesOfString:@"ss" withString:@"%3$@"];

  v20 = [v19 stringByReplacingOccurrencesOfString:@"SS" withString:@"%4$@"];

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:v20, v7, v8, v9, v10];

  return v21;
}

BOOL GetTimeComponentsWithConfig(int a1, int a2, __CFString **a3, void *a4, void *a5, __CFString **a6, __n128 a7)
{
  v9 = __numberFormatter;
  v35 = a7;
  if (!__numberFormatter)
  {
    ResetTimeFormatter();
    a7.n128_u64[0] = v35.n128_u64[0];
    v9 = __numberFormatter;
  }

  v10 = a7.n128_f64[0];
  v11 = a7.n128_f64[0];
  v12 = a7.n128_f64[0] % 0x3C;
  v13 = a7.n128_f64[0] / 0x3C - 60 * (((a7.n128_f64[0] / 0x3C * 0x888888888888889uLL) >> 64) >> 1);
  [v9 setPositiveFormat:__numFormatHour, *&v35];
  if (v10 < 3600)
  {
    v16 = &stru_1F29360E0;
  }

  else
  {
    v14 = __numberFormatter;
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11 / 0xE10];
    v16 = [v14 stringFromNumber:v15];
  }

  if (v11 > 0xE0F)
  {
    v17 = 1;
  }

  else
  {
    v17 = a2;
  }

  if (v17)
  {
    v18 = &__numFormatMinSec;
  }

  else
  {
    v18 = &__numFormatMinNoLeadingZero;
  }

  [__numberFormatter setPositiveFormat:*v18];
  v19 = __numberFormatter;
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
  v21 = [v19 stringFromNumber:v20];

  [__numberFormatter setPositiveFormat:__numFormatMinSec];
  v22 = __numberFormatter;
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
  v24 = [v22 stringFromNumber:v23];

  [__numberFormatter setPositiveFormat:__numFormatSubsec];
  if (a1)
  {
    *v25.i64 = *v36.i64 - trunc(*v36.i64);
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v27 = __numberFormatter;
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{(*vbslq_s8(vnegq_f64(v26), v25, v36).i64 * 100.0)}];
    v29 = [v27 stringFromNumber:v28];
  }

  else
  {
    v29 = &stru_1F29360E0;
  }

  if (a3)
  {
    v30 = v16;
    *a3 = v16;
  }

  if (a4)
  {
    v31 = v21;
    *a4 = v21;
  }

  if (a5)
  {
    v32 = v24;
    *a5 = v24;
  }

  if (a6)
  {
    v33 = v29;
    *a6 = v29;
  }

  return v10 > 3599;
}

void sub_1B1FC7904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B1FCC5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FCC7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MTPBAlarmDeleteReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_1B1FD0BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FD1524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B1FD1B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FD1DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FD1FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FD2194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FD2340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FD26E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FD3A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FD3C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FD41A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B1FD5A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FD60AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FD81F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1B1FD9650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

Class __getBMDiscoverabilitySignalEventClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  result = objc_getClass("BMDiscoverabilitySignalEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMDiscoverabilitySignalEventClass_block_invoke_cold_1();
  }

  getBMDiscoverabilitySignalEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void BiomeStreamsLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __BiomeStreamsLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7B0D9F0;
    v3 = 0;
    BiomeStreamsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    BiomeStreamsLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __BiomeStreamsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeStreamsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getBMStreamsClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  result = objc_getClass("BMStreams");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMStreamsClass_block_invoke_cold_1();
  }

  getBMStreamsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void *__getMRMediaRemoteGetNowPlayingApplicationPlaybackStateSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaRemoteLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaRemoteLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B0DD00;
    v7 = 0;
    MediaRemoteLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = MediaRemoteLibraryCore_frameworkLibrary;
  if (!MediaRemoteLibraryCore_frameworkLibrary)
  {
    __getMRMediaRemoteGetNowPlayingApplicationPlaybackStateSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "MRMediaRemoteGetNowPlayingApplicationPlaybackState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRMediaRemoteGetNowPlayingApplicationPlaybackStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaRemoteLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaRemoteLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

uint64_t MTPBSoundReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v34 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        *(a1 + 40) |= 1u;
        v32 = 0;
        v18 = [a2 position] + 8;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v32 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v32;
        goto LABEL_51;
      }

      if (v13 == 4)
      {
        v16 = PBReaderReadString();
        v17 = 32;
LABEL_31:
        v20 = *(a1 + v17);
        *(a1 + v17) = v16;

        goto LABEL_51;
      }

      if (v13 != 5)
      {
        goto LABEL_41;
      }

      *(a1 + 40) |= 2u;
      v33 = 0;
      v14 = [a2 position] + 4;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
      {
        v30 = [a2 data];
        [v30 getBytes:&v33 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 20) = v33;
LABEL_51:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      while (1)
      {
        v35 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v35 & 0x7F) << v21;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_46;
        }
      }

      if ([a2 hasError])
      {
        v27 = 0;
      }

      else
      {
        v27 = v23;
      }

LABEL_46:
      *(a1 + 16) = v27;
      goto LABEL_51;
    }

    if (v13 != 2)
    {
LABEL_41:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_51;
    }

    v16 = PBReaderReadString();
    v17 = 24;
    goto LABEL_31;
  }

  return [a2 hasError] ^ 1;
}

void sub_1B1FDEC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1B1FE1588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MTPBAlarmAddReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(MTPBAlarm);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !MTPBAlarmReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id MTRepeatDaysForAlarmRepeatSchedule(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  if (!a1)
  {
    v3 = 0;
LABEL_18:
    v10 = _MTRepeatDayForAlarmRepeatSchedule(v3);
    [v2 addObject:v10];

    goto LABEL_19;
  }

  if ((a1 & 0x40) != 0)
  {
    v4 = _MTRepeatDayForAlarmRepeatSchedule(64);
    [v2 addObject:v4];

    if ((a1 & 1) == 0)
    {
LABEL_4:
      if ((a1 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = _MTRepeatDayForAlarmRepeatSchedule(1);
  [v2 addObject:v5];

  if ((a1 & 2) == 0)
  {
LABEL_5:
    if ((a1 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v6 = _MTRepeatDayForAlarmRepeatSchedule(2);
  [v2 addObject:v6];

  if ((a1 & 4) == 0)
  {
LABEL_6:
    if ((a1 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v7 = _MTRepeatDayForAlarmRepeatSchedule(4);
  [v2 addObject:v7];

  if ((a1 & 8) == 0)
  {
LABEL_7:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v9 = _MTRepeatDayForAlarmRepeatSchedule(16);
    [v2 addObject:v9];

    if ((a1 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_15:
  v8 = _MTRepeatDayForAlarmRepeatSchedule(8);
  [v2 addObject:v8];

  if ((a1 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a1 & 0x20) != 0)
  {
LABEL_17:
    v3 = 32;
    goto LABEL_18;
  }

LABEL_19:

  return v2;
}

MTIntentRepeatDay *_MTRepeatDayForAlarmRepeatSchedule(uint64_t a1)
{
  v2 = DateMaskToString(a1, 1, 0, 1, 0);
  v3 = [[MTIntentRepeatDay alloc] initWithIdentifier:0 displayString:v2];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  [(MTIntentRepeatDay *)v3 setValue:v4];

  return v3;
}

void sub_1B1FE42C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSSearchableIndexClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreSpotlightLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B0DED0;
    v6 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreSpotlightLibraryCore_frameworkLibrary)
  {
    __getCSSearchableIndexClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CSSearchableIndex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSSearchableIndexClass_block_invoke_cold_1();
  }

  getCSSearchableIndexClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreSpotlightLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1FE56D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHKMetadataKeyTimeZoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary();
  result = dlsym(v2, "HKMetadataKeyTimeZone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKMetadataKeyTimeZoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HealthKitLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __HealthKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B0DF18;
    v5 = 0;
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = HealthKitLibraryCore_frameworkLibrary;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    HealthKitLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __HealthKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id LocStrWithUILanguage(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_1F29360E0 table:0];

  return v4;
}

id LocStrWithAssistantLanguage(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 assistantUILocalizedStringForKey:v2 table:0];

  return v4;
}

id daysOfWeekWeekdays()
{
  v0 = _daysOfWeekWeekdays;
  if (!_daysOfWeekWeekdays)
  {
    v1 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:7];
    for (i = 1; i != 8; ++i)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(MEMORY[0x1E6992F68], "weekdayIsWeekend:", i) ^ 1}];
      [v1 addObject:v3];
    }

    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v1];
    v5 = _daysOfWeekWeekdays;
    _daysOfWeekWeekdays = v4;

    v0 = _daysOfWeekWeekdays;
  }

  return v0;
}

id daysOfWeekWeekends()
{
  v0 = _daysOfWeekWeekends;
  if (!_daysOfWeekWeekends)
  {
    v1 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:7];
    for (i = 1; i != 8; ++i)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(MEMORY[0x1E6992F68], "weekdayIsWeekend:", i)}];
      [v1 addObject:v3];
    }

    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v1];
    v5 = _daysOfWeekWeekends;
    _daysOfWeekWeekends = v4;

    v0 = _daysOfWeekWeekends;
  }

  return v0;
}

id daysOfWeekPlaceholder()
{
  v0 = 7;
  v1 = [MEMORY[0x1E695DF70] arrayWithCapacity:7];
  do
  {
    v2 = [MEMORY[0x1E696AD98] numberWithBool:0];
    [v1 addObject:v2];

    --v0;
  }

  while (v0);

  return v1;
}

id dateFormatter()
{
  v0 = _dateFormatter;
  if (!_dateFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v2 = _dateFormatter;
    _dateFormatter = v1;

    v3 = _dateFormatter;
    v4 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [v3 setLocale:v4];

    v0 = _dateFormatter;
  }

  return v0;
}

id orderedWeekdaySymbols(uint64_t a1, int a2)
{
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", a1];
  v4 = dateFormatter();
  v5 = v4;
  if (a2)
  {
    [v4 weekdaySymbols];
  }

  else
  {
    [v4 shortWeekdaySymbols];
  }
  v6 = ;
  v7 = [v6 filteredArrayUsingPredicate:v3];

  return v7;
}

__CFString *DetailDateMaskToString(int a1)
{
  if (!a1)
  {
    v3 = &stru_1F29360E0;
    goto LABEL_20;
  }

  v1 = a1;
  if (a1 == 1)
  {
    v2 = @"ALARM_DETAIL_EVERY_MONDAY";
LABEL_19:
    v3 = LocStrWithUILanguage(v2);
    goto LABEL_20;
  }

  v4 = a1 & 2;
  if (v4 == a1)
  {
    v2 = @"ALARM_DETAIL_EVERY_TUESDAY";
    goto LABEL_19;
  }

  v5 = a1 & 4;
  if (v5 == a1)
  {
    v2 = @"ALARM_DETAIL_EVERY_WEDNESDAY";
    goto LABEL_19;
  }

  v6 = a1 & 8;
  if (v6 == a1)
  {
    v2 = @"ALARM_DETAIL_EVERY_THURSDAY";
    goto LABEL_19;
  }

  v7 = a1 & 0x10;
  if (v7 == a1)
  {
    v2 = @"ALARM_DETAIL_EVERY_FRIDAY";
    goto LABEL_19;
  }

  v8 = a1 & 0x20;
  if (v8 == a1)
  {
    v2 = @"ALARM_DETAIL_EVERY_SATURDAY";
    goto LABEL_19;
  }

  v9 = a1 & 0x40;
  if (v9 == a1)
  {
    v2 = @"ALARM_DETAIL_EVERY_SUNDAY";
    goto LABEL_19;
  }

  if (a1 == 127)
  {
    v2 = @"ALARM_DETAIL_EVERY_DAY";
    goto LABEL_19;
  }

  v11 = objc_opt_new();
  v12 = daysOfWeekPlaceholder();
  if (v1)
  {
    v18 = LocStrWithUILanguage(@"ALARM_SHORT_MONDAY");
    [v11 addObject:v18];

    v19 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v12 replaceObjectAtIndex:1 withObject:v19];

    if (!v4)
    {
LABEL_25:
      if (!v5)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }
  }

  else if (!v4)
  {
    goto LABEL_25;
  }

  v20 = LocStrWithUILanguage(@"ALARM_SHORT_TUESDAY");
  [v11 addObject:v20];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v12 replaceObjectAtIndex:2 withObject:v21];

  if (!v5)
  {
LABEL_26:
    if (!v6)
    {
      goto LABEL_27;
    }

    goto LABEL_36;
  }

LABEL_35:
  v22 = LocStrWithUILanguage(@"ALARM_SHORT_WEDNESDAY");
  [v11 addObject:v22];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v12 replaceObjectAtIndex:3 withObject:v23];

  if (!v6)
  {
LABEL_27:
    if (!v7)
    {
      goto LABEL_28;
    }

    goto LABEL_37;
  }

LABEL_36:
  v24 = LocStrWithUILanguage(@"ALARM_SHORT_THURSDAY");
  [v11 addObject:v24];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v12 replaceObjectAtIndex:4 withObject:v25];

  if (!v7)
  {
LABEL_28:
    if (!v8)
    {
      goto LABEL_29;
    }

    goto LABEL_38;
  }

LABEL_37:
  v26 = LocStrWithUILanguage(@"ALARM_SHORT_FRIDAY");
  [v11 addObject:v26];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v12 replaceObjectAtIndex:5 withObject:v27];

  if (!v8)
  {
LABEL_29:
    if (!v9)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_38:
  v28 = LocStrWithUILanguage(@"ALARM_SHORT_SATURDAY");
  [v11 addObject:v28];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v12 replaceObjectAtIndex:6 withObject:v29];

  if (v9)
  {
LABEL_30:
    v13 = LocStrWithUILanguage(@"ALARM_SHORT_SUNDAY");
    [v11 addObject:v13];

    v14 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v12 replaceObjectAtIndex:0 withObject:v14];
  }

LABEL_31:
  v15 = daysOfWeekWeekdays();
  v16 = [v12 isEqualToArray:v15];

  if (v16)
  {
    v17 = @"ALARM_DETAIL_WEEKDAYS";
LABEL_42:
    v32 = LocStrWithUILanguage(v17);
    goto LABEL_43;
  }

  v30 = daysOfWeekWeekends();
  v31 = [v12 isEqualToArray:v30];

  if (v31)
  {
    v17 = @"ALARM_DETAIL_WEEKENDS";
    goto LABEL_42;
  }

  if ([v11 count] != 1)
  {
    v33 = objc_alloc_init(MEMORY[0x1E696AD08]);
    v34 = orderedWeekdaySymbols(v11, 0);
    v35 = [v34 count];
    if (v35 == [v11 count])
    {
      v36 = v34;
    }

    else
    {
      v36 = v11;
    }

    v3 = [v33 stringFromItems:v36];

    goto LABEL_44;
  }

  v32 = [v11 firstObject];
LABEL_43:
  v3 = v32;
LABEL_44:

LABEL_20:

  return v3;
}

__CFString *DateMaskToCasedString(int a1, int a2, char a3, int a4, char a5, int a6)
{
  if (a6)
  {
    v10 = LocStrWithAssistantLanguage;
  }

  else
  {
    v10 = LocStrWithUILanguage;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __DateMaskToCasedString_block_invoke;
  aBlock[3] = &__block_descriptor_33_e41___NSString_24__0__NSString_8__NSString_16l;
  v60 = a5;
  v11 = _Block_copy(aBlock);
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __DateMaskToCasedString_block_invoke_2;
  v56[3] = &unk_1E7B0DF58;
  v58 = a3;
  v12 = v11;
  v57 = v12;
  v13 = _Block_copy(v56);
  v14 = v13;
  if (!a1)
  {
    if (!a4)
    {
      v16 = &stru_1F29360E0;
      goto LABEL_24;
    }

    (*(v12 + 2))(v12, @"ALARM_REPEAT_NEVER", @"ALARM_DETAIL_REPEAT_NEVER");
    goto LABEL_22;
  }

  if (a1 != 1)
  {
    v15 = a1 & 2;
    if (v15 == a1)
    {
      (*(v13 + 2))(v13, @"ALARM_EVERY_TUESDAY", @"ALARM_DETAIL_EVERY_TUESDAY", @"ALARM_TUESDAY");
      goto LABEL_22;
    }

    v17 = a1 & 4;
    if (v17 == a1)
    {
      (*(v13 + 2))(v13, @"ALARM_EVERY_WEDNESDAY", @"ALARM_DETAIL_EVERY_WEDNESDAY", @"ALARM_WEDNESDAY");
      goto LABEL_22;
    }

    v18 = a1 & 8;
    if (v18 == a1)
    {
      (*(v13 + 2))(v13, @"ALARM_EVERY_THURSDAY", @"ALARM_DETAIL_EVERY_THURSDAY", @"ALARM_THURSDAY");
      goto LABEL_22;
    }

    v19 = a1 & 0x10;
    if (v19 == a1)
    {
      (*(v13 + 2))(v13, @"ALARM_EVERY_FRIDAY", @"ALARM_DETAIL_EVERY_FRIDAY", @"ALARM_FRIDAY");
      goto LABEL_22;
    }

    if ((a1 & 0x20) == a1)
    {
      (*(v13 + 2))(v13, @"ALARM_EVERY_SATURDAY", @"ALARM_DETAIL_EVERY_SATURDAY", @"ALARM_SATURDAY");
      goto LABEL_22;
    }

    if ((a1 & 0x40) == a1)
    {
      (*(v13 + 2))(v13, @"ALARM_EVERY_SUNDAY", @"ALARM_DETAIL_EVERY_SUNDAY", @"ALARM_SUNDAY");
      goto LABEL_22;
    }

    if (a1 == 127)
    {
      (*(v12 + 2))(v12, @"ALARM_EVERY_DAY", @"ALARM_DETAIL_EVERY_DAY");
      goto LABEL_22;
    }

    v53 = a1 & 0x20;
    v54 = a1 & 0x40;
    v20 = objc_opt_new();
    v55 = daysOfWeekPlaceholder();
    if (a1)
    {
      if (a2)
      {
        v22 = @"ALARM_MONDAY";
      }

      else
      {
        v22 = @"ALARM_SHORT_MONDAY";
      }

      v23 = v10(v22);
      [v20 addObject:v23];

      v24 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v55 replaceObjectAtIndex:1 withObject:v24];
    }

    if (v15)
    {
      if (a2)
      {
        v25 = @"ALARM_TUESDAY";
      }

      else
      {
        v25 = @"ALARM_SHORT_TUESDAY";
      }

      v26 = v10(v25);
      [v20 addObject:v26];

      v27 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v55 replaceObjectAtIndex:2 withObject:v27];
    }

    if (v17)
    {
      if (a2)
      {
        v40 = @"ALARM_WEDNESDAY";
      }

      else
      {
        v40 = @"ALARM_SHORT_WEDNESDAY";
      }

      v41 = v10(v40);
      [v20 addObject:v41];

      v42 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v55 replaceObjectAtIndex:3 withObject:v42];

      if (!v18)
      {
LABEL_41:
        if (!v19)
        {
          goto LABEL_46;
        }

        goto LABEL_42;
      }
    }

    else if (!v18)
    {
      goto LABEL_41;
    }

    if (a2)
    {
      v43 = @"ALARM_THURSDAY";
    }

    else
    {
      v43 = @"ALARM_SHORT_THURSDAY";
    }

    v44 = v10(v43);
    [v20 addObject:v44];

    v45 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v55 replaceObjectAtIndex:4 withObject:v45];

    if (!v19)
    {
LABEL_46:
      if (v53)
      {
        if (a2)
        {
          v31 = @"ALARM_SATURDAY";
        }

        else
        {
          v31 = @"ALARM_SHORT_SATURDAY";
        }

        v32 = v10(v31);
        [v20 addObject:v32];

        v33 = [MEMORY[0x1E696AD98] numberWithBool:1];
        [v55 replaceObjectAtIndex:6 withObject:v33];
      }

      if (v54)
      {
        if (a2)
        {
          v34 = @"ALARM_SUNDAY";
        }

        else
        {
          v34 = @"ALARM_SHORT_SUNDAY";
        }

        v35 = v10(v34);
        [v20 addObject:v35];

        v36 = [MEMORY[0x1E696AD98] numberWithBool:1];
        [v55 replaceObjectAtIndex:0 withObject:v36];
      }

      v37 = daysOfWeekWeekdays();
      v38 = [v55 isEqualToArray:v37];

      if (v38)
      {
        v39 = @"ALARM_WEEKDAYS";
      }

      else
      {
        v46 = daysOfWeekWeekends();
        v47 = [v55 isEqualToArray:v46];

        if (!v47)
        {
          if ([v20 count] != 1)
          {
            v49 = objc_alloc_init(MEMORY[0x1E696AD08]);
            v50 = orderedWeekdaySymbols(v20, a2);
            v51 = [v50 count];
            if (v51 == [v20 count])
            {
              v52 = v50;
            }

            else
            {
              v52 = v20;
            }

            v16 = [v49 stringFromItems:v52];

            goto LABEL_71;
          }

          v48 = [v20 firstObject];
LABEL_70:
          v16 = v48;
LABEL_71:

          goto LABEL_23;
        }

        v39 = @"ALARM_WEEKENDS";
      }

      v48 = v10(v39);
      goto LABEL_70;
    }

LABEL_42:
    if (a2)
    {
      v28 = @"ALARM_FRIDAY";
    }

    else
    {
      v28 = @"ALARM_SHORT_FRIDAY";
    }

    v29 = v10(v28);
    [v20 addObject:v29];

    v30 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v55 replaceObjectAtIndex:5 withObject:v30];

    goto LABEL_46;
  }

  (*(v13 + 2))(v13, @"ALARM_EVERY_MONDAY", @"ALARM_DETAIL_EVERY_MONDAY", @"ALARM_MONDAY");
  v20 = LABEL_22:;
  v16 = (v10)();
LABEL_23:

LABEL_24:

  return v16;
}

id __DateMaskToCasedString_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 32))
  {
    return a2;
  }

  else
  {
    return a3;
  }
}

id __DateMaskToCasedString_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = v5;
  if (*(a1 + 40) == 1)
  {
    v7 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

id MTDictionaryRepresentationOfAlarm(void *a1, uint64_t a2)
{
  v22[5] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ([v3 isFiring])
  {
    v4 = 0;
  }

  else if ([v3 isSnoozed])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v3 alarmID];

  if (!v5)
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      MTDictionaryRepresentationOfAlarm_cold_1(v6);
    }
  }

  v20 = [MEMORY[0x1E6997A68] alarmIDKey];
  v21[0] = v20;
  v7 = [v3 alarmID];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E696AFB0] UUID];
  }

  v19 = v7;
  v22[0] = v7;
  v9 = [MEMORY[0x1E6997A68] stateKey];
  v21[1] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  v22[1] = v10;
  v11 = [MEMORY[0x1E6997A68] modifiedDateKey];
  v21[2] = v11;
  v12 = [v3 lastModifiedDate];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x1E695DF00] distantPast];
  }

  v22[2] = v13;
  v21[3] = @"transition";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v22[3] = v14;
  v21[4] = @"isSleepAlarm";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isSleepAlarm")}];
  v22[4] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:5];

  if (!v12)
  {
  }

  if (!v8)
  {
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void sub_1B1FEA34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B1FEC340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1FEF244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNPSManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __NanoPreferencesSyncLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B0E130;
    v6 = 0;
    NanoPreferencesSyncLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    __getNPSManagerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("NPSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNPSManagerClass_block_invoke_cold_1();
  }

  getNPSManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __NanoPreferencesSyncLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoPreferencesSyncLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTPBSyncMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 6)
      {
        if (v13 == 5)
        {
          v16 = objc_alloc_init(MTPBSnoozeAction);
          objc_storeStrong((a1 + 32), v16);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !MTPBSnoozeActionReadFrom(v16, a2))
          {
LABEL_45:

            return 0;
          }

          goto LABEL_35;
        }

        if (v13 == 6)
        {
          v16 = objc_alloc_init(MTPBDismissAction);
          objc_storeStrong((a1 + 24), v16);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !MTPBDismissActionReadFrom(v16, a2))
          {
            goto LABEL_45;
          }

LABEL_35:
          PBReaderRecallMark();

          goto LABEL_43;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v27 = 0;
            v17 = [a2 position] + 8;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v22 = v27;
            v23 = 8;
            goto LABEL_42;
          case 8:
            v19 = PBReaderReadString();
            v20 = *(a1 + 40);
            *(a1 + 40) = v19;

            goto LABEL_43;
          case 9:
            v27 = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v24 = [a2 data];
              [v24 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v22 = v27;
            v23 = 16;
LABEL_42:
            *(a1 + v23) = v22;
            goto LABEL_43;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

unint64_t NSGregorianCalendarDayForMTDay(unint64_t a1)
{
  if (a1 < 7)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t MTDayFromDate(void *a1)
{
  v1 = MEMORY[0x1E695DEE8];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 components:512 fromDate:v2];

  v5 = [v4 weekday];
  if (v5 < 7)
  {
    return v5 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t MTAlarmRepeatScheduleFromDay(uint64_t a1)
{
  if ((a1 + 2) > 8)
  {
    return 0;
  }

  else
  {
    return qword_1B20B8A88[a1 + 2];
  }
}

uint64_t MTAlarmRepeatScheduleEnumerateDays(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 7; ++i)
  {
    result = MTAlarmRepeatScheduleFromDay(i);
    if ((result & a1) != 0)
    {
      result = (*(a2 + 16))(a2, i);
    }
  }

  return result;
}

__CFString *MTAlarmRepeatString(uint64_t a1)
{
  switch(a1)
  {
    case 127:
      v2 = @"Every Day";
      break;
    case 96:
      v2 = @"Weekends";
      break;
    case 31:
      v2 = @"Weekdays";
      break;
    default:
      v3 = objc_opt_new();
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v7 = __MTAlarmRepeatString_block_invoke;
      v8 = &unk_1E7B0DEB0;
      v2 = v3;
      v4 = 0;
      v9 = v2;
      do
      {
        if ((MTAlarmRepeatScheduleFromDay(v4) & a1) != 0)
        {
          v7(v6, v4);
        }

        ++v4;
      }

      while (v4 != 7);

      break;
  }

  return v2;
}

uint64_t __MTAlarmRepeatString_block_invoke(uint64_t result, unint64_t a2)
{
  if (a2 <= 6)
  {
    return [*(result + 32) appendString:off_1E7B0E560[a2]];
  }

  return result;
}

id MTAlarmStandardSort()
{
  if (MTAlarmStandardSort_onceToken != -1)
  {
    MTAlarmStandardSort_cold_1();
  }

  v0 = _Block_copy(MTAlarmStandardSort_comparator);

  return v0;
}

void __MTAlarmStandardSort_block_invoke()
{
  v0 = MTAlarmStandardSort_comparator;
  MTAlarmStandardSort_comparator = &__block_literal_global_42;
}

void sub_1B1FFB6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *MTDismissAlarmActionDescription(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E7B0E598[a1];
  }
}

__CFString *MTSnoozeAlarmActionDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7B0E5F8[a1];
  }
}

void sub_1B1FFF620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKObjectTypeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKObjectTypeClass_softClass;
  v7 = getHKObjectTypeClass_softClass;
  if (!getHKObjectTypeClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getHKObjectTypeClass_block_invoke;
    v3[3] = &unk_1E7B0C600;
    v3[4] = &v4;
    __getHKObjectTypeClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B2001520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHKCategoryTypeIdentifierSleepAnalysis()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getHKCategoryTypeIdentifierSleepAnalysisSymbolLoc_ptr;
  v7 = getHKCategoryTypeIdentifierSleepAnalysisSymbolLoc_ptr;
  if (!getHKCategoryTypeIdentifierSleepAnalysisSymbolLoc_ptr)
  {
    v1 = HealthKitLibrary_0();
    v5[3] = dlsym(v1, "HKCategoryTypeIdentifierSleepAnalysis");
    getHKCategoryTypeIdentifierSleepAnalysisSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getHKCategoryTypeIdentifierSleepAnalysis_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1B2001624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHKHealthStoreClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKHealthStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
  }

  getHKHealthStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HealthKitLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __HealthKitLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B0E6D8;
    v5 = 0;
    HealthKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = HealthKitLibraryCore_frameworkLibrary_0;
  if (!HealthKitLibraryCore_frameworkLibrary_0)
  {
    HealthKitLibrary_cold_1_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __HealthKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getHKObjectTypeClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKObjectType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKObjectTypeClass_block_invoke_cold_1();
  }

  getHKObjectTypeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getHKCategoryTypeIdentifierSleepAnalysisSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary_0();
  result = dlsym(v2, "HKCategoryTypeIdentifierSleepAnalysis");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKCategoryTypeIdentifierSleepAnalysisSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getHKCategorySampleClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKCategorySample");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKCategorySampleClass_block_invoke_cold_1();
  }

  getHKCategorySampleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getHKDeviceClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary_0();
  result = objc_getClass("HKDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKDeviceClass_block_invoke_cold_1();
  }

  getHKDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id MTIntegerIsPositive()
{
  if (MTIntegerIsPositive_onceToken != -1)
  {
    MTIntegerIsPositive_cold_1();
  }

  v0 = _Block_copy(MTIntegerIsPositive_block);

  return v0;
}

void __MTIntegerIsPositive_block_invoke()
{
  v0 = MTIntegerIsPositive_block;
  MTIntegerIsPositive_block = &__block_literal_global_4_0;
}

id MTTimeIntervalIsPositive()
{
  if (MTTimeIntervalIsPositive_onceToken != -1)
  {
    MTTimeIntervalIsPositive_cold_1();
  }

  v0 = _Block_copy(MTTimeIntervalIsPositive_block);

  return v0;
}

void __MTTimeIntervalIsPositive_block_invoke()
{
  v0 = MTTimeIntervalIsPositive_block;
  MTTimeIntervalIsPositive_block = &__block_literal_global_9_2;
}

void sub_1B20045F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MTShouldHideForSensitivity(uint64_t a1)
{
  v2 = +[MTSensitiveUIMonitor sharedMonitor];
  v3 = [v2 shouldHideForSensitivity:a1];

  return v3;
}

uint64_t MTGetDeviceLockState()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  v6 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  if (!getMKBGetDeviceLockStateSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getMKBGetDeviceLockStateSymbolLoc_block_invoke;
    v2[3] = &unk_1E7B0C600;
    v2[4] = &v3;
    __getMKBGetDeviceLockStateSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    MTGetDeviceLockState_cold_1();
  }

  return v0(0);
}

void sub_1B2005FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MTIsHorseman()
{
  if (MTIsHorseman_onceToken != -1)
  {
    MTIsHorseman_cold_1();
  }

  return MTIsHorseman_isHorseman;
}

uint64_t __MTIsHorseman_block_invoke()
{
  result = MGGetSInt32Answer();
  v2 = result == 7 || result == 4;
  MTIsHorseman_isHorseman = v2;
  return result;
}

id MTNilify(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DFB0] null];
  v3 = [v1 isEqual:v2];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v1;
  }

  return v4;
}

id MTNullify(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v4 = v3;

  return v4;
}

void sub_1B2006540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B200749C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMKBGetDeviceLockStateSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MobileKeyBagLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B0E8F8;
    v7 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = MobileKeyBagLibraryCore_frameworkLibrary;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    __getMKBGetDeviceLockStateSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "MKBGetDeviceLockState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBGetDeviceLockStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCARSessionStatusClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CarKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B0E910;
    v6 = 0;
    CarKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CarKitLibraryCore_frameworkLibrary)
  {
    __getCARSessionStatusClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CARSessionStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCARSessionStatusClass_block_invoke_cold_1();
  }

  getCARSessionStatusClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CarKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getSBUIIsSystemApertureEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SpringBoardUIServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SpringBoardUIServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B0E928;
    v7 = 0;
    SpringBoardUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = SpringBoardUIServicesLibraryCore_frameworkLibrary;
  if (!SpringBoardUIServicesLibraryCore_frameworkLibrary)
  {
    __getSBUIIsSystemApertureEnabledSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "SBUIIsSystemApertureEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBUIIsSystemApertureEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SpringBoardUIServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardUIServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B200A4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B200B6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getTUCallCenterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUCallCenterClass_softClass;
  v7 = getTUCallCenterClass_softClass;
  if (!getTUCallCenterClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUCallCenterClass_block_invoke;
    v3[3] = &unk_1E7B0C600;
    v3[4] = &v4;
    __getTUCallCenterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B200BCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B200CFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B200E1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B200E734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getTUCallCenterClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TelephonyUtilitiesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B0EB20;
    v6 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    __getTUCallCenterClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("TUCallCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTUCallCenterClass_block_invoke_cold_1();
  }

  getTUCallCenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMRMediaRemoteSendCommandSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaRemoteLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaRemoteLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B0EB38;
    v7 = 0;
    MediaRemoteLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v2 = MediaRemoteLibraryCore_frameworkLibrary_0;
  if (!MediaRemoteLibraryCore_frameworkLibrary_0)
  {
    __getMRMediaRemoteSendCommandSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "MRMediaRemoteSendCommand");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRMediaRemoteSendCommandSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MediaRemoteLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaRemoteLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!BulletinDistributorCompanionLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __BulletinDistributorCompanionLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B0EB50;
    v7 = 0;
    BulletinDistributorCompanionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = BulletinDistributorCompanionLibraryCore_frameworkLibrary;
  if (!BulletinDistributorCompanionLibraryCore_frameworkLibrary)
  {
    __getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "BLTBulletinContextKeyWatchLegacyMapKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBLTBulletinContextKeyWatchLegacyMapKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __BulletinDistributorCompanionLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BulletinDistributorCompanionLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B2010084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMTActivitiesManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MobileTimerSupportLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MobileTimerSupportLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B0ECE0;
    v6 = 0;
    MobileTimerSupportLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!MobileTimerSupportLibraryCore_frameworkLibrary_0)
  {
    __getMTActivitiesManagerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("MTActivitiesManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMTActivitiesManagerClass_block_invoke_cold_1();
  }

  getMTActivitiesManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MobileTimerSupportLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileTimerSupportLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id MTActivityForName(uint64_t a1)
{
  if (MTActivityForName_onceToken != -1)
  {
    MTActivityForName_cold_1();
  }

  v2 = MTActivityForName_activityObjects[a1];

  return v2;
}

uint64_t __MTActivityForName_block_invoke()
{
  v0 = MEMORY[0x1E69E9C00];
  v1 = _os_activity_create(&dword_1B1F9F000, "Add Alarm", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v2 = MTActivityForName_activityObjects[0];
  MTActivityForName_activityObjects[0] = v1;

  v3 = _os_activity_create(&dword_1B1F9F000, "Update Alarm", v0, OS_ACTIVITY_FLAG_DEFAULT);
  v4 = qword_1ED8150C8;
  qword_1ED8150C8 = v3;

  v5 = _os_activity_create(&dword_1B1F9F000, "Remove Alarm", v0, OS_ACTIVITY_FLAG_DEFAULT);
  v6 = qword_1ED8150D0;
  qword_1ED8150D0 = v5;

  v7 = _os_activity_create(&dword_1B1F9F000, "Dismiss Alarm", v0, OS_ACTIVITY_FLAG_DEFAULT);
  v8 = qword_1ED8150D8;
  qword_1ED8150D8 = v7;

  v9 = _os_activity_create(&dword_1B1F9F000, "Snooze Alarm", v0, OS_ACTIVITY_FLAG_DEFAULT);
  v10 = qword_1ED8150E0;
  qword_1ED8150E0 = v9;

  v11 = _os_activity_create(&dword_1B1F9F000, "Sync Add Alarm", v0, OS_ACTIVITY_FLAG_DEFAULT);
  v12 = qword_1ED8150E8;
  qword_1ED8150E8 = v11;

  v13 = _os_activity_create(&dword_1B1F9F000, "Sync Update Alarm", v0, OS_ACTIVITY_FLAG_DEFAULT);
  v14 = qword_1ED8150F0;
  qword_1ED8150F0 = v13;

  v15 = _os_activity_create(&dword_1B1F9F000, "Sync Remove Alarm", v0, OS_ACTIVITY_FLAG_DEFAULT);
  v16 = qword_1ED8150F8;
  qword_1ED8150F8 = v15;

  v17 = _os_activity_create(&dword_1B1F9F000, "Sync Dismiss Alarm", v0, OS_ACTIVITY_FLAG_DEFAULT);
  v18 = qword_1ED815100;
  qword_1ED815100 = v17;

  v19 = _os_activity_create(&dword_1B1F9F000, "Sync Snooze Alarm", v0, OS_ACTIVITY_FLAG_DEFAULT);
  v20 = qword_1ED815108;
  qword_1ED815108 = v19;

  v21 = _os_activity_create(&dword_1B1F9F000, "Fire Alarm", v0, OS_ACTIVITY_FLAG_DEFAULT);
  v22 = qword_1ED815110;
  qword_1ED815110 = v21;

  v23 = _os_activity_create(&dword_1B1F9F000, "Schedule Alarm", v0, OS_ACTIVITY_FLAG_DEFAULT);
  v24 = qword_1ED815118;
  qword_1ED815118 = v23;

  v25 = _os_activity_create(&dword_1B1F9F000, "Add Timer", v0, OS_ACTIVITY_FLAG_DEFAULT);
  v26 = qword_1ED815120;
  qword_1ED815120 = v25;

  v27 = _os_activity_create(&dword_1B1F9F000, "Update Timer", v0, OS_ACTIVITY_FLAG_DEFAULT);
  v28 = qword_1ED815128;
  qword_1ED815128 = v27;

  v29 = _os_activity_create(&dword_1B1F9F000, "Remove Timer", v0, OS_ACTIVITY_FLAG_DEFAULT);
  v30 = qword_1ED815130;
  qword_1ED815130 = v29;

  v31 = _os_activity_create(&dword_1B1F9F000, "Dismiss Timer", v0, OS_ACTIVITY_FLAG_DEFAULT);
  v32 = qword_1ED815138;
  qword_1ED815138 = v31;

  v33 = _os_activity_create(&dword_1B1F9F000, "Repeat Timer", v0, OS_ACTIVITY_FLAG_DEFAULT);
  v34 = qword_1ED815140;
  qword_1ED815140 = v33;

  v35 = _os_activity_create(&dword_1B1F9F000, "Schedule Timer", v0, OS_ACTIVITY_FLAG_DEFAULT);
  v36 = qword_1ED815148;
  qword_1ED815148 = v35;

  v37 = _os_activity_create(&dword_1B1F9F000, "Fire Timer", v0, OS_ACTIVITY_FLAG_DEFAULT);
  v38 = qword_1ED815150;
  qword_1ED815150 = v37;

  return MEMORY[0x1EEE66BB8](v37, v38);
}

os_activity_t MTNewChildActivityForName(unint64_t a1)
{
  if (a1 > 0x12)
  {
    v3 = 0;
  }

  else
  {
    v1 = off_1E7B0EDD8[a1];
    v2 = MTActivityForName(a1);
    v3 = _os_activity_create(&dword_1B1F9F000, v1, v2, OS_ACTIVITY_FLAG_DEFAULT);
  }

  return v3;
}

uint64_t MTPBDismissActionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v18 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:&v18 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v18;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1B2018E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getIOPMAssertionCreateWithPropertiesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IOKitLibrary();
  result = dlsym(v2, "IOPMAssertionCreateWithProperties");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIOPMAssertionCreateWithPropertiesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t IOKitLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!IOKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __IOKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B0EED8;
    v5 = 0;
    IOKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IOKitLibraryCore_frameworkLibrary;
  if (!IOKitLibraryCore_frameworkLibrary)
  {
    IOKitLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __IOKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IOKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getIOPMAssertionReleaseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IOKitLibrary();
  result = dlsym(v2, "IOPMAssertionRelease");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIOPMAssertionReleaseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B201A960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t MTCompareTimerTimes(void *a1, void *a2)
{
  v3 = a2;
  [a1 remainingTime];
  v5 = round(v4);
  [v3 remainingTime];
  v7 = v6;

  v8 = round(v7);
  if (v5 < v8)
  {
    return -1;
  }

  else
  {
    return v5 > v8;
  }
}

void sub_1B201B574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B201B9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B201C064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B201DB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B201DD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2021A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2021C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2021D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2021E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B20223F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B2022844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B2022E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B2023B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2024B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2024CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2024DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2024F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2025080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MTPBAlarmStateReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(MTPBAlarm);
        [a1 addAlarms:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !MTPBAlarmReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void *__getGSSendAppPreferencesChangedSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!GraphicsServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __GraphicsServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B0F858;
    v7 = 0;
    GraphicsServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = GraphicsServicesLibraryCore_frameworkLibrary;
  if (!GraphicsServicesLibraryCore_frameworkLibrary)
  {
    __getGSSendAppPreferencesChangedSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "GSSendAppPreferencesChanged");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getGSSendAppPreferencesChangedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __GraphicsServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  GraphicsServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B2030F44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 112));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_1B2031AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2031D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2036680(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    v5 = MTLogForCategory(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __42__MTPersistentSyncChangeStore_loadChanges__block_invoke_cold_3(v3);
    }

    [*v3 _removeSyncDataFile];
    [*(v2 + 40) finishWithResult:MEMORY[0x1E695E0F0]];

    objc_end_catch();
    JUMPOUT(0x1B2036638);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2036D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B20395F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2039D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMTStopwatchStorageClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MobileTimerSupportLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MobileTimerSupportLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B0FB38;
    v6 = 0;
    MobileTimerSupportLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!MobileTimerSupportLibraryCore_frameworkLibrary_1)
  {
    __getMTStopwatchStorageClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("MTStopwatchStorage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMTStopwatchStorageClass_block_invoke_cold_1();
  }

  getMTStopwatchStorageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MobileTimerSupportLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileTimerSupportLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B203FB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B203FD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MobileKeyBagLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B0FB88;
    v7 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v2 = MobileKeyBagLibraryCore_frameworkLibrary_0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary_0)
  {
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "MKBDeviceUnlockedSinceBoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBDeviceUnlockedSinceBootSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTPBAlarmUpdateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(MTPBAlarmProperties);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !MTPBAlarmPropertiesReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id getHKHealthStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKHealthStoreClass_softClass_0;
  v7 = getHKHealthStoreClass_softClass_0;
  if (!getHKHealthStoreClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getHKHealthStoreClass_block_invoke_0;
    v3[3] = &unk_1E7B0C600;
    v3[4] = &v4;
    __getHKHealthStoreClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B20410D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2041288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHKHealthStoreClass_block_invoke_0(uint64_t a1)
{
  HealthKitLibrary_1();
  result = objc_getClass("HKHealthStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKHealthStoreClass_block_invoke_cold_1_0();
  }

  getHKHealthStoreClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HealthKitLibrary_1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __HealthKitLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B0FCA8;
    v5 = 0;
    HealthKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = HealthKitLibraryCore_frameworkLibrary_1;
  if (!HealthKitLibraryCore_frameworkLibrary_1)
  {
    HealthKitLibrary_cold_1_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __HealthKitLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getHKFeatureIdentifierSleepCoachingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary_1();
  result = dlsym(v2, "HKFeatureIdentifierSleepCoaching");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKFeatureIdentifierSleepCoachingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B2044F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B20450C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2045230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2045354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B20456AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B20457F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2045944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2045A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sortPriorityForTimerState(unint64_t a1)
{
  if (a1 > 4)
  {
    return 3;
  }

  else
  {
    return qword_1B20B8B28[a1];
  }
}

uint64_t MTTimerIntentResultsComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 state];
  if (v6 > 4)
  {
    v7 = 3;
  }

  else
  {
    v7 = qword_1B20B8B28[v6];
  }

  v8 = [v5 state];
  if (v8 > 4)
  {
    v9 = 3;
  }

  else
  {
    v9 = qword_1B20B8B28[v8];
  }

  if ([v5 type] != 2)
  {
    if (v7 > v9)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v10 = [v4 type];
  v11 = -1;
  if (v7 <= v9 && v10 == 2)
  {
LABEL_12:
    if (v7 < v9)
    {
LABEL_13:
      v11 = 1;
      goto LABEL_18;
    }

    if ([v4 state] != 3)
    {
      v12 = [v5 lastModifiedDate];
      v13 = [v4 lastModifiedDate];
      v11 = [v12 compare:v13];

      if (v11)
      {
        goto LABEL_18;
      }
    }

    [v4 remainingTime];
    v15 = v14;
    [v5 remainingTime];
    if (v15 >= v16)
    {
      [v4 remainingTime];
      v19 = v18;
      [v5 remainingTime];
      if (v19 > v20)
      {
        goto LABEL_13;
      }

      [v4 duration];
      v22 = v21;
      [v5 duration];
      if (v22 >= v23)
      {
        [v4 duration];
        v25 = v24;
        [v5 duration];
        v11 = v25 > v26;
        goto LABEL_18;
      }
    }

LABEL_17:
    v11 = -1;
  }

LABEL_18:

  return v11;
}

uint64_t MTPBSnoozeActionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v18 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:&v18 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v18;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void _CFUserNotificationCallback(const void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = +[MTCFUserNotificationPoster sharedInstance];
  objc_sync_enter(v4);
  v5 = +[MTCFUserNotificationPoster sharedInstance];
  v6 = [v5 notifications];
  v7 = [v6 allValues];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = ___CFUserNotificationCallback_block_invoke;
  v18[3] = &__block_descriptor_40_e30_B16__0__MTCFUserNotification_8l;
  v18[4] = a1;
  v8 = [v7 na_firstObjectPassingTest:v18];

  if (v8)
  {
    v9 = MTLogForCategory(3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = +[MTCFUserNotificationPoster sharedInstance];
      v11 = [v8 identifier];
      *buf = 138543618;
      v20 = v10;
      v21 = 2114;
      v22 = v11;
      _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ calling handler for %{public}@", buf, 0x16u);
    }

    v12 = [v8 handler];
    (v12)[2](v12, a2 == 0);

    v13 = +[MTCFUserNotificationPoster sharedInstance];
    v14 = [v13 notifications];
    v15 = [v8 identifier];
    [v14 removeObjectForKey:v15];
  }

  else
  {
    v13 = MTLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = +[MTCFUserNotificationPoster sharedInstance];
      _CFUserNotificationCallback_cold_1(v16, a1, buf, v13);
    }
  }

  CFRelease(a1);
  objc_sync_exit(v4);

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1B2054678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMTReportsManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MobileTimerSupportLibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MobileTimerSupportLibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7B10210;
    v6 = 0;
    MobileTimerSupportLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  if (!MobileTimerSupportLibraryCore_frameworkLibrary_2)
  {
    __getMTReportsManagerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("MTReportsManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMTReportsManagerClass_block_invoke_cold_1();
  }

  getMTReportsManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MobileTimerSupportLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileTimerSupportLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTIntentsTimerTypeFromSiriContext(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"MTTimerIntentSupportSiriContextTimerTypeKey"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 unsignedIntegerValue];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

id MTIntentsTimerForTimer(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E696EAC0];
    v2 = a1;
    v3 = [v1 alloc];
    v4 = objc_alloc(MEMORY[0x1E696EA50]);
    v5 = [v2 title];
    v6 = [v4 initWithSpokenPhrase:v5];
    [v2 duration];
    v8 = v7;
    [v2 remainingTime];
    v10 = v9;
    v11 = [v2 timerID];
    v12 = [v11 UUIDString];
    v13 = [v2 state];
    if (v13 > 4)
    {
      v14 = 2;
    }

    else
    {
      v14 = qword_1B20B8B60[v13];
    }

    v16 = [v2 siriContext];

    v15 = [v3 initWithLabel:v6 duration:v12 remainingTime:v14 identifier:MTIntentsTimerTypeFromSiriContext(v16) state:v8 type:v10];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t MTIntentsTimerStateForTimerState(unint64_t a1)
{
  if (a1 > 4)
  {
    return 2;
  }

  else
  {
    return qword_1B20B8B60[a1];
  }
}

BOOL MTTimerConflictsWithTimer(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [v3 timerID];
    v8 = [v5 timerID];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      goto LABEL_11;
    }

    if ([v3 type] == 2 && objc_msgSend(v5, "type") == 2)
    {
      v6 = 1;
      goto LABEL_21;
    }

    v10 = [v3 type];
    if (v10 != [v5 type])
    {
LABEL_11:
      v6 = 0;
      goto LABEL_21;
    }

    v11 = [v3 title];
    if (!v11 || ([v3 title], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "title"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "caseInsensitiveCompare:", v9)))
    {
      v12 = [v3 title];
      if (v12)
      {
        v6 = 0;
      }

      else
      {
        v13 = [v5 title];
        if (v13)
        {
          v6 = 0;
        }

        else
        {
          [v3 duration];
          v15 = v14;
          [v5 duration];
          v6 = v15 == v16;
        }
      }

      if (!v11)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = 1;
    }

LABEL_20:
  }

LABEL_21:

  return v6;
}

uint64_t MTTimerMatchesIntentsTimer(void *a1, void *a2, char a3, BOOL *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (v7)
  {
    [v8 duration];
    if (v10 >= 0.0)
    {
      v13 = v10;
      [v7 duration];
      v15 = v14;
      [v9 remainingTime];
      if (v13 != v15)
      {
        [v9 state];
LABEL_21:
        v26 = [v9 identifier];
        goto LABEL_22;
      }
    }

    else
    {
      [v9 remainingTime];
    }

    v16 = v11;
    if ((a3 & 1) != 0 || v11 < 0.0)
    {
      v19 = [v9 state];
    }

    else
    {
      [v7 remainingTime];
      v18 = v17;
      v19 = [v9 state];
      if (v16 != v18)
      {
        goto LABEL_21;
      }
    }

    v20 = v19;
    if (v19)
    {
      v21 = [v7 state];
      v22 = v21 > 4 ? 2 : qword_1B20B8B60[v21];
      if (v20 != v22)
      {
        goto LABEL_21;
      }
    }

    if ([v9 type])
    {
      v23 = [v9 type];
      v24 = [v7 type];
      v25 = [v9 identifier];
      v26 = v25;
      if (v23 != v24)
      {
LABEL_22:
        v12 = 0;
        goto LABEL_23;
      }

      if (v25)
      {
LABEL_19:
        v27 = [v7 timerID];
        v28 = [v27 UUIDString];
        v12 = [v26 isEqualToString:v28];

        goto LABEL_23;
      }
    }

    else
    {
      v26 = [v9 identifier];
      if (v26)
      {
        goto LABEL_19;
      }
    }

    v12 = 1;
LABEL_23:
    v29 = [v9 label];
    v30 = [v29 spokenPhrase];

    v31 = [v7 title];
    v32 = v31;
    if (v12)
    {
      if (!v30)
      {
        v12 = 1;
        if (a4)
        {
          goto LABEL_27;
        }

        goto LABEL_34;
      }

      v12 = [v31 localizedCaseInsensitiveContainsString:v30];
    }

    if (a4)
    {
LABEL_27:
      if (v32)
      {
        v33 = v12;
      }

      else
      {
        v33 = 0;
      }

      v34 = v33 == 1 && [v32 caseInsensitiveCompare:v30] == 0;
      *a4 = v34;
    }

LABEL_34:

    goto LABEL_35;
  }

  v12 = 0;
LABEL_35:

  return v12;
}

void sub_1B20566A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B20567E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B2056A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSYServiceClass_block_invoke(uint64_t a1)
{
  CompanionSyncLibrary();
  result = objc_getClass("SYService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSYServiceClass_block_invoke_cold_1();
  }

  getSYServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CompanionSyncLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CompanionSyncLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CompanionSyncLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7B10280;
    v5 = 0;
    CompanionSyncLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CompanionSyncLibraryCore_frameworkLibrary;
  if (!CompanionSyncLibraryCore_frameworkLibrary)
  {
    CompanionSyncLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __CompanionSyncLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CompanionSyncLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getSYServiceOptionDiskBufferProtectionClassSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CompanionSyncLibrary();
  result = dlsym(v2, "SYServiceOptionDiskBufferProtectionClass");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSYServiceOptionDiskBufferProtectionClassSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIDSSendMessageOptionBypassDuetKeySymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!IDSLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __IDSLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7B10298;
    v7 = 0;
    IDSLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = IDSLibraryCore_frameworkLibrary;
  if (!IDSLibraryCore_frameworkLibrary)
  {
    __getIDSSendMessageOptionBypassDuetKeySymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "IDSSendMessageOptionBypassDuetKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSSendMessageOptionBypassDuetKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IDSLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IDSLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MTPBAlarmPropertiesReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v157[0]) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v157[0] & 0x7F) << v6;
      if ((v157[0] & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 72;
        goto LABEL_156;
      case 2u:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(a1 + 152) |= 0x4000u;
        while (1)
        {
          LOBYTE(v157[0]) = 0;
          v89 = [a2 position] + 1;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
          {
            v91 = [a2 data];
            [v91 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v88 |= (v157[0] & 0x7F) << v86;
          if ((v157[0] & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v12 = v87++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_250;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v88;
        }

LABEL_250:
        v145 = 104;
        goto LABEL_272;
      case 3u:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 152) |= 0x8000u;
        while (1)
        {
          LOBYTE(v157[0]) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v157[0] & 0x7F) << v62;
          if ((v157[0] & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v12 = v63++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_234;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v64;
        }

LABEL_234:
        v145 = 108;
        goto LABEL_272;
      case 4u:
        v14 = PBReaderReadString();
        v15 = 136;
LABEL_156:
        v107 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_290;
      case 5u:
        v108 = 0;
        v109 = 0;
        v110 = 0;
        *(a1 + 152) |= 0x80000u;
        while (1)
        {
          LOBYTE(v157[0]) = 0;
          v111 = [a2 position] + 1;
          if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
          {
            v113 = [a2 data];
            [v113 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v110 |= (v157[0] & 0x7F) << v108;
          if ((v157[0] & 0x80) == 0)
          {
            break;
          }

          v108 += 7;
          v12 = v109++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_256;
          }
        }

        v22 = (v110 != 0) & ~[a2 hasError];
LABEL_256:
        v144 = 144;
        goto LABEL_267;
      case 6u:
        v68 = 0;
        v69 = 0;
        v70 = 0;
        *(a1 + 152) |= 0x1000u;
        while (1)
        {
          LOBYTE(v157[0]) = 0;
          v71 = [a2 position] + 1;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
          {
            v73 = [a2 data];
            [v73 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v70 |= (v157[0] & 0x7F) << v68;
          if ((v157[0] & 0x80) == 0)
          {
            break;
          }

          v68 += 7;
          v12 = v69++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_238;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v70;
        }

LABEL_238:
        v145 = 96;
        goto LABEL_272;
      case 7u:
        v92 = objc_alloc_init(MTPBSound);
        objc_storeStrong((a1 + 128), v92);
        v157[0] = 0;
        v157[1] = 0;
        if (PBReaderPlaceMark() && MTPBSoundReadFrom(v92, a2))
        {
          PBReaderRecallMark();

LABEL_290:
          v4 = a2;
          continue;
        }

        return 0;
      case 0xCu:
        v93 = 0;
        v94 = 0;
        v95 = 0;
        *(a1 + 152) |= 0x200000u;
        while (1)
        {
          LOBYTE(v157[0]) = 0;
          v96 = [a2 position] + 1;
          if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
          {
            v98 = [a2 data];
            [v98 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v95 |= (v157[0] & 0x7F) << v93;
          if ((v157[0] & 0x80) == 0)
          {
            break;
          }

          v93 += 7;
          v12 = v94++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_252;
          }
        }

        v22 = (v95 != 0) & ~[a2 hasError];
LABEL_252:
        v144 = 146;
        goto LABEL_267;
      case 0xDu:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        *(a1 + 152) |= 0x200u;
        while (1)
        {
          LOBYTE(v157[0]) = 0;
          v123 = [a2 position] + 1;
          if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 1, v124 <= objc_msgSend(a2, "length")))
          {
            v125 = [a2 data];
            [v125 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v122 |= (v157[0] & 0x7F) << v120;
          if ((v157[0] & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v12 = v121++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_264;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v122;
        }

LABEL_264:
        v145 = 84;
        goto LABEL_272;
      case 0xEu:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        *(a1 + 152) |= 0x400u;
        while (1)
        {
          LOBYTE(v157[0]) = 0;
          v117 = [a2 position] + 1;
          if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 1, v118 <= objc_msgSend(a2, "length")))
          {
            v119 = [a2 data];
            [v119 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v116 |= (v157[0] & 0x7F) << v114;
          if ((v157[0] & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v12 = v115++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_260;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v116;
        }

LABEL_260:
        v145 = 88;
        goto LABEL_272;
      case 0xFu:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 152) |= 0x800u;
        while (1)
        {
          LOBYTE(v157[0]) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v157[0] & 0x7F) << v40;
          if ((v157[0] & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v12 = v41++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_224;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v42;
        }

LABEL_224:
        v145 = 92;
        goto LABEL_272;
      case 0x10u:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 152) |= 0x20000u;
        while (1)
        {
          LOBYTE(v157[0]) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v157[0] & 0x7F) << v74;
          if ((v157[0] & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v12 = v75++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_242;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v76;
        }

LABEL_242:
        v145 = 116;
        goto LABEL_272;
      case 0x11u:
        *(a1 + 152) |= 0x40u;
        v157[0] = 0;
        v54 = [a2 position] + 8;
        if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 8, v55 <= objc_msgSend(a2, "length")))
        {
          v151 = [a2 data];
          [v151 getBytes:v157 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v147 = v157[0];
        v148 = 56;
        goto LABEL_289;
      case 0x12u:
        *(a1 + 152) |= 0x80u;
        v157[0] = 0;
        v30 = [a2 position] + 8;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
        {
          v146 = [a2 data];
          [v146 getBytes:v157 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v147 = v157[0];
        v148 = 64;
        goto LABEL_289;
      case 0x14u:
        *(a1 + 152) |= 4u;
        v157[0] = 0;
        v99 = [a2 position] + 8;
        if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 8, v100 <= objc_msgSend(a2, "length")))
        {
          v152 = [a2 data];
          [v152 getBytes:v157 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v147 = v157[0];
        v148 = 24;
        goto LABEL_289;
      case 0x15u:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 152) |= 0x100000u;
        while (1)
        {
          LOBYTE(v157[0]) = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (v157[0] & 0x7F) << v101;
          if ((v157[0] & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v12 = v102++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_254;
          }
        }

        v22 = (v103 != 0) & ~[a2 hasError];
LABEL_254:
        v144 = 145;
        goto LABEL_267;
      case 0x16u:
        *(a1 + 152) |= 0x10u;
        v157[0] = 0;
        v128 = [a2 position] + 8;
        if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 8, v129 <= objc_msgSend(a2, "length")))
        {
          v154 = [a2 data];
          [v154 getBytes:v157 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v147 = v157[0];
        v148 = 40;
        goto LABEL_289;
      case 0x17u:
        *(a1 + 152) |= 8u;
        v157[0] = 0;
        v126 = [a2 position] + 8;
        if (v126 >= [a2 position] && (v127 = objc_msgSend(a2, "position") + 8, v127 <= objc_msgSend(a2, "length")))
        {
          v153 = [a2 data];
          [v153 getBytes:v157 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v147 = v157[0];
        v148 = 32;
        goto LABEL_289;
      case 0x1Bu:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 152) |= 0x400000u;
        while (1)
        {
          LOBYTE(v157[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v157[0] & 0x7F) << v16;
          if ((v157[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_214;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_214:
        v144 = 147;
        goto LABEL_267;
      case 0x1Eu:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 152) |= 0x1000000u;
        while (1)
        {
          LOBYTE(v157[0]) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v157[0] & 0x7F) << v56;
          if ((v157[0] & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_230;
          }
        }

        v22 = (v58 != 0) & ~[a2 hasError];
LABEL_230:
        v144 = 149;
        goto LABEL_267;
      case 0x1Fu:
        v130 = 0;
        v131 = 0;
        v132 = 0;
        *(a1 + 152) |= 0x800000u;
        while (1)
        {
          LOBYTE(v157[0]) = 0;
          v133 = [a2 position] + 1;
          if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
          {
            v135 = [a2 data];
            [v135 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v132 |= (v157[0] & 0x7F) << v130;
          if ((v157[0] & 0x80) == 0)
          {
            break;
          }

          v130 += 7;
          v12 = v131++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_266;
          }
        }

        v22 = (v132 != 0) & ~[a2 hasError];
LABEL_266:
        v144 = 148;
        goto LABEL_267;
      case 0x20u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 152) |= 0x10000u;
        while (1)
        {
          LOBYTE(v157[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v157[0] & 0x7F) << v23;
          if ((v157[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_218;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_218:
        v145 = 112;
        goto LABEL_272;
      case 0x21u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 152) |= 0x40000u;
        while (1)
        {
          LOBYTE(v157[0]) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v157[0] & 0x7F) << v48;
          if ((v157[0] & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_228;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v50;
        }

LABEL_228:
        v145 = 120;
        goto LABEL_272;
      case 0x22u:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 152) |= 0x2000000u;
        while (1)
        {
          LOBYTE(v157[0]) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v157[0] & 0x7F) << v34;
          if ((v157[0] & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_220;
          }
        }

        v22 = (v36 != 0) & ~[a2 hasError];
LABEL_220:
        v144 = 150;
LABEL_267:
        *(a1 + v144) = v22;
        goto LABEL_290;
      case 0x24u:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 152) |= 0x2000u;
        while (1)
        {
          LOBYTE(v157[0]) = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            v85 = [a2 data];
            [v85 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v157[0] & 0x7F) << v80;
          if ((v157[0] & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v12 = v81++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_246;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v82;
        }

LABEL_246:
        v145 = 100;
        goto LABEL_272;
      case 0x25u:
        *(a1 + 152) |= 2u;
        v157[0] = 0;
        v32 = [a2 position] + 8;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
        {
          v149 = [a2 data];
          [v149 getBytes:v157 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v147 = v157[0];
        v148 = 16;
        goto LABEL_289;
      case 0x27u:
        *(a1 + 152) |= 1u;
        v157[0] = 0;
        v142 = [a2 position] + 8;
        if (v142 >= [a2 position] && (v143 = objc_msgSend(a2, "position") + 8, v143 <= objc_msgSend(a2, "length")))
        {
          v155 = [a2 data];
          [v155 getBytes:v157 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v147 = v157[0];
        v148 = 8;
        goto LABEL_289;
      case 0x28u:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        *(a1 + 152) |= 0x100u;
        while (1)
        {
          LOBYTE(v157[0]) = 0;
          v139 = [a2 position] + 1;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
          {
            v141 = [a2 data];
            [v141 getBytes:v157 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v138 |= (v157[0] & 0x7F) << v136;
          if ((v157[0] & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v12 = v137++ >= 9;
          if (v12)
          {
            v29 = 0;
            goto LABEL_271;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v138;
        }

LABEL_271:
        v145 = 80;
LABEL_272:
        *(a1 + v145) = v29;
        goto LABEL_290;
      case 0x29u:
        *(a1 + 152) |= 0x20u;
        v157[0] = 0;
        v46 = [a2 position] + 8;
        if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 8, v47 <= objc_msgSend(a2, "length")))
        {
          v150 = [a2 data];
          [v150 getBytes:v157 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v147 = v157[0];
        v148 = 48;
LABEL_289:
        *(a1 + v148) = v147;
        goto LABEL_290;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_290;
    }
  }
}

uint64_t sub_1B205E340@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B20A98B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1B205E3C4()
{
  v1 = (v0 + *(type metadata accessor for MTLog() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for MTLog()
{
  result = qword_1EB79FB80;
  if (!qword_1EB79FB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B205E450@<X0>(uint64_t a1@<X8>)
{
  v1 = (a1 + *(type metadata accessor for MTLog() + 20));
  *v1 = 0xD000000000000015;
  v1[1] = 0x80000001B20D3010;

  return sub_1B20A98A4();
}

uint64_t sub_1B205E524(char a1)
{
  if (!a1)
  {
    return 0x6174614465726F43;
  }

  if (a1 == 1)
  {
    return 0x6974697669746341;
  }

  return 0x7574706143677542;
}

uint64_t sub_1B205E58C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA00000000006572;
  v3 = *a1;
  v4 = 0x6974697669746341;
  if (v3 == 1)
  {
    v5 = 0xEA00000000007365;
  }

  else
  {
    v4 = 0x7574706143677542;
    v5 = 0xEA00000000006572;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6174614465726F43;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x6974697669746341;
  if (*a2 == 1)
  {
    v2 = 0xEA00000000007365;
  }

  else
  {
    v8 = 0x7574706143677542;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6174614465726F43;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B20A9F84();
  }

  return v11 & 1;
}

uint64_t sub_1B205E68C()
{
  v1 = *v0;
  sub_1B20AA004();
  sub_1B20A9AA4();

  return sub_1B20AA024();
}

uint64_t sub_1B205E73C()
{
  *v0;
  *v0;
  sub_1B20A9AA4();
}

uint64_t sub_1B205E7D8()
{
  v1 = *v0;
  sub_1B20AA004();
  sub_1B20A9AA4();

  return sub_1B20AA024();
}

uint64_t sub_1B205E884@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B205EC6C();
  *a2 = result;
  return result;
}

void sub_1B205E8B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA00000000007365;
  v5 = 0x6974697669746341;
  if (v2 != 1)
  {
    v5 = 0x7574706143677542;
    v4 = 0xEA00000000006572;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6174614465726F43;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B205EA18(uint64_t a1, uint64_t *a2)
{
  v3 = (type metadata accessor for MTLog() - 8);
  v4 = *(*v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B20A98B4();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  v9 = &v6[v3[7]];
  *v9 = 0xD000000000000015;
  *(v9 + 1) = 0x80000001B20D3010;
  sub_1B20A98A4();
  (*(*(v7 - 8) + 16))(v8, v6, v7);
  return sub_1B205EFBC(v6);
}

uint64_t sub_1B205EB5C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1B20A98B4();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_1B205EBD4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1B20A98B4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1B205EC6C()
{
  v0 = sub_1B20A9F44();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1B205ECF4()
{
  result = qword_1EB79F3F8;
  if (!qword_1EB79F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB79F3F8);
  }

  return result;
}

uint64_t sub_1B205ED70()
{
  result = sub_1B20A98B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MTLog.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MTLog.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1B205EFBC(uint64_t a1)
{
  v2 = type metadata accessor for MTLog();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B205F018(void *a1)
{
  v3 = [a1 bundleID];
  if (!v3)
  {
    sub_1B20A9A74();
    v3 = sub_1B20A9A64();
  }

  [v1 setBundleID_];

  v4 = [a1 status];

  return [v1 setStatus_];
}

id sub_1B205F0BC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1B20A9A64();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_1B205F190()
{
  v1 = v0;
  sub_1B20A9E84();
  MEMORY[0x1B273FFD0](0xD000000000000022, 0x80000001B20D3030);
  v2 = [v0 bundleID];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B20A9A74();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F400, &qword_1B20B8D60);
  v7 = sub_1B20A9A84();
  MEMORY[0x1B273FFD0](v7);

  MEMORY[0x1B273FFD0](0x757461747309200ALL, 0xEB00000000203A73);
  [v1 status];
  v8 = sub_1B20A9F74();
  MEMORY[0x1B273FFD0](v8);

  MEMORY[0x1B273FFD0](663562, 0xE300000000000000);
  return 0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_1B205F334()
{
  v1 = [v0 bundleID];
  if (!v1)
  {
    v5 = [v0 status];
    goto LABEL_5;
  }

  v2 = v1;
  sub_1B20A9A74();
  v4 = v3;

  v5 = [v0 status];
  if (!v4)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = sub_1B20A9A64();

LABEL_6:
  v7 = [objc_allocWithZone(MEMORY[0x1E698A738]) initWithBundleID:v6 status:v5];

  return v7;
}

id AKCDAuthorization.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id AKCDAuthorization.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AKCDAuthorization();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id AKCDAuthorization.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AKCDAuthorization();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static AKCDAuthorization.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1B20A9A64();
  v2 = [v0 initWithEntityName_];

  return v2;
}

id sub_1B205F5FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 status];
  *a2 = result;
  return result;
}

void sub_1B205F644(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 bundleID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B20A9A74();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B205F6AC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_1B20A9A64();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setBundleID_];
}

uint64_t sub_1B205F71C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for AKCDAuthorization();
  result = sub_1B20A9E94();
  *a1 = result;
  return result;
}

id static MTCDSound.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1B20A9A64();
  v2 = [v0 initWithEntityName_];

  return v2;
}

id sub_1B205F7E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaItemIdentifier];
  *a2 = result;
  return result;
}

id sub_1B205F82C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 soundType];
  *a2 = result;
  return result;
}

id sub_1B205F874@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 volumeLevel];
  *a2 = v4;
  return result;
}

void sub_1B205F8E0(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B20A9A74();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_1B205F950(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_1B20A9A64();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

id sub_1B205F9C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alarm];
  *a2 = result;
  return result;
}

id sub_1B205FA10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timer];
  *a2 = result;
  return result;
}

uint64_t sub_1B205FA60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MTCDSound();
  result = sub_1B20A9E94();
  *a1 = result;
  return result;
}

unint64_t sub_1B205FAF8(void *a1)
{
  v3 = [a1 toneIdentifier];
  [v1 setToneIdentifier_];

  v4 = [a1 mediaItemIdentifier];
  if (v4)
  {
    v5 = v4;
    [v1 setMediaItemIdentifier_];
  }

  v6 = [a1 vibrationIdentifier];
  if (!v6)
  {
    sub_1B20A9A74();
    v6 = sub_1B20A9A64();
  }

  [v1 setVibrationIdentifier_];

  v7 = [a1 soundVolume];
  if (v7)
  {
    v8 = v7;
    [v7 doubleValue];
    [v1 setVolumeLevel_];
  }

  result = [a1 soundType];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    return [v1 setSoundType_];
  }

  return result;
}

uint64_t sub_1B205FCC4()
{
  v1 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB79F640, &qword_1B20B8D08) - 8) + 64);
  v3 = (MEMORY[0x1EEE9AC00])();
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - v6;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1B20A9E84();
  MEMORY[0x1B273FFD0](0xD000000000000024, 0x80000001B20D31A0);
  v8 = [v0 toneIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1B20A9A74();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v28 = v10;
  v29 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F400, &qword_1B20B8D60);
  sub_1B20A9F14();

  MEMORY[0x1B273FFD0](0xD000000000000019, 0x80000001B20D31D0);
  v28 = [v1 mediaItemIdentifier];
  v13 = sub_1B20A9F74();
  MEMORY[0x1B273FFD0](v13);

  MEMORY[0x1B273FFD0](0xD000000000000045, 0x80000001B20D31F0);
  v14 = [v1 vibrationIdentifier];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1B20A9A74();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v28 = v16;
  v29 = v18;
  sub_1B20A9F14();

  MEMORY[0x1B273FFD0](0xD00000000000003BLL, 0x80000001B20D3240);
  [v1 volumeLevel];
  sub_1B20A9C34();
  MEMORY[0x1B273FFD0](0xD000000000000014, 0x80000001B20D3280);
  v28 = [v1 soundType];
  v19 = sub_1B20A9F74();
  MEMORY[0x1B273FFD0](v19);

  MEMORY[0x1B273FFD0](0xD000000000000010, 0x80000001B20D32A0);
  v20 = [v1 alarm];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 mtid];

    if (v22)
    {
      sub_1B20A9864();

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v25 = sub_1B20A9874();
    (*(*(v25 - 8) + 56))(v5, v23, 1, v25);
    sub_1B20600E0(v5, v7);
  }

  else
  {
    v24 = sub_1B20A9874();
    (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  }

  v26 = sub_1B20A9A84();
  MEMORY[0x1B273FFD0](v26);

  return v30;
}

uint64_t sub_1B20600E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB79F640, &qword_1B20B8D08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id MTCDSound.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id MTCDSound.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MTCDSound();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id MTCDSound.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTCDSound();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B20602DC(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_1B20A9834();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  v14 = [a1 title];
  [v3 setTitle_];

  [a1 duration];
  [v3 setDuration_];
  v15 = [a1 lastModified];
  if (v15)
  {
    v16 = v15;
    sub_1B20A9804();

    (*(v7 + 32))(v13, v11, v6);
    v17 = sub_1B20A97E4();
    [v3 setLastModified_];

    (*(v7 + 8))(v13, v6);
  }

  return [v3 setIsFavorite_];
}

id sub_1B20604A4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1B20A9A64();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_1B2060578()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F408, &qword_1B20B8D58);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - v4;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1B20A9E84();
  MEMORY[0x1B273FFD0](0xD000000000000025, 0x80000001B20D32C0);
  v6 = [v0 title];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1B20A9A74();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v17[0] = v8;
  v17[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F400, &qword_1B20B8D60);
  sub_1B20A9F14();

  MEMORY[0x1B273FFD0](0x72756409200A2020, 0xEF203A6E6F697461);
  [v1 duration];
  sub_1B20A9C34();
  MEMORY[0x1B273FFD0](0xD000000000000013, 0x80000001B20D32F0);
  v11 = [v1 lastModified];
  if (v11)
  {
    v12 = v11;
    sub_1B20A9804();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_1B20A9834();
  (*(*(v14 - 8) + 56))(v5, v13, 1, v14);
  sub_1B20A9F14();
  sub_1B206085C(v5);
  MEMORY[0x1B273FFD0](0x756F7309200A2020, 0xEC000000203A646ELL);
  v17[0] = [v1 sound];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F410, qword_1B20B8D68);
  v15 = sub_1B20A9A84();
  MEMORY[0x1B273FFD0](v15);

  MEMORY[0x1B273FFD0](0xD000000000000023, 0x80000001B20D3310);
  return v18;
}

uint64_t sub_1B206085C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F408, &qword_1B20B8D58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id MTCDTimerDuration.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id MTCDTimerDuration.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MTCDTimerDuration();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id MTCDTimerDuration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTCDTimerDuration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B2060A4C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F430, &qword_1B20B8DF0);
    v2 = sub_1B20A9F34();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1B206277C(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1B206288C(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1B206288C(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1B206288C(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1B20A9E14();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1B206288C(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B2060D14(uint64_t a1)
{
  v2 = sub_1B20A98B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v53 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v53 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v53 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v53 - v17;
  if (!a1)
  {
    v33 = sub_1B205EB38();
    (*(v3 + 16))(v18, v33, v2);
    v34 = sub_1B20A9894();
    v35 = sub_1B20A9C84();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1B1F9F000, v34, v35, "Failed to receive response", v36, 2u);
      MEMORY[0x1B2741310](v36, -1, -1);
    }

    return (*(v3 + 8))(v18, v2);
  }

  v19 = *MEMORY[0x1E69D50D0];
  v54 = sub_1B20A9A74();
  v55 = v20;
  sub_1B20A9E34();
  if (!*(a1 + 16) || (v21 = sub_1B2061B94(v56), (v22 & 1) == 0))
  {
    sub_1B20627DC(v56);
    goto LABEL_10;
  }

  sub_1B206277C(*(a1 + 56) + 32 * v21, v57);
  sub_1B20627DC(v56);
  sub_1B20626CC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v29 = sub_1B205EB38();
    (*(v3 + 16))(v16, v29, v2);
    v30 = sub_1B20A9894();
    v31 = sub_1B20A9C84();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1B1F9F000, v30, v31, "Received malformed response", v32, 2u);
      MEMORY[0x1B2741310](v32, -1, -1);
    }

    return (*(v3 + 8))(v16, v2);
  }

  v23 = v54;
  if ([v54 BOOLValue])
  {
    v24 = sub_1B205EB38();
    (*(v3 + 16))(v13, v24, v2);
    v25 = sub_1B20A9894();
    v26 = sub_1B20A9C74();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1B1F9F000, v25, v26, "Captured bug report successfully", v27, 2u);
      MEMORY[0x1B2741310](v27, -1, -1);
    }

    return (*(v3 + 8))(v13, v2);
  }

  v37 = *MEMORY[0x1E69D50B0];
  v54 = sub_1B20A9A74();
  v55 = v38;
  sub_1B20A9E34();
  if (*(a1 + 16) && (v39 = sub_1B2061B94(v56), (v40 & 1) != 0))
  {
    sub_1B206277C(*(a1 + 56) + 32 * v39, v57);
    sub_1B20627DC(v56);
    if (swift_dynamicCast())
    {
      v42 = v54;
      v41 = v55;
      v43 = sub_1B205EB38();
      (*(v3 + 16))(v7, v43, v2);

      v44 = sub_1B20A9894();
      v45 = sub_1B20A9C74();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v56[0] = v47;
        *v46 = 136315138;
        v48 = sub_1B2061574(v42, v41, v56);

        *(v46 + 4) = v48;
        _os_log_impl(&dword_1B1F9F000, v44, v45, "Failed to capture bug for reason: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x1B2741310](v47, -1, -1);
        MEMORY[0x1B2741310](v46, -1, -1);
      }

      else
      {
      }

      return (*(v3 + 8))(v7, v2);
    }
  }

  else
  {
    sub_1B20627DC(v56);
  }

  v49 = sub_1B205EB38();
  (*(v3 + 16))(v10, v49, v2);
  v50 = sub_1B20A9894();
  v51 = sub_1B20A9C74();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_1B1F9F000, v50, v51, "Failed to capture bug for unknown reason", v52, 2u);
    MEMORY[0x1B2741310](v52, -1, -1);
  }

  return (*(v3 + 8))(v10, v2);
}

uint64_t sub_1B2061334(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1B20A9A34();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

id BugCapture.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BugCapture.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BugCapture.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B2061574(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B2061640(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B206277C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1B2061640(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B206174C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B20A9EB4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1B206174C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B2061798(a1, a2);
  sub_1B20618C8(&unk_1F29338F8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1B2061798(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B20619B4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B20A9EB4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B20A9AD4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B20619B4(v10, 0);
        result = sub_1B20A9E74();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B20618C8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1B2061A28(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B20619B4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F428, &qword_1B20B8DE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1B2061A28(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F428, &qword_1B20B8DE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1B2061B1C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B20AA004();
  sub_1B20A9AA4();
  v6 = sub_1B20AA024();

  return sub_1B2061BD8(a1, a2, v6);
}

unint64_t sub_1B2061B94(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1B20A9E14();

  return sub_1B2061C90(a1, v5);
}

unint64_t sub_1B2061BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B20A9F84())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B2061C90(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B2062830(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B2740340](v9, a1);
      sub_1B20627DC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B2061D58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F438, &qword_1B20B8DF8);
    v3 = sub_1B20A9F34();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B206289C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1B2061B1C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B206288C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void _s11MobileTimer10BugCaptureC06reportC04type7subType4name5valueySS_S3StFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v70 = a1;
  v68 = sub_1B20A98B4();
  v69 = *(v68 - 8);
  v15 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1B20A9834();
  v65 = *(v66 - 8);
  v17 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_opt_self() processInfo];
  v20 = [v19 environment];

  v21 = sub_1B20A9A34();
  if (*(v21 + 16))
  {
    sub_1B2061B1C(5264449, 0xE300000000000000);
    v23 = v22;

    if (v23)
    {
      return;
    }
  }

  else
  {
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v71 = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v25 = sub_1B20A9A64();
  v61 = a2;
  v26 = sub_1B20A9A64();
  v60 = a3;
  v62 = a4;
  v27 = sub_1B20A9A64();
  v63 = v24;
  v28 = [v24 processName];
  if (!v28)
  {
    sub_1B20A9A74();
    v28 = sub_1B20A9A64();
  }

  v29 = [v71 signatureWithDomain:v25 type:v26 subType:v27 detectedProcess:v28 triggerThresholdValues:0];

  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F418, &qword_1B20B8DD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B20B8DA0;
    v31 = *MEMORY[0x1E69D5090];
    *(inited + 32) = sub_1B20A9A74();
    *(inited + 40) = v32;
    v33 = v64;
    sub_1B20A9824();
    sub_1B20A97F4();
    v35 = v34;
    (*(v65 + 8))(v33, v66);
    v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    *(inited + 72) = sub_1B20626CC();
    *(inited + 48) = v36;
    v37 = *MEMORY[0x1E69D5060];
    *(inited + 80) = sub_1B20A9A74();
    *(inited + 88) = v38;
    v39 = MEMORY[0x1E69E6158];
    *(inited + 120) = MEMORY[0x1E69E6158];
    *(inited + 96) = a5;
    *(inited + 104) = a6;
    v40 = *MEMORY[0x1E69D5070];
    *(inited + 128) = sub_1B20A9A74();
    *(inited + 136) = v41;
    *(inited + 168) = v39;
    *(inited + 144) = a7;
    *(inited + 152) = a8;

    v42 = sub_1B2061D58(inited);
    v65 = a5;
    v43 = a8;
    v66 = v42;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F420, &qword_1B20B8DE0);
    swift_arrayDestroy();
    v44 = sub_1B205EB38();
    v45 = v67;
    (*(v69 + 16))(v67, v44, v68);

    v46 = v61;

    v47 = v62;

    v48 = sub_1B20A9894();
    v49 = sub_1B20A9C94();

    if (os_log_type_enabled(v48, v49))
    {
      v64 = a7;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = v46;
      v53 = v51;
      aBlock[0] = v51;
      *v50 = 136315906;
      *(v50 + 4) = sub_1B2061574(v70, v52, aBlock);
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_1B2061574(v60, v47, aBlock);
      *(v50 + 22) = 2080;
      *(v50 + 24) = sub_1B2061574(v65, a6, aBlock);
      *(v50 + 32) = 2080;
      *(v50 + 34) = sub_1B2061574(v64, v43, aBlock);
      _os_log_impl(&dword_1B1F9F000, v48, v49, "Capturing bug report with type %s; subtype: %s; name: %s; value: %s", v50, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B2741310](v53, -1, -1);
      MEMORY[0x1B2741310](v50, -1, -1);
    }

    (*(v69 + 8))(v45, v68);
    aBlock[0] = 0;
    v54 = v29;
    sub_1B20A9A24();
    if (aBlock[0])
    {

      v55 = sub_1B20A9A14();

      sub_1B2060A4C(v66);

      v56 = sub_1B20A9A14();

      aBlock[4] = sub_1B2060D14;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B2061334;
      aBlock[3] = &block_descriptor;
      v57 = _Block_copy(aBlock);
      [v71 snapshotWithSignature:v55 duration:v56 event:0 payload:v57 reply:120.0];

      _Block_release(v57);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v58 = v71;
  }
}

unint64_t sub_1B20626CC()
{
  result = qword_1EB79CDE0;
  if (!qword_1EB79CDE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB79CDE0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1B206277C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1B206288C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B206289C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F420, &qword_1B20B8DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B206290C(void *a1)
{
  v3 = [a1 identifier];
  if (!v3)
  {
    sub_1B20A9A74();
    v3 = sub_1B20A9A64();
  }

  [v1 setIdentifier_];

  v4 = [a1 data];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B20A97D4();
    v8 = v7;

    v9 = sub_1B20A97C4();
    sub_1B2062A04(v6, v8);
  }

  else
  {
    v9 = 0;
  }

  [v1 setData_];
}

uint64_t sub_1B2062A04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_1B2062A58()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1B20A9A64();
  v2 = [v0 initWithEntityName_];

  return v2;
}

unint64_t sub_1B2062B2C()
{
  sub_1B20A9E84();

  v1 = [v0 identifier];
  if (v1)
  {
    v2 = v1;
    sub_1B20A9A74();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F400, &qword_1B20B8D60);
  v3 = sub_1B20A9A84();
  MEMORY[0x1B273FFD0](v3);

  MEMORY[0x1B273FFD0](0xA200A202020, 0xE600000000000000);
  return 0xD00000000000001ALL;
}

id sub_1B2062C24()
{
  v1 = v0;
  v2 = [v0 identifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B20A9A74();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = [v1 data];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1B20A97D4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  v12 = [v1 attributes];
  if (v12 && (v13 = v12, v14 = [v12 data], v13, v14))
  {
    v15 = sub_1B20A97D4();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xF000000000000000;
  }

  v18 = objc_allocWithZone(MEMORY[0x1E698A730]);
  return sub_1B2062EA8(v4, v6, v9, v11, v15, v17);
}

id AKCDAlarm.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id AKCDAlarm.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AKCDAlarm();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id AKCDAlarm.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AKCDAlarm();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B2062EA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {
    v11 = sub_1B20A9A64();
  }

  else
  {
    v11 = 0;
  }

  if (a4 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1B20A97C4();
    sub_1B2062FD8(a3, a4);
  }

  if (a6 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1B20A97C4();
    sub_1B2062FD8(a5, a6);
  }

  v14 = [v6 initWithIdentifier:v11 data:v12 attributes:v13];

  return v14;
}

uint64_t sub_1B2062FD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B2062A04(a1, a2);
  }

  return a1;
}

id static MTCDAlarm.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1B20A9A64();
  v2 = [v0 initWithEntityName_];

  return v2;
}

id sub_1B2063058@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowsSnooze];
  *a2 = result;
  return result;
}

id sub_1B20630A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 day];
  *a2 = result;
  return result;
}

id sub_1B20630E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dismissedAction];
  *a2 = result;
  return result;
}

id sub_1B2063170@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enabled];
  *a2 = result;
  return result;
}

void sub_1B20631F8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F408, &qword_1B20B8D58);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  sub_1B2063BF8(a1, &v16 - v10, &qword_1EB79F408, &qword_1B20B8D58);
  v12 = *a2;
  v13 = sub_1B20A9834();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_1B20A97E4();
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

id sub_1B2063334@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hour];
  *a2 = result;
  return result;
}

id sub_1B20633FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 minute];
  *a2 = result;
  return result;
}

id sub_1B2063444@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 month];
  *a2 = result;
  return result;
}

void sub_1B20634C0(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB79F640, &qword_1B20B8D08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B2063BF8(a1, &v12 - v6, &unk_1EB79F640, &qword_1B20B8D08);
  v8 = *a2;
  v9 = sub_1B20A9874();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_1B20A9854();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setMtid_];
}

id sub_1B20635FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 repeatSchedule];
  *a2 = result;
  return result;
}

id sub_1B2063644@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 silentModeOptions];
  *a2 = result;
  return result;
}

void sub_1B206368C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 siriContext];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B20A97D4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B20636F4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_1B20A97C4();
  }

  v5 = v3;
  [v2 setSiriContext_];
}

id sub_1B206376C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 sleepAlarm];
  *a2 = result;
  return result;
}

id sub_1B20637B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 snoozeDuration];
  *a2 = result;
  return result;
}

uint64_t sub_1B2063830@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_1B20638F4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B20A9A74();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}