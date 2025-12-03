@interface CDMClientInterface
- (BOOL)areAssetsAvailable:(id)available;
- (BOOL)isLighthouseAPIEnabled;
- (BOOL)registerWithAssetsDelegate:(id)delegate withType:(int64_t)type;
- (CDMClientInterface)init;
- (CDMClientInterface)initWithCallingBundleId:(id)id;
- (CDMClientInterface)initWithDelegate:(id)delegate;
- (id)createNSError:(id)error errorCode:(int64_t)code;
- (void)doHandleCommand:(id)command forCallback:(id)callback;
- (void)doServiceCenterInitWithConfig:(id)config;
- (void)processCDMNluRequest:(id)request;
- (void)processCDMNluRequest:(id)request completionHandler:(id)handler;
- (void)setup:(id)setup;
- (void)setup:(id)setup completionHandler:(id)handler;
- (void)warmupWithCompletionHandler:(id)handler;
@end

@implementation CDMClientInterface

- (id)createNSError:(id)error errorCode:(int64_t)code
{
  v18 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v15 = "[CDMClientInterface createNSError:errorCode:]";
    v16 = 2112;
    v17 = errorCopy;
    _os_log_error_impl(&dword_1DC287000, v6, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
  }

  v7 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A578];
  v13 = errorCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v9 = [v7 errorWithDomain:@"CDMClientErrorDomain" code:code userInfo:v8];

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

- (void)doHandleCommand:(id)command forCallback:(id)callback
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"You must override %@ in a subclass", v6}];
}

- (void)doServiceCenterInitWithConfig:(id)config
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"You must override %@ in a subclass", v5}];
}

- (void)processCDMNluRequest:(id)request
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"You must override %@ in a subclass", v5}];
}

- (void)processCDMNluRequest:(id)request completionHandler:(id)handler
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"You must override %@ in a subclass", v6}];
}

- (void)warmupWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"You must override %@ in a subclass", v5}];
}

- (void)setup:(id)setup completionHandler:(id)handler
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"You must override %@ in a subclass", v6}];
}

- (void)setup:(id)setup
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"You must override %@ in a subclass", v5}];
}

- (BOOL)registerWithAssetsDelegate:(id)delegate withType:(int64_t)type
{
  delegateCopy = delegate;
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D930];
  v8 = MEMORY[0x1E696AEC0];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"You must override %@ in a subclass", v9];
  v11 = [v6 exceptionWithName:v7 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (BOOL)areAssetsAvailable:(id)available
{
  availableCopy = available;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (CDMClientInterface)initWithCallingBundleId:(id)id
{
  idCopy = id;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (CDMClientInterface)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
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