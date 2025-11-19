@interface HAPBTLECharacteristicSignature
- (HAPBTLECharacteristicSignature)initWithCharacteristicType:(id)a3 serviceInstanceID:(id)a4 serviceType:(id)a5 characteristicProperties:(unsigned __int16)a6 characteristicMetadata:(id)a7 authenticated:(BOOL)a8;
@end

@implementation HAPBTLECharacteristicSignature

- (HAPBTLECharacteristicSignature)initWithCharacteristicType:(id)a3 serviceInstanceID:(id)a4 serviceType:(id)a5 characteristicProperties:(unsigned __int16)a6 characteristicMetadata:(id)a7 authenticated:(BOOL)a8
{
  v10 = a6;
  v39 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = v17;
  if (!v14)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v29;
    v37 = 2112;
    v38 = objc_opt_class();
    v30 = v38;
    v31 = "%{public}@[%@] The characteristic type is required";
LABEL_19:
    _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, v31, buf, 0x16u);

    goto LABEL_20;
  }

  if (!v15)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v29;
    v37 = 2112;
    v38 = objc_opt_class();
    v30 = v38;
    v31 = "%{public}@[%@] The service instance ID is required";
    goto LABEL_19;
  }

  if (!v16)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v29;
    v37 = 2112;
    v38 = objc_opt_class();
    v30 = v38;
    v31 = "%{public}@[%@] The service type is required";
    goto LABEL_19;
  }

  if (!v10)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v29;
    v37 = 2112;
    v38 = objc_opt_class();
    v30 = v38;
    v31 = "%{public}@[%@] The characteristic properties is required";
    goto LABEL_19;
  }

  if (!v17)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v29;
      v37 = 2112;
      v38 = objc_opt_class();
      v30 = v38;
      v31 = "%{public}@[%@] The characteristic metadata is required";
      goto LABEL_19;
    }

LABEL_20:

    objc_autoreleasePoolPop(v27);
    v26 = 0;
    goto LABEL_21;
  }

  v34.receiver = self;
  v34.super_class = HAPBTLECharacteristicSignature;
  v19 = [(HAPBTLECharacteristicSignature *)&v34 init];
  if (v19)
  {
    v20 = [v14 copy];
    characteristicType = v19->_characteristicType;
    v19->_characteristicType = v20;

    v22 = [v15 copy];
    serviceInstanceID = v19->_serviceInstanceID;
    v19->_serviceInstanceID = v22;

    v24 = [v16 copy];
    serviceType = v19->_serviceType;
    v19->_serviceType = v24;

    v19->_characteristicProperties = v10;
    objc_storeStrong(&v19->_characteristicMetadata, a7);
    v19->_authenticated = a8;
  }

  self = v19;
  v26 = self;
LABEL_21:

  v32 = *MEMORY[0x277D85DE8];
  return v26;
}

@end