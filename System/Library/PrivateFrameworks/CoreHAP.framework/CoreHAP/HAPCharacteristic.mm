@interface HAPCharacteristic
+ (id)dummy;
+ (id)hap2_shortTypeFromUUID:(id)a3;
- (BOOL)hap2_canUseCachedValue;
- (BOOL)hap2_mergeWithCharacteristic:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)mergeObject:(id)a3;
- (BOOL)supportsAdditionalAuthorizationData;
- (BOOL)supportsWriteWithResponse;
- (CBCharacteristic)cbCharacteristic;
- (HAPCharacteristic)initWithType:(id)a3 instanceID:(id)a4 value:(id)a5 stateNumber:(id)a6 properties:(unsigned __int16)a7 eventNotificationsEnabled:(BOOL)a8 implicitWriteWithResponse:(BOOL)a9 metadata:(id)a10;
- (HAPService)service;
- (NSData)notificationContext;
- (NSDate)valueUpdatedTime;
- (NSNumber)stateNumber;
- (NSString)description;
- (id)_generateValidMetadata:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initDummy;
- (id)propertiesDescription;
- (id)shortDescription;
- (id)validateValue:(id)a3 outValue:(id *)a4;
- (id)value;
- (unint64_t)hash;
- (void)_updateMetadata:(id)a3 withProvidedMetadata:(id)a4;
- (void)setNotificationContext:(id)a3;
- (void)setStateNumber:(id)a3;
- (void)setValue:(id)a3;
- (void)setValueUpdatedTime:(id)a3;
@end

@implementation HAPCharacteristic

