@interface HAPAccessory
+ (BOOL)isAccessoryPairedWithIdentifier:(id)identifier;
+ (BOOL)isAccessoryPrimaryWithUniqueIdentifier:(id)identifier;
+ (id)logCategory;
+ (id)productDataStringFromData:(id)data;
- (BOOL)_updateAndValidateServices;
- (BOOL)_updateService:(id)service;
- (BOOL)_validateCharacteristicValues;
- (BOOL)eligibleForRetry;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPaired;
- (BOOL)isReachable;
- (BOOL)mergeObject:(id)object;
- (BOOL)shouldDisconnectOnIdle;
- (BOOL)shouldMergeObject:(id)object;
- (BOOL)updateForAccessoryInformationService;
- (HAPAccessory)init;
- (HAPAccessory)initWithServer:(id)server instanceID:(id)d parsedServices:(id)services;
- (HAPAccessoryDelegate)delegate;
- (HAPAccessoryServer)server;
- (NSNumber)category;
- (NSString)description;
- (NSString)uniqueIdentifier;
- (id)characteristicOfType:(id)type serviceType:(id)serviceType;
- (id)characteristicWithInstanceID:(id)d;
- (id)characteristicsOfType:(id)type;
- (id)serviceWithInstanceID:(id)d;
- (id)servicesOfType:(id)type;
- (id)shortDescription;
- (int)consecutiveFailedPingCount;
- (int64_t)linkLayerType;
- (unint64_t)hash;
- (unint64_t)suspendedState;
- (void)invalidateWithError:(id)error;
- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
- (void)readValueForCharacteristic:(id)characteristic timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
- (void)setConsecutiveFailedPingCount:(int)count;
- (void)setLinkLayerType:(int64_t)type;
- (void)setSuspendedState:(unint64_t)state;
- (void)writeCharacteristicValue:(id)value timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
@end

@implementation HAPAccessory

- (HAPAccessoryServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (HAPAccessoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)mergeObject:(id)object
{
  v114 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
LABEL_28:
    v39 = 0;
    goto LABEL_57;
  }

  if (![(HAPAccessory *)self shouldMergeObject:v6])
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v111 = v38;
      v112 = 2112;
      v113 = v6;
      _os_log_impl(&dword_22AADC000, v37, OS_LOG_TYPE_INFO, "%{public}@Not merging with accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    goto LABEL_28;
  }

  v86 = v6;
  v7 = MEMORY[0x277CBEB98];
  services = [(HAPAccessory *)self services];
  v9 = [v7 setWithArray:services];

  v10 = MEMORY[0x277CBEB98];
  v87 = objectCopy;
  services2 = [objectCopy services];
  v12 = [v10 setWithArray:services2];

  v88 = v9;
  v13 = [v9 mutableCopy];
  v89 = v12;
  [v13 minusSet:v12];
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v103 objects:v109 count:16];
  v90 = v14 != 0;
  if (v14)
  {
    v15 = v14;
    v16 = *v104;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v104 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v103 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v111 = v22;
          v112 = 2112;
          v113 = v18;
          _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "%{public}@Removed service: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
      }

      v15 = [obj countByEnumeratingWithState:&v103 objects:v109 count:16];
    }

    while (v15);
  }

  v23 = v89;
  v24 = [v89 mutableCopy];
  [v24 minusSet:v88];
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v93 = v24;
  v25 = [v93 countByEnumeratingWithState:&v99 objects:v108 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v100;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v100 != v27)
        {
          objc_enumerationMutation(v93);
        }

        v29 = *(*(&v99 + 1) + 8 * j);
        v30 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543618;
          v111 = v33;
          v112 = 2112;
          v113 = v29;
          _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_INFO, "%{public}@Added service: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
        [v29 setAccessory:selfCopy3];
      }

      v26 = [v93 countByEnumeratingWithState:&v99 objects:v108 count:16];
    }

    while (v26);
    v34 = 1;
    v23 = v89;
  }

  else
  {
    v34 = v90;
  }

  v91 = v34;

  v40 = [v88 mutableCopy];
  [v40 minusSet:obj];
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v92 = v40;
  v41 = [v92 countByEnumeratingWithState:&v95 objects:v107 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v96;
    do
    {
      for (k = 0; k != v42; ++k)
      {
        if (*v96 != v43)
        {
          objc_enumerationMutation(v92);
        }

        v45 = *(*(&v95 + 1) + 8 * k);
        v46 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          v49 = HMFGetLogIdentifier();
          *buf = 138543618;
          v111 = v49;
          v112 = 2112;
          v113 = v45;
          _os_log_impl(&dword_22AADC000, v48, OS_LOG_TYPE_DEBUG, "%{public}@Merging existing service: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v46);
        v50 = [v23 member:v45];
        if (v50 && [v45 mergeObject:v50])
        {
          v51 = objc_autoreleasePoolPush();
          v52 = selfCopy4;
          v53 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            v54 = HMFGetLogIdentifier();
            *buf = 138543618;
            v111 = v54;
            v112 = 2112;
            v113 = v45;
            _os_log_impl(&dword_22AADC000, v53, OS_LOG_TYPE_INFO, "%{public}@Updated service: %@", buf, 0x16u);

            v23 = v89;
          }

          objc_autoreleasePoolPop(v51);
          v91 = 1;
        }
      }

      v42 = [v92 countByEnumeratingWithState:&v95 objects:v107 count:16];
    }

    while (v42);
  }

  v55 = MEMORY[0x277CBEB18];
  allObjects = [v92 allObjects];
  v57 = [v55 arrayWithArray:allObjects];

  allObjects2 = [v93 allObjects];
  [v57 addObjectsFromArray:allObjects2];

  v59 = [v57 copy];
  [(HAPAccessory *)self setServices:v59];

  name = [(HAPAccessory *)self name];
  v6 = v86;
  name2 = [v86 name];
  v62 = [name isEqualToString:name2];

  v39 = v91;
  if ((v62 & 1) == 0)
  {
    name3 = [v86 name];
    [(HAPAccessory *)self setName:name3];

    v39 = 1;
  }

  manufacturer = [(HAPAccessory *)self manufacturer];
  manufacturer2 = [v86 manufacturer];
  v66 = [manufacturer isEqualToString:manufacturer2];

  objectCopy = v87;
  if ((v66 & 1) == 0)
  {
    manufacturer3 = [v86 manufacturer];
    [(HAPAccessory *)self setManufacturer:manufacturer3];

    v39 = 1;
  }

  model = [(HAPAccessory *)self model];
  model2 = [v86 model];
  v70 = [model isEqualToString:model2];

  if ((v70 & 1) == 0)
  {
    model3 = [v86 model];
    [(HAPAccessory *)self setModel:model3];

    v39 = 1;
  }

  serialNumber = [(HAPAccessory *)self serialNumber];
  serialNumber2 = [v86 serialNumber];
  v74 = [serialNumber isEqualToString:serialNumber2];

  if ((v74 & 1) == 0)
  {
    serialNumber3 = [v86 serialNumber];
    [(HAPAccessory *)self setSerialNumber:serialNumber3];

    v39 = 1;
  }

  firmwareVersion = [(HAPAccessory *)self firmwareVersion];
  firmwareVersion2 = [v86 firmwareVersion];
  v78 = [firmwareVersion isEqualToString:firmwareVersion2];

  if ((v78 & 1) == 0)
  {
    firmwareVersion3 = [v86 firmwareVersion];
    [(HAPAccessory *)self setFirmwareVersion:firmwareVersion3];

    v39 = 1;
  }

  productData = [(HAPAccessory *)self productData];
  productData2 = [v86 productData];
  v82 = [productData isEqualToString:productData2];

  if ((v82 & 1) == 0)
  {
    productData3 = [v86 productData];
    [(HAPAccessory *)self setProductData:productData3];

    v39 = 1;
  }

