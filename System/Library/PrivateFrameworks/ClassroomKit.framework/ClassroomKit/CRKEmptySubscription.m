@interface CRKEmptySubscription
+ (id)errorSubscriptionWithReason:(id)a3;
@end

@implementation CRKEmptySubscription

+ (id)errorSubscriptionWithReason:(id)a3
{
  v3 = a3;
  if (_CRKLogGeneral_onceToken_13 != -1)
  {
    +[CRKEmptySubscription errorSubscriptionWithReason:];
  }

  v4 = _CRKLogGeneral_logObj_13;
  if (os_log_type_enabled(_CRKLogGeneral_logObj_13, OS_LOG_TYPE_ERROR))
  {
    [(CRKEmptySubscription *)v3 errorSubscriptionWithReason:v4];
  }

  v5 = objc_opt_new();

  return v5;
}

+ (void)errorSubscriptionWithReason:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Creating empty subscription for reason: %{public}@", &v2, 0xCu);
}

@end