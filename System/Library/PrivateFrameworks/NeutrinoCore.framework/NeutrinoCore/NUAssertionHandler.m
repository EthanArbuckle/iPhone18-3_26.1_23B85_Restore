@interface NUAssertionHandler
+ (id)currentHandler;
- (NUAssertionHandler)init;
- (id)defaultPolicy;
- (id)defaultTestingPolicy;
- (id)newAssertionInfoInMethod:(SEL)a3 object:(id)a4 function:(id)a5 file:(id)a6 lineNumber:(unint64_t)a7 currentlyExecutingJobName:(id)a8 description:(id)a9 arguments:(char *)a10;
- (void)continueAfterAssertInFunction:(id)a3 file:(id)a4 lineNumber:(unint64_t)a5 currentlyExecutingJobName:(id)a6 description:(id)a7 arguments:(char *)a8;
- (void)handleFailureInFunction:(id)a3 file:(id)a4 lineNumber:(int64_t)a5 currentlyExecutingJobName:(id)a6 description:(id)a7;
- (void)handleFailureInFunction:(id)a3 file:(id)a4 lineNumber:(unint64_t)a5 currentlyExecutingJobName:(id)a6 description:(id)a7 arguments:(char *)a8;
- (void)handleFailureInMethod:(SEL)a3 object:(id)a4 file:(id)a5 lineNumber:(int64_t)a6 currentlyExecutingJobName:(id)a7 description:(id)a8;
@end

@implementation NUAssertionHandler

- (void)handleFailureInFunction:(id)a3 file:(id)a4 lineNumber:(int64_t)a5 currentlyExecutingJobName:(id)a6 description:(id)a7
{
  v8 = [(NUAssertionHandler *)self newAssertionInfoInMethod:0 object:0 function:a3 file:a4 lineNumber:a5 currentlyExecutingJobName:a6 description:a7 arguments:&v10];
  [v8 setIsFatal:1];
  v9 = [(NUAssertionHandler *)self policy];
  [v9 notifyAssertion:v8];

  abort();
}

- (void)handleFailureInMethod:(SEL)a3 object:(id)a4 file:(id)a5 lineNumber:(int64_t)a6 currentlyExecutingJobName:(id)a7 description:(id)a8
{
  v9 = [(NUAssertionHandler *)self newAssertionInfoInMethod:a3 object:a4 function:0 file:a5 lineNumber:a6 currentlyExecutingJobName:a7 description:a8 arguments:&v11];
  [v9 setIsFatal:1];
  v10 = [(NUAssertionHandler *)self policy];
  [v10 notifyAssertion:v9];

  abort();
}

- (void)continueAfterAssertInFunction:(id)a3 file:(id)a4 lineNumber:(unint64_t)a5 currentlyExecutingJobName:(id)a6 description:(id)a7 arguments:(char *)a8
{
  v10 = [(NUAssertionHandler *)self newAssertionInfoInMethod:0 object:0 function:a3 file:a4 lineNumber:a5 currentlyExecutingJobName:a6 description:a7 arguments:a8];
  [v10 setIsFatal:0];
  v9 = [(NUAssertionHandler *)self policy];
  [v9 notifyAssertion:v10];
}

- (void)handleFailureInFunction:(id)a3 file:(id)a4 lineNumber:(unint64_t)a5 currentlyExecutingJobName:(id)a6 description:(id)a7 arguments:(char *)a8
{
  v9 = [(NUAssertionHandler *)self newAssertionInfoInMethod:0 object:0 function:a3 file:a4 lineNumber:a5 currentlyExecutingJobName:a6 description:a7 arguments:a8];
  [v9 setIsFatal:1];
  v10 = [(NUAssertionHandler *)self policy];
  [v10 notifyAssertion:v9];

  abort();
}

- (id)newAssertionInfoInMethod:(SEL)a3 object:(id)a4 function:(id)a5 file:(id)a6 lineNumber:(unint64_t)a7 currentlyExecutingJobName:(id)a8 description:(id)a9 arguments:(char *)a10
{
  v15 = a8;
  v16 = a9;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = objc_alloc_init(NUAssertionInfo);
  [(NUAssertionInfo *)v20 setSelector:a3];
  [(NUAssertionInfo *)v20 setObjectClass:objc_opt_class()];
  [(NUAssertionInfo *)v20 setFunctionName:v18];

  v21 = objc_opt_class() == v19;
  [(NUAssertionInfo *)v20 setIsClassMethod:v21];
  [(NUAssertionInfo *)v20 setFileName:v17];

  [(NUAssertionInfo *)v20 setLineNumber:a7];
  if (v15)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"job: %@", v15];
    [(NUAssertionInfo *)v20 setCurrentlyExecutingJobName:v22];
  }

  else
  {
    [(NUAssertionInfo *)v20 setCurrentlyExecutingJobName:&stru_1F3F4BA98];
  }

  v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v16 arguments:a10];

  [(NUAssertionInfo *)v20 setMessage:v23];
  return v20;
}

- (id)defaultTestingPolicy
{
  v2 = objc_alloc_init(NUAssertionPolicyComposite);
  v3 = objc_alloc_init(NUAssertionPolicyUnitTest);
  [(NUAssertionPolicyComposite *)v2 addPolicy:v3];

  return v2;
}

- (id)defaultPolicy
{
  if (+[NUAssertionHandler runningUnitTests])
  {
    v3 = [(NUAssertionHandler *)self defaultTestingPolicy];
  }

  else
  {
    v3 = objc_alloc_init(NUAssertionPolicyUnique);
    v4 = objc_alloc_init(NUAssertionPolicyDebuggerWarning);
    [(NUAssertionPolicyComposite *)v3 addPolicy:v4];

    v5 = objc_alloc_init(NUAssertionPolicyDebuggerFatal);
    [(NUAssertionPolicyComposite *)v3 addPolicy:v5];

    v6 = objc_alloc_init(NUAssertionPolicyCrashReport);
    [(NUAssertionPolicyComposite *)v3 addPolicy:v6];

    v7 = objc_alloc_init(NUAssertionPolicyAbort);
    [(NUAssertionPolicyComposite *)v3 addPolicy:v7];
  }

  return v3;
}

- (NUAssertionHandler)init
{
  v6.receiver = self;
  v6.super_class = NUAssertionHandler;
  v2 = [(NUAssertionHandler *)&v6 init];
  v3 = [(NUAssertionHandler *)v2 defaultPolicy];
  policy = v2->_policy;
  v2->_policy = v3;

  return v2;
}

+ (id)currentHandler
{
  if (currentHandler_onceToken != -1)
  {
    dispatch_once(&currentHandler_onceToken, &__block_literal_global_29090);
  }

  v3 = currentHandler_handler;

  return v3;
}

uint64_t __36__NUAssertionHandler_currentHandler__block_invoke()
{
  v0 = objc_alloc_init(NUAssertionHandler);
  v1 = currentHandler_handler;
  currentHandler_handler = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end