- (CBCharacteristic)cbCharacteristic
{
  v2 = objc_getAssociatedObject(self, "cbCharacteristic");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hap2_canUseCachedValue
{
  v3 = +[HAPMetadata getSharedInstance];
  if ([(HAPCharacteristic *)self eventNotificationsEnabled]&& ![(HAPCharacteristic *)self prohibitCaching])
  {
    v5 = [(HAPCharacteristic *)self value];
    v4 = 0;
    if (v5 && v3)
    {
      v6 = [(HAPCharacteristic *)self type];
      v4 = [v3 isStandardHAPCharacteristic:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hap2_mergeWithCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [v4 value];
  [(HAPCharacteristic *)self setValue:v5];

  v6 = [v4 valueUpdatedTime];
  [(HAPCharacteristic *)self setValueUpdatedTime:v6];

  -[HAPCharacteristic setProperties:](self, "setProperties:", [v4 properties]);
  v7 = [v4 metadata];

  [(HAPCharacteristic *)self setMetadata:v7];
  return 1;
}

+ (id)hap2_shortTypeFromUUID:(id)a3
{
  v3 = a3;
  v4 = v3;
  if ([v3 hasSuffix:@"-0000-1000-8000-0026BB765291"])
  {
    v4 = [v3 substringToIndex:{objc_msgSend(v3, "length") - objc_msgSend(@"-0000-1000-8000-0026BB765291", "length")}];
  }

  return v4;
}

- (id)validateValue:(id)a3 outValue:(id *)a4
{
  v102 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HAPCharacteristic *)self metadata];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = v7;
  v9 = [(HAPCharacteristic *)self metadata];
  if (!v9)
  {

LABEL_7:
    v15 = [(HAPCharacteristic *)self metadata];
    v16 = [v15 format];

    if (a4)
    {
      *a4 = 0;
    }

    if (!v6)
    {
      v14 = 0;
LABEL_66:

      goto LABEL_67;
    }

    v17 = [(HAPCharacteristic *)self metadata];
    if (v17)
    {
      v18 = [(HAPCharacteristic *)self metadata];
      v19 = [v18 constraints];

      if (v19)
      {
        v20 = [(HAPCharacteristic *)self metadata];
        v21 = [v20 constraints];
        v17 = [v21 minimumValue];

        v22 = [(HAPCharacteristic *)self metadata];
        v23 = [v22 constraints];
        v24 = [v23 maximumValue];

        v25 = [(HAPCharacteristic *)self metadata];
        v26 = [v25 constraints];
        v27 = [v26 minLength];

        v28 = [(HAPCharacteristic *)self metadata];
        v29 = [v28 constraints];
        v93 = [v29 maxLength];

        v30 = v27;
      }

      else
      {
        v93 = 0;
        v30 = 0;
        v24 = 0;
        v17 = 0;
      }
    }

    else
    {
      v93 = 0;
      v30 = 0;
      v24 = 0;
    }

    if ([v16 isEqualToString:@"int"] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"float") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"BOOL") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"int8") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"int16") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"int64") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"uint8") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"uint16") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"uint32") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"uint64"))
    {
      v31 = 0x277CCABB0;
    }

    else if ([v16 isEqualToString:@"string"])
    {
      v31 = 0x277CCACA8;
    }

    else if ([v16 isEqualToString:@"date"])
    {
      v31 = 0x277CBEAA8;
    }

    else if ([v16 isEqualToString:@"array"])
    {
      v31 = 0x277CBEA60;
    }

    else if ([v16 isEqualToString:@"dict"])
    {
      v31 = 0x277D82BB8;
    }

    else
    {
      if (([v16 isEqualToString:@"data"] & 1) == 0 && !objc_msgSend(v16, "isEqualToString:", @"tlv8"))
      {
        v33 = 0;
LABEL_29:
        if (([objc_opt_class() isSubclassOfClass:v33] & 1) == 0)
        {
          v40 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:43];
          v41 = objc_autoreleasePoolPush();
          v42 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v90 = v16;
            v43 = v24;
            v44 = v17;
            v46 = v45 = v30;
            v47 = [(HAPCharacteristic *)self type];
            *buf = 138544130;
            v95 = v46;
            v96 = 2112;
            v97 = v47;
            v98 = 2112;
            v99 = objc_opt_class();
            v100 = 2112;
            v101 = v33;
            v48 = v99;
            _os_log_impl(&dword_22AADC000, v42, OS_LOG_TYPE_ERROR, "%{public}@### Failed to validate value for characteristic with type '%@' because the value was of class '%@' but should be '%@'", buf, 0x2Au);

            v30 = v45;
            v17 = v44;
            v24 = v43;
            v16 = v90;
          }

          objc_autoreleasePoolPop(v41);
          goto LABEL_65;
        }

        if (!a4)
        {
LABEL_48:
          if (([v16 isEqualToString:@"int"] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"float") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"int8") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"int16") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"int64") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"uint8") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"uint16") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"uint32") & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"uint64"))
          {
            if (v17 && [v6 compare:v17] == -1)
            {
              v66 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:44];
              if (a4)
              {
                *a4 = 0;
              }
            }

            else
            {
              v66 = 0;
            }

            if (v24 && [v6 compare:v24] == 1)
            {
              v40 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:45];

              if (a4)
              {
                *a4 = 0;
              }
            }

            else
            {
              v40 = v66;
            }

            goto LABEL_65;
          }

          if ([v16 isEqualToString:@"BOOL"])
          {
            v69 = objc_opt_class();
            if (([v69 isSubclassOfClass:objc_opt_class()] & 1) == 0)
            {
              v70 = v30;
              if ([v69 isSubclassOfClass:objc_opt_class()])
              {
                if ([v6 intValue] < 2)
                {
                  v40 = 0;
LABEL_105:
                  v30 = v70;
                  goto LABEL_65;
                }

                v71 = objc_autoreleasePoolPush();
                v72 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                {
                  v73 = HMFGetLogIdentifier();
                  v74 = objc_opt_class();
                  v75 = v6;
                  v91 = v74;
                  *buf = 138544130;
                  v95 = v73;
                  v96 = 2112;
                  v97 = v6;
                  v98 = 2112;
                  v99 = v74;
                  v100 = 2080;
                  v101 = [v6 objCType];
                  _os_log_impl(&dword_22AADC000, v72, OS_LOG_TYPE_ERROR, "%{public}@Value to be validated is expected to be either '0' or '1', instead it was '%@' - class %@  objCType %s", buf, 0x2Au);
                }
              }

              else
              {
                v71 = objc_autoreleasePoolPush();
                v83 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                {
                  v84 = HMFGetLogIdentifier();
                  *buf = 138543874;
                  v95 = v84;
                  v96 = 2112;
                  v97 = v6;
                  v98 = 2112;
                  v99 = v69;
                  _os_log_impl(&dword_22AADC000, v83, OS_LOG_TYPE_ERROR, "%{public}@inValue not a BOOLean value %@ - class %@", buf, 0x20u);
                }
              }

              objc_autoreleasePoolPop(v71);
              v40 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:3];
              if (a4)
              {
                *a4 = 0;
              }

              goto LABEL_105;
            }

