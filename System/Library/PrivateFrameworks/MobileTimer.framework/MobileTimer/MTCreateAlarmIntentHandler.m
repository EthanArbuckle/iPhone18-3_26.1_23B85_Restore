@interface MTCreateAlarmIntentHandler
- (id)_alarmUserActivityWithIntent:(id)a3;
- (void)confirmMTCreateAlarm:(id)a3 completion:(id)a4;
- (void)handleMTCreateAlarm:(id)a3 completion:(id)a4;
- (void)provideRepeatScheduleOptionsForMTCreateAlarm:(id)a3 withCompletion:(id)a4;
- (void)resolveDateComponentsForMTCreateAlarm:(id)a3 withCompletion:(id)a4;
- (void)resolveLabelForMTCreateAlarm:(id)a3 withCompletion:(id)a4;
- (void)resolveRepeatScheduleForMTCreateAlarm:(id)a3 withCompletion:(id)a4;
@end

@implementation MTCreateAlarmIntentHandler

- (void)resolveLabelForMTCreateAlarm:(id)a3 withCompletion:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = [v11 label];
  v7 = [v6 length];

  v8 = MEMORY[0x1E696EA88];
  if (v7)
  {
    v9 = [v11 label];
    v10 = [v8 successWithResolvedString:v9];
    v5[2](v5, v10);

    v5 = v10;
  }

  else
  {
    v9 = [MEMORY[0x1E696EA88] notRequired];
    v5[2](v5, v9);
  }
}

- (void)resolveDateComponentsForMTCreateAlarm:(id)a3 withCompletion:(id)a4
{
  v23 = a3;
  v5 = a4;
  v6 = [v23 time];
  if (v6)
  {
    v7 = v6;
    v8 = [v23 dateComponents];

    if (!v8)
    {
      v9 = MEMORY[0x1E695DF00];
      v10 = [v23 time];
      v11 = [v10 identifier];
      [v11 doubleValue];
      v12 = [v9 dateWithTimeIntervalSinceReferenceDate:?];

      v13 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      v14 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v14 setCalendar:v13];
      [v14 setHour:{objc_msgSend(v13, "component:fromDate:", 32, v12)}];
      [v14 setMinute:{objc_msgSend(v13, "component:fromDate:", 64, v12)}];
      [v23 setDateComponents:v14];
    }
  }

  v15 = [v23 dateComponents];
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = v15;
  v17 = [v23 dateComponents];
  if ([v17 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {

LABEL_8:
    v20 = [MEMORY[0x1E696E808] needsValue];
    v5[2](v5, v20);
    goto LABEL_9;
  }

  v18 = [v23 dateComponents];
  v19 = [v18 minute];

  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  v21 = MEMORY[0x1E696E808];
  v20 = [v23 dateComponents];
  v22 = [v21 successWithResolvedDateComponents:v20];
  v5[2](v5, v22);

LABEL_9:
}

- (void)resolveRepeatScheduleForMTCreateAlarm:(id)a3 withCompletion:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 repeatSchedule];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v5 repeatSchedule];
    v10 = [v9 na_map:&__block_literal_global_13];

    v6[2](v6, v10);
  }

  else
  {
    v11 = +[MTIntentRepeatDayResolutionResult notRequired];
    v14[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v6[2](v6, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)provideRepeatScheduleOptionsForMTCreateAlarm:(id)a3 withCompletion:(id)a4
{
  v10 = a4;
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v4 firstWeekday] - 1;

  v6 = MTRepeatDaysForAlarmRepeatSchedule(127);
  if (v5 >= [v6 count])
  {
    (*(v10 + 2))(v10, 0, 0);
  }

  else
  {
    v7 = [v6 subarrayWithRange:{v5, objc_msgSend(v6, "count") - v5}];
    v8 = [v6 subarrayWithRange:{0, v5}];
    v9 = [v7 arrayByAddingObjectsFromArray:v8];
    (*(v10 + 2))(v10, v9, 0);
  }
}

- (void)confirmMTCreateAlarm:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [MTCreateAlarmIntentResponse alloc];
  v9 = [(MTCreateAlarmIntentHandler *)self _alarmUserActivityWithIntent:v7];

  v10 = [(MTCreateAlarmIntentResponse *)v8 initWithCode:1 userActivity:v9];
  v6[2](v6, v10);
}

- (void)handleMTCreateAlarm:(id)a3 completion:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 time];
  if (v8)
  {

    goto LABEL_3;
  }

  v14 = [v6 dateComponents];
  if (v14)
  {
    v15 = v14;
    v16 = [v6 dateComponents];
    if ([v16 hour] == 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    else
    {
      v38 = [v6 dateComponents];
      v39 = [v38 minute];

      if (v39 != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_3:
        v9 = [v6 dateComponents];

        if (v9)
        {
          v10 = [v6 dateComponents];
          v11 = [v10 hour];

          v12 = [v6 dateComponents];
          v13 = [v12 minute];
        }

        else
        {
          v11 = [v6 time];

          if (!v11)
          {
            v13 = 0;
            goto LABEL_11;
          }

          v17 = MEMORY[0x1E695DF00];
          v18 = [v6 time];
          v19 = [v18 identifier];
          [v19 doubleValue];
          v12 = [v17 dateWithTimeIntervalSinceReferenceDate:?];

          v20 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
          v11 = [v20 component:32 fromDate:v12];
          v13 = [v20 component:64 fromDate:v12];
        }

LABEL_11:
        v54 = 0u;
        v55 = 0u;
        v53 = 0u;
        v52 = 0u;
        v21 = [v6 repeatSchedule];
        v22 = [v21 countByEnumeratingWithState:&v52 objects:v56 count:16];
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
                objc_enumerationMutation(v21);
              }

              v27 = [*(*(&v52 + 1) + 8 * i) value];
              v24 |= [v27 integerValue];
            }

            v23 = [v21 countByEnumeratingWithState:&v52 objects:v56 count:16];
          }

          while (v23);
        }

        else
        {
          v24 = 0;
        }

        v28 = [(MTAlarm *)MTMutableAlarm alarmWithHour:v11 minute:v13];
        v29 = [v6 label];
        [v28 setTitle:v29];

        [v28 setRepeatSchedule:v24];
        v30 = v28;
        v31 = [(MTAlarmIntentHandler *)self alarmManager];
        v32 = [v31 addAlarm:v30];

        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __61__MTCreateAlarmIntentHandler_handleMTCreateAlarm_completion___block_invoke;
        v48[3] = &unk_1E7B0D6A0;
        v48[4] = self;
        v33 = v6;
        v49 = v33;
        v50 = v30;
        v7 = v44;
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
  v42 = [(MTCreateAlarmIntentHandler *)self _alarmUserActivityWithIntent:v6];
  v35 = [(MTCreateAlarmIntentResponse *)v41 initWithCode:5 userActivity:v42];

  v7[2](v7, v35);
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

- (id)_alarmUserActivityWithIntent:(id)a3
{
  v3 = MEMORY[0x1E696B090];
  v4 = a3;
  v5 = [v3 mtUserActivityWithActivityType:@"com.apple.clock.alarm"];
  v6 = objc_opt_class();
  v7 = [v4 identifier];
  v8 = [v4 time];
  v9 = [v8 displayString];
  v10 = [v4 label];

  v11 = [v6 createUserInfoWithIntentName:v7 alarmIDString:0 time:v9 label:v10];

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