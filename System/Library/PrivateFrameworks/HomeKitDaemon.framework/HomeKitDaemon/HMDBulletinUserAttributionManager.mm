@interface HMDBulletinUserAttributionManager
+ (BOOL)currentStateCharacteristicSupportsUserAttribution:(id)attribution;
+ (BOOL)targetStateCharacteristicSupportsUserAttribution:(id)attribution;
+ (id)logCategory;
- (HMDBulletinUserAttributionManager)initWithAccountRegistry:(id)registry;
- (id)attributedUserUUIDForCurrentStateCharacteristic:(id)characteristic destination:(id)destination;
- (void)removeAttributedUserUUIDForTargetStateCharacteristic:(id)characteristic;
- (void)saveAttributedUserUUID:(id)d forTargetStateCharacteristic:(id)characteristic;
@end

@implementation HMDBulletinUserAttributionManager

- (void)removeAttributedUserUUIDForTargetStateCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  instanceID = [characteristicCopy instanceID];
  value = [characteristicCopy value];
  os_unfair_lock_lock_with_options();
  userAttributions = [(HMDBulletinUserAttributionManager *)self userAttributions];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__HMDBulletinUserAttributionManager_removeAttributedUserUUIDForTargetStateCharacteristic___block_invoke;
  v12[3] = &unk_278678800;
  v8 = instanceID;
  v13 = v8;
  v9 = value;
  v14 = v9;
  v10 = [userAttributions na_filter:v12];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__HMDBulletinUserAttributionManager_removeAttributedUserUUIDForTargetStateCharacteristic___block_invoke_2;
  v11[3] = &unk_2786787D8;
  v11[4] = self;
  [v10 na_each:v11];

  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __90__HMDBulletinUserAttributionManager_removeAttributedUserUUIDForTargetStateCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 targetCharacteristicInstanceID];
  if ([v4 isEqual:*(a1 + 32)])
  {
    v5 = [v3 value];
    v6 = [v5 isEqual:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __90__HMDBulletinUserAttributionManager_removeAttributedUserUUIDForTargetStateCharacteristic___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) userAttributions];
  [v4 removeObject:v3];

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v3 targetCharacteristicInstanceID];
    v10 = [v3 value];
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Removed user attribution for characteristic with instanceID=%@ value=%@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = *MEMORY[0x277D85DE8];
}

- (id)attributedUserUUIDForCurrentStateCharacteristic:(id)characteristic destination:(id)destination
{
  v95 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  destinationCopy = destination;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v86 = v10;
    v87 = 2112;
    v88 = characteristicCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Attempting to retrieve user attribution for current state characteristic=%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  currentTargetStateCharacteristicTypeMap = [objc_opt_class() currentTargetStateCharacteristicTypeMap];
  type = [characteristicCopy type];
  v13 = [currentTargetStateCharacteristicTypeMap hmf_stringForKey:type];

  service = [characteristicCopy service];
  characteristics = [service characteristics];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __97__HMDBulletinUserAttributionManager_attributedUserUUIDForCurrentStateCharacteristic_destination___block_invoke;
  v83[3] = &unk_278687EB0;
  v75 = v13;
  v84 = v75;
  v16 = [characteristics na_firstObjectPassingTest:v83];

  if (v16)
  {
    os_unfair_lock_lock_with_options();
    userAttributions = [(HMDBulletinUserAttributionManager *)selfCopy userAttributions];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __97__HMDBulletinUserAttributionManager_attributedUserUUIDForCurrentStateCharacteristic_destination___block_invoke_40;
    v80[3] = &unk_278678800;
    v18 = v16;
    v81 = v18;
    v19 = characteristicCopy;
    v82 = v19;
    v20 = [userAttributions na_firstObjectPassingTest:v80];

    os_unfair_lock_unlock(&selfCopy->_lock);
    if (!v20)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        instanceID = [v18 instanceID];
        value = [v19 value];
        *buf = 138543874;
        v86 = v40;
        v87 = 2112;
        v88 = instanceID;
        v89 = 2112;
        v90 = value;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@No saved tuple found for target state characteristic with instanceID=%@ and value=%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v37);
      goto LABEL_15;
    }

    lastKnownValueUpdateTime = [v19 lastKnownValueUpdateTime];
    lastKnownValueUpdateTime2 = [v20 lastKnownValueUpdateTime];
    [lastKnownValueUpdateTime timeIntervalSinceDate:lastKnownValueUpdateTime2];
    v24 = v23;

    HMDSecureClassBulletinUserAttributionTime();
    if (v24 > v25)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        HMDSecureClassBulletinUserAttributionTime();
        *buf = 138543618;
        v86 = v29;
        v87 = 2048;
        v88 = v30;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@TargetState changed date is too far apart from CurrentState changed date (%ld seconds), these are likely different operations, therefore we do not know who triggered this operation.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      os_unfair_lock_lock_with_options();
      userAttributions2 = [(HMDBulletinUserAttributionManager *)v27 userAttributions];
      [userAttributions2 removeObject:v20];

      os_unfair_lock_unlock(&selfCopy->_lock);
