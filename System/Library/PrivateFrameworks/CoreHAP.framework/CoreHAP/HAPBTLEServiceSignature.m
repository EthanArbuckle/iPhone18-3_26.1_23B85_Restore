@interface HAPBTLEServiceSignature
- (HAPBTLEServiceSignature)initWithServiceType:(id)a3 serviceInstanceID:(id)a4 serviceProperties:(unint64_t)a5 linkedServices:(id)a6 authenticated:(BOOL)a7;
- (id)description;
@end

@implementation HAPBTLEServiceSignature

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPBTLEServiceSignature *)self serviceType];
  v5 = [(HAPBTLEServiceSignature *)self serviceInstanceID];
  v6 = [(HAPBTLEServiceSignature *)self serviceProperties];
  v7 = [(HAPBTLEServiceSignature *)self linkedServices];
  v8 = [v3 stringWithFormat:@"Service Signature: Type : %@, InstanceID : %@, Properties : %tu, Linked Services : %@", v4, v5, v6, v7];

  return v8;
}

- (HAPBTLEServiceSignature)initWithServiceType:(id)a3 serviceInstanceID:(id)a4 serviceProperties:(unint64_t)a5 linkedServices:(id)a6 authenticated:(BOOL)a7
{
  v35 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (!v12)
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
    v22 = 0;
    goto LABEL_12;
  }

  if (!v13)
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
    v16 = [v12 copy];
    serviceType = v15->_serviceType;
    v15->_serviceType = v16;

    v18 = [v13 copy];
    serviceInstanceID = v15->_serviceInstanceID;
    v15->_serviceInstanceID = v18;

    v15->_serviceProperties = a5;
    v20 = [v14 copy];
    linkedServices = v15->_linkedServices;
    v15->_linkedServices = v20;

    v15->_authenticated = a7;
  }

  self = v15;
  v22 = self;
LABEL_12:

  v28 = *MEMORY[0x277D85DE8];
  return v22;
}

@end