@interface _CNTimeProfilingTask
- (_CNTimeProfilingTask)init;
- (_CNTimeProfilingTask)initWithName:(id)a3;
- (_CNTimeProfilingTask)initWithTask:(id)a3 timeProvider:(id)a4 logger:(id)a5;
- (_CNTimeProfilingTask)initWithTask:(id)a3 timeProvider:(id)a4 os_log:(id)a5;
- (id)run;
@end

@implementation _CNTimeProfilingTask

- (_CNTimeProfilingTask)init
{
  v2 = CNInitializerUnavailableException(self, a2, sel_initWithTask_timeProvider_logger_);
  objc_exception_throw(v2);
}

- (_CNTimeProfilingTask)initWithName:(id)a3
{
  v5 = a3;
  v6 = CNInitializerUnavailableException(self, a2, sel_initWithTask_timeProvider_logger_);
  objc_exception_throw(v6);
}

- (_CNTimeProfilingTask)initWithTask:(id)a3 timeProvider:(id)a4 os_log:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[_CNTimeProfilingTaskOSLogger alloc] initWithOSLog:v8];

  v12 = [(_CNTimeProfilingTask *)self initWithTask:v10 timeProvider:v9 logger:v11];
  return v12;
}

- (_CNTimeProfilingTask)initWithTask:(id)a3 timeProvider:(id)a4 logger:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_3 != -1)
  {
    [_CNTimeProfilingTask initWithTask:timeProvider:logger:];
  }

  v12 = CNGuardOSLog_cn_once_object_0_3;
  if (!os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
  {
LABEL_6:
    if (v10)
    {
      goto LABEL_11;
    }
  }

  else
  {
    [_CNTimeProfilingTask initWithTask:v12 timeProvider:? logger:?];
    if (v10)
    {
      goto LABEL_11;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_3 != -1)
  {
    [_CNTimeProfilingTask initWithTask:timeProvider:logger:];
  }

  v13 = CNGuardOSLog_cn_once_object_0_3;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
  {
    [_CNTimeProfilingTask initWithTask:v13 timeProvider:? logger:?];
  }

LABEL_11:
  if (!v11)
  {
    if (CNGuardOSLog_cn_once_token_0_3 != -1)
    {
      [_CNTimeProfilingTask initWithTask:timeProvider:logger:];
    }

    v14 = CNGuardOSLog_cn_once_object_0_3;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_3, OS_LOG_TYPE_FAULT))
    {
      [_CNTimeProfilingTask initWithTask:v14 timeProvider:? logger:?];
    }
  }

  v15 = MEMORY[0x1E696AEC0];
  v16 = [v9 name];
  v17 = [v15 stringWithFormat:@"%@.time-profile", v16];

  v22.receiver = self;
  v22.super_class = _CNTimeProfilingTask;
  v18 = [(CNTask *)&v22 initWithName:v17];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_task, a3);
    objc_storeStrong(&v19->_timeProvider, a4);
    objc_storeStrong(&v19->_logger, a5);
    v20 = v19;
  }

  return v19;
}

- (id)run
{
  [(CNTaskTimeProfileLogging *)self->_logger taskWillBegin:self->_task];
  [(CNTimeProvider *)self->_timeProvider timestamp];
  v4 = v3;
  v5 = [(CNTask *)self->_task run];
  [(CNTimeProvider *)self->_timeProvider timestamp];
  v7 = v6 - v4;
  if ([v5 isSuccess])
  {
    [(CNTaskTimeProfileLogging *)self->_logger task:self->_task didCompleteAfter:v7];
  }

  if ([v5 isFailure])
  {
    logger = self->_logger;
    task = self->_task;
    v10 = [v5 error];
    [(CNTaskTimeProfileLogging *)logger task:task didFailWithError:v10 after:v7];
  }

  return v5;
}

- (void)initWithTask:(void *)a1 timeProvider:logger:.cold.2(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v3 = 138543362;
  v4 = objc_opt_class();
  _os_log_fault_impl(&dword_1859F0000, v1, OS_LOG_TYPE_FAULT, "parameter ‘task’ must be nonnull and of type %{public}@", &v3, 0xCu);

  v2 = *MEMORY[0x1E69E9840];
}

@end