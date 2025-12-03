@interface _CNTimeProfilingTaskOSLogger
- (NSString)description;
- (_CNTimeProfilingTaskOSLogger)init;
- (_CNTimeProfilingTaskOSLogger)initWithOSLog:(id)log;
- (void)task:(id)task didCompleteAfter:(double)after;
- (void)task:(id)task didFailWithError:(id)error after:(double)after;
- (void)taskWillBegin:(id)begin;
@end

@implementation _CNTimeProfilingTaskOSLogger

- (_CNTimeProfilingTaskOSLogger)init
{
  v2 = CNInitializerUnavailableException(self, a2, sel_initWithOSLog_);
  objc_exception_throw(v2);
}

- (_CNTimeProfilingTaskOSLogger)initWithOSLog:(id)log
{
  logCopy = log;
  v10.receiver = self;
  v10.super_class = _CNTimeProfilingTaskOSLogger;
  v6 = [(_CNTimeProfilingTaskOSLogger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_os_log, log);
    v8 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"os_log" object:self->_os_log];
  build = [v3 build];

  return build;
}

- (void)taskWillBegin:(id)begin
{
  v10 = *MEMORY[0x1E69E9840];
  beginCopy = begin;
  os_log = [(_CNTimeProfilingTaskOSLogger *)self os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
  {
    name = [beginCopy name];
    v8 = 138543362;
    v9 = name;
    _os_log_impl(&dword_1859F0000, os_log, OS_LOG_TYPE_DEFAULT, "Task '%{public}@' beginning", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)task:(id)task didCompleteAfter:(double)after
{
  v15 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  v7 = [CNTimeIntervalFormatter stringForTimeInterval:after];
  os_log = [(_CNTimeProfilingTaskOSLogger *)self os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
  {
    name = [taskCopy name];
    v11 = 138543618;
    v12 = name;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_1859F0000, os_log, OS_LOG_TYPE_DEFAULT, "Task '%{public}@' complete (%{public}@)", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)task:(id)task didFailWithError:(id)error after:(double)after
{
  v20 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  errorCopy = error;
  v10 = [CNTimeIntervalFormatter stringForTimeInterval:after];
  os_log = [(_CNTimeProfilingTaskOSLogger *)self os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
  {
    name = [taskCopy name];
    v14 = 138543874;
    v15 = name;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = errorCopy;
    _os_log_impl(&dword_1859F0000, os_log, OS_LOG_TYPE_DEFAULT, "Task '%{public}@' failed (%{public}@): %{public}@", &v14, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end