LABEL_88:
            v40 = 0;
LABEL_65:
            v14 = v40;

            goto LABEL_66;
          }

          if (![v16 isEqualToString:@"string"])
          {
            goto LABEL_88;
          }

          v92 = v30;
          v76 = v6;
          v77 = [v76 length];
          if (v77 <= [v93 unsignedIntValue])
          {
            v85 = [v76 length];
            if (v85 >= [v30 unsignedIntValue])
            {
              v40 = 0;
LABEL_107:

              v30 = v92;
              goto LABEL_65;
            }

            v86 = objc_autoreleasePoolPush();
            v87 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
            {
              v88 = HMFGetLogIdentifier();
              *buf = 138543874;
              v95 = v88;
              v96 = 2048;
              v97 = [v76 length];
              v98 = 1024;
              LODWORD(v99) = [v92 unsignedIntValue];
              _os_log_impl(&dword_22AADC000, v87, OS_LOG_TYPE_ERROR, "%{public}@inValue string.length: %lu < minLength: %u", buf, 0x1Cu);
            }

            objc_autoreleasePoolPop(v86);
            v81 = MEMORY[0x277CCA9B8];
            v82 = 51;
          }

          else
          {
            v78 = objc_autoreleasePoolPush();
            v79 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              v80 = HMFGetLogIdentifier();
              *buf = 138543874;
              v95 = v80;
              v96 = 2048;
              v97 = [v76 length];
              v98 = 1024;
              LODWORD(v99) = [v93 unsignedIntValue];
              _os_log_impl(&dword_22AADC000, v79, OS_LOG_TYPE_ERROR, "%{public}@inValue string.length: %lu > maxLength: %u", buf, 0x1Cu);
            }

            objc_autoreleasePoolPop(v78);
            v81 = MEMORY[0x277CCA9B8];
            v82 = 46;
          }

          v40 = [v81 errorWithHMErrorCode:{v82, v92}];
          if (a4)
          {
            *a4 = 0;
          }

          goto LABEL_107;
        }

        v89 = v24;
        v34 = v17;
        v35 = v30;
        v36 = [(HAPCharacteristic *)self metadata];
        v37 = [v36 constraints];
        v38 = [v37 stepValue];
        if (v38)
        {
          v39 = v38;
          if ([v16 isEqualToString:@"float"])
          {

LABEL_39:
            v50 = [(HAPCharacteristic *)self metadata];
            v51 = [v50 constraints];
            v52 = [v51 stepValue];
            [v52 doubleValue];
            v54 = v53;

            v55 = [(HAPCharacteristic *)self metadata];
            v56 = [v55 constraints];
            v57 = [v56 minimumValue];

            if (v57)
            {
              v58 = [(HAPCharacteristic *)self metadata];
              v59 = [v58 constraints];
              v60 = [v59 minimumValue];
              [v60 doubleValue];
              v62 = v61;
            }

            else
            {
              v62 = 0.0;
            }

            [v6 doubleValue];
            v65 = v62 + round((v64 - v62) / v54) * v54;
            v30 = v35;
            if ([v16 isEqualToString:@"int"])
            {
              [MEMORY[0x277CCABB0] numberWithInteger:v65];
            }

            else
            {
              [MEMORY[0x277CCABB0] numberWithDouble:v65];
            }

            v63 = v17 = v34;
            goto LABEL_47;
          }

          v49 = [v16 isEqualToString:@"int"];

          if (v49)
          {
            goto LABEL_39;
          }
        }

        else
        {
        }

        v63 = v6;
        v30 = v35;
        v17 = v34;
LABEL_47:
        v24 = v89;
        *a4 = v63;
        goto LABEL_48;
      }

      v31 = 0x277CBEA90;
    }

    v32 = *v31;
    v33 = objc_opt_class();
    goto LABEL_29;
  }

  v10 = v9;
  v11 = [(HAPCharacteristic *)self metadata];
  v12 = [v11 format];

  if (v12)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (a4)
  {
    v13 = v6;
    v14 = 0;
    *a4 = v6;
  }

  else
  {
    v14 = 0;
  }

