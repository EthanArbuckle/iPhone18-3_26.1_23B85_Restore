@interface _CNTimeProfilingTaskOSLogger
- (NSString)description;
- (_CNTimeProfilingTaskOSLogger)init;
- (_CNTimeProfilingTaskOSLogger)initWithOSLog:(id)a3;
- (void)task:(id)a3 didCompleteAfter:(double)a4;
- (void)task:(id)a3 didFailWithError:(id)a4 after:(double)a5;
- (void)taskWillBegin:(id)a3;
@end

@implementation _CNTimeProfilingTaskOSLogger

- (_CNTimeProfilingTaskOSLogger)init
{
  v2 = CNInitializerUnavailableException(self, a2, sel_initWithOSLog_);
  objc_exception_throw(v2);
}

- (_CNTimeProfilingTaskOSLogger)initWithOSLog:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _CNTimeProfilingTaskOSLogger;
  v6 = [(_CNTimeProfilingTaskOSLogger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_os_log, a3);
    v8 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"os_log" object:self->_os_log];
  v5 = [v3 build];

  return v5;
}

- (void)taskWillBegin:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CNTimeProfilingTaskOSLogger *)self os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1859F0000, v5, OS_LOG_TYPE_DEFAULT, "Task '%{public}@' beginning", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)task:(id)a3 didCompleteAfter:(double)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [CNTimeIntervalFormatter stringForTimeInterval:a4];
  v8 = [(_CNTimeProfilingTaskOSLogger *)self os_log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 name];
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_1859F0000, v8, OS_LOG_TYPE_DEFAULT, "Task '%{public}@' complete (%{public}@)", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)task:(id)a3 didFailWithError:(id)a4 after:(double)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [CNTimeIntervalFormatter stringForTimeInterval:a5];
  v11 = [(_CNTimeProfilingTaskOSLogger *)self os_log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 name];
    v14 = 138543874;
    v15 = v12;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_1859F0000, v11, OS_LOG_TYPE_DEFAULT, "Task '%{public}@' failed (%{public}@): %{public}@", &v14, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end