@interface LACConcurrentEvaluationHelper
+ (LACConcurrentEvaluationHelper)sharedInstance;
- (BOOL)isClientAllowListedWithClientInfo:(id)info;
- (BOOL)isConcurrentEvaluationEnabledForClientInfo:(id)info;
- (LACConcurrentEvaluationHelper)initWithAllowList:(id)list flags:(id)flags sdkHelper:(id)helper;
@end

@implementation LACConcurrentEvaluationHelper

- (LACConcurrentEvaluationHelper)initWithAllowList:(id)list flags:(id)flags sdkHelper:(id)helper
{
  listCopy = list;
  flagsCopy = flags;
  helperCopy = helper;
  v15.receiver = self;
  v15.super_class = LACConcurrentEvaluationHelper;
  v12 = [(LACConcurrentEvaluationHelper *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_allowList, list);
    objc_storeStrong(&v13->_flags, flags);
    objc_storeStrong(&v13->_sdkHelper, helper);
    v13->_minSDKVersion = 0;
  }

  return v13;
}

+ (LACConcurrentEvaluationHelper)sharedInstance
{
  if (sharedInstance_onceToken_17 != -1)
  {
    +[LACConcurrentEvaluationHelper sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_15;

  return v3;
}

void __47__LACConcurrentEvaluationHelper_sharedInstance__block_invoke()
{
  v0 = [LACConcurrentEvaluationHelper alloc];
  v5 = +[_TtC23LocalAuthenticationCore32LACConcurrentEvaluationAllowList defaultInstance];
  v1 = +[LACFlags sharedInstance];
  v2 = +[LACSDKHelper sharedInstance];
  v3 = [(LACConcurrentEvaluationHelper *)v0 initWithAllowList:v5 flags:v1 sdkHelper:v2];
  v4 = sharedInstance_sharedInstance_15;
  sharedInstance_sharedInstance_15 = v3;
}

- (BOOL)isConcurrentEvaluationEnabledForClientInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  if ([(LACConcurrentEvaluationHelper *)selfCopy isClientAllowListedWithClientInfo:infoCopy])
  {
    isConcurrentEvaluationEnabled = 1;
  }

  else
  {
    isConcurrentEvaluationEnabled = [(LACConcurrentEvaluationHelper *)selfCopy isConcurrentEvaluationEnabled];
  }

  return isConcurrentEvaluationEnabled;
}

- (BOOL)isClientAllowListedWithClientInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  v7.super.isa = infoCopy;
  LOBYTE(self) = LACConcurrentEvaluationHelper.isClientAllowListed(with:)(v7);

  return self & 1;
}

@end