LABEL_67:

  v67 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_generateValidMetadata:(id)a3
{
  v4 = a3;
  v5 = +[HAPMetadata getSharedInstance];
  v6 = [(HAPCharacteristic *)self type];
  v7 = [v5 getDefaultCharacteristicMetadata:v6];

  v8 = v4;
  if (v7)
  {
    v8 = v7;
    if (v4)
    {
      [(HAPCharacteristic *)self _updateMetadata:v7 withProvidedMetadata:v4];
      v8 = v7;
    }
  }

  v9 = v8;

  return v9;
}

- (void)_updateMetadata:(id)a3 withProvidedMetadata:(id)a4
{
  v40 = a3;
  v5 = a4;
  v6 = [v40 format];

  if (!v6)
  {
    v7 = [v5 format];
    [v40 setFormat:v7];
  }

  v8 = [v40 units];

  if (!v8)
  {
    v9 = [v5 units];
    [v40 setUnits:v9];
  }

  v10 = [v40 manufacturerDescription];

  if (!v10)
  {
    v11 = [v5 manufacturerDescription];
    [v40 setManufacturerDescription:v11];
  }

  v12 = [v40 constraints];

  v13 = [v5 constraints];
  v14 = v13;
  if (!v12)
  {
    [v40 setConstraints:v13];
    goto LABEL_20;
  }

  if (v14)
  {
    v15 = [v5 constraints];
    v16 = [v15 minimumValue];

    if (v16)
    {
      v17 = [v5 constraints];
      v18 = [v17 minimumValue];
      v19 = [v40 constraints];
      [v19 setMinimumValue:v18];
    }

    v20 = [v5 constraints];
    v21 = [v20 maximumValue];

    if (v21)
    {
      v22 = [v5 constraints];
      v23 = [v22 maximumValue];
      v24 = [v40 constraints];
      [v24 setMaximumValue:v23];
    }

    v25 = [v5 constraints];
    v26 = [v25 stepValue];

    if (v26)
    {
      v27 = [v5 constraints];
      v28 = [v27 stepValue];
      v29 = [v40 constraints];
      [v29 setStepValue:v28];
    }

    v30 = [v5 constraints];
    v31 = [v30 maxLength];

    if (v31)
    {
      v32 = [v5 constraints];
      v33 = [v32 maxLength];
      v34 = [v40 constraints];
      [v34 setMaxLength:v33];
    }

    v35 = [v5 constraints];
    v36 = [v35 validValues];
    v37 = [v36 count];

    if (v37)
    {
      v14 = [v5 constraints];
      v38 = [v14 validValues];
      v39 = [v40 constraints];
      [v39 setValidValues:v38];

LABEL_20:
    }
  }
}

- (HAPService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (BOOL)mergeObject:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    goto LABEL_13;
  }

  if (![(HAPCharacteristic *)self shouldMergeObject:v6])
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v21;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%{public}@Not merging with characteristic: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    goto LABEL_13;
  }

  v7 = [v6 value];
  [(HAPCharacteristic *)self setValue:v7];

  v8 = [(HAPCharacteristic *)self metadata];
  v9 = [v6 metadata];
  v10 = [v8 isEqualToCharacteristicMetadata:v9];

  if (v10)
  {
LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v6 metadata];
    v24 = 138543618;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%{public}@Updated the characteristic metadata: %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [v6 metadata];
  [(HAPCharacteristic *)v12 setMetadata:v16];

  v17 = 1;
LABEL_14:

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)supportsAdditionalAuthorizationData
{
  if (([(HAPCharacteristic *)self properties]& 0x10) != 0)
  {
    return 1;
  }

  v3 = +[HAPMetadata getSharedInstance];
  v4 = [(HAPCharacteristic *)self service];
  v5 = [(HAPCharacteristic *)self type];
  v6 = [v4 type];
  v7 = [v3 supportsAdditionalAuthorizationData:v5 forService:v6];

  return v7;
}

- (BOOL)supportsWriteWithResponse
{
  v3 = [(HAPCharacteristic *)self properties];
  if ((v3 & 0x80) != 0)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    return [(HAPCharacteristic *)self isWriteWithResponseImplicitlySupported]& (v3 >> 2);
  }

  return v4;
}

