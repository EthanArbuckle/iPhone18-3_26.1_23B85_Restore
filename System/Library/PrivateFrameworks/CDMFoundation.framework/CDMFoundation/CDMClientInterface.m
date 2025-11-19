@interface CDMClientInterface
- (BOOL)areAssetsAvailable:(id)a3;
- (BOOL)isLighthouseAPIEnabled;
- (BOOL)registerWithAssetsDelegate:(id)a3 withType:(int64_t)a4;
- (CDMClientInterface)init;
- (CDMClientInterface)initWithCallingBundleId:(id)a3;
- (CDMClientInterface)initWithDelegate:(id)a3;
- (id)createNSError:(id)a3 errorCode:(int64_t)a4;
- (void)doHandleCommand:(id)a3 forCallback:(id)a4;
- (void)doServiceCenterInitWithConfig:(id)a3;
- (void)processCDMNluRequest:(id)a3;
- (void)processCDMNluRequest:(id)a3 completionHandler:(id)a4;
- (void)setup:(id)a3;
- (void)setup:(id)a3 completionHandler:(id)a4;
- (void)warmupWithCompletionHandler:(id)a3;
@end

@implementation CDMClientInterface

- (id)createNSError:(id)a3 errorCode:(int64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v15 = "[CDMClientInterface createNSError:errorCode:]";
    v16 = 2112;
    v17 = v5;
    _os_log_error_impl(&dword_1DC287000, v6, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
  }

  v7 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A578];
  v13 = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v9 = [v7 errorWithDomain:@"CDMClientErrorDomain" code:a4 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)isLighthouseAPIEnabled
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)doHandleCommand:(id)a3 forCallback:(id)a4
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"You must override %@ in a subclass", v6}];
}

- (void)doServiceCenterInitWithConfig:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"You must override %@ in a subclass", v5}];
}

- (void)processCDMNluRequest:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"You must override %@ in a subclass", v5}];
}

- (void)processCDMNluRequest:(id)a3 completionHandler:(id)a4
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"You must override %@ in a subclass", v6}];
}

- (void)warmupWithCompletionHandler:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"You must override %@ in a subclass", v5}];
}

- (void)setup:(id)a3 completionHandler:(id)a4
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"You must override %@ in a subclass", v6}];
}

- (void)setup:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"You must override %@ in a subclass", v5}];
}

- (BOOL)registerWithAssetsDelegate:(id)a3 withType:(int64_t)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D930];
  v8 = MEMORY[0x1E696AEC0];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"You must override %@ in a subclass", v9];
  v11 = [v6 exceptionWithName:v7 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (BOOL)areAssetsAvailable:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (CDMClientInterface)initWithCallingBundleId:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (CDMClientInterface)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (CDMClientInterface)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end