LABEL_15:
      v36 = 0;
LABEL_40:

      goto LABEL_41;
    }

    userUUID = [v20 userUUID];
    accessory = [v19 accessory];
    home = [accessory home];

    v45 = [home userWithUUID:userUUID];
    v46 = v45;
    if (!v45)
    {
      v51 = objc_autoreleasePoolPush();
      v52 = selfCopy;
      v53 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v54 = HMFGetLogIdentifier();
        shortDescription = [v19 shortDescription];
        *buf = 138543874;
        v86 = v54;
        v87 = 2112;
        v88 = shortDescription;
        v89 = 2112;
        v90 = userUUID;
        _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Not returning attributedUserUUID for current state characteristic=%@ because the attributedUser cannot be determined from uuid=%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v51);
      v36 = 0;
      goto LABEL_39;
    }

    if ([v45 isOwner])
    {
      v47 = objc_autoreleasePoolPush();
      v48 = selfCopy;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = HMFGetLogIdentifier();
        *buf = 138544130;
        v86 = v50;
        v87 = 2112;
        v88 = userUUID;
        v89 = 2112;
        v90 = v19;
        v91 = 2112;
        v92 = v46;
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Returning attributedUserUUID=%@ (owner) for current state characteristic=%@ for destinationUser=%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v47);
      v36 = userUUID;
      goto LABEL_39;
    }

    v73 = [HMDDeviceHandle deviceHandleForDestination:destinationCopy];
    if (v73)
    {
      v79 = 0;
      accountRegistry = [(HMDBulletinUserAttributionManager *)selfCopy accountRegistry];
      v57 = [accountRegistry deviceForHandle:v73 exists:&v79];

      if ((v79 & 1) == 0)
      {
        context = objc_autoreleasePoolPush();
        v58 = selfCopy;
        v59 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          v60 = HMFGetLogIdentifier();
          *buf = 138543874;
          v86 = v60;
          v87 = 2112;
          v88 = v19;
          v89 = 2112;
          v90 = destinationCopy;
          _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@Not returning attributedUserUUID for current state characteristic=%@ because we cannot determine an account for the device with destination=%@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(context);
        v36 = 0;
LABEL_38:

LABEL_39:
        goto LABEL_40;
      }
    }

    else
    {
      v57 = 0;
    }

    users = [home users];
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __97__HMDBulletinUserAttributionManager_attributedUserUUIDForCurrentStateCharacteristic_destination___block_invoke_43;
    v77[3] = &unk_278688680;
    v57 = v57;
    v78 = v57;
    contexta = [users na_firstObjectPassingTest:v77];

    LODWORD(users) = [contexta isAdministrator];
    v70 = objc_autoreleasePoolPush();
    v62 = selfCopy;
    v63 = HMFGetOSLogHandle();
    v64 = os_log_type_enabled(v63, OS_LOG_TYPE_INFO);
    if (users)
    {
      if (v64)
      {
        v65 = HMFGetLogIdentifier();
        *buf = 138544130;
        v86 = v65;
        v87 = 2112;
        v88 = userUUID;
        v89 = 2112;
        v90 = v19;
        v91 = 2112;
        v92 = contexta;
        _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_INFO, "%{public}@Returning attributedUserUUID=%@ for current state characteristic=%@ for destinationUser=%@ (who is an admin)", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v70);
      v36 = userUUID;
    }

    else
    {
      if (v64)
      {
        v69 = HMFGetLogIdentifier();
        v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(contexta, "privilege")}];
        *buf = 138544386;
        v86 = v69;
        v87 = 2112;
        v88 = v19;
        v89 = 2112;
        v90 = v46;
        v91 = 2112;
        v92 = contexta;
        v93 = 2112;
        v94 = v66;
        _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_INFO, "%{public}@Not returning attributedUserUUID for current state characteristic=%@ because the attributedUser=%@ is not the owner and the user we are sending to (destinationUser=%@) is not an admin. %@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v70);
      v36 = 0;
    }

    goto LABEL_38;
  }

  v32 = objc_autoreleasePoolPush();
  v33 = selfCopy;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v35 = HMFGetLogIdentifier();
    *buf = 138543618;
    v86 = v35;
    v87 = 2112;
    v88 = characteristicCopy;
    _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEBUG, "%{public}@No targetStateCounterpart available for characteristic=%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v32);
  v36 = 0;
