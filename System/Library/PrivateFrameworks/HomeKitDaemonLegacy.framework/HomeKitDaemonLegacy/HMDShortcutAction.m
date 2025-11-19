@interface HMDShortcutAction
+ (id)actionWithDictionaryRepresentation:(id)a3 home:(id)a4 actionSet:(id)a5;
+ (id)logCategory;
- (BOOL)isCompatibleWithAction:(id)a3;
- (BOOL)isUnsecuringAction;
- (BOOL)requiresDeviceUnlock;
- (HMDShortcutAction)initWithCoder:(id)a3;
- (HMDShortcutAction)initWithModelObject:(id)a3 parent:(id)a4 error:(id *)a5;
- (HMDShortcutAction)initWithSerializedShortcut:(id)a3 uuid:(id)a4 actionSet:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (id)removeShortcut;
- (id)stateDump;
- (uint64_t)doesActionSetContainItemsPassingTest:(void *)a3 actionSetUUIDs:;
- (uint64_t)doesAnyCharacteristicWriteTuplePassTest:(void *)a3 orDoesAnyActionSetPassTest:;
- (unint64_t)entitlementsForNotification;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithSource:(unint64_t)a3 clientName:(id)a4 completionHandler:(id)a5;
- (void)getCharacteristicsAndActionSetsFromShortcut:(void *)a3 characteristicWriteTuples:(void *)a4 homeUUID:;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)unpackActionsAndActionSets:(void *)a3 actionSets:(void *)a4 characteristicWriteTuples:(void *)a5 homeUUID:;
@end

@implementation HMDShortcutAction

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDShortcutAction allocWithZone:a3];
  shortcutData = self->_shortcutData;
  v6 = [(HMDAction *)self uuid];
  v7 = [(HMDAction *)self actionSet];
  v8 = [(HMDShortcutAction *)v4 initWithSerializedShortcut:shortcutData uuid:v6 actionSet:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = HMDShortcutAction;
  [(HMDAction *)&v6 encodeWithCoder:v4];
  shortcutData = self->_shortcutData;
  if (shortcutData)
  {
    [v4 encodeObject:shortcutData forKey:*MEMORY[0x277CD1598]];
  }
}

- (HMDShortcutAction)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDShortcutAction;
  v5 = [(HMDAction *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD1598]];
    __HMDShortcutActionInitializeWithSerializedShortcut(v5, v6);
  }

  return v5;
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    if (self)
    {
      v14 = 0;
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      v15 = objc_autoreleasePoolPush();
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v23 = v17;
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to process model update with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }

    v18 = [v10 responseHandler];

    if (v18)
    {
      v19 = [v10 responseHandler];
      (v19)[2](v19, v14, 0);
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = HMDShortcutAction;
    [(HMDAction *)&v21 transactionObjectUpdated:v8 newValues:v11 message:v10];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  if (a4 < 4)
  {
    v5 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = HMDShortcutAction;
    v5 = [(HMDAction *)&v10 modelObjectWithChangeType:a3 version:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = v7;
    if (v7)
    {
      [v7 setData:self->_shortcutData];
    }
  }

  return v5;
}

- (HMDShortcutAction)initWithModelObject:(id)a3 parent:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    objc_opt_class();
    v10 = objc_opt_isKindOfClass() & 1;
    if (v10)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    if (!v10)
    {
      if (a5)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
        *a5 = v21 = 0;
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_33;
    }

    v13 = [v8 uuid];
    if (!v13)
    {
      if (a5)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        *a5 = v21 = 0;
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_32;
    }

    v14 = [v8 data];
    if (v14)
    {
      if (!v9 || ((v15 = v9, objc_opt_class(), (v16 = objc_opt_isKindOfClass() & 1) == 0) ? (v17 = 0) : (v17 = v15), v18 = v17, v15, v16))
      {
        v25.receiver = self;
        v25.super_class = HMDShortcutAction;
        v19 = [(HMDAction *)&v25 initWithUUID:v13 actionSet:v9];
        if (v19)
        {
          v20 = [v14 copy];
          __HMDShortcutActionInitializeWithSerializedShortcut(v19, v20);
        }

        self = v19;

        v21 = self;
        goto LABEL_31;
      }

      if (a5)
      {
        v22 = MEMORY[0x277CCA9B8];
        v23 = 22;
        goto LABEL_29;
      }
    }

    else if (a5)
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = 3;
LABEL_29:
      [v22 hmErrorWithCode:v23];
      *a5 = v21 = 0;
LABEL_31:

LABEL_32:
LABEL_33:

      goto LABEL_34;
    }

    v21 = 0;
    goto LABEL_31;
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *a5 = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_34:

  return v21;
}