- (NSData)notificationContext
{
  os_unfair_lock_lock_with_options();
  v3 = self->_notificationContext;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setNotificationContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  notificationContext = self->_notificationContext;
  self->_notificationContext = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)valueUpdatedTime
{
  os_unfair_lock_lock_with_options();
  v3 = self->_valueUpdatedTime;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setValueUpdatedTime:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  valueUpdatedTime = self->_valueUpdatedTime;
  self->_valueUpdatedTime = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)stateNumber
{
  os_unfair_lock_lock_with_options();
  v3 = self->_stateNumber;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setStateNumber:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  stateNumber = self->_stateNumber;
  self->_stateNumber = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)value
{
  os_unfair_lock_lock_with_options();
  v3 = self->_value;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  os_unfair_lock_lock_with_options();
  value = self->_value;
  self->_value = v4;
  v7 = v4;

  valueUpdatedTime = self->_valueUpdatedTime;
  self->_valueUpdatedTime = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)propertiesDescription
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (([(HAPCharacteristic *)self properties]& 2) != 0)
  {
    [v3 addObject:@"read"];
  }

  if (([(HAPCharacteristic *)self properties]& 4) != 0)
  {
    [v3 addObject:@"write"];
  }

  if (([(HAPCharacteristic *)self properties]& 1) != 0)
  {
    [v3 addObject:@"eventConnectionNotifications"];
  }

  if (([(HAPCharacteristic *)self properties]& 8) != 0)
  {
    [v3 addObject:@"broadcast"];
  }

  if (([(HAPCharacteristic *)self properties]& 0x10) != 0)
  {
    [v3 addObject:@"additionalAuthData"];
  }

  if (([(HAPCharacteristic *)self properties]& 0x20) != 0)
  {
    [v3 addObject:@"requiresTimedWrite"];
  }

  if (([(HAPCharacteristic *)self properties]& 0x40) != 0)
  {
    [v3 addObject:@"hidden"];
  }

  if (([(HAPCharacteristic *)self properties]& 0x80) != 0)
  {
    [v3 addObject:@"writeResponse"];
  }

  if (([(HAPCharacteristic *)self properties]& 0x100) != 0)
  {
    [v3 addObject:@"eventNotificationContext"];
  }

  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v5 = [v3 objectAtIndexedSubscript:0];
    [v4 appendString:v5];

    v6 = [v3 objectAtIndexedSubscript:0];
    [v3 removeObject:v6];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v4 appendFormat:@", %@", *(*(&v14 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v4 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)shortDescription
{
  v3 = [(HAPCharacteristic *)self service];
  v4 = [v3 accessory];
  v5 = [v4 uniqueIdentifier];

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = [(HAPCharacteristic *)self instanceID];
  v9 = [(HAPCharacteristic *)self type];
  v10 = HAPShortUUIDType(v9);
  v11 = [(HAPCharacteristic *)self stateNumber];
  v12 = [(HAPCharacteristic *)self value];
  v13 = [(HAPCharacteristic *)self valueUpdatedTime];
  v14 = [v6 stringWithFormat:@"%@ %@/%@/%@/%@ %@/%@", v7, v5, v8, v10, v11, v12, v13];

  return v14;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v20.receiver = self;
  v20.super_class = HAPCharacteristic;
  v4 = [(HMFObject *)&v20 description];
  [v3 appendFormat:@"%@", v4];

  v5 = [(HAPCharacteristic *)self service];
  v6 = [v5 accessory];
  v7 = [v6 uniqueIdentifier];
  [v3 appendFormat:@", Accessory Unique ID: %@", v7];

  v8 = [(HAPCharacteristic *)self instanceID];
  [v3 appendFormat:@", Instance ID: %@", v8];

  v9 = [(HAPCharacteristic *)self type];
  [v3 appendFormat:@", Type: %@", v9];

  v10 = [(HAPCharacteristic *)self value];
  [v3 appendFormat:@", Value: %@", v10];

  v11 = [(HAPCharacteristic *)self stateNumber];
  [v3 appendFormat:@", State Number: %@", v11];

  v12 = [(HAPCharacteristic *)self valueUpdatedTime];
  v13 = [v12 hmf_localTimeDescription];
  [v3 appendFormat:@", Value update time: %@", v13];

  v14 = [(HAPCharacteristic *)self propertiesDescription];
  [v3 appendFormat:@", Properties: %@", v14];

  [(HAPCharacteristic *)self eventNotificationsEnabled];
  v15 = HMFBooleanToString();
  [v3 appendFormat:@", Event Notifications Enabled: %@", v15];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HAPCharacteristic isWriteWithResponseImplicitlySupported](self, "isWriteWithResponseImplicitlySupported")}];
  [v3 appendFormat:@", Write With Response Implicitly Supported: %@", v16];

  v17 = [(HAPCharacteristic *)self metadata];
  [v3 appendFormat:@", Metadata: %@", v17];

  [(HAPCharacteristic *)self supportsEventNotificationContext];
  v18 = HMFBooleanToString();
  [v3 appendFormat:@", supportsEventNotificationContext: %@", v18];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_15;
    }

    v7 = [(HAPCharacteristic *)self instanceID];
    v8 = [(HAPCharacteristic *)v6 instanceID];
    v9 = numbersAreNotEqualNilSafe(v7, v8);

    if (v9)
    {
      goto LABEL_15;
    }

    v10 = [(HAPCharacteristic *)self type];
    v11 = [(HAPCharacteristic *)v6 type];
    if (v10 | v11)
    {
      v12 = v11;
      v13 = [v10 isEqualToString:v11];

      if (!v13)
      {
        goto LABEL_15;
      }
    }

    v15 = [(HAPCharacteristic *)self properties];
    if (v15 == [(HAPCharacteristic *)v6 properties])
    {
      v16 = [(HAPCharacteristic *)self service];
      if (v16)
      {
        v17 = v16;
        v18 = [(HAPCharacteristic *)v6 service];
        if (v18)
        {
          v19 = v18;
          v20 = [(HAPCharacteristic *)self service];
          v21 = [(HAPCharacteristic *)v6 service];
          v14 = [v20 isEqual:v21];
        }

        else
        {
          v14 = 1;
        }
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
LABEL_15:
      v14 = 0;
    }
  }

  return v14 & 1;
}

