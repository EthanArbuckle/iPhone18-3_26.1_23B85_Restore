@interface _DKSyncRapportStorage
- (_DKSyncRapportStorage)init;
- (void)registerRequestIDsWithClient:(id)a3;
- (void)start;
@end

@implementation _DKSyncRapportStorage

- (_DKSyncRapportStorage)init
{
  v6.receiver = self;
  v6.super_class = _DKSyncRapportStorage;
  v2 = [(_DKSyncRapportStorage *)&v6 init];
  if (v2)
  {
    v3 = +[_DKSyncRapportCommonStorage sharedInstance];
    commonStorage = v2->_commonStorage;
    v2->_commonStorage = v3;
  }

  return v2;
}

- (void)registerRequestIDsWithClient:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Should not be called" userInfo:0];
  objc_exception_throw(v4);
}

- (void)start
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

@end