@interface HMMQueuingRTCBackendSession
+ (id)logCategory;
- (BOOL)sendMessage:(id)a3;
- (HMMQueuingRTCBackendSession)initWithServiceName:(id)a3 sessionUUID:(id)a4 isRealtime:(BOOL)a5 submitter:(id)a6 timeSourceBlock:(id)a7;
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
    v7 = [(HMMQueuingRTCBackendSession *)self submitter];
    v4 = [(NSMutableArray *)self->_queuedEvents copy];
    v5 = [(HMMQueuingRTCBackendSession *)self serviceName];
    v6 = [(HMMQueuingRTCBackendSession *)self sessionUUID];
    [v7 submitMessages:v4 serviceName:v5 sessionUUID:v6 isRealtime:{-[HMMQueuingRTCBackendSession isRealtime](self, "isRealtime")}];
  }
}

- (double)lastEventTime
{
  os_unfair_lock_lock_with_options();
  lastEventTime = self->_lastEventTime;
  os_unfair_lock_unlock(&self->_lock);
  return lastEventTime;
}

- (BOOL)sendMessage:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_isOpen)
  {
    [(NSMutableArray *)self->_queuedEvents addObject:v4];
    self->_lastEventTime = (*(self->_timeSourceBlock + 2))();
  }

  os_unfair_lock_unlock(&self->_lock);

  return 1;
}

- (HMMQueuingRTCBackendSession)initWithServiceName:(id)a3 sessionUUID:(id)a4 isRealtime:(BOOL)a5 submitter:(id)a6 timeSourceBlock:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = HMMQueuingRTCBackendSession;
  v17 = [(HMMQueuingRTCBackendSession *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_serviceName, a3);
    objc_storeStrong(&v18->_sessionUUID, a4);
    v18->_isRealtime = a5;
    objc_storeWeak(&v18->_submitter, v15);
    v19 = _Block_copy(v16);
    timeSourceBlock = v18->_timeSourceBlock;
    v18->_timeSourceBlock = v19;

    v18->_isOpen = 1;
    v21 = [MEMORY[0x277CBEB18] array];
    queuedEvents = v18->_queuedEvents;
    v18->_queuedEvents = v21;

    v18->_lastEventTime = v16[2](v16);
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