LABEL_57:
  v84 = *MEMORY[0x277D85DE8];
  return v39 & 1;
}

- (BOOL)shouldMergeObject:(id)object
{
  v43 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if ([(HAPAccessory *)self isEqual:objectCopy])
  {
    v5 = MEMORY[0x277CBEB98];
    services = [(HAPAccessory *)self services];
    v7 = [v5 setWithArray:services];

    v8 = MEMORY[0x277CBEB98];
    v30 = objectCopy;
    services2 = [objectCopy services];
    v10 = [v8 setWithArray:services2];

    v29 = v7;
    v11 = [v7 mutableCopy];
    [v11 intersectSet:v10];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (!v13)
    {
      v16 = 1;
      goto LABEL_18;
    }

    v14 = v13;
    v15 = *v33;
    v16 = 1;
    while (1)
    {
      v17 = 0;
      v31 = v14;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v32 + 1) + 8 * v17);
        v19 = [v10 member:v18];
        if (v19)
        {
          if ([v18 shouldMergeObject:v19])
          {
            goto LABEL_13;
          }

          v20 = objc_autoreleasePoolPush();
          selfCopy = self;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v23 = v15;
            v24 = v10;
            v26 = v25 = self;
            *buf = 138543874;
            v37 = v26;
            v38 = 2112;
            v39 = v19;
            v40 = 2112;
            v41 = v12;
            _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to merge service, %@, with existing service: %@", buf, 0x20u);

            self = v25;
            v10 = v24;
            v15 = v23;
            v14 = v31;
          }

          objc_autoreleasePoolPop(v20);
        }

        v16 = 0;
LABEL_13:

        ++v17;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (!v14)
      {
LABEL_18:

        objectCopy = v30;
        goto LABEL_19;
      }
    }
  }

  v16 = 0;
LABEL_19:

  v27 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

- (BOOL)eligibleForRetry
{
  server = [(HAPAccessory *)self server];
  if (server)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)characteristicWithInstanceID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  services = [(HAPAccessory *)self services];
  v21 = [services countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v6 = *v27;
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(services);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        characteristics = [v8 characteristics];
        v10 = [characteristics countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(characteristics);
              }

              v14 = *(*(&v22 + 1) + 8 * j);
              instanceID = [v14 instanceID];
              v16 = [dCopy isEqualToNumber:instanceID];

              if (v16)
              {
                v17 = v14;

                goto LABEL_19;
              }
            }

            v11 = [characteristics countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v20;
      }

      v17 = 0;
      v21 = [services countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)characteristicOfType:(id)type serviceType:(id)serviceType
{
  typeCopy = type;
  serviceTypeCopy = serviceType;
  v8 = serviceTypeCopy;
  v11FirstObject = 0;
  if (!typeCopy || !serviceTypeCopy)
  {
    goto LABEL_8;
  }

  v10 = [(HAPAccessory *)self servicesOfType:serviceTypeCopy];
  firstObject = [v10 firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11FirstObject = 0;
    goto LABEL_7;
  }

  v12 = [(HAPAccessory *)self servicesOfType:v8];
  firstObject2 = [v12 firstObject];

  if (firstObject2)
  {
    firstObject = [firstObject2 characteristicsOfType:typeCopy];
    v11FirstObject = [firstObject firstObject];
    v10 = firstObject2;
LABEL_7:

    goto LABEL_8;
  }

  v11FirstObject = 0;
LABEL_8:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v11FirstObject;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (id)characteristicsOfType:(id)type
{
  v19 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  services = [(HAPAccessory *)self services];
  v7 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(services);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) characteristicsOfType:typeCopy];
        [array addObjectsFromArray:v11];
      }

      v8 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)serviceWithInstanceID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  services = [(HAPAccessory *)self services];
  v6 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(services);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        instanceID = [v9 instanceID];
        v11 = [dCopy isEqualToNumber:instanceID];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)servicesOfType:(id)type
{
  v21 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  services = [(HAPAccessory *)self services];
  v7 = [services countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(services);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        type = [v11 type];
        v13 = [type isEqualToString:typeCopy];

        if (v13)
        {
          [array addObject:v11];
        }
      }

      v8 = [services countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (BOOL)_validateCharacteristicValues
{
  v43 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  services = [(HAPAccessory *)self services];
  v3 = [services countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v32;
    v26 = *v32;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v32 != v5)
        {
          objc_enumerationMutation(services);
        }

        v7 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        characteristics = [v7 characteristics];
        v9 = [characteristics countByEnumeratingWithState:&v27 objects:v41 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v28;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v28 != v11)
              {
                objc_enumerationMutation(characteristics);
              }

              v13 = *(*(&v27 + 1) + 8 * j);
              if ([v13 shouldValidateValueAfterReading])
              {
                value = [v13 value];
                if (value)
                {
                  v15 = value;
                  properties = [v13 properties];

                  if ((properties & 2) != 0)
                  {
                    value2 = [v13 value];
                    v18 = [v13 validateValue:value2 outValue:0];

                    if (v18)
                    {
                      v20 = objc_autoreleasePoolPush();
                      v21 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                      {
                        v22 = HMFGetLogIdentifier();
                        type = [v13 type];
                        *buf = 138543874;
                        v36 = v22;
                        v37 = 2112;
                        v38 = type;
                        v39 = 2112;
                        v40 = v18;
                        _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@[HAP Accessory] ### Failed to validate value with type %@ with error %@", buf, 0x20u);
                      }

                      objc_autoreleasePoolPop(v20);
                      v19 = 0;
                      goto LABEL_24;
                    }
                  }
                }
              }
            }

            v10 = [characteristics countByEnumeratingWithState:&v27 objects:v41 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v5 = v26;
      }

      v4 = [services countByEnumeratingWithState:&v31 objects:v42 count:16];
      v19 = 1;
    }

    while (v4);
  }

  else
  {
    v19 = 1;
  }

