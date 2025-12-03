@interface NUAssertionHandler
+ (id)currentHandler;
- (NUAssertionHandler)init;
- (id)defaultPolicy;
- (id)defaultTestingPolicy;
- (id)newAssertionInfoInMethod:(SEL)method object:(id)object function:(id)function file:(id)file lineNumber:(unint64_t)number currentlyExecutingJobName:(id)name description:(id)description arguments:(char *)self0;
- (void)continueAfterAssertInFunction:(id)function file:(id)file lineNumber:(unint64_t)number currentlyExecutingJobName:(id)name description:(id)description arguments:(char *)arguments;
- (void)handleFailureInFunction:(id)function file:(id)file lineNumber:(int64_t)number currentlyExecutingJobName:(id)name description:(id)description;
- (void)handleFailureInFunction:(id)function file:(id)file lineNumber:(unint64_t)number currentlyExecutingJobName:(id)name description:(id)description arguments:(char *)arguments;
- (void)handleFailureInMethod:(SEL)method object:(id)object file:(id)file lineNumber:(int64_t)number currentlyExecutingJobName:(id)name description:(id)description;
@end

@implementation NUAssertionHandler

- (void)handleFailureInFunction:(id)function file:(id)file lineNumber:(int64_t)number currentlyExecutingJobName:(id)name description:(id)description
{
  v8 = [(NUAssertionHandler *)self newAssertionInfoInMethod:0 object:0 function:function file:file lineNumber:number currentlyExecutingJobName:name description:description arguments:&v10];
  [v8 setIsFatal:1];
  policy = [(NUAssertionHandler *)self policy];
  [policy notifyAssertion:v8];

  abort();
}

- (void)handleFailureInMethod:(SEL)method object:(id)object file:(id)file lineNumber:(int64_t)number currentlyExecutingJobName:(id)name description:(id)description
{
  v9 = [(NUAssertionHandler *)self newAssertionInfoInMethod:method object:object function:0 file:file lineNumber:number currentlyExecutingJobName:name description:description arguments:&v11];
  [v9 setIsFatal:1];
  policy = [(NUAssertionHandler *)self policy];
  [policy notifyAssertion:v9];

  abort();
}

- (void)continueAfterAssertInFunction:(id)function file:(id)file lineNumber:(unint64_t)number currentlyExecutingJobName:(id)name description:(id)description arguments:(char *)arguments
{
  v10 = [(NUAssertionHandler *)self newAssertionInfoInMethod:0 object:0 function:function file:file lineNumber:number currentlyExecutingJobName:name description:description arguments:arguments];
  [v10 setIsFatal:0];
  policy = [(NUAssertionHandler *)self policy];
  [policy notifyAssertion:v10];
}

- (void)handleFailureInFunction:(id)function file:(id)file lineNumber:(unint64_t)number currentlyExecutingJobName:(id)name description:(id)description arguments:(char *)arguments
{
  v9 = [(NUAssertionHandler *)self newAssertionInfoInMethod:0 object:0 function:function file:file lineNumber:number currentlyExecutingJobName:name description:description arguments:arguments];
  [v9 setIsFatal:1];
  policy = [(NUAssertionHandler *)self policy];
  [policy notifyAssertion:v9];

  abort();
}

- (id)newAssertionInfoInMethod:(SEL)method object:(id)object function:(id)function file:(id)file lineNumber:(unint64_t)number currentlyExecutingJobName:(id)name description:(id)description arguments:(char *)self0
{
  nameCopy = name;
  descriptionCopy = description;
  fileCopy = file;
  functionCopy = function;
  objectCopy = object;
  v20 = objc_alloc_init(NUAssertionInfo);
  [(NUAssertionInfo *)v20 setSelector:method];
  [(NUAssertionInfo *)v20 setObjectClass:objc_opt_class()];
  [(NUAssertionInfo *)v20 setFunctionName:functionCopy];

  v21 = objc_opt_class() == objectCopy;
  [(NUAssertionInfo *)v20 setIsClassMethod:v21];
  [(NUAssertionInfo *)v20 setFileName:fileCopy];

  [(NUAssertionInfo *)v20 setLineNumber:number];
  if (nameCopy)
  {
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"job: %@", nameCopy];
    [(NUAssertionInfo *)v20 setCurrentlyExecutingJobName:nameCopy];
  }

  else
  {
    [(NUAssertionInfo *)v20 setCurrentlyExecutingJobName:&stru_1F3F4BA98];
  }

  v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:descriptionCopy arguments:arguments];

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
    defaultTestingPolicy = [(NUAssertionHandler *)self defaultTestingPolicy];
  }

  else
  {
    defaultTestingPolicy = objc_alloc_init(NUAssertionPolicyUnique);
    v4 = objc_alloc_init(NUAssertionPolicyDebuggerWarning);
    [(NUAssertionPolicyComposite *)defaultTestingPolicy addPolicy:v4];

    v5 = objc_alloc_init(NUAssertionPolicyDebuggerFatal);
    [(NUAssertionPolicyComposite *)defaultTestingPolicy addPolicy:v5];

    v6 = objc_alloc_init(NUAssertionPolicyCrashReport);
    [(NUAssertionPolicyComposite *)defaultTestingPolicy addPolicy:v6];

    v7 = objc_alloc_init(NUAssertionPolicyAbort);
    [(NUAssertionPolicyComposite *)defaultTestingPolicy addPolicy:v7];
  }

  return defaultTestingPolicy;
}

- (NUAssertionHandler)init
{
  v6.receiver = self;
  v6.super_class = NUAssertionHandler;
  v2 = [(NUAssertionHandler *)&v6 init];
  defaultPolicy = [(NUAssertionHandler *)v2 defaultPolicy];
  policy = v2->_policy;
  v2->_policy = defaultPolicy;

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