- (unint64_t)hash
{
  v2 = [(HAPCharacteristic *)self instanceID];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(HAPCharacteristic *)self value];
  if (([v5 conformsToProtocol:&unk_283EACBD0] & 1) == 0)
  {

    goto LABEL_5;
  }

  v6 = [(HAPCharacteristic *)self value];

  if (!v6)
  {
LABEL_5:
    v6 = [(HAPCharacteristic *)self value];
    v7 = [v6 copy];
    goto LABEL_6;
  }

  v7 = [v6 copyWithZone:a3];
LABEL_6:
  v25 = v7;

  v22 = objc_alloc(objc_opt_class());
  v24 = [(HAPCharacteristic *)self type];
  v21 = [v24 copyWithZone:a3];
  v23 = [(HAPCharacteristic *)self instanceID];
  v8 = [v23 copyWithZone:a3];
  v9 = [(HAPCharacteristic *)self stateNumber];
  v10 = [v9 copyWithZone:a3];
  v11 = [(HAPCharacteristic *)self properties];
  v12 = [(HAPCharacteristic *)self eventNotificationsEnabled];
  v13 = [(HAPCharacteristic *)self isWriteWithResponseImplicitlySupported];
  v14 = [(HAPCharacteristic *)self metadata];
  v15 = [v14 copyWithZone:a3];
  LOBYTE(v20) = v13;
  v16 = [v22 initWithType:v21 instanceID:v8 value:v25 stateNumber:v10 properties:v11 eventNotificationsEnabled:v12 implicitWriteWithResponse:v20 metadata:v15];

  v17 = [(HAPCharacteristic *)self valueUpdatedTime];
  [v16 setValueUpdatedTime:v17];

  v18 = [(HAPCharacteristic *)self notificationContext];
  [v16 setNotificationContext:v18];

  [v16 setProhibitCaching:{-[HAPCharacteristic prohibitCaching](self, "prohibitCaching")}];
  [v16 setShouldValidateValueAfterReading:{-[HAPCharacteristic shouldValidateValueAfterReading](self, "shouldValidateValueAfterReading")}];

  return v16;
}

