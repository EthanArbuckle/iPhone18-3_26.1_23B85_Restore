@interface MTCreateAlarmIntentHandler
- (id)_alarmUserActivityWithIntent:(id)intent;
- (void)confirmMTCreateAlarm:(id)alarm completion:(id)completion;
- (void)handleMTCreateAlarm:(id)alarm completion:(id)completion;
- (void)provideRepeatScheduleOptionsForMTCreateAlarm:(id)alarm withCompletion:(id)completion;
- (void)resolveDateComponentsForMTCreateAlarm:(id)alarm withCompletion:(id)completion;
- (void)resolveLabelForMTCreateAlarm:(id)alarm withCompletion:(id)completion;
- (void)resolveRepeatScheduleForMTCreateAlarm:(id)alarm withCompletion:(id)completion;
@end

@implementation MTCreateAlarmIntentHandler

- (void)resolveLabelForMTCreateAlarm:(id)alarm withCompletion:(id)completion
{
  alarmCopy = alarm;
  completionCopy = completion;
  label = [alarmCopy label];
  v7 = [label length];

  v8 = MEMORY[0x1E696EA88];
  if (v7)
  {
    label2 = [alarmCopy label];
    v10 = [v8 successWithResolvedString:label2];
    completionCopy[2](completionCopy, v10);

    completionCopy = v10;
  }

  else
  {
    label2 = [MEMORY[0x1E696EA88] notRequired];
    completionCopy[2](completionCopy, label2);
  }
}

