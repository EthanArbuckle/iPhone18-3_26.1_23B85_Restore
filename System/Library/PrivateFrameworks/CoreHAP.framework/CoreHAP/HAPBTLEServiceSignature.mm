@interface HAPBTLEServiceSignature
- (HAPBTLEServiceSignature)initWithServiceType:(id)type serviceInstanceID:(id)d serviceProperties:(unint64_t)properties linkedServices:(id)services authenticated:(BOOL)authenticated;
- (id)description;
@end

@implementation HAPBTLEServiceSignature

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  serviceType = [(HAPBTLEServiceSignature *)self serviceType];
  serviceInstanceID = [(HAPBTLEServiceSignature *)self serviceInstanceID];
  serviceProperties = [(HAPBTLEServiceSignature *)self serviceProperties];
  linkedServices = [(HAPBTLEServiceSignature *)self linkedServices];
  v8 = [v3 stringWithFormat:@"Service Signature: Type : %@, InstanceID : %@, Properties : %tu, Linked Services : %@", serviceType, serviceInstanceID, serviceProperties, linkedServices];

  return v8;
}

- (HAPBTLEServiceSignature)initWithServiceType:(id)type serviceInstanceID:(id)d serviceProperties:(unint64_t)properties linkedServices:(id)services authenticated:(BOOL)authenticated
{
  v35 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  dCopy = d;
  servicesCopy = services;
  if (!typeCopy)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v25;
      v33 = 2112;
      v34 = objc_opt_class();
      v26 = v34;
      v27 = "%{public}@[%@] The service type is required";
LABEL_10:
      _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, v27, buf, 0x16u);
    }

LABEL_11:

    objc_autoreleasePoolPop(v23);
    selfCopy = 0;
    goto LABEL_12;
  }

  if (!dCopy)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v25;
      v33 = 2112;
      v34 = objc_opt_class();
      v26 = v34;
      v27 = "%{public}@[%@] The service instance ID is required";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v30.receiver = self;
  v30.super_class = HAPBTLEServiceSignature;
  v15 = [(HAPBTLEServiceSignature *)&v30 init];
  if (v15)
  {
    v16 = [typeCopy copy];
    serviceType = v15->_serviceType;
    v15->_serviceType = v16;

    v18 = [dCopy copy];
    serviceInstanceID = v15->_serviceInstanceID;
    v15->_serviceInstanceID = v18;

    v15->_serviceProperties = properties;
    v20 = [servicesCopy copy];
    linkedServices = v15->_linkedServices;
    v15->_linkedServices = v20;

    v15->_authenticated = authenticated;
  }

  self = v15;
  selfCopy = self;
LABEL_12:

  v28 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end