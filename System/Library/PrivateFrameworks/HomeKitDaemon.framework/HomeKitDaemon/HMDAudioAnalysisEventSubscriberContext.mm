@interface HMDAudioAnalysisEventSubscriberContext
+ (id)logCategory;
- (BOOL)dropInEnabled;
- (BOOL)isAudioAnalysisEventNotificationEnabled;
- (BOOL)isCurrentAccessory;
- (HMDAppleMediaAccessory)accessory;
- (HMDAudioAnalysisEventSubscriberContext)initWithAccessory:(id)accessory queue:(id)queue;
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
- (void)forwardEvent:(id)event topic:(id)topic completion:(id)completion;
- (void)submitLogEvent:(id)event;
- (void)submitLogEvent:(id)event error:(id)error;
@end

@implementation HMDAudioAnalysisEventSubscriberContext

- (HMDAppleMediaAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)forwardEvent:(id)event topic:(id)topic completion:(id)completion
{
  completionCopy = completion;
  topicCopy = topic;
  eventCopy = event;
  eventForwarder = [(HMDAudioAnalysisEventSubscriberContext *)self eventForwarder];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__HMDAudioAnalysisEventSubscriberContext_forwardEvent_topic_completion___block_invoke;
  v13[3] = &unk_278688DD0;
  v14 = completionCopy;
  v12 = completionCopy;
  [eventForwarder forwardEvent:eventCopy topic:topicCopy completion:v13];
}

- (void)submitLogEvent:(id)event error:(id)error
{
  errorCopy = error;
  eventCopy = event;
  v7 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v7 submitLogEvent:eventCopy error:errorCopy];
}

- (void)submitLogEvent:(id)event
{
  eventCopy = event;
  v4 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v4 submitLogEvent:eventCopy];
}

- (id)logIdentifier
{
  uuid = [(HMDAudioAnalysisEventSubscriberContext *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (HMDHome)home
{
  accessory = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  home = [accessory home];

  return home;
}

- (NSString)roomName
{
  accessory = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  room = [accessory room];
  name = [room name];

  return name;
}

- (BOOL)isCurrentAccessory
{
  accessory = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  isCurrentAccessory = [accessory isCurrentAccessory];

  return isCurrentAccessory;
}

- (NSUUID)spiClientIdentifier
{
  accessory = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  spiClientIdentifier = [accessory spiClientIdentifier];

  return spiClientIdentifier;
}

- (NSUUID)uuid
{
  accessory = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  uuid = [accessory uuid];

  return uuid;
}

- (NSString)name
{
  accessory = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  name = [accessory name];
  v4 = [name copy];

  return v4;
}

- (HMELastEventStoreReadHandle)eventStoreReadHandle
{
  accessory = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  home = [accessory home];
  homeManager = [home homeManager];
  eventStoreReadHandle = [homeManager eventStoreReadHandle];

  return eventStoreReadHandle;
}

- (HMDAudioAnalysisEventSubscriberContext)initWithAccessory:(id)accessory queue:(id)queue
{
  accessoryCopy = accessory;
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = HMDAudioAnalysisEventSubscriberContext;
  v8 = [(HMDAudioAnalysisEventSubscriberContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_accessory, accessoryCopy);
    objc_storeStrong(&v9->_workQueue, queue);
  }

  return v9;
}

- (BOOL)dropInEnabled
{
  home = [(HMDAudioAnalysisEventSubscriberContext *)self home];
  currentUser = [home currentUser];
  v4 = [currentUser audioAnalysisUserDropInAccessLevel] == 2;

  return v4;
}

- (HMFMessageDispatcher)dispatcher
{
  accessory = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  msgDispatcher = [accessory msgDispatcher];

  return msgDispatcher;
}

- (HMEEventForwarder)eventForwarder
{
  accessory = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  home = [accessory home];
  homeManager = [home homeManager];
  eventForwarder = [homeManager eventForwarder];

  return eventForwarder;
}

- (HMDDevice)device
{
  accessory = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  device = [accessory device];

  return device;
}

- (NSPredicate)audioAnalysisEventNotificationCondition
{
  accessory = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  audioAnalysisEventNotificationCondition = [accessory audioAnalysisEventNotificationCondition];

  return audioAnalysisEventNotificationCondition;
}

- (BOOL)isAudioAnalysisEventNotificationEnabled
{
  accessory = [(HMDAudioAnalysisEventSubscriberContext *)self accessory];
  isAudioAnalysisEventNotificationEnabled = [accessory isAudioAnalysisEventNotificationEnabled];

  return isAudioAnalysisEventNotificationEnabled;
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