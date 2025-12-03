@interface CRKNetworkPowerAssertion
+ (id)sharedInstance;
+ (void)decrement;
+ (void)increment;
- (CRKNetworkPowerAssertion)init;
- (void)decrement;
- (void)increment;
@end

@implementation CRKNetworkPowerAssertion

- (CRKNetworkPowerAssertion)init
{
  v14.receiver = self;
  v14.super_class = CRKNetworkPowerAssertion;
  v2 = [(CRKNetworkPowerAssertion *)&v14 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    v6 = MEMORY[0x277CCABB0];
    processInfo2 = [MEMORY[0x277CCAC38] processInfo];
    v8 = [v6 numberWithInt:{objc_msgSend(processInfo2, "processIdentifier")}];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v3 stringWithFormat:@"%@:%@:%@:%p", processName, v8, v10, v2];
    name = v2->_name;
    v2->_name = v11;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CRKNetworkPowerAssertion sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __42__CRKNetworkPowerAssertion_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (void)increment
{
  sharedInstance = [self sharedInstance];
  [sharedInstance increment];
}

- (void)increment
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(CRKNetworkPowerAssertion *)self count])
  {
    IOPMAssertionRetain(self->mPowerAssertion);
    v3 = [(CRKNetworkPowerAssertion *)self count]+ 1;
    selfCopy2 = self;
LABEL_3:
    [(CRKNetworkPowerAssertion *)selfCopy2 setCount:v3];
    goto LABEL_9;
  }

  if (CRKIsiOS())
  {
    v5 = @"PreventUserIdleSystemSleep";
  }

  else
  {
    v5 = @"NetworkClientActive";
  }

  name = [(CRKNetworkPowerAssertion *)self name];
  v7 = IOPMAssertionCreateWithName(v5, 0xFFu, name, &self->mPowerAssertion);

  if (!v7)
  {
    selfCopy2 = self;
    v3 = 1;
    goto LABEL_3;
  }

  self->mPowerAssertion = 0;
LABEL_9:
  v8 = _CRKLogGeneral_10();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = [(CRKNetworkPowerAssertion *)self count];
    _os_log_impl(&dword_243550000, v8, OS_LOG_TYPE_DEFAULT, "Incrementing network power assertion to %ld", &v9, 0xCu);
  }
}

+ (void)decrement
{
  sharedInstance = [self sharedInstance];
  [sharedInstance decrement];
}

- (void)decrement
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = objc_opt_class();
  v6 = 2048;
  v7 = [self count];
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Unbalanced number of calls to increment/decrement. self.count = %lu", &v4, 0x16u);
}

@end