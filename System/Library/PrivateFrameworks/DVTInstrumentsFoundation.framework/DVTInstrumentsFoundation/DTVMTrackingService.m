@interface DTVMTrackingService
+ (void)registerCapabilities:(id)a3;
- (id)requestVMSnapshot;
- (void)messageReceived:(id)a3;
- (void)setTargetPid:(id)a3 referenceDate:(id)a4;
@end

@implementation DTVMTrackingService

+ (void)registerCapabilities:(id)a3
{
  v4 = a3;
  [v4 publishCapability:@"com.apple.instruments.server.services.vmtracking" withVersion:1 forClass:a1];
  [v4 publishCapability:@"com.apple.instruments.server.services.vmtracking.immediate" withVersion:1 forClass:a1];
  [v4 publishCapability:@"com.apple.instruments.server.services.vmtracking.deferred" withVersion:1 forClass:a1];
  [v4 publishCapability:@"com.apple.dt.services.capabilities.vmtracking" withVersion:1 forClass:a1];
}

- (void)messageReceived:(id)a3
{
  v4 = a3;
  if (*MEMORY[0x277D03698] == v4)
  {
    targetTask = self->_targetTask;
    if (targetTask + 1 >= 2)
    {
      v6 = v4;
      mach_port_deallocate(*MEMORY[0x277D85F48], targetTask);
      v4 = v6;
      self->_targetTask = 0;
    }
  }
}

- (void)setTargetPid:(id)a3 referenceDate:(id)a4
{
  v6 = a3;
  v5 = +[DTInstrumentServer taskForPid:](DTInstrumentServer, "taskForPid:", [v6 intValue]);
  self->_targetTask = v5;
  if (v5 + 1 >= 2)
  {
    self->_targetPid = [v6 intValue];
  }
}

- (id)requestVMSnapshot
{
  v3 = [XRVMState currentStateForTask:self->_targetTask pid:self->_targetPid previousState:self->_currentState dehydratedDiffVersion:1];
  objc_storeStrong(&self->_currentState, v3);

  return v3;
}

@end