LABEL_24:

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)invalidateWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [(HAPAccessory *)selfCopy shortDescription];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = shortDescription;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Invalidating and updating connection state for HAP Accessory: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateForAccessoryInformationService
{
  v58 = *MEMORY[0x277D85DE8];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  services = [(HAPAccessory *)self services];
  v4 = [services countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v51;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v51 != v7)
        {
          objc_enumerationMutation(services);
        }

        v9 = *(*(&v50 + 1) + 8 * i);
        type = [v9 type];
        v11 = [type isEqualToString:@"0000003E-0000-1000-8000-0026BB765291"];

        if (v11)
        {
          if (v6)
          {
            v39 = objc_autoreleasePoolPush();
            v40 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = HMFGetLogIdentifier();
              *buf = 138543362;
              v56 = v41;
              _os_log_impl(&dword_22AADC000, v40, OS_LOG_TYPE_ERROR, "%{public}@### Accessory has more than one Accessory Information Service", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v39);
            goto LABEL_44;
          }

          v6 = v9;
        }
      }

      v5 = [services countByEnumeratingWithState:&v50 objects:v57 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    if (v6)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      characteristics = [v6 characteristics];
      v13 = [characteristics countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v47;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v47 != v15)
            {
              objc_enumerationMutation(characteristics);
            }

            v17 = *(*(&v46 + 1) + 8 * j);
            value = [v17 value];

            if (value)
            {
              value2 = [v17 value];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v20 = value2;
              }

              else
              {
                v20 = 0;
              }

              v21 = v20;

              v22 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v21];

              type2 = [v17 type];
              v24 = [type2 isEqualToString:@"00000023-0000-1000-8000-0026BB765291"];

              if (v24)
              {
                [(HAPAccessory *)self setName:v22];
              }

              else
              {
                type3 = [v17 type];
                v26 = [type3 isEqualToString:@"00000020-0000-1000-8000-0026BB765291"];

                if (v26)
                {
                  [(HAPAccessory *)self setManufacturer:v22];
                }

                else
                {
                  type4 = [v17 type];
                  v28 = [type4 isEqualToString:@"00000021-0000-1000-8000-0026BB765291"];

                  if (v28)
                  {
                    [(HAPAccessory *)self setModel:v22];
                  }

                  else
                  {
                    type5 = [v17 type];
                    v30 = [type5 isEqualToString:@"00000030-0000-1000-8000-0026BB765291"];

                    if (v30)
                    {
                      [(HAPAccessory *)self setSerialNumber:v22];
                    }

                    else
                    {
                      type6 = [v17 type];
                      v32 = [type6 isEqualToString:@"00000052-0000-1000-8000-0026BB765291"];

                      if (v32)
                      {
                        [(HAPAccessory *)self setFirmwareVersion:v22];
                      }

                      else
                      {
                        type7 = [v17 type];
                        v34 = [type7 isEqualToString:@"00000220-0000-1000-8000-0026BB765291"];

                        if (v34)
                        {
                          v35 = objc_opt_class();
                          value3 = [v17 value];
                          v37 = [v35 productDataStringFromData:value3];
                          [(HAPAccessory *)self setProductData:v37];
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v14 = [characteristics countByEnumeratingWithState:&v46 objects:v54 count:16];
        }

        while (v14);
      }

      result = 1;
      goto LABEL_45;
    }
  }

  else
  {
  }

  v42 = objc_autoreleasePoolPush();
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    v44 = HMFGetLogIdentifier();
    *buf = 138543362;
    v56 = v44;
    _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_ERROR, "%{public}@### Accessory is missing an Accessory Information Service", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v42);
LABEL_44:
  result = 0;
LABEL_45:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_updateService:(id)service
{
  if (service)
  {
    [service setAccessory:self];
  }

  return 1;
}

- (BOOL)_updateAndValidateServices
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  services = [(HAPAccessory *)self services];
  v5 = [services countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v47;
    selfCopy = self;
    v41 = services;
    v38 = *v47;
    while (2)
    {
      v8 = 0;
      v39 = v6;
      do
      {
        if (*v47 != v7)
        {
          objc_enumerationMutation(services);
        }

        v9 = *(*(&v46 + 1) + 8 * v8);
        instanceID = [v9 instanceID];
        v11 = [v3 containsObject:instanceID];

        if (v11)
        {
          v33 = objc_autoreleasePoolPush();
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = HMFGetLogIdentifier();
            instanceID2 = [v9 instanceID];
            stringValue = [instanceID2 stringValue];
            *buf = 138543618;
            v52 = v35;
            v53 = 2112;
            v54 = stringValue;
            _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_ERROR, "%{public}@### Accessory has service with duplicate instance ID '%@'", buf, 0x16u);

            goto LABEL_33;
          }

LABEL_34:

          objc_autoreleasePoolPop(v33);
LABEL_23:

          goto LABEL_27;
        }

        instanceID3 = [v9 instanceID];
        [v3 addObject:instanceID3];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        characteristics = [v9 characteristics];
        v14 = [characteristics countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v43;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v43 != v16)
              {
                objc_enumerationMutation(characteristics);
              }

              v18 = *(*(&v42 + 1) + 8 * i);
              instanceID4 = [v18 instanceID];
              v20 = [v3 containsObject:instanceID4];

              if (v20)
              {
                v23 = objc_autoreleasePoolPush();
                v24 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  v25 = HMFGetLogIdentifier();
                  instanceID5 = [v18 instanceID];
                  stringValue2 = [instanceID5 stringValue];
                  *buf = 138543618;
                  v52 = v25;
                  v53 = 2112;
                  v54 = stringValue2;
                  _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@### Accessory has characteristic with duplicate instance ID '%@'", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v23);
                services = v41;
                goto LABEL_23;
              }

              instanceID6 = [v18 instanceID];
              [v3 addObject:instanceID6];
            }

            v15 = [characteristics countByEnumeratingWithState:&v42 objects:v50 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        self = selfCopy;
        if (![(HAPAccessory *)selfCopy _updateService:v9])
        {
          v33 = objc_autoreleasePoolPush();
          v34 = HMFGetOSLogHandle();
          services = v41;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543362;
            v52 = v35;
            _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_ERROR, "%{public}@### Accessory failed _updateService", buf, 0xCu);
LABEL_33:
          }

          goto LABEL_34;
        }

        ++v8;
        v7 = v38;
        services = v41;
      }

      while (v8 != v39);
      v6 = [v41 countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if ([(HAPAccessory *)self updateForAccessoryInformationService])
  {
    v22 = 1;
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v30;
      _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "%{public}@### Accessory failed _updateForAccessoryInformationService", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
LABEL_27:
    v22 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  v60 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  if ([valuesCopy count])
  {
    if (timeout >= 0.0)
    {
      if (!expiryCopy)
      {
        goto LABEL_17;
      }

      [expiryCopy doubleValue];
      v27 = v26;
      HMFUptime();
      v29 = v27 - v28;
      v30 = objc_autoreleasePoolPush();
      selfCopy = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v57 = v33;
        v58 = 2048;
        v59 = v29;
        _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_INFO, "%{public}@Remaining TTL for write multiple characteristic values request: %0.4f sec", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      if (v29 >= 0.0)
      {
LABEL_17:
        server = [(HAPAccessory *)self server];
        if (server)
        {
          v21 = server;
          [server writeCharacteristicValues:valuesCopy timeout:expiryCopy expiry:queueCopy completionQueue:handlerCopy completionHandler:timeout];
        }

        else
        {
          v39 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543618;
            v57 = v42;
            v58 = 2112;
            v59 = *&valuesCopy;
            _os_log_impl(&dword_22AADC000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unable to write characteristics %@ because there is no server.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v39);
          v21 = 0;
          if (queueCopy && handlerCopy)
          {
            v44[0] = MEMORY[0x277D85DD0];
            v44[1] = 3221225472;
            v44[2] = __91__HAPAccessory_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_135;
            v44[3] = &unk_2786D65D8;
            v45 = currentActivity;
            v46 = handlerCopy;
            dispatch_async(queueCopy, v44);

            v21 = 0;
          }
        }

        goto LABEL_29;
      }

      v35 = objc_autoreleasePoolPush();
      v36 = selfCopy;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v57 = v38;
        _os_log_impl(&dword_22AADC000, v37, OS_LOG_TYPE_ERROR, "%{public}@CoreHAP received request after expiry", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
      if (queueCopy && handlerCopy)
      {
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __91__HAPAccessory_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_134;
        v47[3] = &unk_2786D65D8;
        v48 = currentActivity;
        v49 = handlerCopy;
        dispatch_async(queueCopy, v47);

        v21 = v48;
        goto LABEL_29;
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v57 = v20;
        _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@The timeout must not be negative.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      if (queueCopy && handlerCopy)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __91__HAPAccessory_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_133;
        block[3] = &unk_2786D65D8;
        v51 = currentActivity;
        v52 = handlerCopy;
        dispatch_async(queueCopy, block);

        v21 = v51;
LABEL_29:
      }
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v25;
      _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@One or more target characteristic writes are required.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    if (queueCopy && handlerCopy)
    {
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __91__HAPAccessory_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
      v53[3] = &unk_2786D65D8;
      v54 = currentActivity;
      v55 = handlerCopy;
      dispatch_async(queueCopy, v53);

      v21 = v54;
      goto LABEL_29;
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __91__HAPAccessory_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid parameter." reason:@"One or more target characteristic writes are required." suggestion:0 underlyingError:0];
  [v2 domain];

  [v2 code];
  (*(*(a1 + 40) + 16))();
}

void __91__HAPAccessory_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_133(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid parameter." reason:@"The timeout must not be negative." suggestion:0 underlyingError:0];
  [v2 domain];

  [v2 code];
  (*(*(a1 + 40) + 16))();
}

void __91__HAPAccessory_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_134(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:42 description:@"TTL already expired." reason:0 suggestion:0 underlyingError:0];
  [v2 domain];

  [v2 code];
  (*(*(a1 + 40) + 16))();
}

void __91__HAPAccessory_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_135(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:13 description:@"Write failed." reason:@"There is no server present for the accessory." suggestion:0 underlyingError:0 marker:2202];
  [v2 domain];

  [v2 code];
  (*(*(a1 + 40) + 16))();
}

- (void)writeCharacteristicValue:(id)value timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  v68 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  if (valueCopy)
  {
    if (timeout >= 0.0)
    {
      if (!expiryCopy)
      {
        goto LABEL_17;
      }

      [expiryCopy doubleValue];
      v26 = v25;
      HMFUptime();
      v28 = v26 - v27;
      v29 = objc_autoreleasePoolPush();
      selfCopy = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v65 = v32;
        v66 = 2048;
        v67 = v28;
        _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_INFO, "%{public}@Remaining TTL for write characteristic value request: %0.4f sec", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      if (v28 >= 0.0)
      {
LABEL_17:
        server = [(HAPAccessory *)self server];
        if (server)
        {
          v63 = valueCopy;
          v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke_2;
          v48[3] = &unk_2786D6060;
          v35 = &v50;
          v50 = handlerCopy;
          v36 = &v49;
          v49 = valueCopy;
          [server writeCharacteristicValues:v34 timeout:expiryCopy expiry:queueCopy completionQueue:v48 completionHandler:timeout];
        }

        else
        {
          v41 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = HMFGetLogIdentifier();
            [valueCopy characteristic];
            v45 = v47 = v41;
            *buf = 138543618;
            v65 = v44;
            v66 = 2112;
            v67 = *&v45;
            _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_ERROR, "%{public}@Unable to write value for characteristic %@ because there is no server.", buf, 0x16u);

            v41 = v47;
          }

          objc_autoreleasePoolPop(v41);
          v20 = 0;
          if (!queueCopy || !handlerCopy)
          {
            goto LABEL_30;
          }

          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke_123;
          v51[3] = &unk_2786D65D8;
          v35 = &v53;
          v53 = handlerCopy;
          v36 = &v52;
          v52 = valueCopy;
          dispatch_async(queueCopy, v51);
        }

        v20 = server;
LABEL_30:

        goto LABEL_31;
      }

      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v65 = v40;
        _os_log_impl(&dword_22AADC000, v39, OS_LOG_TYPE_ERROR, "%{public}@CoreHAP received request after expiry", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      if (queueCopy && handlerCopy)
      {
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke_122;
        v54[3] = &unk_2786D65D8;
        v56 = handlerCopy;
        v55 = valueCopy;
        dispatch_async(queueCopy, v54);

        v20 = v56;
        goto LABEL_30;
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v65 = v19;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@The timeout must not be negative.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      if (queueCopy && handlerCopy)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke_121;
        block[3] = &unk_2786D65D8;
        v59 = handlerCopy;
        v58 = valueCopy;
        dispatch_async(queueCopy, block);

        v20 = v59;
        goto LABEL_30;
      }
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v24;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@The target characteristic write request is a required parameter", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    if (queueCopy && handlerCopy)
    {
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke;
      v60[3] = &unk_2786D65D8;
      v61 = 0;
      v62 = handlerCopy;
      dispatch_async(queueCopy, v60);

      v20 = v62;
      goto LABEL_30;
    }
  }

LABEL_31:

  v46 = *MEMORY[0x277D85DE8];
}

void __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid parameter." reason:@"Characteristic write request is a required parameter." suggestion:0 underlyingError:0];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) characteristic];
  (*(v2 + 16))(v2, v3, v4);
}

void __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke_121(uint64_t a1)
{
  v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid parameter." reason:@"The timeout must not be negative." suggestion:0 underlyingError:0];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) characteristic];
  (*(v2 + 16))(v2, v3, v4);
}

void __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke_122(uint64_t a1)
{
  v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:42 description:@"TTL already expired." reason:0 suggestion:0 underlyingError:0];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) characteristic];
  (*(v2 + 16))(v2, v3, v4);
}

