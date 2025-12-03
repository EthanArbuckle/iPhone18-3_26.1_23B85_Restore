@interface HMMQueuingRTCBackendSession
+ (id)logCategory;
- (BOOL)sendMessage:(id)message;
- (HMMQueuingRTCBackendSession)initWithServiceName:(id)name sessionUUID:(id)d isRealtime:(BOOL)realtime submitter:(id)submitter timeSourceBlock:(id)block;
- (_HMMLogBackendSubmitterDelegate)submitter;
- (double)lastEventTime;
- (void)close;
- (void)dealloc;
@end

@implementation HMMQueuingRTCBackendSession

- (_HMMLogBackendSubmitterDelegate)submitter
{
  WeakRetained = objc_loadWeakRetained(&self->_submitter);

  return WeakRetained;
}

- (void)dealloc
{
  [(HMMQueuingRTCBackendSession *)self close];
  v3.receiver = self;
  v3.super_class = HMMQueuingRTCBackendSession;
  [(HMMQueuingRTCBackendSession *)&v3 dealloc];
}

- (void)close
{
  os_unfair_lock_lock_with_options();
  isOpen = self->_isOpen;
  self->_isOpen = 0;
  os_unfair_lock_unlock(&self->_lock);
  if (isOpen && [(NSMutableArray *)self->_queuedEvents count])
  {
    submitter = [(HMMQueuingRTCBackendSession *)self submitter];
    v4 = [(NSMutableArray *)self->_queuedEvents copy];
    serviceName = [(HMMQueuingRTCBackendSession *)self serviceName];
    sessionUUID = [(HMMQueuingRTCBackendSession *)self sessionUUID];
    [submitter submitMessages:v4 serviceName:serviceName sessionUUID:sessionUUID isRealtime:{-[HMMQueuingRTCBackendSession isRealtime](self, "isRealtime")}];
  }
}

- (double)lastEventTime
{
  os_unfair_lock_lock_with_options();
  lastEventTime = self->_lastEventTime;
  os_unfair_lock_unlock(&self->_lock);
  return lastEventTime;
}

- (BOOL)sendMessage:(id)message
{
  messageCopy = message;
  os_unfair_lock_lock_with_options();
  if (self->_isOpen)
  {
    [(NSMutableArray *)self->_queuedEvents addObject:messageCopy];
    self->_lastEventTime = (*(self->_timeSourceBlock + 2))();
  }

  os_unfair_lock_unlock(&self->_lock);

  return 1;
}

- (HMMQueuingRTCBackendSession)initWithServiceName:(id)name sessionUUID:(id)d isRealtime:(BOOL)realtime submitter:(id)submitter timeSourceBlock:(id)block
{
  nameCopy = name;
  dCopy = d;
  submitterCopy = submitter;
  blockCopy = block;
  v24.receiver = self;
  v24.super_class = HMMQueuingRTCBackendSession;
  v17 = [(HMMQueuingRTCBackendSession *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_serviceName, name);
    objc_storeStrong(&v18->_sessionUUID, d);
    v18->_isRealtime = realtime;
    objc_storeWeak(&v18->_submitter, submitterCopy);
    v19 = _Block_copy(blockCopy);
    timeSourceBlock = v18->_timeSourceBlock;
    v18->_timeSourceBlock = v19;

    v18->_isOpen = 1;
    array = [MEMORY[0x277CBEB18] array];
    queuedEvents = v18->_queuedEvents;
    v18->_queuedEvents = array;

    v18->_lastEventTime = blockCopy[2](blockCopy);
  }

  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3, &__block_literal_global_307);
  }

  v3 = logCategory__hmf_once_v4;

  return v3;
}

uint64_t __42__HMMQueuingRTCBackendSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1C0];
  logCategory__hmf_once_v4 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end