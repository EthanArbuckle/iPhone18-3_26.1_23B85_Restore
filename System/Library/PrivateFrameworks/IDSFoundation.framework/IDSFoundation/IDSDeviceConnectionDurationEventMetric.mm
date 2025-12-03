@interface IDSDeviceConnectionDurationEventMetric
- (IDSDeviceConnectionDurationEventMetric)initWithService:(id)service wasSuccessful:(BOOL)successful clientInitTime:(id)time clientOpenSocketCompletionTime:(id)completionTime daemonOpenSocketTime:(id)socketTime daemonOpenSocketCompletionTime:(id)socketCompletionTime firstPacketReceiveTime:(id)receiveTime connectionInitTime:(id)self0;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSDeviceConnectionDurationEventMetric

- (NSDictionary)dictionaryRepresentation
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return v2;
}

- (IDSDeviceConnectionDurationEventMetric)initWithService:(id)service wasSuccessful:(BOOL)successful clientInitTime:(id)time clientOpenSocketCompletionTime:(id)completionTime daemonOpenSocketTime:(id)socketTime daemonOpenSocketCompletionTime:(id)socketCompletionTime firstPacketReceiveTime:(id)receiveTime connectionInitTime:(id)self0
{
  serviceCopy = service;
  timeCopy = time;
  completionTimeCopy = completionTime;
  socketTimeCopy = socketTime;
  socketCompletionTimeCopy = socketCompletionTime;
  receiveTimeCopy = receiveTime;
  initTimeCopy = initTime;
  v27.receiver = self;
  v27.super_class = IDSDeviceConnectionDurationEventMetric;
  v18 = [(IDSDeviceConnectionDurationEventMetric *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_serviceName, service);
    v19->_wasSuccessful = successful;
    objc_storeStrong(&v19->_clientInitTime, time);
    objc_storeStrong(&v19->_clientOpenSocketCompletionTime, completionTime);
    objc_storeStrong(&v19->_daemonOpenSocketTime, socketTime);
    objc_storeStrong(&v19->_daemonOpenSocketCompletionTime, socketCompletionTime);
    objc_storeStrong(&v19->_firstPacketReceiveTime, receiveTime);
    objc_storeStrong(&v19->_connectionInitTime, initTime);
  }

  return v19;
}

@end