- (BOOL)isCompatibleWithAction:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HMDShortcutAction;
  if ([(HMDAction *)&v7 isCompatibleWithAction:v4])
  {
    v5 = [(NSData *)self->_shortcutData isEqual:v4[3]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)entitlementsForNotification
{
  v3.receiver = self;
  v3.super_class = HMDShortcutAction;
  return [(HMDAction *)&v3 entitlementsForNotification]| 4;
}

- (BOOL)isUnsecuringAction
{
  v3[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__HMDShortcutAction_isUnsecuringAction__block_invoke;
  v4[3] = &unk_279720B78;
  v4[4] = self;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__HMDShortcutAction_isUnsecuringAction__block_invoke_2;
  v3[3] = &unk_279720B78;
  return [(HMDShortcutAction *)self doesAnyCharacteristicWriteTuplePassTest:v4 orDoesAnyActionSetPassTest:v3];
}

BOOL __39__HMDShortcutAction_isUnsecuringAction__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    v4 = +[HMDHAPMetadata getSharedInstance];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __61__HMDShortcutAction_doesAnyCharacteristicTupleUnsecureAHome___block_invoke;
    v21[3] = &unk_279720BC8;
    v5 = v4;
    v22 = v5;
    Property = [v3 na_firstObjectPassingTest:v21];
    v8 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v7, 8, 1);
    }

    v9 = Property;

    v10 = v9 != 0;
    v11 = objc_autoreleasePoolPush();
    v12 = v2;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v9 service];
      v16 = [v15 accessory];
      v17 = v16;
      v18 = @"does not";
      *buf = 138543874;
      v24 = v14;
      v25 = 2112;
      if (v9)
      {
        v18 = &stru_286509E58;
      }

      v26 = v16;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[%@] %@ requires device to be unlock", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v10 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __39__HMDShortcutAction_isUnsecuringAction__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__HMDShortcutAction_doesActionSetContainUnsecuringAction___block_invoke;
    v12[3] = &unk_27972F278;
    v12[4] = v2;
    v4 = [(HMDShortcutAction *)v2 doesActionSetContainItemsPassingTest:v12 actionSetUUIDs:v3];
    v5 = objc_autoreleasePoolPush();
    v6 = v2;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = HMFBooleanToString();
      *buf = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Does this shortcut action contain any unsecuring actions: [%@]", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v4 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

- (uint64_t)doesAnyCharacteristicWriteTuplePassTest:(void *)a3 orDoesAnyActionSetPassTest:
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1 && WorkflowKitLibraryCore())
  {
    context = objc_autoreleasePoolPush();
    v7 = objc_autoreleasePoolPush();
    v8 = a1;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Shortcuts framework is available on this OS", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x277CBEB58] set];
    v12 = [MEMORY[0x277CBEB58] set];
    v13 = [v8[4] homeIdentifier];
    v14 = [v8 actionSet];
    v15 = [v14 home];

    v16 = [v15 uuid];
    v17 = [v16 isEqual:v13];

    if (v17)
    {
      [(HMDShortcutAction *)v8 getCharacteristicsAndActionSetsFromShortcut:v11 characteristicWriteTuples:v12 homeUUID:v13];
      if ([v11 count] || objc_msgSend(v12, "count"))
      {
        if (v5[2](v5, v12))
        {
          v18 = 1;
        }

        else
        {
          v18 = v6[2](v6, v11);
        }

        goto LABEL_16;
      }

      v19 = objc_autoreleasePoolPush();
      v20 = v8;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v22;
        v23 = "%{public}@There are no characteristics or actionSets present in this shortcut.";
        v24 = v21;
        v25 = OS_LOG_TYPE_INFO;
        v26 = 12;
        goto LABEL_13;
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v8;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543874;
        v31 = v22;
        v32 = 2112;
        v33 = v13;
        v34 = 2112;
        v35 = v15;
        v23 = "%{public}@This shortcut action does not belong to this home. Current: %@, Expected Home UUID: %@";
        v24 = v21;
        v25 = OS_LOG_TYPE_ERROR;
        v26 = 32;
LABEL_13:
        _os_log_impl(&dword_2531F8000, v24, v25, v23, buf, v26);
      }
    }

    objc_autoreleasePoolPop(v19);
    v18 = 0;
LABEL_16:

    objc_autoreleasePoolPop(context);
    goto LABEL_17;
  }

  v18 = 0;
