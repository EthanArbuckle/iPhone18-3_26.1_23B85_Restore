@interface HMDAudioAnalysisEventSubscriberContext
+ (id)logCategory;
- (BOOL)dropInEnabled;
- (BOOL)isAudioAnalysisEventNotificationEnabled;
- (BOOL)isCurrentAccessory;
- (HMDAppleMediaAccessory)accessory;
- (HMDAudioAnalysisEventSubscriberContext)initWithAccessory:(id)a3 queue:(id)a4;
- (HMDDevice)device;
- (HMDHome)home;
- (HMEEventForwarder)eventForwarder;
- (HMELastEventStoreReadHandle)eventStoreReadHandle;
- (HMFMessageDispatcher)dispatcher;
- (NSPredicate)audioAnalysisEventNotificationCondition;
- (NSString)name;
- (NSString)roomName;
- (NSUUID)spiClientIdentifier;
- (NSUUID)uuid;
- (id)logIdentifier;
- (void)forwardEvent:(id)a3 topic:(id)a4 completion:(id)a5;
- (void)submitLogEvent:(id)a3;
- (void)submitLogEvent:(id)a3 error:(id)a4;
@end

@implementation HMDAudioAnalysisEventSubscriberContext

- (HMDAppleMediaAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)forwardEvent:(id)a3 topic:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HMDAudioAnalysisEventSubscriberContext *)self eventForwarder];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__HMDAudioAnalysisEventSubscriberContext_forwardEvent_topic_completion___block_invoke;
  v13[3] = &unk_278688DD0;
  v14 = v8;
  v12 = v8;
  [v11 forwardEvent:v10 topic:v9 completion:v13];
}

- (void)submitLogEvent:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v7 submitLogEvent:v6 error:v5];
}

- (void)submitLogEvent:(id)a3
{
  v3 = a3;
  v4 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v4 submitLogEvent:v3];
}

- (id)logIdentifier
{
  v2 = [(HMDAudioAnalysisEventSubscriberContext *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (HMDHome)home
{
  v2 = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  v3 = [v2 home];

  return v3;
}

- (NSString)roomName
{
  v2 = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  v3 = [v2 room];
  v4 = [v3 name];

  return v4;
}

- (BOOL)isCurrentAccessory
{
  v2 = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  v3 = [v2 isCurrentAccessory];

  return v3;
}

- (NSUUID)spiClientIdentifier
{
  v2 = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  v3 = [v2 spiClientIdentifier];

  return v3;
}

- (NSUUID)uuid
{
  v2 = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  v3 = [v2 uuid];

  return v3;
}

- (NSString)name
{
  v2 = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  v3 = [v2 name];
  v4 = [v3 copy];

  return v4;
}

- (HMELastEventStoreReadHandle)eventStoreReadHandle
{
  v2 = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  v3 = [v2 home];
  v4 = [v3 homeManager];
  v5 = [v4 eventStoreReadHandle];

  return v5;
}

- (HMDAudioAnalysisEventSubscriberContext)initWithAccessory:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMDAudioAnalysisEventSubscriberContext;
  v8 = [(HMDAudioAnalysisEventSubscriberContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_accessory, v6);
    objc_storeStrong(&v9->_workQueue, a4);
  }

  return v9;
}

- (BOOL)dropInEnabled
{
  v2 = [(HMDAudioAnalysisEventSubscriberContext *)self home];
  v3 = [v2 currentUser];
  v4 = [v3 audioAnalysisUserDropInAccessLevel] == 2;

  return v4;
}

- (HMFMessageDispatcher)dispatcher
{
  v2 = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  v3 = [v2 msgDispatcher];

  return v3;
}

- (HMEEventForwarder)eventForwarder
{
  v2 = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  v3 = [v2 home];
  v4 = [v3 homeManager];
  v5 = [v4 eventForwarder];

  return v5;
}

- (HMDDevice)device
{
  v2 = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  v3 = [v2 device];

  return v3;
}

- (NSPredicate)audioAnalysisEventNotificationCondition
{
  v2 = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  v3 = [v2 audioAnalysisEventNotificationCondition];

  return v3;
}

- (BOOL)isAudioAnalysisEventNotificationEnabled
{
  v2 = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  v3 = [v2 isAudioAnalysisEventNotificationEnabled];

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_54359 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_54359, &__block_literal_global_54360);
  }

  v3 = logCategory__hmf_once_v1_54361;

  return v3;
}

void __53__HMDAudioAnalysisEventSubscriberContext_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_54361;
  logCategory__hmf_once_v1_54361 = v1;
}

@end