@interface COAlarmOperation
- (BOOL)performOperationWithMappedAlarms:(id)alarms;
- (id)initForAdding:(id)adding completion:(id)completion;
- (id)initForRemoving:(id)removing completion:(id)completion;
- (id)initForUpdating:(id)updating completion:(id)completion;
@end

@implementation COAlarmOperation

- (id)initForAdding:(id)adding completion:(id)completion
{
  addingCopy = adding;
  completionCopy = completion;
  v15.receiver = self;
  v15.super_class = COAlarmOperation;
  v8 = [(COAlarmOperation *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 0;
    v10 = [addingCopy copy];
    alarm = v9->_alarm;
    v9->_alarm = v10;

    v12 = [completionCopy copy];
    completion = v9->_completion;
    v9->_completion = v12;
  }

  return v9;
}

- (id)initForUpdating:(id)updating completion:(id)completion
{
  updatingCopy = updating;
  completionCopy = completion;
  v15.receiver = self;
  v15.super_class = COAlarmOperation;
  v8 = [(COAlarmOperation *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 1;
    v10 = [updatingCopy copy];
    alarm = v9->_alarm;
    v9->_alarm = v10;

    v12 = [completionCopy copy];
    completion = v9->_completion;
    v9->_completion = v12;
  }

  return v9;
}

- (id)initForRemoving:(id)removing completion:(id)completion
{
  removingCopy = removing;
  completionCopy = completion;
  v15.receiver = self;
  v15.super_class = COAlarmOperation;
  v8 = [(COAlarmOperation *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 2;
    v10 = [removingCopy copy];
    alarm = v9->_alarm;
    v9->_alarm = v10;

    v12 = [completionCopy copy];
    completion = v9->_completion;
    v9->_completion = v12;
  }

  return v9;
}

- (BOOL)performOperationWithMappedAlarms:(id)alarms
{
  alarmsCopy = alarms;
  alarm = [(COAlarmOperation *)self alarm];
  alarmID = [alarm alarmID];
  type = [(COAlarmOperation *)self type];
  if (!type)
  {
    goto LABEL_5;
  }

  v8 = type;
  v9 = [alarmsCopy objectForKey:alarmID];

  if (v9)
  {
    if (v8 == 2)
    {
      alarmID2 = [alarm alarmID];
      [alarmsCopy removeObjectForKey:alarmID2];
LABEL_6:

      v13 = 1;
      goto LABEL_10;
    }

LABEL_5:
    alarmID2 = [alarm mutableCopy];
    v11 = [MEMORY[0x277CBEAA8] now];
    [alarmID2 setLastModifiedDate:v11];

    v10AlarmID = [alarmID2 alarmID];
    [alarmsCopy setObject:alarmID2 forKey:v10AlarmID];

    goto LABEL_6;
  }

  v14 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(COAlarmOperation *)alarm performOperationWithMappedAlarms:v8, v14];
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
  completion = [(COAlarmOperation *)self completion];
  (completion)[2](completion, v15);

  v13 = 0;
LABEL_10:

  return v13;
}

- (void)performOperationWithMappedAlarms:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 alarmID];
  v7 = 134218242;
  v8 = a2;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_244378000, a3, OS_LOG_TYPE_ERROR, "Operation (%ld) didn't find alarm %@!", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end