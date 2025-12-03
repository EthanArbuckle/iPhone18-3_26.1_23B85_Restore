@interface FCFetchedValueDescriptor
- (BOOL)isValue:(id)value equalToValue:(id)toValue;
- (FCFetchedValueDescriptor)init;
- (FCFetchedValueDescriptorObserving)observer;
- (NSArray)inputManagers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fastCachedValue;
- (id)valuePromiseWithCachePolicy:(unint64_t)policy qualityOfService:(int64_t)service;
- (void)fetchValueWithCachePolicy:(unint64_t)policy qualityOfService:(int64_t)service completion:(id)completion;
@end

@implementation FCFetchedValueDescriptor

- (FCFetchedValueDescriptor)init
{
  v3.receiver = self;
  v3.super_class = FCFetchedValueDescriptor;
  return [(FCFetchedValueDescriptor *)&v3 init];
}

- (void)fetchValueWithCachePolicy:(unint64_t)policy qualityOfService:(int64_t)service completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v13 = "[FCFetchedValueDescriptor fetchValueWithCachePolicy:qualityOfService:completion:]";
    v14 = 2080;
    v15 = "FCFetchedValueDescriptor.m";
    v16 = 1024;
    v17 = 24;
    v18 = 2114;
    v19 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCFetchedValueDescriptor fetchValueWithCachePolicy:qualityOfService:completion:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)fastCachedValue
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCFetchedValueDescriptor fastCachedValue]";
    v10 = 2080;
    v11 = "FCFetchedValueDescriptor.m";
    v12 = 1024;
    v13 = 29;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCFetchedValueDescriptor fastCachedValue]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (BOOL)isValue:(id)value equalToValue:(id)toValue
{
  v21 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  toValueCopy = toValue;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v14 = "[FCFetchedValueDescriptor isValue:equalToValue:]";
    v15 = 2080;
    v16 = "FCFetchedValueDescriptor.m";
    v17 = 1024;
    v18 = 34;
    v19 = 2114;
    v20 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCFetchedValueDescriptor isValue:equalToValue:]"];
  v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (NSArray)inputManagers
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCFetchedValueDescriptor inputManagers]";
    v10 = 2080;
    v11 = "FCFetchedValueDescriptor.m";
    v12 = 1024;
    v13 = 39;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCFetchedValueDescriptor inputManagers]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v10 = "[FCFetchedValueDescriptor copyWithZone:]";
    v11 = 2080;
    v12 = "FCFetchedValueDescriptor.m";
    v13 = 1024;
    v14 = 45;
    v15 = 2114;
    v16 = v3;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCFetchedValueDescriptor copyWithZone:]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (FCFetchedValueDescriptorObserving)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (id)valuePromiseWithCachePolicy:(unint64_t)policy qualityOfService:(int64_t)service
{
  v7 = objc_alloc(MEMORY[0x1E69B68F8]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__FCFetchedValueDescriptor_Promise__valuePromiseWithCachePolicy_qualityOfService___block_invoke;
  v10[3] = &unk_1E7C3CC18;
  v10[4] = self;
  v10[5] = policy;
  v10[6] = service;
  v8 = [v7 initWithResolver:v10];

  return v8;
}

void __82__FCFetchedValueDescriptor_Promise__valuePromiseWithCachePolicy_qualityOfService___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__FCFetchedValueDescriptor_Promise__valuePromiseWithCachePolicy_qualityOfService___block_invoke_2;
  v12[3] = &unk_1E7C405E0;
  v13 = v6;
  v14 = v5;
  v10 = v5;
  v11 = v6;
  [v7 fetchValueWithCachePolicy:v8 qualityOfService:v9 completion:v12];
}

uint64_t __82__FCFetchedValueDescriptor_Promise__valuePromiseWithCachePolicy_qualityOfService___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

@end