@interface HMFMessageInternal
- (HMFMessageInternal)init;
- (HMFMessageTransport)transport;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setQualityOfService:(int64_t)service;
@end

@implementation HMFMessageInternal

- (HMFMessageInternal)init
{
  v3.receiver = self;
  v3.super_class = HMFMessageInternal;
  result = [(HMFMessageInternal *)&v3 init];
  if (result)
  {
    result->_qualityOfService = -1;
  }

  return result;
}

- (HMFMessageTransport)transport
{
  WeakRetained = objc_loadWeakRetained(&self->_transport);

  return WeakRetained;
}

- (void)setQualityOfService:(int64_t)service
{
  serviceCopy = service;
  v15 = *MEMORY[0x277D85DE8];
  if ((service + 1) > 0x22 || ((1 << (service + 1)) & 0x404040401) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier(selfCopy);
      v11 = 138543618;
      v12 = v10;
      v13 = 2048;
      v14 = serviceCopy;
      _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_INFO, "%{public}@Overriding unknown QoS '%tu' to NSQualityOfServiceDefault", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    serviceCopy = -1;
  }

  self->_qualityOfService = serviceCopy;
  v6 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    identifier = [(HMFMessageInternal *)self identifier];
    v7 = [identifier copyWithZone:zone];
    v8 = *(v5 + 8);
    *(v5 + 8) = v7;

    name = [(HMFMessageInternal *)self name];
    v10 = [name copyWithZone:zone];
    v11 = *(v5 + 16);
    *(v5 + 16) = v10;

    [(HMFMessageInternal *)self timeout];
    *(v5 + 24) = v12;
    *(v5 + 32) = [(HMFMessageInternal *)self qualityOfService];
    destination = [(HMFMessageInternal *)self destination];
    v14 = *(v5 + 40);
    *(v5 + 40) = destination;

    transport = [(HMFMessageInternal *)self transport];
    objc_storeWeak((v5 + 48), transport);

    activity = [(HMFMessageInternal *)self activity];
    v17 = *(v5 + 56);
    *(v5 + 56) = activity;

    userInfo = [(HMFMessageInternal *)self userInfo];
    v19 = [userInfo copyWithZone:zone];
    v20 = *(v5 + 64);
    *(v5 + 64) = v19;

    headers = [(HMFMessageInternal *)self headers];
    v22 = [headers copyWithZone:zone];
    v23 = *(v5 + 72);
    *(v5 + 72) = v22;

    messagePayload = [(HMFMessageInternal *)self messagePayload];
    v25 = [messagePayload copyWithZone:zone];
    v26 = *(v5 + 80);
    *(v5 + 80) = v25;

    logEventSession = [(HMFMessageInternal *)self logEventSession];
    v28 = *(v5 + 88);
    *(v5 + 88) = logEventSession;

    responseHandler = [(HMFMessageInternal *)self responseHandler];
    v30 = [responseHandler copyWithZone:zone];
    v31 = *(v5 + 96);
    *(v5 + 96) = v30;
  }

  return v5;
}

@end