@interface MLRTrialTask
- (MLRTrialTask)initWithTriClient:(id)client;
- (id)description;
@end

@implementation MLRTrialTask

- (MLRTrialTask)initWithTriClient:(id)client
{
  coreChannel = [MEMORY[0x277D05600] coreChannel];
  if (os_log_type_enabled(coreChannel, OS_LOG_TYPE_ERROR))
  {
    [MLRTrialTask initWithTriClient:coreChannel];
  }

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@(%@)\n", v5, self->_triClient];

  return v6;
}

@end