void __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke_123(uint64_t a1)
{
  v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:13 description:@"Write failed." reason:@"There is no server present for the accessory." suggestion:0 underlyingError:0 marker:2201];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) characteristic];
  (*(v2 + 16))(v2, v3, v4);
}

void __90__HAPAccessory_writeCharacteristicValue_timeout_expiry_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    v14 = v5;
    v6 = [a2 firstObject];
    v7 = [v6 characteristic];
    v8 = [*(a1 + 32) characteristic];
    if ([v7 isEqual:v8])
    {
      v9 = [v6 error];

      if (v9)
      {
        v10 = [v6 error];
LABEL_7:
        v11 = v10;
        v12 = *(a1 + 40);
        v13 = [*(a1 + 32) characteristic];
        (*(v12 + 16))(v12, v13, v11);

        v5 = v14;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v10 = v14;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  v60 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  if ([valuesCopy count])
  {
    if (timeout >= 0.0)
    {
      if (!expiryCopy)
      {
        goto LABEL_17;
      }

      [expiryCopy doubleValue];
      v27 = v26;
      HMFUptime();
      v29 = v27 - v28;
      v30 = objc_autoreleasePoolPush();
      selfCopy = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v57 = v33;
        v58 = 2048;
        v59 = v29;
        _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_INFO, "%{public}@Remaining TTL for read multiple characteristic values request: %0.4f sec", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      if (v29 >= 0.0)
      {
LABEL_17:
        server = [(HAPAccessory *)self server];
        if (server)
        {
          v21 = server;
          [server readCharacteristicValues:valuesCopy timeout:expiryCopy expiry:queueCopy completionQueue:handlerCopy completionHandler:timeout];
        }

        else
        {
          v39 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543618;
            v57 = v42;
            v58 = 2112;
            v59 = *&valuesCopy;
            _os_log_impl(&dword_22AADC000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unable to read characteristics %@ because there is no server.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v39);
          v21 = 0;
          if (queueCopy && handlerCopy)
          {
            v44[0] = MEMORY[0x277D85DD0];
            v44[1] = 3221225472;
            v44[2] = __90__HAPAccessory_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_117;
            v44[3] = &unk_2786D65D8;
            v45 = currentActivity;
            v46 = handlerCopy;
            dispatch_async(queueCopy, v44);

            v21 = 0;
          }
        }

        goto LABEL_29;
      }

      v35 = objc_autoreleasePoolPush();
      v36 = selfCopy;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v57 = v38;
        _os_log_impl(&dword_22AADC000, v37, OS_LOG_TYPE_ERROR, "%{public}@CoreHAP received request after expiry", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
      if (queueCopy && handlerCopy)
      {
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __90__HAPAccessory_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_116;
        v47[3] = &unk_2786D65D8;
        v48 = currentActivity;
        v49 = handlerCopy;
        dispatch_async(queueCopy, v47);

        v21 = v48;
        goto LABEL_29;
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v57 = v20;
        _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@The timeout must not be negative.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      if (queueCopy && handlerCopy)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __90__HAPAccessory_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_115;
        block[3] = &unk_2786D65D8;
        v51 = currentActivity;
        v52 = handlerCopy;
        dispatch_async(queueCopy, block);

        v21 = v51;
LABEL_29:
      }
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v25;
      _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@One or more target characteristics are required.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    if (queueCopy && handlerCopy)
    {
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __90__HAPAccessory_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
      v53[3] = &unk_2786D65D8;
      v54 = currentActivity;
      v55 = handlerCopy;
      dispatch_async(queueCopy, v53);

      v21 = v54;
      goto LABEL_29;
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __90__HAPAccessory_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid parameter." reason:@"One or more target characteristics are required." suggestion:0 underlyingError:0];
  [v2 domain];

  [v2 code];
  (*(*(a1 + 40) + 16))();
}

void __90__HAPAccessory_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_115(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid parameter." reason:@"The timeout must not be negative." suggestion:0 underlyingError:0];
  [v2 domain];

  [v2 code];
  (*(*(a1 + 40) + 16))();
}

void __90__HAPAccessory_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_116(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:42 description:@"TTL already expired." reason:0 suggestion:0 underlyingError:0];
  [v2 domain];

  [v2 code];
  (*(*(a1 + 40) + 16))();
}

void __90__HAPAccessory_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_117(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 description:@"Read failed." reason:@"There is no server present for the accessory." suggestion:0 underlyingError:0 marker:2302];
  [v2 domain];

  [v2 code];
  (*(*(a1 + 40) + 16))();
}

- (void)readValueForCharacteristic:(id)characteristic timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  v66 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  if (characteristicCopy)
  {
    if (timeout >= 0.0)
    {
      if (!expiryCopy)
      {
        goto LABEL_17;
      }

      [expiryCopy doubleValue];
      v26 = v25;
      HMFUptime();
      v28 = v26 - v27;
      v29 = objc_autoreleasePoolPush();
      selfCopy = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v63 = v32;
        v64 = 2048;
        v65 = v28;
        _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_INFO, "%{public}@Remaining TTL for read characteristic value request: %0.4f sec", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      if (v28 >= 0.0)
      {
LABEL_17:
        server = [(HAPAccessory *)self server];
        if (server)
        {
          v61 = characteristicCopy;
          v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke_2;
          v46[3] = &unk_2786D6060;
          v35 = &v48;
          v48 = handlerCopy;
          v36 = &v47;
          v47 = characteristicCopy;
          [server readCharacteristicValues:v34 timeout:expiryCopy expiry:queueCopy completionQueue:v46 completionHandler:timeout];
        }

        else
        {
          v41 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543618;
            v63 = v44;
            v64 = 2112;
            v65 = *&characteristicCopy;
            _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_ERROR, "%{public}@Unable to read value for characteristic %@ because there is no server.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v41);
          v20 = 0;
          if (!queueCopy || !handlerCopy)
          {
            goto LABEL_30;
          }

          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke_98;
          v49[3] = &unk_2786D65D8;
          v35 = &v51;
          v51 = handlerCopy;
          v36 = &v50;
          v50 = characteristicCopy;
          dispatch_async(queueCopy, v49);
        }

        v20 = server;
LABEL_30:

        goto LABEL_31;
      }

      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v63 = v40;
        _os_log_impl(&dword_22AADC000, v39, OS_LOG_TYPE_ERROR, "%{public}@CoreHAP received request after expiry", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      if (queueCopy && handlerCopy)
      {
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke_94;
        v52[3] = &unk_2786D65D8;
        v54 = handlerCopy;
        v53 = characteristicCopy;
        dispatch_async(queueCopy, v52);

        v20 = v54;
        goto LABEL_30;
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v63 = v19;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@The timeout must not be negative.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      if (queueCopy && handlerCopy)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke_90;
        block[3] = &unk_2786D65D8;
        v57 = handlerCopy;
        v56 = characteristicCopy;
        dispatch_async(queueCopy, block);

        v20 = v57;
        goto LABEL_30;
      }
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v63 = v24;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@The target characteristic is a required parameter", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    if (queueCopy && handlerCopy)
    {
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke;
      v58[3] = &unk_2786D65D8;
      v59 = 0;
      v60 = handlerCopy;
      dispatch_async(queueCopy, v58);

      v20 = v60;
      goto LABEL_30;
    }
  }

LABEL_31:

  v45 = *MEMORY[0x277D85DE8];
}

void __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid parameter." reason:@"Characteristic is a required parameter." suggestion:0 underlyingError:0];
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke_90(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Invalid parameter." reason:@"The timeout must not be negative." suggestion:0 underlyingError:0];
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke_94(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:42 description:@"TTL already expired." reason:0 suggestion:0 underlyingError:0];
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke_98(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:14 description:@"Read failed." reason:@"There is no server present for the accessory." suggestion:0 underlyingError:0 marker:2301];
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void __92__HAPAccessory_readValueForCharacteristic_timeout_expiry_completionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    v12 = v5;
    v6 = [a2 firstObject];
    v7 = [v6 characteristic];
    if ([v7 isEqual:*(a1 + 32)])
    {
      v8 = [v6 error];

      if (v8)
      {
        v9 = [v6 error];
LABEL_7:
        v10 = v9;
        v11 = *(a1 + 32);
        (*(*(a1 + 40) + 16))();

        v5 = v12;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v9 = v12;
    goto LABEL_7;
  }

LABEL_8:
}

- (id)shortDescription
{
  v3 = HAPIsInternalBuild();
  v4 = MEMORY[0x277CCACA8];
  if (v3)
  {
    name = [(HAPAccessory *)self name];
    identifier = [(HAPAccessory *)self identifier];
    instanceID = [(HAPAccessory *)self instanceID];
    v8 = [v4 stringWithFormat:@"%@/%@+%@", name, identifier, instanceID];
  }

  else
  {
    name = [(HAPAccessory *)self identifier];
    identifier = [(HAPAccessory *)self instanceID];
    v8 = [v4 stringWithFormat:@"%@+%@", name, identifier];
  }

  return v8;
}

- (NSNumber)category
{
  server = [(HAPAccessory *)self server];
  if (server && (v4 = server, v5 = [(HAPAccessory *)self isPrimary], v4, v5))
  {
    server2 = [(HAPAccessory *)self server];
    category = [server2 category];
  }

  else
  {
    category = 0;
  }

  return category;
}

- (NSString)uniqueIdentifier
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (!self->_uniqueIdentifier)
  {
    WeakRetained = objc_loadWeakRetained(&self->_server);

    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained(&self->_server);
      identifier = [v4 identifier];
      v6 = HAPUniqueIdentifier(identifier, self->_instanceID);
      uniqueIdentifier = self->_uniqueIdentifier;
      self->_uniqueIdentifier = v6;
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        identifier = self->_identifier;
        v15 = 138543618;
        v16 = v10;
        v17 = 2112;
        v18 = identifier;
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot create globally unique identifier because there is no server for accessory: %@", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  v12 = self->_uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)setConsecutiveFailedPingCount:(int)count
{
  os_unfair_lock_lock_with_options();
  self->_consecutiveFailedPingCount = count;

  os_unfair_lock_unlock(&self->_lock);
}

- (int)consecutiveFailedPingCount
{
  os_unfair_lock_lock_with_options();
  consecutiveFailedPingCount = self->_consecutiveFailedPingCount;
  os_unfair_lock_unlock(&self->_lock);
  return consecutiveFailedPingCount;
}

- (BOOL)shouldDisconnectOnIdle
{
  os_unfair_lock_lock_with_options();
  shouldDisconnectOnIdle = self->_shouldDisconnectOnIdle;
  os_unfair_lock_unlock(&self->_lock);
  return shouldDisconnectOnIdle;
}

- (void)setSuspendedState:(unint64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_suspendedState = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)suspendedState
{
  os_unfair_lock_lock_with_options();
  suspendedState = self->_suspendedState;
  os_unfair_lock_unlock(&self->_lock);
  return suspendedState;
}

- (void)setLinkLayerType:(int64_t)type
{
  os_unfair_lock_lock_with_options();
  self->_linkLayerType = type;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)linkLayerType
{
  os_unfair_lock_lock_with_options();
  linkLayerType = self->_linkLayerType;
  os_unfair_lock_unlock(&self->_lock);
  return linkLayerType;
}

- (BOOL)isReachable
{
  os_unfair_lock_lock_with_options();
  reachable = self->_reachable;
  os_unfair_lock_unlock(&self->_lock);
  return reachable;
}

- (BOOL)isPaired
{
  server = [(HAPAccessory *)self server];
  isPaired = [server isPaired];

  return isPaired;
}

- (NSString)description
{
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  instanceID = [(HAPAccessory *)self instanceID];
  [v4 appendFormat:@"Instance ID: %@    ", instanceID];

  v6 = HAPIsInternalBuild();
  if (v6)
  {
    server = [(HAPAccessory *)self server];
    name = [server name];
  }

  else
  {
    name = @"<private>";
  }

  server2 = [(HAPAccessory *)self server];
  identifier = [server2 identifier];
  [v4 appendFormat:@"Server: '%@' (%@)    ", name, identifier];

  if (v6)
  {
  }

  if ([(HAPAccessory *)self isPrimary])
  {
    category = [(HAPAccessory *)self category];
    [v4 appendFormat:@"Category: %@    ", category];
  }

  name2 = [(HAPAccessory *)self name];

  if (name2)
  {
    if (HAPIsInternalBuild())
    {
      name3 = [(HAPAccessory *)self name];
      [v4 appendFormat:@"Name: %@    ", name3];
    }

    else
    {
      [v4 appendFormat:@"Name: %@    ", @"<private>"];
    }
  }

  v13 = HAPAccessorySuspendedStateDescription([(HAPAccessory *)self suspendedState]);
  [v4 appendFormat:@"Suspended State: %@    ", v13];

  model = [(HAPAccessory *)self model];
  if (model || ([(HAPAccessory *)self manufacturer], (model = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    serialNumber = [(HAPAccessory *)self serialNumber];

    if (!serialNumber)
    {
      goto LABEL_22;
    }
  }

  model2 = [(HAPAccessory *)self model];

  if (model2)
  {
    model3 = [(HAPAccessory *)self model];
    [v4 appendFormat:@"Model: %@    ", model3];
  }

  manufacturer = [(HAPAccessory *)self manufacturer];

  if (manufacturer)
  {
    manufacturer2 = [(HAPAccessory *)self manufacturer];
    [v4 appendFormat:@"Manufacturer: %@    ", manufacturer2];
  }

  serialNumber2 = [(HAPAccessory *)self serialNumber];

  if (serialNumber2)
  {
    serialNumber3 = [(HAPAccessory *)self serialNumber];
    [v4 appendFormat:@"Serial Number: %@    ", serialNumber3];
  }

  [v4 appendFormat:@"\n"];
LABEL_22:
  services = [(HAPAccessory *)self services];
  [v4 appendFormat:@"Services: %@    ", services];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    instanceID = [(HAPAccessory *)self instanceID];
    instanceID2 = [(HAPAccessory *)v6 instanceID];
    v9 = [instanceID isEqualToNumber:instanceID2];

    if (!v9)
    {
      goto LABEL_10;
    }

    identifier = [(HAPAccessory *)self identifier];
    identifier2 = [(HAPAccessory *)v6 identifier];
    v12 = [identifier isEqualToString:identifier2];

    if (!v12)
    {
      goto LABEL_10;
    }

    linkType = [(HAPAccessory *)self linkType];
    if (linkType == [(HAPAccessory *)v6 linkType])
    {
      communicationProtocol = [(HAPAccessory *)self communicationProtocol];
      v15 = communicationProtocol == [(HAPAccessory *)v6 communicationProtocol];
    }

    else
    {
LABEL_10:
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  identifier = [(HAPAccessory *)self identifier];
  v4 = [identifier hash];
  instanceID = [(HAPAccessory *)self instanceID];
  v6 = [instanceID hash];

  return v6 ^ v4;
}

- (HAPAccessory)initWithServer:(id)server instanceID:(id)d parsedServices:(id)services
{
  v56 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  dCopy = d;
  servicesCopy = services;
  if (isValidInstanceID(dCopy))
  {
    v51.receiver = self;
    v51.super_class = HAPAccessory;
    v11 = [(HAPAccessory *)&v51 init];
    self = v11;
    if (v11)
    {
      objc_storeWeak(&v11->_server, serverCopy);
      self->_linkType = [serverCopy linkType];
      self->_communicationProtocol = [serverCopy communicationProtocol];
      objc_storeStrong(&self->_instanceID, d);
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("com.apple.HAPAccessory", v12);
      workQueue = self->_workQueue;
      self->_workQueue = v13;

      if (servicesCopy)
      {
        if ([servicesCopy count] >= 0x65)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = HMFGetLogIdentifier();
            *buf = 138543362;
            v55 = v17;
            v18 = "%{public}@### Accessory exceeds maximum number of allowed services";
LABEL_9:
            _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);

            goto LABEL_10;
          }

          goto LABEL_10;
        }

        objc_storeStrong(&self->_services, services);
        if (![(HAPAccessory *)self _validateCharacteristicValues])
        {
          v15 = objc_autoreleasePoolPush();
          v16 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }

          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v55 = v17;
          v18 = "%{public}@### Accessory failed validateCharacteristicValues";
          goto LABEL_9;
        }

        if (![(HAPAccessory *)self _updateAndValidateServices])
        {
          v15 = objc_autoreleasePoolPush();
          v16 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_10;
          }

          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v55 = v17;
          v18 = "%{public}@### Accessory failed _updateAndValidateServices";
          goto LABEL_9;
        }
      }

      v38 = servicesCopy;
      self->_consecutiveFailedPingCount = 0;
      self->_primary = 1;
      self->_reachable = 1;
      self->_shouldDisconnectOnIdle = 0;
      v39 = serverCopy;
      if ([serverCopy wakeNumber])
      {
        self->_suspendedState = 3;
      }

      selfCopy = self;
      self->_suspendCapable = 0;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      obj = [(HAPAccessory *)self services];
      v20 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v48;
        v23 = @"00000221-0000-1000-8000-0026BB765291";
        do
        {
          v24 = 0;
          v41 = v21;
          do
          {
            if (*v48 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v47 + 1) + 8 * v24);
            type = [v25 type];
            v27 = [type isEqualToString:v23];

            if (v27)
            {
              v28 = v23;
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              characteristics = [v25 characteristics];
              v30 = [characteristics countByEnumeratingWithState:&v43 objects:v52 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v44;
                while (2)
                {
                  for (i = 0; i != v31; ++i)
                  {
                    if (*v44 != v32)
                    {
                      objc_enumerationMutation(characteristics);
                    }

                    type2 = [*(*(&v43 + 1) + 8 * i) type];
                    v35 = [type2 isEqualToString:@"00000251-0000-1000-8000-0026BB765291"];

                    if (v35)
                    {
                      selfCopy->_suspendCapable = 1;
                      goto LABEL_31;
                    }
                  }

                  v31 = [characteristics countByEnumeratingWithState:&v43 objects:v52 count:16];
                  if (v31)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_31:

              v23 = v28;
              v21 = v41;
            }

            ++v24;
          }

          while (v24 != v21);
          v21 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
        }

        while (v21);
      }

      self = selfCopy;
      serverCopy = v39;
      servicesCopy = v38;
    }

    self = self;
    selfCopy2 = self;
    goto LABEL_36;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v55 = v17;
    v18 = "%{public}@### Unable to initialize accessory because of invalid arguments";
    goto LABEL_9;
  }

LABEL_10:

  objc_autoreleasePoolPop(v15);
  selfCopy2 = 0;
LABEL_36:

  v36 = *MEMORY[0x277D85DE8];
  return selfCopy2;
}

- (HAPAccessory)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t56 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t56, &__block_literal_global_19922);
  }

  v3 = logCategory__hmf_once_v57;

  return v3;
}

uint64_t __27__HAPAccessory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v57 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isAccessoryPrimaryWithUniqueIdentifier:(id)identifier
{
  v3 = [identifier componentsSeparatedByString:@"+"];
  if ([v3 count] == 2)
  {
    v4 = [v3 objectAtIndexedSubscript:1];
    v5 = [v4 isEqualToString:@"1"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)productDataStringFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = dataCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 hmf_hexadecimalStringWithOptions:2];

  return v6;
}

+ (BOOL)isAccessoryPairedWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = +[HAPSystemKeychainStore systemStore];
    v13 = 0;
    v14 = 0;
    [v4 getControllerPublicKey:&v14 secretKey:0 username:0 allowCreation:0 forAccessory:identifierCopy error:&v13];
    v5 = v14;
    v6 = v13;

    v7 = 0;
    if (!v6 && v5)
    {
      v12 = 0;
      v8 = +[HAPSystemKeychainStore systemStore];
      v11 = 0;
      v9 = [v8 readPublicKeyForAccessoryName:identifierCopy registeredWithHomeKit:&v12 error:&v11];
      v6 = v11;

      v7 = 0;
      if (!v6 && v9)
      {
        v7 = v12;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

@end