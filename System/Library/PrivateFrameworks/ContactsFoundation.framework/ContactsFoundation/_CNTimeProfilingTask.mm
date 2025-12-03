@interface _CNTimeProfilingTask
- (_CNTimeProfilingTask)init;
- (_CNTimeProfilingTask)initWithName:(id)name;
- (_CNTimeProfilingTask)initWithTask:(id)task timeProvider:(id)provider logger:(id)logger;
- (_CNTimeProfilingTask)initWithTask:(id)task timeProvider:(id)provider os_log:(id)os_log;
- (id)run;
@end

@implementation _CNTimeProfilingTask

- (_CNTimeProfilingTask)init
{
  v2 = CNInitializerUnavailableException(self, a2, sel_initWithTask_timeProvider_logger_);
  objc_exception_throw(v2);
}

- (_CNTimeProfilingTask)initWithName:(id)name
{
  nameCopy = name;
  v6 = CNInitializerUnavailableException(self, a2, sel_initWithTask_timeProvider_logger_);
  objc_exception_throw(v6);
}

- (_CNTimeProfilingTask)initWithTask:(id)task timeProvider:(id)provider os_log:(id)os_log
{
  os_logCopy = os_log;
  providerCopy = provider;
  taskCopy = task;
  v11 = [[_CNTimeProfilingTaskOSLogger alloc] initWithOSLog:os_logCopy];

  v12 = [(_CNTimeProfilingTask *)self initWithTask:taskCopy timeProvider:providerCopy logger:v11];
  return v12;
}

- (_CNTimeProfilingTask)initWithTask:(id)task timeProvider:(id)provider logger:(id)logger
{
  taskCopy = task;
  providerCopy = provider;
  loggerCopy = logger;
  if (taskCopy)
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
    if (providerCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    [_CNTimeProfilingTask initWithTask:v12 timeProvider:? logger:?];
    if (providerCopy)
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
  if (!loggerCopy)
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
  name = [taskCopy name];
  v17 = [v15 stringWithFormat:@"%@.time-profile", name];

  v22.receiver = self;
  v22.super_class = _CNTimeProfilingTask;
  v18 = [(CNTask *)&v22 initWithName:v17];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_task, task);
    objc_storeStrong(&v19->_timeProvider, provider);
    objc_storeStrong(&v19->_logger, logger);
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
    error = [v5 error];
    [(CNTaskTimeProfileLogging *)logger task:task didFailWithError:error after:v7];
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