@interface CFXThermalPolicyManager
- (CFXThermalPolicyManager)init;
- (void)CFX_notifyPolicyChanged;
- (void)cameraFPSForThermalLevel:(int)level deviceType:(id)type minRate:(int *)rate maxRate:(int *)maxRate;
- (void)setRecordingPolicy:(BOOL)policy;
@end

@implementation CFXThermalPolicyManager

- (void)setRecordingPolicy:(BOOL)policy
{
  if (self->_recordingPolicy != policy)
  {
    policyCopy = policy;
    self->_recordingPolicy = policy;
    policyManager = [(CFXThermalPolicyManager *)self policyManager];
    [policyManager setPolicyType:objc_opt_class() active:policyCopy];

    [(CFXThermalPolicyManager *)self CFX_notifyPolicyChanged];
  }
}

- (CFXThermalPolicyManager)init
{
  v7.receiver = self;
  v7.super_class = CFXThermalPolicyManager;
  v2 = [(CFXThermalPolicyManager *)&v7 init];
  v3 = objc_alloc_init(CFXDefaultThermalPolicy);
  v4 = [[JFXThermalPolicyManager alloc] initWithDefaultPolicy:v3];
  policyManager = v2->_policyManager;
  v2->_policyManager = v4;

  return v2;
}

- (void)cameraFPSForThermalLevel:(int)level deviceType:(id)type minRate:(int *)rate maxRate:(int *)maxRate
{
  v8 = *&level;
  typeCopy = type;
  policyManager = [(CFXThermalPolicyManager *)self policyManager];
  highestPriorityPolicy = [policyManager highestPriorityPolicy];

  [highestPriorityPolicy cameraFPSForThermalLevel:v8 deviceType:typeCopy minRate:rate maxRate:maxRate];
}

- (void)CFX_notifyPolicyChanged
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = JFXLog_thermals();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    policyManager = [(CFXThermalPolicyManager *)self policyManager];
    highestPriorityPolicy = [policyManager highestPriorityPolicy];
    *buf = 138412290;
    v8 = highestPriorityPolicy;
    _os_log_impl(&dword_242A3B000, v3, OS_LOG_TYPE_DEFAULT, "Thermal Policy Changed:\n\t%@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CFXThermalPolicyManager_CFX_notifyPolicyChanged__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__CFXThermalPolicyManager_CFX_notifyPolicyChanged__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"JFXThermalPolicyChangedNotification" object:*(a1 + 32)];
}

@end