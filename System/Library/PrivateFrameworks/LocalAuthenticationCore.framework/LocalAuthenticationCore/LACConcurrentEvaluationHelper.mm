@interface LACConcurrentEvaluationHelper
+ (LACConcurrentEvaluationHelper)sharedInstance;
- (BOOL)isClientAllowListedWithClientInfo:(id)a3;
- (BOOL)isConcurrentEvaluationEnabledForClientInfo:(id)a3;
- (LACConcurrentEvaluationHelper)initWithAllowList:(id)a3 flags:(id)a4 sdkHelper:(id)a5;
@end

@implementation LACConcurrentEvaluationHelper

- (LACConcurrentEvaluationHelper)initWithAllowList:(id)a3 flags:(id)a4 sdkHelper:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = LACConcurrentEvaluationHelper;
  v12 = [(LACConcurrentEvaluationHelper *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_allowList, a3);
    objc_storeStrong(&v13->_flags, a4);
    objc_storeStrong(&v13->_sdkHelper, a5);
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

- (BOOL)isConcurrentEvaluationEnabledForClientInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([(LACConcurrentEvaluationHelper *)v5 isClientAllowListedWithClientInfo:v4])
  {
    v6 = 1;
  }

  else
  {
    v6 = [(LACConcurrentEvaluationHelper *)v5 isConcurrentEvaluationEnabled];
  }

  return v6;
}

- (BOOL)isClientAllowListedWithClientInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  v7.super.isa = v4;
  LOBYTE(self) = LACConcurrentEvaluationHelper.isClientAllowListed(with:)(v7);

  return self & 1;
}

@end