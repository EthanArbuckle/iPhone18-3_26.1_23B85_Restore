@interface GKRecoveryAttempter
+ (id)recoveryAttempterUsingHandler:(id)handler;
- (void)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index delegate:(id)delegate didRecoverSelector:(SEL)selector contextInfo:(void *)info;
@end

@implementation GKRecoveryAttempter

+ (id)recoveryAttempterUsingHandler:(id)handler
{
  handlerCopy = handler;
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [handlerCopy copy];

  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index delegate:(id)delegate didRecoverSelector:(SEL)selector contextInfo:(void *)info
{
  attemptRecovery = self->_attemptRecovery;
  v12 = attemptRecovery[2];
  delegateCopy = delegate;
  [delegateCopy selector];
}

@end