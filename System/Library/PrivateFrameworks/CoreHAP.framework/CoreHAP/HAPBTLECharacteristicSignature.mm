@interface HAPBTLECharacteristicSignature
- (HAPBTLECharacteristicSignature)initWithCharacteristicType:(id)type serviceInstanceID:(id)d serviceType:(id)serviceType characteristicProperties:(unsigned __int16)properties characteristicMetadata:(id)metadata authenticated:(BOOL)authenticated;
@end

@implementation HAPBTLECharacteristicSignature

- (HAPBTLECharacteristicSignature)initWithCharacteristicType:(id)type serviceInstanceID:(id)d serviceType:(id)serviceType characteristicProperties:(unsigned __int16)properties characteristicMetadata:(id)metadata authenticated:(BOOL)authenticated
{
  propertiesCopy = properties;
  v39 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  dCopy = d;
  serviceTypeCopy = serviceType;
  metadataCopy = metadata;
  v18 = metadataCopy;
  if (!typeCopy)
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

  if (!dCopy)
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

  if (!serviceTypeCopy)
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

  if (!propertiesCopy)
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

  if (!metadataCopy)
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
    selfCopy = 0;
    goto LABEL_21;
  }

  v34.receiver = self;
  v34.super_class = HAPBTLECharacteristicSignature;
  v19 = [(HAPBTLECharacteristicSignature *)&v34 init];
  if (v19)
  {
    v20 = [typeCopy copy];
    characteristicType = v19->_characteristicType;
    v19->_characteristicType = v20;

    v22 = [dCopy copy];
    serviceInstanceID = v19->_serviceInstanceID;
    v19->_serviceInstanceID = v22;

    v24 = [serviceTypeCopy copy];
    serviceType = v19->_serviceType;
    v19->_serviceType = v24;

    v19->_characteristicProperties = propertiesCopy;
    objc_storeStrong(&v19->_characteristicMetadata, metadata);
    v19->_authenticated = authenticated;
  }

  self = v19;
  selfCopy = self;
LABEL_21:

  v32 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end