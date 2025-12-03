@interface MTGetAlarmsIntentHandler
- (void)confirmGetAlarms:(id)alarms completion:(id)completion;
- (void)handleGetAlarms:(id)alarms completion:(id)completion;
@end

@implementation MTGetAlarmsIntentHandler

- (void)confirmGetAlarms:(id)alarms completion:(id)completion
{
  completionCopy = completion;
  v6 = [[MTGetAlarmsIntentResponse alloc] initWithCode:1 userActivity:0];
  (*(completion + 2))(completionCopy, v6);
}

- (void)handleGetAlarms:(id)alarms completion:(id)completion
{
  completionCopy = completion;
  alarmManager = [(MTAlarmIntentHandler *)self alarmManager];
  v7 = [alarmManager alarmsIncludingSleepAlarm:1];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__MTGetAlarmsIntentHandler_handleGetAlarms_completion___block_invoke;
  v14[3] = &unk_1E7B0C688;
  v8 = completionCopy;
  v15 = v8;
  v9 = [v7 addFailureBlock:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__MTGetAlarmsIntentHandler_handleGetAlarms_completion___block_invoke_2;
  v12[3] = &unk_1E7B0C720;
  v13 = v8;
  v10 = v8;
  v11 = [v7 addSuccessBlock:v12];
}

void __55__MTGetAlarmsIntentHandler_handleGetAlarms_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[MTGetAlarmsIntentResponse alloc] initWithCode:5 userActivity:0];
  (*(v1 + 16))(v1, v2);
}

void __55__MTGetAlarmsIntentHandler_handleGetAlarms_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 na_map:&__block_literal_global_33];
  v3 = [[MTGetAlarmsIntentResponse alloc] initWithCode:4 userActivity:0];
  [(MTGetAlarmsIntentResponse *)v3 setAlarms:v4];
  (*(*(a1 + 32) + 16))();
}

@end