- (HAPCharacteristic)initWithType:(id)a3 instanceID:(id)a4 value:(id)a5 stateNumber:(id)a6 properties:(unsigned __int16)a7 eventNotificationsEnabled:(BOOL)a8 implicitWriteWithResponse:(BOOL)a9 metadata:(id)a10
{
  v11 = a7;
  v88 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v78 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a10;
  if (isValidTypeName(v16))
  {
    v77 = [v16 hap_validatedAndNormalizedUUIDString];
    if (v77)
    {
      if (isValidInstanceID(v78))
      {
        log = v77;
        v20 = +[HAPMetadata getSharedInstance];
        v73 = v20;
        if (v11)
        {
          if ((v11 & 0xF) != 0)
          {
            v21 = [v20 getDefaultCharacteristicProperties:log];
            v22 = v21;
            if (v21)
            {
              v70 = v21;
              v23 = [v21 unsignedIntegerValue];
              if ((v11 & 2) == 0 && (v23 & 2) != 0)
              {
                v24 = v19;
                v25 = objc_autoreleasePoolPush();
                v26 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  v27 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v81 = v27;
                  v82 = 2112;
                  v28 = log;
                  v83 = log;
                  v29 = "%{public}@### HomeKit Characteristic '%@' does not support secureRead.";
LABEL_11:
                  _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);

LABEL_52:
                  objc_autoreleasePoolPop(v25);

                  goto LABEL_27;
                }

                goto LABEL_51;
              }

              v22 = v70;
              if (v23 < 0 && (v11 & 0x80) == 0 && ((v11 & 4) == 0 || !a9))
              {
                v24 = v19;
                v25 = objc_autoreleasePoolPush();
                v26 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  v27 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v81 = v27;
                  v82 = 2114;
                  v28 = log;
                  v83 = log;
                  v29 = "%{public}@### HomeKit Characteristic '%{public}@' does not support writeResponse.";
                  goto LABEL_11;
                }

LABEL_51:
                v28 = log;
                goto LABEL_52;
              }
            }

            v48 = v19;
            v74 = v48;
            if (v48)
            {
              v49 = [v48 constraints];
              if (v49 || ([v74 manufacturerDescription], (v49 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v74, "format"), (v49 = objc_claimAutoreleasedReturnValue()) != 0))
              {

                v48 = v74;
              }

              else
              {
                v72 = [v74 units];

                v48 = v74;
                if (!v72)
                {
                  v24 = v19;
                  v64 = objc_autoreleasePoolPush();
                  v65 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                  {
                    v66 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v81 = v66;
                    _os_log_impl(&dword_22AADC000, v65, OS_LOG_TYPE_ERROR, "%{public}@### Characteristic metadata is empty", buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v64);
                  v44 = objc_autoreleasePoolPush();
                  v45 = HMFGetOSLogHandle();
                  if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_30;
                  }

                  v46 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v81 = v46;
                  v82 = 2112;
                  v83 = log;
                  v47 = "%{public}@### Unable to initialize characteristic '%@' because of invalid metadata";
                  goto LABEL_29;
                }
              }
            }

            v79.receiver = self;
            v79.super_class = HAPCharacteristic;
            v50 = [(HAPCharacteristic *)&v79 init];
            if (v50)
            {
              v69 = v19;
              v71 = +[HAPMetadata getSharedInstance];
              v51 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:log];
              type = v50->_type;
              v50->_type = v51;

              v53 = [v71 characteristicUTIFromType:log];
              if (v53)
              {
                context = objc_autoreleasePoolPush();
                loga = HMFGetOSLogHandle();
                if (os_log_type_enabled(loga, OS_LOG_TYPE_DEBUG))
                {
                  v67 = HMFGetLogIdentifier();
                  v54 = v50->_type;
                  *buf = 138544130;
                  v81 = v67;
                  v82 = 2112;
                  v83 = v54;
                  v84 = 2112;
                  v85 = v53;
                  v86 = 2112;
                  v87 = v78;
                  _os_log_impl(&dword_22AADC000, loga, OS_LOG_TYPE_DEBUG, "%{public}@%@ ----> %@ [%@]", buf, 0x2Au);
                }

                objc_autoreleasePoolPop(context);
              }

              objc_storeStrong(&v50->_instanceID, a4);
              objc_storeStrong(&v50->_value, a5);
              objc_storeStrong(&v50->_stateNumber, a6);
              v55 = [MEMORY[0x277CBEAA8] date];
              valueUpdatedTime = v50->_valueUpdatedTime;
              v50->_valueUpdatedTime = v55;

              v50->_properties = v11;
              v50->_eventNotificationsEnabled = a8;
              v50->_implicitWriteWithResponse = a9;
              v50->_shouldValidateValueAfterReading = 1;
              v57 = [HMFObjectCacheHAPCharacteristicMetadata hap_cacheInstanceForMetadata:v74];
              accessoryMetadata = v50->_accessoryMetadata;
              v50->_accessoryMetadata = v57;

              v59 = [(HAPCharacteristic *)v50 _generateValidMetadata:v74];
              v60 = [HMFObjectCacheHAPCharacteristicMetadata hap_cacheInstanceForMetadata:v59];
              metadata = v50->_metadata;
              v50->_metadata = v60;

              v19 = v69;
            }

            self = v50;
            v33 = self;
            goto LABEL_47;
          }

          v24 = v19;
          v40 = objc_autoreleasePoolPush();
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543362;
            v81 = v42;
            v43 = "%{public}@### Characteristic is missing valid properties";
            goto LABEL_25;
          }
        }

        else
        {
          v24 = v19;
          v40 = objc_autoreleasePoolPush();
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            *buf = 138543362;
            v81 = v42;
            v43 = "%{public}@### Characteristic has nil properties";
LABEL_25:
            _os_log_impl(&dword_22AADC000, v41, OS_LOG_TYPE_ERROR, v43, buf, 0xCu);
          }
        }

        v28 = log;

        objc_autoreleasePoolPop(v40);
