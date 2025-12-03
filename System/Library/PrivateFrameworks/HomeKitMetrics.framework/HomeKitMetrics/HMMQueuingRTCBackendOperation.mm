@interface HMMQueuingRTCBackendOperation
+ (id)logCategory;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (HMMQueuingRTCBackendOperation)initWithMessages:(id)messages serviceName:(id)name sessionUUID:(id)d isRealtime:(BOOL)realtime rtcFactory:(id)factory staleSessionBlock:(id)block;
- (void)changeOperationState:(int64_t)state;
- (void)start;
@end

@implementation HMMQueuingRTCBackendOperation

- (BOOL)isFinished
{
  os_unfair_lock_lock_with_options();
  v3 = self->_operationState == 2;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)isExecuting
{
  os_unfair_lock_lock_with_options();
  v3 = self->_operationState == 1;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)changeOperationState:(int64_t)state
{
  operationState = self->_operationState;
  v6 = state == 1 || operationState == 1;
  v7 = v6;
  if (v6)
  {
    [(HMMQueuingRTCBackendOperation *)self willChangeValueForKey:@"executing"];
  }

  v8 = state == 2 || operationState == 2;
  v9 = v8;
  if (v8)
  {
    [(HMMQueuingRTCBackendOperation *)self willChangeValueForKey:@"finished"];
  }

  os_unfair_lock_lock_with_options();
  self->_operationState = state;
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    [(HMMQueuingRTCBackendOperation *)self didChangeValueForKey:@"executing"];
  }

  if (v9)
  {

    [(HMMQueuingRTCBackendOperation *)self didChangeValueForKey:@"finished"];
  }
}

- (void)start
{
  if ([(HMMQueuingRTCBackendOperation *)self isCancelled])
  {

    [(HMMQueuingRTCBackendOperation *)self changeOperationState:2];
  }

  else
  {
    [(HMMQueuingRTCBackendOperation *)self changeOperationState:1];
    rtcFactory = [(HMMQueuingRTCBackendOperation *)self rtcFactory];
    serviceName = [(HMMQueuingRTCBackendOperation *)self serviceName];
    sessionUUID = [(HMMQueuingRTCBackendOperation *)self sessionUUID];
    v6 = [rtcFactory sessionWithServiceName:serviceName samplingUUID:sessionUUID containsRealtime:{-[HMMQueuingRTCBackendOperation isRealtime](self, "isRealtime")}];

    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __38__HMMQueuingRTCBackendOperation_start__block_invoke;
    v12 = &unk_2786F8F20;
    selfCopy = self;
    v14 = v6;
    v7 = v6;
    [v7 startConfigurationWithCompletionHandler:&v9];
    v8 = [(HMMQueuingRTCBackendOperation *)self staleSessionBlock:v9];
    v8[2]();
  }
}

void __38__HMMQueuingRTCBackendOperation_start__block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v24 = v3;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [*(a1 + 32) messages];
    v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v5)
    {
      v6 = v5;
      v27 = *v29;
      v26 = *MEMORY[0x277D43FF0];
      v7 = *MEMORY[0x277D44008];
      v8 = *MEMORY[0x277D44000];
      v9 = *MEMORY[0x277D43FF8];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v29 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          v12 = *(a1 + 40);
          v13 = [*(a1 + 32) isRealtime];
          v33[0] = v26;
          v33[1] = v7;
          *buf = &unk_283EF3CA8;
          *&buf[8] = &unk_283EF3CA8;
          v33[2] = v8;
          v33[3] = v9;
          v14 = &unk_283EF3CC0;
          if (v13)
          {
            v14 = &unk_283EF3CA8;
          }

          *&buf[16] = v11;
          v35 = v14;
          v15 = MEMORY[0x277CBEAC0];
          v16 = v11;
          v17 = [v15 dictionaryWithObjects:buf forKeys:v33 count:4];

          [v12 sendMessageWithDictionary:v17 error:0];
        }

        v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v6);
    }

    v4 = v24;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [*(a1 + 32) serviceName];
      *buf = 138543618;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = v22;
      _os_log_impl(&dword_22B074000, v20, OS_LOG_TYPE_ERROR, "%{public}@No configured RTC backends for service %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  [*(a1 + 32) changeOperationState:2];

  v23 = *MEMORY[0x277D85DE8];
}

- (HMMQueuingRTCBackendOperation)initWithMessages:(id)messages serviceName:(id)name sessionUUID:(id)d isRealtime:(BOOL)realtime rtcFactory:(id)factory staleSessionBlock:(id)block
{
  messagesCopy = messages;
  nameCopy = name;
  dCopy = d;
  factoryCopy = factory;
  blockCopy = block;
  v25.receiver = self;
  v25.super_class = HMMQueuingRTCBackendOperation;
  v18 = [(HMMQueuingRTCBackendOperation *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_messages, messages);
    objc_storeStrong(&v19->_serviceName, name);
    objc_storeStrong(&v19->_sessionUUID, d);
    v19->_isRealtime = realtime;
    objc_storeStrong(&v19->_rtcFactory, factory);
    v20 = _Block_copy(blockCopy);
    staleSessionBlock = v19->_staleSessionBlock;
    v19->_staleSessionBlock = v20;

    v19->_operationState = 0;
  }

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9, &__block_literal_global_75);
  }

  v3 = logCategory__hmf_once_v10;

  return v3;
}

uint64_t __44__HMMQueuingRTCBackendOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1C0];
  logCategory__hmf_once_v10 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end