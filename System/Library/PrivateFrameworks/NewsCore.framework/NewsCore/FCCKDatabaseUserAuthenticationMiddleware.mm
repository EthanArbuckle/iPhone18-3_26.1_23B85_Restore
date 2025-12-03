@interface FCCKDatabaseUserAuthenticationMiddleware
- (FCCKDatabaseUserAuthenticationMiddleware)init;
- (_BYTE)initWithPrivateDataSyncingEnabled:(_BYTE *)result;
- (int64_t)database:(id)database willEnqueueOperation:(id)operation error:(id *)error;
@end

@implementation FCCKDatabaseUserAuthenticationMiddleware

- (FCCKDatabaseUserAuthenticationMiddleware)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCCKDatabaseUserAuthenticationMiddleware init]";
    v10 = 2080;
    v11 = "FCCKDatabaseUserAuthenticationMiddleware.m";
    v12 = 1024;
    v13 = 21;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCCKDatabaseUserAuthenticationMiddleware init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (_BYTE)initWithPrivateDataSyncingEnabled:(_BYTE *)result
{
  if (result)
  {
    v3.receiver = result;
    v3.super_class = FCCKDatabaseUserAuthenticationMiddleware;
    result = objc_msgSendSuper2(&v3, sel_init);
    if (result)
    {
      result[8] = a2;
    }
  }

  return result;
}

- (int64_t)database:(id)database willEnqueueOperation:(id)operation error:(id *)error
{
  if (NSClassFromString(&cfstr_Xctest.isa))
  {
    return 0;
  }

  if (self)
  {
    return !self->_privateDataSyncingEnabled;
  }

  return 1;
}

@end