- (void)resolveDateComponentsForMTCreateAlarm:(id)alarm withCompletion:(id)completion
{
  alarmCopy = alarm;
  completionCopy = completion;
  time = [alarmCopy time];
  if (time)
  {
    v7 = time;
    dateComponents = [alarmCopy dateComponents];

    if (!dateComponents)
    {
      v9 = MEMORY[0x1E695DF00];
      time2 = [alarmCopy time];
      identifier = [time2 identifier];
      [identifier doubleValue];
      v12 = [v9 dateWithTimeIntervalSinceReferenceDate:?];

      v13 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      v14 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v14 setCalendar:v13];
      [v14 setHour:{objc_msgSend(v13, "component:fromDate:", 32, v12)}];
      [v14 setMinute:{objc_msgSend(v13, "component:fromDate:", 64, v12)}];
      [alarmCopy setDateComponents:v14];
    }
  }

  dateComponents2 = [alarmCopy dateComponents];
  if (!dateComponents2)
  {
    goto LABEL_8;
  }

  v16 = dateComponents2;
  dateComponents3 = [alarmCopy dateComponents];
  if ([dateComponents3 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {

LABEL_8:
    needsValue = [MEMORY[0x1E696E808] needsValue];
    completionCopy[2](completionCopy, needsValue);
    goto LABEL_9;
  }

  dateComponents4 = [alarmCopy dateComponents];
  minute = [dateComponents4 minute];

  if (minute == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  v21 = MEMORY[0x1E696E808];
  needsValue = [alarmCopy dateComponents];
  v22 = [v21 successWithResolvedDateComponents:needsValue];
  completionCopy[2](completionCopy, v22);

LABEL_9:
}

- (void)resolveRepeatScheduleForMTCreateAlarm:(id)alarm withCompletion:(id)completion
{
  v14[1] = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  completionCopy = completion;
  repeatSchedule = [alarmCopy repeatSchedule];
  v8 = [repeatSchedule count];

  if (v8)
  {
    repeatSchedule2 = [alarmCopy repeatSchedule];
    v10 = [repeatSchedule2 na_map:&__block_literal_global_13];

    completionCopy[2](completionCopy, v10);
  }

  else
  {
    v11 = +[MTIntentRepeatDayResolutionResult notRequired];
    v14[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    completionCopy[2](completionCopy, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)provideRepeatScheduleOptionsForMTCreateAlarm:(id)alarm withCompletion:(id)completion
{
  completionCopy = completion;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [currentCalendar firstWeekday] - 1;

  v6 = MTRepeatDaysForAlarmRepeatSchedule(127);
  if (v5 >= [v6 count])
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else
  {
    v7 = [v6 subarrayWithRange:{v5, objc_msgSend(v6, "count") - v5}];
    v8 = [v6 subarrayWithRange:{0, v5}];
    v9 = [v7 arrayByAddingObjectsFromArray:v8];
    (*(completionCopy + 2))(completionCopy, v9, 0);
  }
}

- (void)confirmMTCreateAlarm:(id)alarm completion:(id)completion
{
  completionCopy = completion;
  alarmCopy = alarm;
  v8 = [MTCreateAlarmIntentResponse alloc];
  v9 = [(MTCreateAlarmIntentHandler *)self _alarmUserActivityWithIntent:alarmCopy];

  v10 = [(MTCreateAlarmIntentResponse *)v8 initWithCode:1 userActivity:v9];
  completionCopy[2](completionCopy, v10);
}

- (void)handleMTCreateAlarm:(id)alarm completion:(id)completion
{
  v57 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  completionCopy = completion;
  time = [alarmCopy time];
  if (time)
  {

    goto LABEL_3;
  }

  dateComponents = [alarmCopy dateComponents];
  if (dateComponents)
  {
    v15 = dateComponents;
    dateComponents2 = [alarmCopy dateComponents];
    if ([dateComponents2 hour] == 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    else
    {
      dateComponents3 = [alarmCopy dateComponents];
      minute = [dateComponents3 minute];

      if (minute != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_3:
        dateComponents4 = [alarmCopy dateComponents];

        if (dateComponents4)
        {
          dateComponents5 = [alarmCopy dateComponents];
          hour = [dateComponents5 hour];

          dateComponents6 = [alarmCopy dateComponents];
          minute2 = [dateComponents6 minute];
        }

        else
        {
          hour = [alarmCopy time];

          if (!hour)
          {
            minute2 = 0;
            goto LABEL_11;
          }

          v17 = MEMORY[0x1E695DF00];
          time2 = [alarmCopy time];
          identifier = [time2 identifier];
          [identifier doubleValue];
          dateComponents6 = [v17 dateWithTimeIntervalSinceReferenceDate:?];

          v20 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
          hour = [v20 component:32 fromDate:dateComponents6];
          minute2 = [v20 component:64 fromDate:dateComponents6];
        }

LABEL_11:
        v54 = 0u;
        v55 = 0u;
        v53 = 0u;
        v52 = 0u;
        repeatSchedule = [alarmCopy repeatSchedule];
        v22 = [repeatSchedule countByEnumeratingWithState:&v52 objects:v56 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = 0;
          v25 = *v53;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v53 != v25)
              {
                objc_enumerationMutation(repeatSchedule);
              }

              value = [*(*(&v52 + 1) + 8 * i) value];
              v24 |= [value integerValue];
            }

            v23 = [repeatSchedule countByEnumeratingWithState:&v52 objects:v56 count:16];
          }

          while (v23);
        }

        else
        {
          v24 = 0;
        }

        v28 = [(MTAlarm *)MTMutableAlarm alarmWithHour:hour minute:minute2];
        label = [alarmCopy label];
        [v28 setTitle:label];

        [v28 setRepeatSchedule:v24];
        v30 = v28;
        alarmManager = [(MTAlarmIntentHandler *)self alarmManager];
        v32 = [alarmManager addAlarm:v30];

        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __61__MTCreateAlarmIntentHandler_handleMTCreateAlarm_completion___block_invoke;
        v48[3] = &unk_1E7B0D6A0;
        v48[4] = self;
        v33 = alarmCopy;
        v49 = v33;
        v50 = v30;
        completionCopy = v44;
        v34 = v44;
        v51 = v34;
        v35 = v30;
        v36 = [v32 addSuccessBlock:v48];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __61__MTCreateAlarmIntentHandler_handleMTCreateAlarm_completion___block_invoke_2;
        v45[3] = &unk_1E7B0D6C8;
        v45[4] = self;
        v46 = v33;
        v47 = v34;
        v37 = [v32 addFailureBlock:v45];

        goto LABEL_25;
      }
    }
  }

  v40 = MTLogForCategory(3);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    [MTCreateAlarmIntentHandler handleMTCreateAlarm:v40 completion:?];
  }

  v41 = [MTCreateAlarmIntentResponse alloc];
  v42 = [(MTCreateAlarmIntentHandler *)self _alarmUserActivityWithIntent:alarmCopy];
  v35 = [(MTCreateAlarmIntentResponse *)v41 initWithCode:5 userActivity:v42];

  completionCopy[2](completionCopy, v35);
LABEL_25:

  v43 = *MEMORY[0x1E69E9840];
}

void __61__MTCreateAlarmIntentHandler_handleMTCreateAlarm_completion___block_invoke(uint64_t a1)
{
  v2 = [MTCreateAlarmIntentResponse alloc];
  v3 = [*(a1 + 32) _alarmUserActivityWithIntent:*(a1 + 40)];
  v5 = [(MTCreateAlarmIntentResponse *)v2 initWithCode:4 userActivity:v3];

  v4 = [*(a1 + 48) intentAlarm];
  [(MTCreateAlarmIntentResponse *)v5 setAlarm:v4];

  (*(*(a1 + 56) + 16))();
}

void __61__MTCreateAlarmIntentHandler_handleMTCreateAlarm_completion___block_invoke_2(uint64_t a1)
{
  v2 = [MTCreateAlarmIntentResponse alloc];
  v3 = [*(a1 + 32) _alarmUserActivityWithIntent:*(a1 + 40)];
  v4 = [(MTCreateAlarmIntentResponse *)v2 initWithCode:5 userActivity:v3];

  (*(*(a1 + 48) + 16))();
}

- (id)_alarmUserActivityWithIntent:(id)intent
{
  v3 = MEMORY[0x1E696B090];
  intentCopy = intent;
  v5 = [v3 mtUserActivityWithActivityType:@"com.apple.clock.alarm"];
  v6 = objc_opt_class();
  identifier = [intentCopy identifier];
  time = [intentCopy time];
  displayString = [time displayString];
  label = [intentCopy label];

  v11 = [v6 createUserInfoWithIntentName:identifier alarmIDString:0 time:displayString label:label];

  [v5 setUserInfo:v11];

  return v5;
}

- (void)handleMTCreateAlarm:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "%{public}@ createAlarm requested without time", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end