LABEL_27:

        v44 = objc_autoreleasePoolPush();
        v45 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
LABEL_30:

          objc_autoreleasePoolPop(v44);
          v33 = 0;
          v19 = v24;
          goto LABEL_47;
        }

        v46 = HMFGetLogIdentifier();
        *buf = 138543618;
        v81 = v46;
        v82 = 2112;
        v83 = v28;
        v47 = "%{public}@### Unable to initialize characteristic '%@' because of invalid properties";
LABEL_29:
        _os_log_impl(&dword_22AADC000, v45, OS_LOG_TYPE_ERROR, v47, buf, 0x16u);

        goto LABEL_30;
      }

      v34 = objc_autoreleasePoolPush();
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v81 = v36;
        v82 = 2112;
        v83 = v77;
        v37 = "%{public}@### Unable to initialize characteristic '%@' because of invalid instance ID";
        v38 = v35;
        v39 = 22;
        goto LABEL_19;
      }
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543362;
        v81 = v36;
        v37 = "%{public}@### Unable to initialize characteristic because type name is not a UUID";
        v38 = v35;
        v39 = 12;
LABEL_19:
        _os_log_impl(&dword_22AADC000, v38, OS_LOG_TYPE_ERROR, v37, buf, v39);
      }
    }

    objc_autoreleasePoolPop(v34);
    v33 = 0;
LABEL_47:

    goto LABEL_48;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = HMFGetLogIdentifier();
    *buf = 138543618;
    v81 = v32;
    v82 = 2112;
    v83 = v16;
    _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_ERROR, "%{public}@### Unable to initialize characteristic because of invalid characteristic type name: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v30);
  v33 = 0;
LABEL_48:

  v62 = *MEMORY[0x277D85DE8];
  return v33;
}

- (id)initDummy
{
  v12.receiver = self;
  v12.super_class = HAPCharacteristic;
  v2 = [(HAPCharacteristic *)&v12 init];
  v3 = v2;
  if (v2)
  {
    type = v2->_type;
    v2->_type = @"Dummy Type";

    instanceID = v3->_instanceID;
    v3->_instanceID = 0;

    value = v3->_value;
    v3->_value = 0;

    stateNumber = v3->_stateNumber;
    v3->_stateNumber = 0;

    v8 = [MEMORY[0x277CBEAA8] date];
    valueUpdatedTime = v3->_valueUpdatedTime;
    v3->_valueUpdatedTime = v8;

    v3->_properties = 0;
    v3->_eventNotificationsEnabled = 0;
    v3->_implicitWriteWithResponse = 0;
    v3->_shouldValidateValueAfterReading = 0;
    metadata = v3->_metadata;
    v3->_metadata = 0;
  }

  return v3;
}

+ (id)dummy
{
  v2 = [[HAPCharacteristic alloc] initDummy];

  return v2;
}

@end