LABEL_41:

  v67 = *MEMORY[0x277D85DE8];

  return v36;
}

uint64_t __97__HMDBulletinUserAttributionManager_attributedUserUUIDForCurrentStateCharacteristic_destination___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 type];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __97__HMDBulletinUserAttributionManager_attributedUserUUIDForCurrentStateCharacteristic_destination___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 targetCharacteristicInstanceID];
  v5 = [*(a1 + 32) instanceID];
  if ([v4 isEqual:v5])
  {
    v6 = [v3 value];
    v7 = [*(a1 + 40) value];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __97__HMDBulletinUserAttributionManager_attributedUserUUIDForCurrentStateCharacteristic_destination___block_invoke_43(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  v4 = [v3 identifier];
  v5 = [v4 identifier];
  v6 = [*(a1 + 32) account];
  v7 = [v6 identifier];
  v8 = [v7 identifier];
  v9 = [v5 hmf_isEqualToUUID:v8];

  return v9;
}

- (void)saveAttributedUserUUID:(id)d forTargetStateCharacteristic:(id)characteristic
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  characteristicCopy = characteristic;
  v8 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock_with_options();
  userAttributions = [(HMDBulletinUserAttributionManager *)self userAttributions];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __89__HMDBulletinUserAttributionManager_saveAttributedUserUUID_forTargetStateCharacteristic___block_invoke;
  v27[3] = &unk_2786787D8;
  v10 = v8;
  v28 = v10;
  [userAttributions na_each:v27];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __89__HMDBulletinUserAttributionManager_saveAttributedUserUUID_forTargetStateCharacteristic___block_invoke_2;
  v26[3] = &unk_2786787D8;
  v26[4] = self;
  [v10 na_each:v26];
  v11 = objc_opt_new();
  instanceID = [characteristicCopy instanceID];
  [v11 setTargetCharacteristicInstanceID:instanceID];

  value = [characteristicCopy value];
  [v11 setValue:value];

  lastKnownValueUpdateTime = [characteristicCopy lastKnownValueUpdateTime];
  [v11 setLastKnownValueUpdateTime:lastKnownValueUpdateTime];

  [v11 setUserUUID:dCopy];
  userAttributions2 = [(HMDBulletinUserAttributionManager *)self userAttributions];
  [userAttributions2 addObject:v11];

  context = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v23 = dCopy;
    v18 = HMFGetLogIdentifier();
    userUUID = [v11 userUUID];
    targetCharacteristicInstanceID = [v11 targetCharacteristicInstanceID];
    value2 = [v11 value];
    *buf = 138544130;
    v30 = v18;
    v31 = 2112;
    v32 = userUUID;
    v33 = 2112;
    v34 = targetCharacteristicInstanceID;
    v35 = 2112;
    v36 = value2;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Saved attributedUserUUID=%@ for targetCharacteristicInstanceID=%@ value=%@", buf, 0x2Au);

    dCopy = v23;
  }

  objc_autoreleasePoolPop(context);
  os_unfair_lock_unlock(&self->_lock);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __89__HMDBulletinUserAttributionManager_saveAttributedUserUUID_forTargetStateCharacteristic___block_invoke_38;
  v25[3] = &unk_2786787D8;
  v25[4] = selfCopy;
  [v10 na_each:v25];

  v22 = *MEMORY[0x277D85DE8];
}

void __89__HMDBulletinUserAttributionManager_saveAttributedUserUUID_forTargetStateCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [v8 lastKnownValueUpdateTime];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  HMDSecureClassBulletinUserAttributionTime();
  if (v6 > v7)
  {
    [*(a1 + 32) addObject:v8];
  }
}

void __89__HMDBulletinUserAttributionManager_saveAttributedUserUUID_forTargetStateCharacteristic___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 userAttributions];
  [v4 removeObject:v3];
}

void __89__HMDBulletinUserAttributionManager_saveAttributedUserUUID_forTargetStateCharacteristic___block_invoke_38(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 targetCharacteristicInstanceID];
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed orphaned user attribution for characteristic with instanceID=%@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (HMDBulletinUserAttributionManager)initWithAccountRegistry:(id)registry
{
  registryCopy = registry;
  v10.receiver = self;
  v10.super_class = HMDBulletinUserAttributionManager;
  v6 = [(HMDBulletinUserAttributionManager *)&v10 init];
  if (v6)
  {
    array = [MEMORY[0x277CBEB18] array];
    userAttributions = v6->_userAttributions;
    v6->_userAttributions = array;

    objc_storeStrong(&v6->_accountRegistry, registry);
  }

  return v6;
}

