@interface CIDVUIBiometricReplacementFlowManager
- (CIDVUIBiometricReplacementFlowManager)init;
- (void)beginBiometricReplacement:(id)a3;
- (void)beginBiometricReplacementForWatch:(id)a3;
- (void)beginBiometricReplacementWithAuthenticationHandler:(id)a3 andCompletion:(id)a4;
@end

@implementation CIDVUIBiometricReplacementFlowManager

- (CIDVUIBiometricReplacementFlowManager)init
{
  v5.receiver = self;
  v5.super_class = CIDVUIBiometricReplacementFlowManager;
  v2 = [(CIDVUIBiometricReplacementFlowManager *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC9CoreIDVUI45CIDVUIInternalBiometricReplacementFlowManager);
    [(CIDVUIBiometricReplacementFlowManager *)v2 setBiometricReplacementFlowManager:v3];
  }

  return v2;
}

- (void)beginBiometricReplacement:(id)a3
{
  v4 = a3;
  v5 = [(CIDVUIBiometricReplacementFlowManager *)self biometricReplacementFlowManager];
  [v5 beginBiometricReplacementForTarget:1 withAuthHandler:v4 andCompletionHandler:0];
}

- (void)beginBiometricReplacementForWatch:(id)a3
{
  v4 = a3;
  v5 = [(CIDVUIBiometricReplacementFlowManager *)self biometricReplacementFlowManager];
  [v5 beginBiometricReplacementForTarget:2 withAuthHandler:v4 andCompletionHandler:0];
}

- (void)beginBiometricReplacementWithAuthenticationHandler:(id)a3 andCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CIDVUIBiometricReplacementFlowManager *)self biometricReplacementFlowManager];
  [v8 beginBiometricReplacementForTarget:1 withAuthHandler:v7 andCompletionHandler:v6];
}

@end