@interface CIDVUIBiometricReplacementFlowManager
- (CIDVUIBiometricReplacementFlowManager)init;
- (void)beginBiometricReplacement:(id)replacement;
- (void)beginBiometricReplacementForWatch:(id)watch;
- (void)beginBiometricReplacementWithAuthenticationHandler:(id)handler andCompletion:(id)completion;
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

- (void)beginBiometricReplacement:(id)replacement
{
  replacementCopy = replacement;
  biometricReplacementFlowManager = [(CIDVUIBiometricReplacementFlowManager *)self biometricReplacementFlowManager];
  [biometricReplacementFlowManager beginBiometricReplacementForTarget:1 withAuthHandler:replacementCopy andCompletionHandler:0];
}

- (void)beginBiometricReplacementForWatch:(id)watch
{
  watchCopy = watch;
  biometricReplacementFlowManager = [(CIDVUIBiometricReplacementFlowManager *)self biometricReplacementFlowManager];
  [biometricReplacementFlowManager beginBiometricReplacementForTarget:2 withAuthHandler:watchCopy andCompletionHandler:0];
}

- (void)beginBiometricReplacementWithAuthenticationHandler:(id)handler andCompletion:(id)completion
{
  completionCopy = completion;
  handlerCopy = handler;
  biometricReplacementFlowManager = [(CIDVUIBiometricReplacementFlowManager *)self biometricReplacementFlowManager];
  [biometricReplacementFlowManager beginBiometricReplacementForTarget:1 withAuthHandler:handlerCopy andCompletionHandler:completionCopy];
}

@end