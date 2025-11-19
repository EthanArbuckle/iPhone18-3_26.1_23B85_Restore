@interface FCObserver
- (BOOL)isEqual:(id)a3;
- (FCObserver)init;
- (FCObserver)initWithToken:(unint64_t)a3;
- (id)keepAliveObject;
- (void)dispose;
- (void)disposeOn:(id)a3;
@end

@implementation FCObserver

- (id)keepAliveObject
{
  WeakRetained = objc_loadWeakRetained(&self->_keepAliveObject);

  return WeakRetained;
}

- (FCObserver)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCObserver init]";
    v10 = 2080;
    v11 = "FCObservable.m";
    v12 = 1024;
    v13 = 25;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCObserver init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCObserver)initWithToken:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = FCObserver;
  result = [(FCObserver *)&v5 init];
  if (result)
  {
    result->_token = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;

  if (v7)
  {
    v8 = [(FCObserver *)self token];
    v6 = v8 == [v7 token];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)disposeOn:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  [(FCObserver *)self setKeepAliveObject:v5];
}

- (void)dispose
{
  [MEMORY[0x1E696AF00] isMainThread];

  [(FCObserver *)self setKeepAliveObject:0];
}

@end