LABEL_17:

  v27 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)getCharacteristicsAndActionSetsFromShortcut:(void *)a3 characteristicWriteTuples:(void *)a4 homeUUID:
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [a1[4] shortcutsDictionaryRepresentations];
    v11 = objc_autoreleasePoolPush();
    v12 = a1;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v14;
      v32 = 2112;
      v33 = v10;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Going to deserialize shortcut dictionary [%@]", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __100__HMDShortcutAction_getCharacteristicsAndActionSetsFromShortcut_characteristicWriteTuples_homeUUID___block_invoke;
    v26[3] = &unk_279720BF0;
    v26[4] = v12;
    v15 = v7;
    v27 = v15;
    v16 = v8;
    v28 = v16;
    v29 = v9;
    [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v26];
    v17 = objc_autoreleasePoolPush();
    v18 = v12;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v20;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Found actionSets from shortcut dictionary : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = objc_autoreleasePoolPush();
    v22 = v18;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Found characteristics from shortcut dictionary : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)unpackActionsAndActionSets:(void *)a3 actionSets:(void *)a4 characteristicWriteTuples:(void *)a5 homeUUID:
{
  v240 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v208 = a4;
  v205 = a5;
  if (a1)
  {
    v11 = *MEMORY[0x277CCF160];
    v12 = [v9 hmf_stringForKey:*MEMORY[0x277CCF160]];
    if ([v12 isEqualToString:*MEMORY[0x277CCF168]])
    {
      v13 = [v9 hmf_stringForKey:*MEMORY[0x277CCF170]];
      v14 = [v13 isEqualToString:*MEMORY[0x277CCF178]];

      if (v14)
      {
        v15 = [v9 hmf_dataForKey:*MEMORY[0x277CCF158]];
        if (!v15)
        {
          v154 = 0;
          v155 = objc_autoreleasePoolPush();
          v156 = a1;
          v157 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
          {
            v158 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v158;
            _os_log_impl(&dword_2531F8000, v157, OS_LOG_TYPE_ERROR, "%{public}@Did not find any serialized homekit data in this shortcut dictionary", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v155);
          goto LABEL_159;
        }

        v199 = v15;
        v16 = [objc_alloc(MEMORY[0x277CD1CC8]) initWithData:v15];
        v200 = v16;
        if (!v16)
        {
          v159 = objc_autoreleasePoolPush();
          v160 = a1;
          v161 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
          {
            v162 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v162;
            _os_log_impl(&dword_2531F8000, v161, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize PB actionSet data", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v159);
          v154 = v199;
          goto LABEL_158;
        }

        v17 = MEMORY[0x277CCAD78];
        v18 = v16;
        v19 = [v16 uuid];
        v20 = [v17 hmf_UUIDWithBytesAsData:v19];

        v204 = v20;
        if (v20)
        {
          if ([v18 hasHomeUUID])
          {
            v21 = MEMORY[0x277CCAD78];
            v22 = [v18 homeUUID];
            v23 = [v21 hmf_UUIDWithBytesAsData:v22];

            if (v23)
            {
              v193 = v23;
              if ([v205 isEqual:v23])
              {
                v181 = v10;
                v182 = v9;
                [v10 addObject:v204];
                v24 = [a1 actionSet];
                v207 = [v24 home];

                v214 = 0u;
                v215 = 0u;
                v212 = 0u;
                v213 = 0u;
                obj = [v200 actions];
                v25 = [obj countByEnumeratingWithState:&v212 objects:v224 count:16];
                if (!v25)
                {
                  goto LABEL_132;
                }

                v27 = v25;
                v28 = *v213;
                *&v26 = 138544130;
                v178 = v26;
                v206 = *v213;
                while (1)
                {
                  v29 = 0;
                  v209 = v27;
                  do
                  {
                    if (*v213 != v28)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v30 = *(*(&v212 + 1) + 8 * v29);
                    if ([v30 type] != 1)
                    {
                      v66 = 0;
                      goto LABEL_123;
                    }

                    v31 = [v30 characteristicWriteAction];
                    v32 = v207;
                    v33 = [v31 characteristicReference];
                    if ([v33 hasUniqueIdentifier])
                    {
                      if ([v33 hasServiceReference])
                      {
                        v34 = MEMORY[0x277CCAD78];
                        v35 = [v33 uniqueIdentifier];
                        v36 = [v34 hmf_UUIDWithBytesAsData:v35];

                        if (!v36)
                        {
                          v73 = objc_autoreleasePoolPush();
                          v74 = a1;
                          v75 = HMFGetOSLogHandle();
                          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                          {
                            v76 = HMFGetLogIdentifier();
                            *buf = 138543362;
                            *&buf[4] = v76;
                            _os_log_impl(&dword_2531F8000, v75, OS_LOG_TYPE_ERROR, "%{public}@Couldn't decode characteristic uniqueIdentifier", buf, 0xCu);
                          }

                          objc_autoreleasePoolPop(v73);
                          v66 = 0;
                          goto LABEL_111;
                        }

                        v37 = [v33 serviceReference];
                        if ([v37 hasUniqueIdentifier])
                        {
                          if ([v37 hasAccessoryReference])
                          {
                            v38 = [v37 accessoryReference];
                            v198 = v38;
                            if ([v38 hasUniqueIdentifier])
                            {
                              if ([v38 hasHomeReference])
                              {
                                v201 = v37;
                                v39 = MEMORY[0x277CCAD78];
                                v40 = [v38 uniqueIdentifier];
                                v41 = [v39 hmf_UUIDWithBytesAsData:v40];

                                v197 = v41;
                                if (v41)
                                {
                                  v42 = [v38 homeReference];
                                  v192 = v42;
                                  if ([v42 hasUniqueIdentifier])
                                  {
                                    v43 = MEMORY[0x277CCAD78];
                                    v44 = [v42 uniqueIdentifier];
                                    v185 = [v43 hmf_UUIDWithBytesAsData:v44];

                                    v45 = [v42 uniqueIdentifier];

                                    if (v45)
                                    {
                                      v46 = [v32 spiClientIdentifier];
                                      v47 = v185;
                                      v48 = [v185 isEqual:v46];

                                      if (v48 & 1) != 0 || ([v32 uuid], v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v185, "isEqual:", v49), v49, (v50))
                                      {
                                        v51 = [v32 accessoryWithSPIClientIdentifier:v197];
                                        if (!v51)
                                        {
                                          v51 = [v32 accessoryWithUUID:v197];
                                        }

                                        v52 = v51;
                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v53 = v52;
                                        }

                                        else
                                        {
                                          v53 = 0;
                                        }

                                        v54 = v53;
                                        v179 = v52;

                                        v180 = v54;
                                        if (v54)
                                        {
                                          v55 = MEMORY[0x277CCAD78];
                                          v56 = [v201 uniqueIdentifier];
                                          v57 = [v55 hmf_UUIDWithBytesAsData:v56];

                                          context = v57;
                                          if (!v57)
                                          {
                                            v58 = objc_autoreleasePoolPush();
                                            v59 = a1;
                                            v60 = HMFGetOSLogHandle();
                                            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                                            {
                                              v61 = HMFGetLogIdentifier();
                                              *buf = 138543362;
                                              *&buf[4] = v61;
                                              _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_ERROR, "%{public}@Couldn't decode service uniqueIdentifier", buf, 0xCu);
                                            }

                                            objc_autoreleasePoolPop(v58);
                                            v54 = v180;
                                          }

                                          v222 = 0u;
                                          v223 = 0u;
                                          v220 = 0u;
                                          v221 = 0u;
                                          v183 = [v54 services];
                                          v37 = v201;
                                          v188 = [v183 countByEnumeratingWithState:&v220 objects:buf count:16];
                                          if (v188)
                                          {
                                            v186 = *v221;
LABEL_40:
                                            v62 = 0;
                                            while (1)
                                            {
                                              if (*v221 != v186)
                                              {
                                                objc_enumerationMutation(v183);
                                              }

                                              v194 = *(*(&v220 + 1) + 8 * v62);
                                              v63 = [v194 uuid];
                                              if ([v63 isEqual:context])
                                              {
                                                break;
                                              }

                                              v64 = [v194 spiClientIdentifier];
                                              v65 = [v64 isEqual:context];

                                              v37 = v201;
                                              if (v65)
                                              {
                                                goto LABEL_86;
                                              }

                                              if (v188 == ++v62)
                                              {
                                                v188 = [v183 countByEnumeratingWithState:&v220 objects:buf count:16];
                                                if (v188)
                                                {
                                                  goto LABEL_40;
                                                }

                                                goto LABEL_47;
                                              }
                                            }

LABEL_86:
                                            v113 = v194;

                                            if (!v113)
                                            {
                                              goto LABEL_96;
                                            }

                                            v218 = 0u;
                                            v219 = 0u;
                                            v216 = 0u;
                                            v217 = 0u;
                                            v184 = v113;
                                            v187 = [v113 characteristics];
                                            v196 = [v187 countByEnumeratingWithState:&v216 objects:v229 count:16];
                                            if (v196)
                                            {
                                              v189 = *v217;
LABEL_89:
                                              v114 = 0;
                                              while (1)
                                              {
                                                if (*v217 != v189)
                                                {
                                                  objc_enumerationMutation(v187);
                                                }

                                                v115 = *(*(&v216 + 1) + 8 * v114);
                                                v116 = [v115 spiClientIdentifier];
                                                v117 = [v116 isEqual:v36];

                                                if (v117)
                                                {
                                                  break;
                                                }

                                                ++v114;
                                                v37 = v201;
                                                if (v196 == v114)
                                                {
                                                  v196 = [v187 countByEnumeratingWithState:&v216 objects:v229 count:16];
                                                  if (v196)
                                                  {
                                                    goto LABEL_89;
                                                  }

                                                  goto LABEL_95;
                                                }
                                              }

                                              v66 = v115;

                                              v37 = v201;
                                              if (v66)
                                              {
                                                goto LABEL_103;
                                              }
                                            }

                                            else
                                            {
LABEL_95:
                                            }

                                            v122 = objc_autoreleasePoolPush();
                                            v123 = a1;
                                            v124 = HMFGetOSLogHandle();
                                            if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
                                            {
                                              v125 = HMFGetLogIdentifier();
                                              *v225 = 138543618;
                                              v226 = v125;
                                              v227 = 2112;
                                              v228 = v36;
                                              _os_log_impl(&dword_2531F8000, v124, OS_LOG_TYPE_INFO, "%{public}@Unable to find the characteristic with uniqueIdentifier: %@", v225, 0x16u);

                                              v37 = v201;
                                            }

                                            objc_autoreleasePoolPop(v122);
                                            v66 = 0;
LABEL_103:
                                          }

                                          else
                                          {
LABEL_47:

LABEL_96:
                                            v118 = objc_autoreleasePoolPush();
                                            v119 = a1;
                                            v120 = HMFGetOSLogHandle();
                                            if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
                                            {
                                              v121 = HMFGetLogIdentifier();
                                              *v229 = 138543618;
                                              v230 = v121;
                                              v231 = 2112;
                                              v232 = context;
                                              _os_log_impl(&dword_2531F8000, v120, OS_LOG_TYPE_INFO, "%{public}@Unable to find the service with uniqueIdentifier : %@", v229, 0x16u);

                                              v37 = v201;
                                            }

                                            objc_autoreleasePoolPop(v118);
                                            v66 = 0;
                                          }
                                        }

                                        else
                                        {
                                          v105 = objc_autoreleasePoolPush();
                                          v106 = a1;
                                          v107 = HMFGetOSLogHandle();
                                          if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                                          {
                                            v108 = HMFGetLogIdentifier();
                                            *buf = 138543618;
                                            *&buf[4] = v108;
                                            *&buf[12] = 2112;
                                            *&buf[14] = v197;
                                            _os_log_impl(&dword_2531F8000, v107, OS_LOG_TYPE_ERROR, "%{public}@Can't find accessory %@", buf, 0x16u);
                                          }

                                          objc_autoreleasePoolPop(v105);
                                          v66 = 0;
                                          v37 = v201;
                                        }

                                        v38 = v198;
                                        v47 = v185;
                                      }

                                      else
                                      {
                                        contexta = objc_autoreleasePoolPush();
                                        v195 = a1;
                                        v109 = HMFGetOSLogHandle();
                                        if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
                                        {
                                          v110 = HMFGetLogIdentifier();
                                          v111 = [v32 spiClientIdentifier];
                                          v112 = [v32 uuid];
                                          *buf = v178;
                                          *&buf[4] = v110;
                                          *&buf[12] = 2112;
                                          *&buf[14] = v185;
                                          v234 = 2112;
                                          v235 = v111;
                                          v236 = 2112;
                                          v237 = v112;
                                          _os_log_impl(&dword_2531F8000, v109, OS_LOG_TYPE_ERROR, "%{public}@Trying to dereference characteristic reference from different home [Looking for :%@] against [spiIdenfitifer : %@], [UUID : %@]", buf, 0x2Au);

                                          v47 = v185;
                                          v38 = v198;
                                        }

                                        objc_autoreleasePoolPop(contexta);
                                        v66 = 0;
                                        v37 = v201;
                                      }
                                    }

                                    else
                                    {
                                      v101 = objc_autoreleasePoolPush();
                                      v102 = a1;
                                      v103 = HMFGetOSLogHandle();
                                      if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                                      {
                                        v104 = HMFGetLogIdentifier();
                                        *buf = 138543362;
                                        *&buf[4] = v104;
                                        _os_log_impl(&dword_2531F8000, v103, OS_LOG_TYPE_ERROR, "%{public}@Couldn't decode Home uniqueIdentifier", buf, 0xCu);
                                      }

                                      objc_autoreleasePoolPop(v101);
                                      v66 = 0;
                                      v37 = v201;
                                      v38 = v198;
                                      v47 = v185;
                                    }
                                  }

                                  else
                                  {
                                    v97 = objc_autoreleasePoolPush();
                                    v98 = a1;
                                    v99 = HMFGetOSLogHandle();
                                    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
                                    {
                                      v100 = HMFGetLogIdentifier();
                                      *buf = 138543362;
                                      *&buf[4] = v100;
                                      _os_log_impl(&dword_2531F8000, v99, OS_LOG_TYPE_ERROR, "%{public}@Characteristic write action's HomeReference does not have uniqueIdentifier set", buf, 0xCu);
                                    }

                                    objc_autoreleasePoolPop(v97);
                                    v66 = 0;
                                    v37 = v201;
                                    v38 = v198;
                                  }
                                }

                                else
                                {
                                  v93 = objc_autoreleasePoolPush();
                                  v94 = a1;
                                  v95 = HMFGetOSLogHandle();
                                  if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
                                  {
                                    v96 = HMFGetLogIdentifier();
                                    *buf = 138543362;
                                    *&buf[4] = v96;
                                    _os_log_impl(&dword_2531F8000, v95, OS_LOG_TYPE_ERROR, "%{public}@Couldn't decode accessory uniqueIdentifier", buf, 0xCu);
                                  }

                                  objc_autoreleasePoolPop(v93);
                                  v66 = 0;
                                  v37 = v201;
                                  v38 = v198;
                                }

LABEL_109:
LABEL_110:

LABEL_111:
                                goto LABEL_112;
                              }

                              v85 = objc_autoreleasePoolPush();
                              v86 = a1;
                              v87 = HMFGetOSLogHandle();
                              if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                              {
                                HMFGetLogIdentifier();
                                v203 = v32;
                                v88 = v36;
                                v90 = v89 = v37;
                                *buf = 138543362;
                                *&buf[4] = v90;
                                v91 = v87;
                                v92 = "%{public}@Characteristic write action does not have home reference";
LABEL_68:
                                _os_log_impl(&dword_2531F8000, v91, OS_LOG_TYPE_ERROR, v92, buf, 0xCu);

                                v37 = v89;
                                v36 = v88;
                                v32 = v203;
                              }
                            }

                            else
                            {
                              v85 = objc_autoreleasePoolPush();
                              v86 = a1;
                              v87 = HMFGetOSLogHandle();
                              if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                              {
                                HMFGetLogIdentifier();
                                v203 = v32;
                                v88 = v36;
                                v90 = v89 = v37;
                                *buf = 138543362;
                                *&buf[4] = v90;
                                v91 = v87;
                                v92 = "%{public}@Characteristic write action does not have accessory uniqueIdentifier";
                                goto LABEL_68;
                              }
                            }

                            objc_autoreleasePoolPop(v85);
                            v66 = 0;
                            v38 = v198;
                            goto LABEL_109;
                          }

                          v77 = objc_autoreleasePoolPush();
                          v78 = a1;
                          v79 = HMFGetOSLogHandle();
                          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                          {
                            HMFGetLogIdentifier();
                            v202 = v32;
                            v80 = v36;
                            v82 = v81 = v37;
                            *buf = 138543362;
                            *&buf[4] = v82;
                            v83 = v79;
                            v84 = "%{public}@Characteristic write action does not have reference to the accessory";
LABEL_62:
                            _os_log_impl(&dword_2531F8000, v83, OS_LOG_TYPE_ERROR, v84, buf, 0xCu);

                            v37 = v81;
                            v36 = v80;
                            v32 = v202;
                          }
                        }

                        else
                        {
                          v77 = objc_autoreleasePoolPush();
                          v78 = a1;
                          v79 = HMFGetOSLogHandle();
                          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                          {
                            HMFGetLogIdentifier();
                            v202 = v32;
                            v80 = v36;
                            v82 = v81 = v37;
                            *buf = 138543362;
                            *&buf[4] = v82;
                            v83 = v79;
                            v84 = "%{public}@Characteristic write action's service uniqueIdentifier is nil'";
                            goto LABEL_62;
                          }
                        }

                        objc_autoreleasePoolPop(v77);
                        v66 = 0;
                        goto LABEL_110;
                      }

                      v67 = objc_autoreleasePoolPush();
                      v68 = a1;
                      v69 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                      {
                        v70 = HMFGetLogIdentifier();
                        *buf = 138543362;
                        *&buf[4] = v70;
                        v71 = v69;
                        v72 = "%{public}@Characteristic write action does not have reference to the service";
                        goto LABEL_53;
                      }
                    }

                    else
                    {
                      v67 = objc_autoreleasePoolPush();
                      v68 = a1;
                      v69 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                      {
                        v70 = HMFGetLogIdentifier();
                        *buf = 138543362;
                        *&buf[4] = v70;
                        v71 = v69;
                        v72 = "%{public}@Characteristic write action does not have reference to the characteristic";
LABEL_53:
                        _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_ERROR, v72, buf, 0xCu);
                      }
                    }

                    objc_autoreleasePoolPop(v67);
                    v66 = 0;
LABEL_112:

                    v126 = MEMORY[0x277CCAAC8];
                    v127 = [MEMORY[0x277CD19A8] allowedTargetValueClassesForShortcuts];
                    v128 = [v31 targetValue];
                    v211 = 0;
                    v129 = [v126 unarchivedObjectOfClasses:v127 fromData:v128 error:&v211];
                    v130 = v211;

                    if (v130)
                    {
                      v131 = objc_autoreleasePoolPush();
                      v132 = a1;
                      v133 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
                      {
                        v134 = HMFGetLogIdentifier();
                        *buf = 138544386;
                        *&buf[4] = v134;
                        *&buf[12] = 2112;
                        *&buf[14] = v130;
                        v234 = 2112;
                        v235 = v66;
                        v236 = 2112;
                        v237 = v204;
                        v238 = 2112;
                        v239 = v205;
                        _os_log_impl(&dword_2531F8000, v133, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive allowed target value from target value data (%@) for characteristic: %@ in action set: %@ home: %@", buf, 0x34u);
                      }

                      objc_autoreleasePoolPop(v131);
                    }

                    if (v66)
                    {
                      v28 = v206;
                      if (v129)
                      {
                        v135 = [HMDCharacteristicWriteTuple alloc];
                        v136 = v66;
                        v137 = v129;
                        if (v135)
                        {
                          *buf = v135;
                          *&buf[8] = HMDCharacteristicWriteTuple;
                          v138 = objc_msgSendSuper2(buf, sel_init);
                          v135 = v138;
                          if (v138)
                          {
                            objc_storeStrong(&v138->_characteristic, v66);
                            objc_storeStrong(&v135->_targetValue, v129);
                          }
                        }

                        [v208 addObject:v135];
                        v66 = v136;
                      }

                      else
                      {
                        v143 = objc_autoreleasePoolPush();
                        v144 = a1;
                        v145 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
                        {
                          v146 = HMFGetLogIdentifier();
                          *buf = 138543362;
                          *&buf[4] = v146;
                          _os_log_impl(&dword_2531F8000, v145, OS_LOG_TYPE_INFO, "%{public}@Did not find the target value belonging to the write action", buf, 0xCu);
                        }

                        objc_autoreleasePoolPop(v143);
                      }

                      v27 = v209;
                      goto LABEL_130;
                    }

                    v66 = v129;
                    v27 = v209;
                    v28 = v206;
LABEL_123:
                    v139 = objc_autoreleasePoolPush();
                    v140 = a1;
                    v141 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
                    {
                      v142 = HMFGetLogIdentifier();
                      *buf = 138543362;
                      *&buf[4] = v142;
                      _os_log_impl(&dword_2531F8000, v141, OS_LOG_TYPE_INFO, "%{public}@Did not find the accessory/characteristic belonging to the write action", buf, 0xCu);
                    }

                    objc_autoreleasePoolPop(v139);
LABEL_130:

                    ++v29;
                  }

                  while (v29 != v27);
                  v27 = [obj countByEnumeratingWithState:&v212 objects:v224 count:16];
                  if (!v27)
                  {
LABEL_132:

                    v10 = v181;
                    v9 = v182;
                    goto LABEL_155;
                  }
                }
              }

              v173 = objc_autoreleasePoolPush();
              v174 = a1;
              v175 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
              {
                v176 = HMFGetLogIdentifier();
                *buf = 138543874;
                *&buf[4] = v176;
                *&buf[12] = 2112;
                *&buf[14] = v205;
                v234 = 2112;
                v235 = v193;
                _os_log_impl(&dword_2531F8000, v175, OS_LOG_TYPE_ERROR, "%{public}@Cannot deserialize actionSet for different home. expected home :%@, found home :%@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v173);
LABEL_155:
              v154 = v199;
              v168 = v193;
            }

            else
            {
              v168 = 0;
              v169 = objc_autoreleasePoolPush();
              v170 = a1;
              v171 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
              {
                v172 = HMFGetLogIdentifier();
                *buf = 138543362;
                *&buf[4] = v172;
                _os_log_impl(&dword_2531F8000, v171, OS_LOG_TYPE_ERROR, "%{public}@Couldn't decode Home UUID", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v169);
              v154 = v199;
            }

            goto LABEL_157;
          }

          v163 = objc_autoreleasePoolPush();
          v164 = a1;
          v165 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
          {
            v166 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v166;
            v167 = "%{public}@homeUUID not set while decoding ActionSet";
            goto LABEL_147;
          }
        }

        else
        {
          v163 = objc_autoreleasePoolPush();
          v164 = a1;
          v165 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
          {
            v166 = HMFGetLogIdentifier();
            *buf = 138543362;
            *&buf[4] = v166;
            v167 = "%{public}@Couldn't decode ActionSet UUID";
LABEL_147:
            _os_log_impl(&dword_2531F8000, v165, OS_LOG_TYPE_ERROR, v167, buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v163);
        v154 = v199;
LABEL_157:

LABEL_158:
LABEL_159:

        goto LABEL_160;
      }
    }

    else
    {
    }

    v147 = objc_autoreleasePoolPush();
    v148 = a1;
    v149 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v151 = v150 = v10;
      v152 = [v9 hmf_stringForKey:v11];
      v153 = [v9 hmf_stringForKey:*MEMORY[0x277CCF170]];
      *buf = 138543874;
      *&buf[4] = v151;
      *&buf[12] = 2112;
      *&buf[14] = v152;
      v234 = 2112;
      v235 = v153;
      _os_log_impl(&dword_2531F8000, v149, OS_LOG_TYPE_ERROR, "%{public}@Protobuf version mismatch : ProtoKey: %@, ProtoVersion: %@", buf, 0x20u);

      v10 = v150;
    }

    objc_autoreleasePoolPop(v147);
  }

LABEL_160:

  v177 = *MEMORY[0x277D85DE8];
}

uint64_t __58__HMDShortcutAction_doesActionSetContainUnsecuringAction___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 containsUnsecuringAction];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = @"does not";
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    if (v4)
    {
      v9 = @"does";
    }

    v15 = v9;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@ActionSet %@ unsecure the home : %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

- (uint64_t)doesActionSetContainItemsPassingTest:(void *)a3 actionSetUUIDs:
{
  v5 = a2;
  v6 = a3;
  v7 = [a1 actionSet];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__HMDShortcutAction_doesActionSetContainItemsPassingTest_actionSetUUIDs___block_invoke;
  v12[3] = &unk_279720BA0;
  v13 = v7;
  v14 = a1;
  v8 = v5;
  v15 = v8;
  v9 = v7;
  v10 = [v6 na_any:v12];

  return v10;
}

uint64_t __73__HMDShortcutAction_doesActionSetContainItemsPassingTest_actionSetUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) uuid];
  if (![v4 isEqual:v3])
  {
    v5 = [*(a1 + 32) spiClientIdentifier];
    v6 = [v5 isEqual:v3];

    if (v6)
    {
      goto LABEL_4;
    }

    v14 = [*(a1 + 32) home];
    v15 = [v14 actionSetWithUUID:v3];
    if (!v15)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 40);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Could not find actionSet based on actionSet.uuid. Now searching using spiClientIdentifier", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v20 = [v14 actionSets];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __73__HMDShortcutAction_doesActionSetContainItemsPassingTest_actionSetUUIDs___block_invoke_194;
      v28[3] = &unk_27972F278;
      v21 = v3;
      v29 = v21;
      v15 = [v20 na_firstObjectPassingTest:v28];

      if (!v15)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = *(a1 + 40);
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v31 = v27;
          v32 = 2112;
          v33 = v21;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not find actionSet [%@]", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        v13 = 0;
        v15 = v29;
        goto LABEL_13;
      }
    }

    v13 = (*(*(a1 + 48) + 16))();
