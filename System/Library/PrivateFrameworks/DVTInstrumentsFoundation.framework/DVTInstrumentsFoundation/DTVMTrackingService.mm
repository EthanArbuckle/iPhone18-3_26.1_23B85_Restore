@interface DTVMTrackingService
+ (void)registerCapabilities:(id)capabilities;
- (id)requestVMSnapshot;
- (void)messageReceived:(id)received;
- (void)setTargetPid:(id)pid referenceDate:(id)date;
@end

@implementation DTVMTrackingService

+ (void)registerCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.vmtracking" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.vmtracking.immediate" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.vmtracking.deferred" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.dt.services.capabilities.vmtracking" withVersion:1 forClass:self];
}

- (void)messageReceived:(id)received
{
  receivedCopy = received;
  if (*MEMORY[0x277D03698] == receivedCopy)
  {
    targetTask = self->_targetTask;
    if (targetTask + 1 >= 2)
    {
      v6 = receivedCopy;
      mach_port_deallocate(*MEMORY[0x277D85F48], targetTask);
      receivedCopy = v6;
      self->_targetTask = 0;
    }
  }
}

- (void)setTargetPid:(id)pid referenceDate:(id)date
{
  pidCopy = pid;
  v5 = +[DTInstrumentServer taskForPid:](DTInstrumentServer, "taskForPid:", [pidCopy intValue]);
  self->_targetTask = v5;
  if (v5 + 1 >= 2)
  {
    self->_targetPid = [pidCopy intValue];
  }
}

- (id)requestVMSnapshot
{
  v3 = [XRVMState currentStateForTask:self->_targetTask pid:self->_targetPid previousState:self->_currentState dehydratedDiffVersion:1];
  objc_storeStrong(&self->_currentState, v3);

  return v3;
}

@end