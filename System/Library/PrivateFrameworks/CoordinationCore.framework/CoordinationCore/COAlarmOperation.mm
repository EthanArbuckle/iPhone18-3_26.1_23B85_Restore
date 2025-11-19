@interface COAlarmOperation
- (BOOL)performOperationWithMappedAlarms:(id)a3;
- (id)initForAdding:(id)a3 completion:(id)a4;
- (id)initForRemoving:(id)a3 completion:(id)a4;
- (id)initForUpdating:(id)a3 completion:(id)a4;
@end

@implementation COAlarmOperation

- (id)initForAdding:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = COAlarmOperation;
  v8 = [(COAlarmOperation *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 0;
    v10 = [v6 copy];
    alarm = v9->_alarm;
    v9->_alarm = v10;

    v12 = [v7 copy];
    completion = v9->_completion;
    v9->_completion = v12;
  }

  return v9;
}

- (id)initForUpdating:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = COAlarmOperation;
  v8 = [(COAlarmOperation *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 1;
    v10 = [v6 copy];
    alarm = v9->_alarm;
    v9->_alarm = v10;

    v12 = [v7 copy];
    completion = v9->_completion;
    v9->_completion = v12;
  }

  return v9;
}

- (id)initForRemoving:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = COAlarmOperation;
  v8 = [(COAlarmOperation *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 2;
    v10 = [v6 copy];
    alarm = v9->_alarm;
    v9->_alarm = v10;

    v12 = [v7 copy];
    completion = v9->_completion;
    v9->_completion = v12;
  }

  return v9;
}

- (BOOL)performOperationWithMappedAlarms:(id)a3
{
  v4 = a3;
  v5 = [(COAlarmOperation *)self alarm];
  v6 = [v5 alarmID];
  v7 = [(COAlarmOperation *)self type];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = [v4 objectForKey:v6];

  if (v9)
  {
    if (v8 == 2)
    {
      v10 = [v5 alarmID];
      [v4 removeObjectForKey:v10];
LABEL_6:

      v13 = 1;
      goto LABEL_10;
    }

LABEL_5:
    v10 = [v5 mutableCopy];
    v11 = [MEMORY[0x277CBEAA8] now];
    [v10 setLastModifiedDate:v11];

    v12 = [v10 alarmID];
    [v4 setObject:v10 forKey:v12];

    goto LABEL_6;
  }

  v14 = COCoreLogForCategory(2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(COAlarmOperation *)v5 performOperationWithMappedAlarms:v8, v14];
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
  v16 = [(COAlarmOperation *)self completion];
  (v16)[2](v16, v15);

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