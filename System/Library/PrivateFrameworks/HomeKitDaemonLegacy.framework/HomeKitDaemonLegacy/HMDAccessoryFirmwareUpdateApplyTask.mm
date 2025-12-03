@interface HMDAccessoryFirmwareUpdateApplyTask
- (BOOL)_isApplyAllowedByPolicy;
- (BOOL)shouldRun;
- (HMDAccessoryFirmwareUpdateApplyTask)initWithSession:(id)session profile:(id)profile policy:(id)policy userInitiated:(BOOL)initiated delay:(BOOL)delay;
- (HMDAccessoryFirmwareUpdatePolicy)policy;
- (id)criteria;
- (void)run;
@end

@implementation HMDAccessoryFirmwareUpdateApplyTask

- (HMDAccessoryFirmwareUpdatePolicy)policy
{
  WeakRetained = objc_loadWeakRetained(&self->_policy);

  return WeakRetained;
}

- (BOOL)_isApplyAllowedByPolicy
{
  policy = [(HMDAccessoryFirmwareUpdateApplyTask *)self policy];
  isUserInitiated = [(HMDAccessoryFirmwareUpdateApplyTask *)self isUserInitiated];
  status = 1;
  if (!isUserInitiated && policy)
  {
    status = [policy status];
  }

  return status;
}

- (void)run
{
  session = [(HMDAccessoryFirmwareUpdateTask *)self session];
  [session resumeWithState:2];
}

- (BOOL)shouldRun
{
  v27 = *MEMORY[0x277D85DE8];
  session = [(HMDAccessoryFirmwareUpdateTask *)self session];
  if (-[HMDAccessoryFirmwareUpdateTask shouldRunOnCurrentDevice](self, "shouldRunOnCurrentDevice") && [session isReadyToApplyUpdate] && objc_msgSend(session, "sessionState") == 2 && -[HMDAccessoryFirmwareUpdateApplyTask _isApplyAllowedByPolicy](self, "_isApplyAllowedByPolicy"))
  {
    v4 = 1;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      [session isReadyToApplyUpdate];
      v9 = HMFBooleanToString();
      [session sessionState];
      v10 = HMFBooleanToString();
      sessionState = [session sessionState];
      if ((sessionState - 1) > 2)
      {
        v12 = @"Up-To-Date";
      }

      else
      {
        v12 = off_27972C5C0[sessionState - 1];
      }

      v13 = v12;
      [(HMDAccessoryFirmwareUpdateApplyTask *)selfCopy _isApplyAllowedByPolicy];
      v14 = HMFBooleanToString();
      v17 = 138544386;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Apply task shouldn't run - readyForApply:%@ needsApply:%@ (%@) policyCheck: %@", &v17, 0x34u);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)criteria
{
  if ([(HMDAccessoryFirmwareUpdateApplyTask *)self isUserInitiated])
  {
    goto LABEL_2;
  }

  accessoryActiveTransport = [(HMDAccessoryFirmwareUpdateTask *)self accessoryActiveTransport];
  if (accessoryActiveTransport == 4)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v3, *MEMORY[0x277D86280], "com.apple.homed.firmwareUpdate.threadAccessory.apply.group");
    v5 = *MEMORY[0x277D86278];
    v6 = @"firmwareUpdateThreadAccessoryApplyConcurrentLimit";
LABEL_9:
    v9 = uint32ForPreference(v6);
    xpc_dictionary_set_uint64(v3, v5, v9);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86390], 1);
    goto LABEL_10;
  }

  if (accessoryActiveTransport != 3)
  {
    if (accessoryActiveTransport != 2)
    {
LABEL_2:
      v3 = 0;
      goto LABEL_11;
    }

    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v3, *MEMORY[0x277D86280], "com.apple.homed.firmwareUpdate.ipAccessory.apply.group");
    v5 = *MEMORY[0x277D86278];
    v6 = @"firmwareUpdateIPAccessoryApplyConcurrentLimit";
    goto LABEL_9;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, *MEMORY[0x277D86280], "com.apple.homed.firmwareUpdate.bleAccessory.apply.group");
  v7 = *MEMORY[0x277D86278];
  v8 = uint32ForPreference(@"firmwareUpdateBLEAccessoryApplyConcurrentLimit");
  xpc_dictionary_set_uint64(v3, v7, v8);
LABEL_10:
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86230], 1);
LABEL_11:

  return v3;
}

- (HMDAccessoryFirmwareUpdateApplyTask)initWithSession:(id)session profile:(id)profile policy:(id)policy userInitiated:(BOOL)initiated delay:(BOOL)delay
{
  delayCopy = delay;
  sessionCopy = session;
  profileCopy = profile;
  policyCopy = policy;
  v15 = 0.0;
  if (delayCopy && !initiated)
  {
    v16 = uint32ForPreference(@"firmwareUpdateApplyMinDelay");
    v17 = uint32ForPreference(@"firmwareUpdateApplyMaxDelay");
    v15 = (arc4random_uniform(1000 * (v17 - v16)) + 1000 * v16) / 1000.0;
  }

  v21.receiver = self;
  v21.super_class = HMDAccessoryFirmwareUpdateApplyTask;
  v18 = [(HMDAccessoryFirmwareUpdateTask *)&v21 initWithSession:sessionCopy profile:profileCopy initialDelay:v15];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_policy, policyCopy);
    v19->_userInitiated = initiated;
  }

  return v19;
}

@end