LABEL_13:

    goto LABEL_14;
  }

LABEL_4:
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 32) uuid];
    v12 = [*(a1 + 32) spiClientIdentifier];
    *buf = 138544130;
    v31 = v10;
    v32 = 2112;
    v33 = v3;
    v34 = 2112;
    v35 = v11;
    v36 = 2112;
    v37 = v12;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Skipping actionSet to avoid cycle. [Checking ActionSet : %@] against [ActionSetUUID: %@] [ActionSet SPI Identifier: %@]", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v13 = 0;
LABEL_14:

  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __73__HMDShortcutAction_doesActionSetContainItemsPassingTest_actionSetUUIDs___block_invoke_194(uint64_t a1, void *a2)
{
  v3 = [a2 spiClientIdentifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

uint64_t __61__HMDShortcutAction_doesAnyCharacteristicTupleUnsecureAHome___block_invoke(uint64_t a1, void *a2)
{
  Property = a2;
  v5 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 8, 1);
  }

  v6 = Property;
  v7 = *(a1 + 32);
  v8 = [v6 type];
  v9 = [v6 service];
  v10 = [v9 type];
  if ([v7 requiresDeviceUnlock:v8 forService:v10])
  {
    v11 = *(a1 + 32);
    v13 = [v6 type];
    if (v5)
    {
      v14 = objc_getProperty(v5, v12, 16, 1);
    }

    else
    {
      v14 = 0;
    }

    v15 = [v11 allowsSecuringWriteFor:v13 withValue:v14] ^ 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)requiresDeviceUnlock
{
  v3[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__HMDShortcutAction_requiresDeviceUnlock__block_invoke;
  v4[3] = &unk_279720B78;
  v4[4] = self;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__HMDShortcutAction_requiresDeviceUnlock__block_invoke_2;
  v3[3] = &unk_279720B78;
  return [(HMDShortcutAction *)self doesAnyCharacteristicWriteTuplePassTest:v4 orDoesAnyActionSetPassTest:v3];
}

BOOL __41__HMDShortcutAction_requiresDeviceUnlock__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    v4 = +[HMDHAPMetadata getSharedInstance];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __67__HMDShortcutAction_doesAnyCharacteristicTupleRequireDeviceUnlock___block_invoke;
    v21[3] = &unk_279720BC8;
    v5 = v4;
    v22 = v5;
    Property = [v3 na_firstObjectPassingTest:v21];
    v8 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v7, 8, 1);
    }

    v9 = Property;

    v10 = v9 != 0;
    v11 = objc_autoreleasePoolPush();
    v12 = v2;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v9 service];
      v16 = [v15 accessory];
      v17 = v16;
      v18 = @"does not";
      *buf = 138543874;
      v24 = v14;
      v25 = 2112;
      if (v9)
      {
        v18 = &stru_286509E58;
      }

      v26 = v16;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[%@] %@ requires device to be unlock", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v10 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __41__HMDShortcutAction_requiresDeviceUnlock__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__HMDShortcutAction_doesActionSetContainSecureCharacteristic___block_invoke;
    v12[3] = &unk_27972F278;
    v12[4] = v2;
    v4 = [(HMDShortcutAction *)v2 doesActionSetContainItemsPassingTest:v12 actionSetUUIDs:v3];
    v5 = objc_autoreleasePoolPush();
    v6 = v2;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = HMFBooleanToString();
      *buf = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Does this shortcut action contain any secure class accessories: [%@]", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v4 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t __62__HMDShortcutAction_doesActionSetContainSecureCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 containsSecureCharacteristic];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = @"does not";
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    if (v4)
    {
      v9 = @"does";
    }

    v15 = v9;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@ActionSet %@ contain secure class accessory : %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t __67__HMDShortcutAction_doesAnyCharacteristicTupleRequireDeviceUnlock___block_invoke(uint64_t a1, id self)
{
  if (self)
  {
    Property = objc_getProperty(self, self, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v4 = *(a1 + 32);
  v5 = Property;
  v6 = [v5 type];
  v7 = [v5 service];

  v8 = [v7 type];
  v9 = [v4 requiresDeviceUnlock:v6 forService:v8];

  return v9;
}

- (void)executeWithSource:(unint64_t)a3 clientName:(id)a4 completionHandler:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if (WorkflowKitLibraryCore() && self->_controller)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      shortcut = v10->_shortcut;
      *buf = 138543618;
      v25 = v12;
      v26 = 2114;
      v27 = shortcut;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Executing shortcut action : %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    objc_initWeak(buf, v10);
    controller = self->_controller;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__HMDShortcutAction_executeWithSource_clientName_completionHandler___block_invoke;
    v21[3] = &unk_279720B50;
    objc_copyWeak(&v23, buf);
    v22 = v8;
    [(WFHomeWorkflowController *)controller startWithCompletionHandler:v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@The shortcut action is unavailable to execute", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    if (v8)
    {
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(v8 + 2))(v8, v19);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __68__HMDShortcutAction_executeWithSource_clientName_completionHandler___block_invoke(uint64_t a1, void *a2, int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = objc_autoreleasePoolPush();
  v8 = WeakRetained;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = v8[4];
      v22 = 138543874;
      v23 = v11;
      v24 = 2114;
      v25 = v12;
      v26 = 2114;
      v27 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to execute shortcut action %{public}@ with error: %{public}@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:0 reason:0 suggestion:0 underlyingError:v5];
LABEL_9:
    v17 = v13;
    goto LABEL_10;
  }

  v14 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v14)
    {
      v15 = HMFGetLogIdentifier();
      v16 = v8[4];
      v22 = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@shortcut action execution was cancelled : %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    goto LABEL_9;
  }

  if (v14)
  {
    v20 = HMFGetLogIdentifier();
    v21 = v8[4];
    v22 = 138543618;
    v23 = v20;
    v24 = 2112;
    v25 = v21;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Shortcut action successfully executed : %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v17 = 0;
LABEL_10:
  v18 = *(a1 + 32);
  if (v18)
  {
    (*(v18 + 16))(v18, v17);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)stateDump
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [(WFHomeWorkflow *)self->_shortcut homeIdentifier];
  [(HMDShortcutAction *)&self->super.super.super.isa getCharacteristicsAndActionSetsFromShortcut:v3 characteristicWriteTuples:v4 homeUUID:v5];
  v6 = [v4 na_map:&__block_literal_global_1604];
  v11.receiver = self;
  v11.super_class = HMDShortcutAction;
  v7 = [(HMDAction *)&v11 stateDump];
  [(HMDShortcutAction *)self requiresDeviceUnlock];
  v8 = HMFBooleanToString();
  v9 = [v7 stringByAppendingFormat:@", Shortcut: [DeviceRequiresUnlock: %@] [Home: %@], [ActionSets: %@], [Characteristic: %@]", v8, v5, v3, v6];

  return v9;
}

id __30__HMDShortcutAction_stateDump__block_invoke(int a1, id self)
{
  if (self)
  {
    Property = objc_getProperty(self, self, 8, 1);
  }

  else
  {
    Property = 0;
  }

  return Property;
}

- (id)dictionaryRepresentation
{
  v12[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = HMDShortcutAction;
  v3 = [(HMDAction *)&v10 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  shortcutData = self->_shortcutData;
  if (shortcutData)
  {
    v11 = *MEMORY[0x277CD1598];
    v12[0] = shortcutData;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v4 addEntriesFromDictionary:v6];
  }

  v7 = [v4 copy];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)dealloc
{
  controller = self->_controller;
  if (controller)
  {
    [(WFHomeWorkflowController *)controller cancel];
  }

  v4.receiver = self;
  v4.super_class = HMDShortcutAction;
  [(HMDShortcutAction *)&v4 dealloc];
}

- (id)removeShortcut
{
  shortcutData = self->_shortcutData;
  self->_shortcutData = 0;

  return self;
}

- (HMDShortcutAction)initWithSerializedShortcut:(id)a3 uuid:(id)a4 actionSet:(id)a5
{
  v8 = a3;
  if (v8)
  {
    v13.receiver = self;
    v13.super_class = HMDShortcutAction;
    v9 = [(HMDAction *)&v13 initWithUUID:a4 actionSet:a5];
    if (v9)
    {
      v10 = [v8 copy];
      __HMDShortcutActionInitializeWithSerializedShortcut(v9, v10);
    }

    self = v9;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t53 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t53, &__block_literal_global_226);
  }

  v3 = logCategory__hmf_once_v54;

  return v3;
}

uint64_t __32__HMDShortcutAction_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v54 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)actionWithDictionaryRepresentation:(id)a3 home:(id)a4 actionSet:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 hmf_numberForKey:*MEMORY[0x277CD2058]];
  if ([v11 unsignedIntegerValue] == 2)
  {
    v12 = [v8 hmf_dataForKey:*MEMORY[0x277CD1598]];
    if (v12)
    {
      v13 = [a1 alloc];
      v14 = [MEMORY[0x277CCAD78] UUID];
      v15 = [v13 initWithSerializedShortcut:v12 uuid:v14 actionSet:v10];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = a1;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v23;
        v28 = 2112;
        v29 = v8;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Missing serialized shortcut: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v15 = 0;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = a1;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v19;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Invalid action type: %@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v15;
}

@end