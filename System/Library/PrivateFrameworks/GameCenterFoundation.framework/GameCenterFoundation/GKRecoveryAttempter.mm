@interface GKRecoveryAttempter
+ (id)recoveryAttempterUsingHandler:(id)a3;
- (void)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4 delegate:(id)a5 didRecoverSelector:(SEL)a6 contextInfo:(void *)a7;
@end

@implementation GKRecoveryAttempter

+ (id)recoveryAttempterUsingHandler:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [v3 copy];

  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4 delegate:(id)a5 didRecoverSelector:(SEL)a6 contextInfo:(void *)a7
{
  attemptRecovery = self->_attemptRecovery;
  v12 = attemptRecovery[2];
  v13 = a5;
  [v13 a6];
}

@end