+ (BOOL)targetStateCharacteristicSupportsUserAttribution:(id)attribution
{
  attributionCopy = attribution;
  service = [attributionCopy service];
  type = [attributionCopy type];
  v6 = [type isEqualToString:*MEMORY[0x277CCFB40]];
  if (v6)
  {
    type2 = [service type];
    if ([type2 isEqualToString:*MEMORY[0x277CD0EB0]])
    {
      v8 = 1;
LABEL_21:

      goto LABEL_22;
    }

    v22 = type2;
  }

  type3 = [attributionCopy type];
  v10 = [type3 isEqualToString:*MEMORY[0x277CCFB08]];
  if (v10)
  {
    type4 = [service type];
    if ([type4 isEqualToString:*MEMORY[0x277CD0E58]])
    {
      v8 = 1;
      goto LABEL_20;
    }

    v21 = type4;
  }

  type5 = [attributionCopy type];
  v13 = [type5 isEqualToString:*MEMORY[0x277CCFB60]];
  if (v13)
  {
    type6 = [service type];
    if ([type6 isEqualToString:*MEMORY[0x277CD0ED8]])
    {
      v8 = 1;
      goto LABEL_19;
    }

    v20 = type6;
  }

  type7 = [attributionCopy type];
  if ([type7 isEqualToString:*MEMORY[0x277CCFB50]])
  {
    [service type];
    v19 = type3;
    v17 = v16 = type;
    v8 = [v17 isEqualToString:*MEMORY[0x277CD0F58]];

    type = v16;
    type3 = v19;

    type6 = v20;
    if ((v13 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v8 = 0;
    type6 = v20;
    if (!v13)
    {
LABEL_15:

      type4 = v21;
      if (v10)
      {
        goto LABEL_20;
      }

LABEL_16:

      type2 = v22;
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

LABEL_19:

  type4 = v21;
  if ((v10 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_20:

  type2 = v22;
  if (v6)
  {
    goto LABEL_21;
  }

LABEL_22:

  return v8;
}

+ (BOOL)currentStateCharacteristicSupportsUserAttribution:(id)attribution
{
  attributionCopy = attribution;
  service = [attributionCopy service];
  type = [attributionCopy type];
  v6 = [type isEqualToString:*MEMORY[0x277CCF838]];
  if (v6)
  {
    type2 = [service type];
    if ([type2 isEqualToString:*MEMORY[0x277CD0EB0]])
    {
      v8 = 1;
LABEL_21:

      goto LABEL_22;
    }

    v22 = type2;
  }

  type3 = [attributionCopy type];
  v10 = [type3 isEqualToString:*MEMORY[0x277CCF800]];
  if (v10)
  {
    type4 = [service type];
    if ([type4 isEqualToString:*MEMORY[0x277CD0E58]])
    {
      v8 = 1;
      goto LABEL_20;
    }

    v21 = type4;
  }

  type5 = [attributionCopy type];
  v13 = [type5 isEqualToString:*MEMORY[0x277CCF858]];
  if (v13)
  {
    type6 = [service type];
    if ([type6 isEqualToString:*MEMORY[0x277CD0ED8]])
    {
      v8 = 1;
      goto LABEL_19;
    }

    v20 = type6;
  }

  type7 = [attributionCopy type];
  if ([type7 isEqualToString:*MEMORY[0x277CCF848]])
  {
    [service type];
    v19 = type3;
    v17 = v16 = type;
    v8 = [v17 isEqualToString:*MEMORY[0x277CD0F58]];

    type = v16;
    type3 = v19;

    type6 = v20;
    if ((v13 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v8 = 0;
    type6 = v20;
    if (!v13)
    {
LABEL_15:

      type4 = v21;
      if (v10)
      {
        goto LABEL_20;
      }

LABEL_16:

      type2 = v22;
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

LABEL_19:

  type4 = v21;
  if ((v10 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_20:

  type2 = v22;
  if (v6)
  {
    goto LABEL_21;
  }

LABEL_22:

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16_114802 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16_114802, &__block_literal_global_114803);
  }

  v3 = logCategory__hmf_once_v17_114804;

  return v3;
}

void __48__HMDBulletinUserAttributionManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v17_114804;
  logCategory__hmf_once_v17_114804 = v1;
}

@end