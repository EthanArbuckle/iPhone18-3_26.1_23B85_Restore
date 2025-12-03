@interface HMDIDSServerBag
+ (id)logCategory;
- (HMDHomeKitVersion)serverBagHomeKitVersionForKey:(void *)key;
- (HMDIDSServerBag)init;
- (HMDIDSServerBag)initWithIDSServerBag:(id)bag refreshTimer:(id)timer keySuffix:(id)suffix;
- (HMDIDSServerBagDelegate)delegate;
- (id)serverBagValueForKey:(void *)key;
- (void)configure;
- (void)serverBagNumberValueForKey:(void *)key;
- (void)serverBagStringValueForKey:(void *)key;
- (void)timerDidFire:(id)fire;
- (void)updateCachedValuesWithServerValues;
@end

@implementation HMDIDSServerBag

- (HMDIDSServerBagDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v13 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  refreshTimer = [(HMDIDSServerBag *)self refreshTimer];

  if (refreshTimer == fireCopy)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Server bag refresh timer fired", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDIDSServerBag *)selfCopy updateCachedValuesWithServerValues];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateCachedValuesWithServerValues
{
  v406 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (!v2 || (v3 = [self isHH2SoftwareReleased], v3 == objc_msgSend(v2, "BOOLValue")))
    {
      v10 = 0;
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      selfCopy = self;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        [selfCopy isHH2SoftwareReleased];
        v8 = HMFBooleanToString();
        [v2 BOOLValue];
        v9 = HMFBooleanToString();
        *buf = 138543874;
        v402 = v7;
        v403 = 2112;
        *v404 = v8;
        *&v404[8] = 2112;
        v405 = v9;
        _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating hh2SoftwareReleased from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v4);
      [selfCopy setHh2SoftwareReleased:{objc_msgSend(v2, "BOOLValue")}];
      v10 = 1;
    }

    v11 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    v12 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    v400 = v11;
    if ([v11 BOOLValue])
    {
      bOOLValue = 1;
    }

    else
    {
      bOOLValue = [v12 BOOLValue];
    }

    v393 = v12;
    if (v400 | v12 && bOOLValue != [self isHH2ManualMigrationEnabled])
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        [selfCopy2 isHH2ManualMigrationEnabled];
        v18 = HMFBooleanToString();
        v19 = HMFBooleanToString();
        *buf = 138543874;
        v402 = v17;
        v403 = 2112;
        *v404 = v18;
        *&v404[8] = 2112;
        v405 = v19;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating hh2ManualMigrationEnabled from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      [selfCopy2 setHh2ManualMigrationEnabled:bOOLValue];
      v10 = 1;
    }

    v20 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    v21 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if ([v20 BOOLValue])
    {
      bOOLValue2 = 1;
    }

    else
    {
      bOOLValue2 = [v21 BOOLValue];
    }

    v392 = v20;
    v396 = v21;
    if (v20 | v21 && bOOLValue2 != [self isHH2AutoMigrationEnabled])
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        [selfCopy3 isHH2AutoMigrationEnabled];
        v27 = HMFBooleanToString();
        v28 = HMFBooleanToString();
        *buf = 138543874;
        v402 = v26;
        v403 = 2112;
        *v404 = v27;
        *&v404[8] = 2112;
        v405 = v28;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Updating hh2AutoMigrationEnabled from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      [selfCopy3 setHh2AutoMigrationEnabled:bOOLValue2];
      v10 = 1;
    }

    v29 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    v394 = v2;
    if (v29 && ([self hh2AutoMigrationWithoutSharedUserRampDivisor], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isEqual:", v29), v30, (v31 & 1) == 0))
    {
      v33 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        hh2AutoMigrationWithoutSharedUserRampDivisor = [selfCopy4 hh2AutoMigrationWithoutSharedUserRampDivisor];
        *buf = 138543874;
        v402 = v36;
        v403 = 2112;
        *v404 = hh2AutoMigrationWithoutSharedUserRampDivisor;
        *&v404[8] = 2112;
        v405 = v29;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Updating hh2AutoMigrationWithoutSharedUserRampDivisor from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v33);
      [selfCopy4 setHh2AutoMigrationWithoutSharedUserRampDivisor:v29];
      v32 = 1;
    }

    else
    {
      v32 = 0;
    }

    v38 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v38)
    {
      hh2AutoMigrationWithoutSharedUserRampRemainder = [self hh2AutoMigrationWithoutSharedUserRampRemainder];
      v40 = [hh2AutoMigrationWithoutSharedUserRampRemainder isEqual:v38];

      if ((v40 & 1) == 0)
      {
        v41 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = HMFGetLogIdentifier();
          hh2AutoMigrationWithoutSharedUserRampRemainder2 = [selfCopy5 hh2AutoMigrationWithoutSharedUserRampRemainder];
          *buf = 138543874;
          v402 = v44;
          v403 = 2112;
          *v404 = hh2AutoMigrationWithoutSharedUserRampRemainder2;
          *&v404[8] = 2112;
          v405 = v38;
          _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Updating hh2AutoMigrationWithoutSharedUserRampRemainder from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v41);
        [selfCopy5 setHh2AutoMigrationWithoutSharedUserRampRemainder:v38];
        v32 = 1;
      }
    }

    v46 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v46)
    {
      hh2AutoMigrationWithSharedUserRampDivisor = [self hh2AutoMigrationWithSharedUserRampDivisor];
      v48 = [hh2AutoMigrationWithSharedUserRampDivisor isEqual:v46];

      if ((v48 & 1) == 0)
      {
        v49 = objc_autoreleasePoolPush();
        selfCopy6 = self;
        v51 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = HMFGetLogIdentifier();
          hh2AutoMigrationWithSharedUserRampDivisor2 = [selfCopy6 hh2AutoMigrationWithSharedUserRampDivisor];
          *buf = 138543874;
          v402 = v52;
          v403 = 2112;
          *v404 = hh2AutoMigrationWithSharedUserRampDivisor2;
          *&v404[8] = 2112;
          v405 = v46;
          _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_INFO, "%{public}@Updating hh2AutoMigrationWithSharedUserRampDivisor from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v49);
        [selfCopy6 setHh2AutoMigrationWithSharedUserRampDivisor:v46];
        v32 = 1;
      }
    }

    v54 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v54)
    {
      hh2AutoMigrationWithSharedUserRampRemainder = [self hh2AutoMigrationWithSharedUserRampRemainder];
      v56 = [hh2AutoMigrationWithSharedUserRampRemainder isEqual:v54];

      if ((v56 & 1) == 0)
      {
        v57 = objc_autoreleasePoolPush();
        selfCopy7 = self;
        v59 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          v60 = HMFGetLogIdentifier();
          hh2AutoMigrationWithSharedUserRampRemainder2 = [selfCopy7 hh2AutoMigrationWithSharedUserRampRemainder];
          *buf = 138543874;
          v402 = v60;
          v403 = 2112;
          *v404 = hh2AutoMigrationWithSharedUserRampRemainder2;
          *&v404[8] = 2112;
          v405 = v54;
          _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@Updating hh2AutoMigrationWithSharedUserRampRemainder from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v57);
        [selfCopy7 setHh2AutoMigrationWithSharedUserRampRemainder:v54];
        v32 = 1;
      }
    }

    v62 = [(HMDIDSServerBag *)self serverBagHomeKitVersionForKey:?];
    minimumHomeKitVersionForSharedUserHH2MigrationByOwnerManual = [self minimumHomeKitVersionForSharedUserHH2MigrationByOwnerManual];
    if (v62 && ([v62 isEqualToVersion:minimumHomeKitVersionForSharedUserHH2MigrationByOwnerManual] & 1) == 0)
    {
      v65 = objc_autoreleasePoolPush();
      selfCopy8 = self;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v69 = v68 = v32;
        *buf = 138543874;
        v402 = v69;
        v403 = 2114;
        *v404 = minimumHomeKitVersionForSharedUserHH2MigrationByOwnerManual;
        *&v404[8] = 2114;
        v405 = v62;
        _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_INFO, "%{public}@Updating minimumHomeKitVersionForSharedUserHH2MigrationByOwnerManual from %{public}@ to %{public}@", buf, 0x20u);

        v32 = v68;
      }

      objc_autoreleasePoolPop(v65);
      [selfCopy8 setMinimumHomeKitVersionForSharedUserHH2MigrationByOwnerManual:v62];
      v64 = 1;
    }

    else
    {
      v64 = 0;
    }

    v70 = [(HMDIDSServerBag *)self serverBagHomeKitVersionForKey:?];
    minimumHomeKitVersionForSharedUserHH2MigrationByOwnerAuto = [self minimumHomeKitVersionForSharedUserHH2MigrationByOwnerAuto];
    if (v70 && ([v70 isEqualToVersion:minimumHomeKitVersionForSharedUserHH2MigrationByOwnerAuto] & 1) == 0)
    {
      v72 = objc_autoreleasePoolPush();
      selfCopy9 = self;
      v74 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v76 = v75 = v32;
        *buf = 138543874;
        v402 = v76;
        v403 = 2114;
        *v404 = minimumHomeKitVersionForSharedUserHH2MigrationByOwnerAuto;
        *&v404[8] = 2114;
        v405 = v70;
        _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_INFO, "%{public}@Updating minimumHomeKitVersionForSharedUserHH2MigrationByOwnerAuto from %{public}@ to %{public}@", buf, 0x20u);

        v32 = v75;
      }

      objc_autoreleasePoolPop(v72);
      [selfCopy9 setMinimumHomeKitVersionForSharedUserHH2MigrationByOwnerAuto:v70];
      v64 = 1;
    }

    v77 = [(HMDIDSServerBag *)self serverBagHomeKitVersionForKey:?];
    minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithoutSharedUsers = [self minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithoutSharedUsers];
    if (v77 && ([v77 isEqualToVersion:minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithoutSharedUsers] & 1) == 0)
    {
      v79 = v10;
      v81 = objc_autoreleasePoolPush();
      selfCopy10 = self;
      v83 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v85 = v84 = v32;
        *buf = 138543874;
        v402 = v85;
        v403 = 2114;
        *v404 = minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithoutSharedUsers;
        *&v404[8] = 2114;
        v405 = v77;
        _os_log_impl(&dword_229538000, v83, OS_LOG_TYPE_INFO, "%{public}@Updating minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithoutSharedUsers from %{public}@ to %{public}@", buf, 0x20u);

        v32 = v84;
      }

      objc_autoreleasePoolPop(v81);
      [selfCopy10 setMinimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithoutSharedUsers:v77];
      v80 = 1;
    }

    else
    {
      v79 = v10;
      v80 = 0;
    }

    v86 = [(HMDIDSServerBag *)self serverBagHomeKitVersionForKey:?];
    minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithoutSharedUsers = [self minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithoutSharedUsers];
    if (v86 && ([v86 isEqualToVersion:minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithoutSharedUsers] & 1) == 0)
    {
      v88 = objc_autoreleasePoolPush();
      selfCopy11 = self;
      v90 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v92 = v91 = v32;
        *buf = 138543874;
        v402 = v92;
        v403 = 2114;
        *v404 = minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithoutSharedUsers;
        *&v404[8] = 2114;
        v405 = v86;
        _os_log_impl(&dword_229538000, v90, OS_LOG_TYPE_INFO, "%{public}@Updating minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithoutSharedUsers from %{public}@ to %{public}@", buf, 0x20u);

        v32 = v91;
      }

      objc_autoreleasePoolPop(v88);
      [selfCopy11 setMinimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithoutSharedUsers:v86];
      v80 = 1;
    }

    v93 = [(HMDIDSServerBag *)self serverBagHomeKitVersionForKey:?];
    minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithoutSharedUsers = [self minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithoutSharedUsers];
    if (v93 && ([v93 isEqualToVersion:minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithoutSharedUsers] & 1) == 0)
    {
      v95 = objc_autoreleasePoolPush();
      selfCopy12 = self;
      v97 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v99 = v98 = v32;
        *buf = 138543874;
        v402 = v99;
        v403 = 2114;
        *v404 = minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithoutSharedUsers;
        *&v404[8] = 2114;
        v405 = v93;
        _os_log_impl(&dword_229538000, v97, OS_LOG_TYPE_INFO, "%{public}@Updating minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithoutSharedUsers from %{public}@ to %{public}@", buf, 0x20u);

        v32 = v98;
      }

      objc_autoreleasePoolPop(v95);
      [selfCopy12 setMinimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithoutSharedUsers:v93];
      v80 = 1;
    }

    v100 = v79 | v32;

    v101 = [(HMDIDSServerBag *)self serverBagHomeKitVersionForKey:?];
    minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithSharedUsers = [self minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithSharedUsers];
    if (v101 && ([v101 isEqualToVersion:minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithSharedUsers] & 1) == 0)
    {
      v104 = objc_autoreleasePoolPush();
      selfCopy13 = self;
      v106 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
      {
        v107 = HMFGetLogIdentifier();
        *buf = 138543874;
        v402 = v107;
        v403 = 2114;
        *v404 = minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithSharedUsers;
        *&v404[8] = 2114;
        v405 = v101;
        _os_log_impl(&dword_229538000, v106, OS_LOG_TYPE_INFO, "%{public}@Updating minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithSharedUsers from %{public}@ to %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v104);
      [selfCopy13 setMinimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithSharedUsers:v101];
      v103 = 1;
    }

    else
    {
      v103 = 0;
    }

    v108 = v64 | v100;

    v109 = [(HMDIDSServerBag *)self serverBagHomeKitVersionForKey:?];
    minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithSharedUsers = [self minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithSharedUsers];
    if (v109 && ([v109 isEqualToVersion:minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithSharedUsers] & 1) == 0)
    {
      v111 = objc_autoreleasePoolPush();
      selfCopy14 = self;
      v113 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
      {
        v114 = HMFGetLogIdentifier();
        *buf = 138543874;
        v402 = v114;
        v403 = 2114;
        *v404 = minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithSharedUsers;
        *&v404[8] = 2114;
        v405 = v109;
        _os_log_impl(&dword_229538000, v113, OS_LOG_TYPE_INFO, "%{public}@Updating minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithSharedUsers from %{public}@ to %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v111);
      [selfCopy14 setMinimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithSharedUsers:v109];
      v103 = 1;
    }

    v115 = v80 | v108;

    v116 = [(HMDIDSServerBag *)self serverBagHomeKitVersionForKey:?];
    minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithSharedUsers = [self minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithSharedUsers];
    if (v116 && ([v116 isEqualToVersion:minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithSharedUsers] & 1) == 0)
    {
      v118 = objc_autoreleasePoolPush();
      selfCopy15 = self;
      v120 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
      {
        v121 = HMFGetLogIdentifier();
        *buf = 138543874;
        v402 = v121;
        v403 = 2114;
        *v404 = minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithSharedUsers;
        *&v404[8] = 2114;
        v405 = v116;
        _os_log_impl(&dword_229538000, v120, OS_LOG_TYPE_INFO, "%{public}@Updating minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithSharedUsers from %{public}@ to %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v118);
      [selfCopy15 setMinimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithSharedUsers:v116];
      v103 = 1;
    }

    v122 = v103 | v115;
    v123 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    v399 = v123;
    if (v123)
    {
      v124 = v123;
      hh2SuppressDuplicateUserModelBulletins = [self hh2SuppressDuplicateUserModelBulletins];
      if (hh2SuppressDuplicateUserModelBulletins != [v124 BOOLValue])
      {
        v126 = objc_autoreleasePoolPush();
        selfCopy16 = self;
        v128 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
        {
          v129 = HMFGetLogIdentifier();
          [selfCopy16 hh2SuppressDuplicateUserModelBulletins];
          v130 = HMFBooleanToString();
          [v399 BOOLValue];
          v131 = HMFBooleanToString();
          *buf = 138543874;
          v402 = v129;
          v403 = 2112;
          *v404 = v130;
          *&v404[8] = 2112;
          v405 = v131;
          _os_log_impl(&dword_229538000, v128, OS_LOG_TYPE_INFO, "%{public}@Updating hh2SuppressDuplicateUserModelBulletins from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v126);
        [selfCopy16 setHh2SuppressDuplicateUserModelBulletins:{objc_msgSend(v399, "BOOLValue")}];
        v122 = 1;
      }
    }

    v132 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    v398 = v132;
    if (v132)
    {
      v133 = v132;
      homeSafetySecurityEnabled = [self homeSafetySecurityEnabled];
      if (homeSafetySecurityEnabled != [v133 BOOLValue])
      {
        v135 = objc_autoreleasePoolPush();
        selfCopy17 = self;
        v137 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
        {
          v138 = HMFGetLogIdentifier();
          [selfCopy17 homeSafetySecurityEnabled];
          v139 = HMFBooleanToString();
          [v398 BOOLValue];
          v140 = HMFBooleanToString();
          *buf = 138543874;
          v402 = v138;
          v403 = 2112;
          *v404 = v139;
          *&v404[8] = 2112;
          v405 = v140;
          _os_log_impl(&dword_229538000, v137, OS_LOG_TYPE_INFO, "%{public}@Updating homeSafetySecurityEnabled from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v135);
        [selfCopy17 setHomeSafetySecurityEnabled:{objc_msgSend(v398, "BOOLValue")}];
        v122 = 1;
      }
    }

    v141 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (!v141 || (v142 = [self statusKitResidentStatusEnabled], v142 == objc_msgSend(v141, "BOOLValue")))
    {
      v149 = 0;
    }

    else
    {
      v143 = objc_autoreleasePoolPush();
      selfCopy18 = self;
      v145 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
      {
        v146 = HMFGetLogIdentifier();
        [selfCopy18 statusKitResidentStatusEnabled];
        v147 = HMFBooleanToString();
        [v141 BOOLValue];
        v148 = HMFBooleanToString();
        *buf = 138543874;
        v402 = v146;
        v403 = 2112;
        *v404 = v147;
        *&v404[8] = 2112;
        v405 = v148;
        _os_log_impl(&dword_229538000, v145, OS_LOG_TYPE_INFO, "%{public}@Updating statusKitResidentStatusEnabled from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v143);
      [selfCopy18 setStatusKitResidentStatusEnabled:{objc_msgSend(v141, "BOOLValue")}];
      v149 = 1;
    }

    v150 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v150)
    {
      statusKitInitialConnectionTimeoutSeconds = [self statusKitInitialConnectionTimeoutSeconds];
      v152 = [statusKitInitialConnectionTimeoutSeconds isEqual:v150];

      if ((v152 & 1) == 0)
      {
        v153 = objc_autoreleasePoolPush();
        selfCopy19 = self;
        v155 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
        {
          v156 = HMFGetLogIdentifier();
          statusKitInitialConnectionTimeoutSeconds2 = [selfCopy19 statusKitInitialConnectionTimeoutSeconds];
          *buf = 138543874;
          v402 = v156;
          v403 = 2112;
          *v404 = statusKitInitialConnectionTimeoutSeconds2;
          *&v404[8] = 2112;
          v405 = v150;
          _os_log_impl(&dword_229538000, v155, OS_LOG_TYPE_INFO, "%{public}@Updating statusKitInitialConnectionTimeoutSeconds from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v153);
        [selfCopy19 setStatusKitInitialConnectionTimeoutSeconds:v150];
        v149 = 1;
      }
    }

    v158 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v158)
    {
      statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds = [self statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds];
      v160 = [statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds isEqual:v158];

      if ((v160 & 1) == 0)
      {
        v161 = objc_autoreleasePoolPush();
        selfCopy20 = self;
        v163 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
        {
          v164 = HMFGetLogIdentifier();
          statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds2 = [selfCopy20 statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds];
          *buf = 138543874;
          v402 = v164;
          v403 = 2112;
          *v404 = statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds2;
          *&v404[8] = 2112;
          v405 = v158;
          _os_log_impl(&dword_229538000, v163, OS_LOG_TYPE_INFO, "%{public}@Updating statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v161);
        [selfCopy20 setStatusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds:v158];
        v149 = 1;
      }
    }

    v166 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v166)
    {
      statusKitUnsubscribeFromChannelDebounceTimeSec = [self statusKitUnsubscribeFromChannelDebounceTimeSec];
      v168 = [statusKitUnsubscribeFromChannelDebounceTimeSec isEqual:v166];

      if ((v168 & 1) == 0)
      {
        v169 = objc_autoreleasePoolPush();
        selfCopy21 = self;
        v171 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v171, OS_LOG_TYPE_INFO))
        {
          v172 = HMFGetLogIdentifier();
          statusKitUnsubscribeFromChannelDebounceTimeSec2 = [selfCopy21 statusKitUnsubscribeFromChannelDebounceTimeSec];
          *buf = 138543874;
          v402 = v172;
          v403 = 2112;
          *v404 = statusKitUnsubscribeFromChannelDebounceTimeSec2;
          *&v404[8] = 2112;
          v405 = v166;
          _os_log_impl(&dword_229538000, v171, OS_LOG_TYPE_INFO, "%{public}@Updating statusKitUnsubscribeFromChannelDebounceTimeSec from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v169);
        [selfCopy21 setStatusKitUnsubscribeFromChannelDebounceTimeSec:v166];
        v149 = 1;
      }
    }

    v174 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v174 && ([self residentSelectionPreferredResidentEvaluationDelay], v175 = objc_claimAutoreleasedReturnValue(), v176 = objc_msgSend(v175, "isEqual:", v174), v175, (v176 & 1) == 0))
    {
      v178 = objc_autoreleasePoolPush();
      selfCopy22 = self;
      v180 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
      {
        v181 = HMFGetLogIdentifier();
        residentSelectionPreferredResidentEvaluationDelay = [selfCopy22 residentSelectionPreferredResidentEvaluationDelay];
        *buf = 138543874;
        v402 = v181;
        v403 = 2112;
        *v404 = residentSelectionPreferredResidentEvaluationDelay;
        *&v404[8] = 2112;
        v405 = v174;
        _os_log_impl(&dword_229538000, v180, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionPreferredResidentEvaluationDelay from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v178);
      [selfCopy22 setResidentSelectionPreferredResidentEvaluationDelay:v174];
      v177 = 1;
    }

    else
    {
      v177 = 0;
    }

    v183 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v183)
    {
      residentSelectionPreferredResidentsListMaxSize = [self residentSelectionPreferredResidentsListMaxSize];
      v185 = [residentSelectionPreferredResidentsListMaxSize isEqual:v183];

      if ((v185 & 1) == 0)
      {
        v186 = objc_autoreleasePoolPush();
        selfCopy23 = self;
        v188 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v188, OS_LOG_TYPE_INFO))
        {
          v189 = HMFGetLogIdentifier();
          residentSelectionPreferredResidentsListMaxSize2 = [selfCopy23 residentSelectionPreferredResidentsListMaxSize];
          *buf = 138543874;
          v402 = v189;
          v403 = 2112;
          *v404 = residentSelectionPreferredResidentsListMaxSize2;
          *&v404[8] = 2112;
          v405 = v183;
          _os_log_impl(&dword_229538000, v188, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionPreferredResidentsListMaxSize from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v186);
        [selfCopy23 setResidentSelectionPreferredResidentsListMaxSize:v183];
        v177 = 1;
      }
    }

    v191 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v191)
    {
      residentSelectionStatusDebounceInterval = [self residentSelectionStatusDebounceInterval];
      v193 = [residentSelectionStatusDebounceInterval isEqual:v191];

      if ((v193 & 1) == 0)
      {
        v194 = objc_autoreleasePoolPush();
        selfCopy24 = self;
        v196 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v196, OS_LOG_TYPE_INFO))
        {
          v197 = HMFGetLogIdentifier();
          residentSelectionStatusDebounceInterval2 = [selfCopy24 residentSelectionStatusDebounceInterval];
          *buf = 138543874;
          v402 = v197;
          v403 = 2112;
          *v404 = residentSelectionStatusDebounceInterval2;
          *&v404[8] = 2112;
          v405 = v191;
          _os_log_impl(&dword_229538000, v196, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionStatusDebounceInterval from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v194);
        [selfCopy24 setResidentSelectionStatusDebounceInterval:v191];
        v177 = 1;
      }
    }

    v199 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v199)
    {
      residentSelectionTakeOverIfPrimaryIsNotViableInterval = [self residentSelectionTakeOverIfPrimaryIsNotViableInterval];
      v201 = [residentSelectionTakeOverIfPrimaryIsNotViableInterval isEqual:v199];

      if ((v201 & 1) == 0)
      {
        v202 = objc_autoreleasePoolPush();
        selfCopy25 = self;
        v204 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v204, OS_LOG_TYPE_INFO))
        {
          v205 = HMFGetLogIdentifier();
          residentSelectionTakeOverIfPrimaryIsNotViableInterval2 = [selfCopy25 residentSelectionTakeOverIfPrimaryIsNotViableInterval];
          *buf = 138543874;
          v402 = v205;
          v403 = 2112;
          *v404 = residentSelectionTakeOverIfPrimaryIsNotViableInterval2;
          *&v404[8] = 2112;
          v405 = v199;
          _os_log_impl(&dword_229538000, v204, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionTakeOverIfPrimaryIsNotViableInterval from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v202);
        [selfCopy25 setResidentSelectionTakeOverIfPrimaryIsNotViableInterval:v199];
        v177 = 1;
      }
    }

    v207 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v207)
    {
      residentSelectionTakeOverInterval = [self residentSelectionTakeOverInterval];
      v209 = [residentSelectionTakeOverInterval isEqual:v207];

      if ((v209 & 1) == 0)
      {
        v210 = objc_autoreleasePoolPush();
        selfCopy26 = self;
        v212 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v212, OS_LOG_TYPE_INFO))
        {
          v213 = HMFGetLogIdentifier();
          residentSelectionTakeOverInterval2 = [selfCopy26 residentSelectionTakeOverInterval];
          *buf = 138543874;
          v402 = v213;
          v403 = 2112;
          *v404 = residentSelectionTakeOverInterval2;
          *&v404[8] = 2112;
          v405 = v207;
          _os_log_impl(&dword_229538000, v212, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionTakeOverInterval from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v210);
        [selfCopy26 setResidentSelectionTakeOverInterval:v207];
        v177 = 1;
      }
    }

    v215 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v215)
    {
      residentSelectionTakeOverOnlyIfCurrentPrimaryIsNotViableJitter = [self residentSelectionTakeOverOnlyIfCurrentPrimaryIsNotViableJitter];
      v217 = [residentSelectionTakeOverOnlyIfCurrentPrimaryIsNotViableJitter isEqual:v215];

      if ((v217 & 1) == 0)
      {
        v218 = objc_autoreleasePoolPush();
        selfCopy27 = self;
        v220 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v220, OS_LOG_TYPE_INFO))
        {
          v221 = HMFGetLogIdentifier();
          residentSelectionTakeOverOnlyIfCurrentPrimaryIsNotViableJitter2 = [selfCopy27 residentSelectionTakeOverOnlyIfCurrentPrimaryIsNotViableJitter];
          *buf = 138543874;
          v402 = v221;
          v403 = 2112;
          *v404 = residentSelectionTakeOverOnlyIfCurrentPrimaryIsNotViableJitter2;
          *&v404[8] = 2112;
          v405 = v215;
          _os_log_impl(&dword_229538000, v220, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionTakeOverOnlyIfCurrentPrimaryIsNotViableJitter from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v218);
        [selfCopy27 setResidentSelectionTakeOverOnlyIfCurrentPrimaryIsNotViableJitter:v215];
        v177 = 1;
      }
    }

    v223 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v223)
    {
      residentSelectionPreferredListGenerationStartHour = [self residentSelectionPreferredListGenerationStartHour];
      v225 = [residentSelectionPreferredListGenerationStartHour isEqual:v223];

      if ((v225 & 1) == 0)
      {
        v226 = objc_autoreleasePoolPush();
        selfCopy28 = self;
        v228 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v228, OS_LOG_TYPE_INFO))
        {
          v229 = HMFGetLogIdentifier();
          residentSelectionPreferredListGenerationStartHour2 = [selfCopy28 residentSelectionPreferredListGenerationStartHour];
          *buf = 138543874;
          v402 = v229;
          v403 = 2112;
          *v404 = residentSelectionPreferredListGenerationStartHour2;
          *&v404[8] = 2112;
          v405 = v223;
          _os_log_impl(&dword_229538000, v228, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionPreferredListGenerationStartHour from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v226);
        [selfCopy28 setResidentSelectionPreferredListGenerationStartHour:v223];
        v177 = 1;
      }
    }

    v231 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v231)
    {
      residentSelectionPreferredListGenerationEndHour = [self residentSelectionPreferredListGenerationEndHour];
      v233 = [residentSelectionPreferredListGenerationEndHour isEqual:v231];

      if ((v233 & 1) == 0)
      {
        v234 = objc_autoreleasePoolPush();
        selfCopy29 = self;
        v236 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v236, OS_LOG_TYPE_INFO))
        {
          v237 = HMFGetLogIdentifier();
          residentSelectionPreferredListGenerationEndHour2 = [selfCopy29 residentSelectionPreferredListGenerationEndHour];
          *buf = 138543874;
          v402 = v237;
          v403 = 2112;
          *v404 = residentSelectionPreferredListGenerationEndHour2;
          *&v404[8] = 2112;
          v405 = v231;
          _os_log_impl(&dword_229538000, v236, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionPreferredListGenerationEndHour from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v234);
        [selfCopy29 setResidentSelectionPreferredListGenerationEndHour:v231];
        v177 = 1;
      }
    }

    v239 = [(HMDIDSServerBag *)self serverBagHomeKitVersionForKey:?];
    residentSelectionMinHomeKitVersion = [self residentSelectionMinHomeKitVersion];
    if (v239 && ([v239 isEqualToVersion:residentSelectionMinHomeKitVersion] & 1) == 0)
    {
      v241 = objc_autoreleasePoolPush();
      selfCopy30 = self;
      v243 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v243, OS_LOG_TYPE_INFO))
      {
        v244 = HMFGetLogIdentifier();
        *buf = 138543874;
        v402 = v244;
        v403 = 2114;
        *v404 = residentSelectionMinHomeKitVersion;
        *&v404[8] = 2114;
        v405 = v239;
        _os_log_impl(&dword_229538000, v243, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionMinHomeKitVersion from %{public}@ to %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v241);
      [selfCopy30 setResidentSelectionMinHomeKitVersion:v239];
      v177 = 1;
    }

    v245 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v245)
    {
      residentSelectionReachabilityNotificationAfterConnectivityDelay = [self residentSelectionReachabilityNotificationAfterConnectivityDelay];
      v247 = [residentSelectionReachabilityNotificationAfterConnectivityDelay isEqual:v245];

      if ((v247 & 1) == 0)
      {
        v248 = objc_autoreleasePoolPush();
        selfCopy31 = self;
        v250 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v250, OS_LOG_TYPE_INFO))
        {
          v251 = HMFGetLogIdentifier();
          residentSelectionReachabilityNotificationAfterConnectivityDelay2 = [selfCopy31 residentSelectionReachabilityNotificationAfterConnectivityDelay];
          *buf = 138543874;
          v402 = v251;
          v403 = 2112;
          *v404 = residentSelectionReachabilityNotificationAfterConnectivityDelay2;
          *&v404[8] = 2112;
          v405 = v245;
          _os_log_impl(&dword_229538000, v250, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionReachabilityNotificationAfterConnectivityDelay from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v248);
        [selfCopy31 setResidentSelectionReachabilityNotificationAfterConnectivityDelay:v245];
        v177 = 1;
      }
    }

    v253 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v253)
    {
      residentSelectionUserPreferredReachabilityNotificationDelay = [self residentSelectionUserPreferredReachabilityNotificationDelay];
      v255 = [residentSelectionUserPreferredReachabilityNotificationDelay isEqual:v253];

      if ((v255 & 1) == 0)
      {
        v256 = objc_autoreleasePoolPush();
        selfCopy32 = self;
        v258 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v258, OS_LOG_TYPE_INFO))
        {
          v259 = HMFGetLogIdentifier();
          residentSelectionUserPreferredReachabilityNotificationDelay2 = [selfCopy32 residentSelectionUserPreferredReachabilityNotificationDelay];
          *buf = 138543874;
          v402 = v259;
          v403 = 2112;
          *v404 = residentSelectionUserPreferredReachabilityNotificationDelay2;
          *&v404[8] = 2112;
          v405 = v253;
          _os_log_impl(&dword_229538000, v258, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionUserPreferredReachabilityNotificationDelay from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v256);
        [selfCopy32 setResidentSelectionUserPreferredReachabilityNotificationDelay:v253];
        v177 = 1;
      }
    }

    v261 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v261)
    {
      disableResidentSelectionReachableAccessoriesCriteria = [self disableResidentSelectionReachableAccessoriesCriteria];
      if (disableResidentSelectionReachableAccessoriesCriteria != [v261 BOOLValue])
      {
        v263 = objc_autoreleasePoolPush();
        selfCopy33 = self;
        v265 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v265, OS_LOG_TYPE_INFO))
        {
          v266 = HMFGetLogIdentifier();
          [selfCopy33 disableResidentSelectionReachableAccessoriesCriteria];
          v267 = HMFBooleanToString();
          [v261 BOOLValue];
          v268 = HMFBooleanToString();
          *buf = 138543874;
          v402 = v266;
          v403 = 2112;
          *v404 = v267;
          *&v404[8] = 2112;
          v405 = v268;
          _os_log_impl(&dword_229538000, v265, OS_LOG_TYPE_INFO, "%{public}@Updating disableResidentSelectionReachableAccessoriesCriteria from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v263);
        [selfCopy33 setDisableResidentSelectionReachableAccessoriesCriteria:{objc_msgSend(v261, "BOOLValue")}];
        v177 = 1;
      }
    }

    v269 = v149 | v177;
    v270 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v270)
    {
      residentDeviceManagerBlockPrimaryTakeoverDurationSeconds = [self residentDeviceManagerBlockPrimaryTakeoverDurationSeconds];
      v272 = [residentDeviceManagerBlockPrimaryTakeoverDurationSeconds isEqual:v270];

      if ((v272 & 1) == 0)
      {
        v273 = objc_autoreleasePoolPush();
        selfCopy34 = self;
        v275 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v275, OS_LOG_TYPE_INFO))
        {
          v276 = HMFGetLogIdentifier();
          residentDeviceManagerBlockPrimaryTakeoverDurationSeconds2 = [selfCopy34 residentDeviceManagerBlockPrimaryTakeoverDurationSeconds];
          *buf = 138543874;
          v402 = v276;
          v403 = 2112;
          *v404 = residentDeviceManagerBlockPrimaryTakeoverDurationSeconds2;
          *&v404[8] = 2112;
          v405 = v270;
          _os_log_impl(&dword_229538000, v275, OS_LOG_TYPE_INFO, "%{public}@Updating residentDeviceManagerBlockPrimaryTakeoverDurationSeconds from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v273);
        [selfCopy34 setResidentDeviceManagerBlockPrimaryTakeoverDurationSeconds:v270];
        v269 = 1;
      }
    }

    v278 = v269 | v122;
    v279 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v279)
    {
      fetchHomeWiFiInfosMessageDisable = [self fetchHomeWiFiInfosMessageDisable];
      if (fetchHomeWiFiInfosMessageDisable != [v279 BOOLValue])
      {
        v281 = objc_autoreleasePoolPush();
        selfCopy35 = self;
        v283 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v283, OS_LOG_TYPE_INFO))
        {
          v284 = HMFGetLogIdentifier();
          [selfCopy35 fetchHomeWiFiInfosMessageDisable];
          v285 = HMFBooleanToString();
          [v279 BOOLValue];
          v286 = HMFBooleanToString();
          *buf = 138543874;
          v402 = v284;
          v403 = 2112;
          *v404 = v285;
          *&v404[8] = 2112;
          v405 = v286;
          _os_log_impl(&dword_229538000, v283, OS_LOG_TYPE_INFO, "%{public}@Updating fetchHomeWiFiInfosMessageDisableNumber from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v281);
        [selfCopy35 setFetchHomeWiFiInfosMessageDisable:{objc_msgSend(v279, "BOOLValue")}];
        v278 = 1;
      }
    }

    v287 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    v395 = v287;
    if (v287)
    {
      v288 = v287;
      useDeferredResolutionStrategy = [self useDeferredResolutionStrategy];
      if (useDeferredResolutionStrategy == [v288 BOOLValue])
      {
        v290 = objc_autoreleasePoolPush();
        selfCopy36 = self;
        v292 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v292, OS_LOG_TYPE_INFO))
        {
          v293 = HMFGetLogIdentifier();
          [selfCopy36 useDeferredResolutionStrategy];
          v294 = HMFBooleanToString();
          [v395 BOOLValue];
          v295 = HMFBooleanToString();
          *buf = 138543874;
          v402 = v293;
          v403 = 2112;
          *v404 = v294;
          *&v404[8] = 2112;
          v405 = v295;
          _os_log_impl(&dword_229538000, v292, OS_LOG_TYPE_INFO, "%{public}@Updating useDeferredResolutionStrategy from %@ to %@", buf, 0x20u);

          v288 = v395;
        }

        objc_autoreleasePoolPop(v290);
        [selfCopy36 setUseDeferredResolutionStrategy:{objc_msgSend(v288, "BOOLValue") ^ 1}];
        v278 = 1;
      }
    }

    v296 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v296)
    {
      shouldPostHH2UpgradeRequired = [self shouldPostHH2UpgradeRequired];
      if (shouldPostHH2UpgradeRequired != [v296 BOOLValue])
      {
        v298 = objc_autoreleasePoolPush();
        selfCopy37 = self;
        v300 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v300, OS_LOG_TYPE_INFO))
        {
          v301 = HMFGetLogIdentifier();
          shouldPostHH2UpgradeRequired2 = [selfCopy37 shouldPostHH2UpgradeRequired];
          bOOLValue3 = [v296 BOOLValue];
          *buf = 138543874;
          v402 = v301;
          v403 = 1024;
          *v404 = shouldPostHH2UpgradeRequired2;
          *&v404[4] = 1024;
          *&v404[6] = bOOLValue3;
          _os_log_impl(&dword_229538000, v300, OS_LOG_TYPE_INFO, "%{public}@Updating shouldPostHH2UpgradeRequired from %{BOOL}d to %{BOOL}d", buf, 0x18u);
        }

        objc_autoreleasePoolPop(v298);
        [selfCopy37 setShouldPostHH2UpgradeRequired:{objc_msgSend(v296, "BOOLValue")}];
        v278 = 1;
      }
    }

    v304 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v304)
    {
      hh2UpgradeRecommendationRepostInterval = [self hh2UpgradeRecommendationRepostInterval];
      v306 = [hh2UpgradeRecommendationRepostInterval isEqual:v304];

      if ((v306 & 1) == 0)
      {
        v307 = objc_autoreleasePoolPush();
        selfCopy38 = self;
        v309 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v309, OS_LOG_TYPE_INFO))
        {
          v310 = HMFGetLogIdentifier();
          hh2UpgradeRecommendationRepostInterval2 = [selfCopy38 hh2UpgradeRecommendationRepostInterval];
          *buf = 138543874;
          v402 = v310;
          v403 = 2112;
          *v404 = hh2UpgradeRecommendationRepostInterval2;
          *&v404[8] = 2112;
          v405 = v304;
          _os_log_impl(&dword_229538000, v309, OS_LOG_TYPE_INFO, "%{public}@Updating hh2UpgradeRecommendationRepostInterval from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v307);
        [selfCopy38 setHh2UpgradeRecommendationRepostInterval:v304];
        v278 = 1;
      }
    }

    v312 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    v397 = v312;
    if (v312)
    {
      v313 = v312;
      hh2UpgradeRecommendationDaysToLookBack = [self hh2UpgradeRecommendationDaysToLookBack];
      v315 = [hh2UpgradeRecommendationDaysToLookBack isEqual:v313];

      if ((v315 & 1) == 0)
      {
        v316 = objc_autoreleasePoolPush();
        selfCopy39 = self;
        v318 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v318, OS_LOG_TYPE_INFO))
        {
          v319 = HMFGetLogIdentifier();
          hh2UpgradeRecommendationDaysToLookBack2 = [selfCopy39 hh2UpgradeRecommendationDaysToLookBack];
          *buf = 138543874;
          v402 = v319;
          v403 = 2112;
          *v404 = hh2UpgradeRecommendationDaysToLookBack2;
          *&v404[8] = 2112;
          v405 = v397;
          _os_log_impl(&dword_229538000, v318, OS_LOG_TYPE_INFO, "%{public}@Updating hh2UpgradeRecommendationDaysToLookBack from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v316);
        [selfCopy39 setHh2UpgradeRecommendationDaysToLookBack:v397];
        v278 = 1;
      }
    }

    v321 = [(HMDIDSServerBag *)self serverBagHomeKitVersionForKey:?];
    v390 = v304;
    if (v321 && ([self hh2AggressiveMigrationMinimumHomeKitVersion], v322 = objc_claimAutoreleasedReturnValue(), v323 = objc_msgSend(v321, "isEqualToVersion:", v322), v322, (v323 & 1) == 0))
    {
      v325 = objc_autoreleasePoolPush();
      selfCopy40 = self;
      v327 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v327, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v329 = v328 = v278;
        [selfCopy40 hh2AggressiveMigrationMinimumHomeKitVersion];
        v331 = v330 = v279;
        *buf = 138543874;
        v402 = v329;
        v403 = 2114;
        *v404 = v331;
        *&v404[8] = 2114;
        v405 = v321;
        _os_log_impl(&dword_229538000, v327, OS_LOG_TYPE_INFO, "%{public}@Updating hh2AggressiveMigrationMinimumHomeKitVersion from %{public}@ to %{public}@", buf, 0x20u);

        v279 = v330;
        v278 = v328;
      }

      objc_autoreleasePoolPop(v325);
      [selfCopy40 setHh2AggressiveMigrationMinimumHomeKitVersion:v321];
      v324 = 1;
    }

    else
    {
      v324 = 0;
    }

    v332 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v332)
    {
      hh2AggressiveMigrationRampDivisor = [self hh2AggressiveMigrationRampDivisor];
      v334 = [hh2AggressiveMigrationRampDivisor isEqual:v332];

      if ((v334 & 1) == 0)
      {
        v335 = v278;
        v336 = objc_autoreleasePoolPush();
        selfCopy41 = self;
        v338 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v338, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v339 = v388 = v279;
          [selfCopy41 hh2AggressiveMigrationRampDivisor];
          v341 = v340 = v296;
          *buf = 138543874;
          v402 = v339;
          v403 = 2112;
          *v404 = v341;
          *&v404[8] = 2112;
          v405 = v332;
          _os_log_impl(&dword_229538000, v338, OS_LOG_TYPE_INFO, "%{public}@Updating hh2AggressiveMigrationRampDivisor from %@ to %@", buf, 0x20u);

          v296 = v340;
          v279 = v388;
        }

        objc_autoreleasePoolPop(v336);
        [selfCopy41 setHh2AggressiveMigrationRampDivisor:v332];
        v324 = 1;
        v278 = v335;
      }
    }

    v391 = v296;
    v342 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v342)
    {
      hh2AggressiveMigrationRampRemainder = [self hh2AggressiveMigrationRampRemainder];
      v344 = [hh2AggressiveMigrationRampRemainder isEqual:v342];

      if ((v344 & 1) == 0)
      {
        v389 = v278;
        v345 = v279;
        v346 = objc_autoreleasePoolPush();
        selfCopy42 = self;
        v348 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v348, OS_LOG_TYPE_INFO))
        {
          v349 = HMFGetLogIdentifier();
          hh2AggressiveMigrationRampRemainder2 = [selfCopy42 hh2AggressiveMigrationRampRemainder];
          *buf = 138543874;
          v402 = v349;
          v403 = 2112;
          *v404 = hh2AggressiveMigrationRampRemainder2;
          *&v404[8] = 2112;
          v405 = v342;
          _os_log_impl(&dword_229538000, v348, OS_LOG_TYPE_INFO, "%{public}@Updating hh2AggressiveMigrationRampRemainder from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v346);
        [selfCopy42 setHh2AggressiveMigrationRampRemainder:v342];
        v324 = 1;
        v279 = v345;
        v278 = v389;
      }
    }

    v351 = v324 | v278;
    v352 = [(HMDIDSServerBag *)self serverBagNumberValueForKey:?];
    if (v352)
    {
      homeUpdateRequiredNotificationThreshold = [self homeUpdateRequiredNotificationThreshold];
      v354 = [homeUpdateRequiredNotificationThreshold isEqual:v352];

      if ((v354 & 1) == 0)
      {
        v355 = objc_autoreleasePoolPush();
        selfCopy43 = self;
        v357 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v357, OS_LOG_TYPE_INFO))
        {
          v358 = HMFGetLogIdentifier();
          homeUpdateRequiredNotificationThreshold2 = [selfCopy43 homeUpdateRequiredNotificationThreshold];
          *buf = 138543874;
          v402 = v358;
          v403 = 2112;
          *v404 = homeUpdateRequiredNotificationThreshold2;
          *&v404[8] = 2112;
          v405 = v352;
          _os_log_impl(&dword_229538000, v357, OS_LOG_TYPE_INFO, "%{public}@Updating homeUpdateRequiredNotificationThreshold from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v355);
        [selfCopy43 setHomeUpdateRequiredNotificationThreshold:v352];
        v351 = 1;
      }
    }

    v360 = [(HMDIDSServerBag *)self serverBagHomeKitVersionForKey:?];
    if (v360)
    {
      hh1EOLMininumControllerHomeKitVersion = [self hh1EOLMininumControllerHomeKitVersion];
      v362 = [v360 isEqualToVersion:hh1EOLMininumControllerHomeKitVersion];

      if ((v362 & 1) == 0)
      {
        v363 = objc_autoreleasePoolPush();
        selfCopy44 = self;
        v365 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v365, OS_LOG_TYPE_INFO))
        {
          v366 = HMFGetLogIdentifier();
          hh1EOLMininumControllerHomeKitVersion2 = [selfCopy44 hh1EOLMininumControllerHomeKitVersion];
          *buf = 138543874;
          v402 = v366;
          v403 = 2114;
          *v404 = hh1EOLMininumControllerHomeKitVersion2;
          *&v404[8] = 2114;
          v405 = v360;
          _os_log_impl(&dword_229538000, v365, OS_LOG_TYPE_INFO, "%{public}@Updating hh1EOLMininumControllerHomeKitVersion from %{public}@ to %{public}@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v363);
        [selfCopy44 setHh1EOLMininumControllerHomeKitVersion:v360];
        v351 = 1;
      }
    }

    v368 = [(HMDIDSServerBag *)self serverBagStringValueForKey:?];
    if (v368)
    {
      v369 = v368;
      v370 = [objc_alloc(MEMORY[0x277D0F8F8]) initWithString:v368];

      if (v370)
      {
        hh1EOLMinimumResidentVersion = [self hh1EOLMinimumResidentVersion];
        v372 = [v370 isEqualToVersion:hh1EOLMinimumResidentVersion];

        if ((v372 & 1) == 0)
        {
          v373 = v279;
          v374 = objc_autoreleasePoolPush();
          selfCopy45 = self;
          v376 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v376, OS_LOG_TYPE_INFO))
          {
            v377 = HMFGetLogIdentifier();
            hh1EOLMinimumResidentVersion2 = [selfCopy45 hh1EOLMinimumResidentVersion];
            *buf = 138543874;
            v402 = v377;
            v403 = 2114;
            *v404 = hh1EOLMinimumResidentVersion2;
            *&v404[8] = 2114;
            v405 = v370;
            _os_log_impl(&dword_229538000, v376, OS_LOG_TYPE_INFO, "%{public}@Updating hh1EOLMinimumResidentVersion from %{public}@ to %{public}@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v374);
          [selfCopy45 setHh1EOLMinimumResidentVersion:v370];
          v279 = v373;
          v379 = v395;
          v380 = v390;
          goto LABEL_244;
        }
      }
    }

    else
    {
      v370 = 0;
    }

    v379 = v395;
    v381 = v396;
    v380 = v390;
    if ((v351 & 1) == 0)
    {
LABEL_249:

      goto LABEL_250;
    }

LABEL_244:
    v382 = objc_autoreleasePoolPush();
    selfCopy46 = self;
    v384 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v384, OS_LOG_TYPE_INFO))
    {
      v385 = HMFGetLogIdentifier();
      *buf = 138543362;
      v402 = v385;
      _os_log_impl(&dword_229538000, v384, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of server bag update", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v382);
    delegate = [selfCopy46 delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate idsServerBagDidUpdate:selfCopy46];
    }

    v381 = v396;
    goto LABEL_249;
  }

LABEL_250:
  v387 = *MEMORY[0x277D85DE8];
}

- (void)serverBagNumberValueForKey:(void *)key
{
  v2 = [(HMDIDSServerBag *)key serverBagValueForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (HMDHomeKitVersion)serverBagHomeKitVersionForKey:(void *)key
{
  v2 = [(HMDIDSServerBag *)key serverBagStringValueForKey:a2];
  if (v2)
  {
    v3 = [[HMDHomeKitVersion alloc] initWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)serverBagStringValueForKey:(void *)key
{
  v2 = [(HMDIDSServerBag *)key serverBagValueForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)serverBagValueForKey:(void *)key
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  keySuffix = [key keySuffix];
  v5 = [keySuffix length];

  if (v5)
  {
    keySuffix2 = [key keySuffix];
    v7 = [v3 stringByAppendingString:keySuffix2];

    idsServerBag = [key idsServerBag];
    v9 = [idsServerBag objectForKey:v7];

    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = v3;

  idsServerBag2 = [key idsServerBag];
  v9 = [idsServerBag2 objectForKey:v10];

  v7 = v10;
LABEL_6:
  v12 = objc_autoreleasePoolPush();
  keyCopy = key;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v18 = 138543874;
    v19 = v15;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@serverBagValueForKey %@ returned %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)configure
{
  refreshTimer = [(HMDIDSServerBag *)self refreshTimer];
  [refreshTimer setDelegate:self];

  refreshTimer2 = [(HMDIDSServerBag *)self refreshTimer];
  [refreshTimer2 resume];

  [(HMDIDSServerBag *)self updateCachedValuesWithServerValues];
}

- (HMDIDSServerBag)initWithIDSServerBag:(id)bag refreshTimer:(id)timer keySuffix:(id)suffix
{
  bagCopy = bag;
  timerCopy = timer;
  suffixCopy = suffix;
  v28.receiver = self;
  v28.super_class = HMDIDSServerBag;
  v12 = [(HMDIDSServerBag *)&v28 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_idsServerBag, bag);
    objc_storeStrong(&v13->_refreshTimer, timer);
    v14 = [suffixCopy copy];
    keySuffix = v13->_keySuffix;
    v13->_keySuffix = v14;

    v13->_useDeferredResolutionStrategy = 1;
    hh2AutoMigrationWithoutSharedUserRampDivisor = v13->_hh2AutoMigrationWithoutSharedUserRampDivisor;
    v13->_hh2AutoMigrationWithoutSharedUserRampDivisor = &unk_283E73010;

    hh2AutoMigrationWithoutSharedUserRampRemainder = v13->_hh2AutoMigrationWithoutSharedUserRampRemainder;
    v13->_hh2AutoMigrationWithoutSharedUserRampRemainder = &unk_283E73028;

    hh2AutoMigrationWithSharedUserRampDivisor = v13->_hh2AutoMigrationWithSharedUserRampDivisor;
    v13->_hh2AutoMigrationWithSharedUserRampDivisor = &unk_283E73010;

    hh2AutoMigrationWithSharedUserRampRemainder = v13->_hh2AutoMigrationWithSharedUserRampRemainder;
    v13->_hh2AutoMigrationWithSharedUserRampRemainder = &unk_283E73028;

    v20 = [[HMDHomeKitVersion alloc] initWithMajorVersion:9999 minorVersion:0 updateVersion:0];
    v21 = +[HMDHomeKitVersion version10];
    minimumHomeKitVersionForSharedUserHH2MigrationByOwnerManual = v13->_minimumHomeKitVersionForSharedUserHH2MigrationByOwnerManual;
    v13->_minimumHomeKitVersionForSharedUserHH2MigrationByOwnerManual = v21;

    objc_storeStrong(&v13->_minimumHomeKitVersionForSharedUserHH2MigrationByOwnerAuto, v20);
    objc_storeStrong(&v13->_minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithoutSharedUsers, v20);
    objc_storeStrong(&v13->_minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithoutSharedUsers, v20);
    objc_storeStrong(&v13->_minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithoutSharedUsers, v20);
    objc_storeStrong(&v13->_minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithSharedUsers, v20);
    objc_storeStrong(&v13->_minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithSharedUsers, v20);
    objc_storeStrong(&v13->_minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithSharedUsers, v20);
    v13->_shouldPostHH2UpgradeRequired = 0;
    hh2UpgradeRecommendationDaysToLookBack = v13->_hh2UpgradeRecommendationDaysToLookBack;
    v13->_hh2UpgradeRecommendationDaysToLookBack = &unk_283E72FF8;

    hh2AggressiveMigrationRampDivisor = v13->_hh2AggressiveMigrationRampDivisor;
    v13->_hh2AggressiveMigrationRampDivisor = &unk_283E73010;

    hh2AggressiveMigrationRampRemainder = v13->_hh2AggressiveMigrationRampRemainder;
    v13->_hh2AggressiveMigrationRampRemainder = &unk_283E73028;

    hh2AggressiveMigrationMinimumHomeKitVersion = v13->_hh2AggressiveMigrationMinimumHomeKitVersion;
    v13->_hh2AggressiveMigrationMinimumHomeKitVersion = v20;
  }

  return v13;
}

- (HMDIDSServerBag)init
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D18A10] sharedInstanceForBagType:0];
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v5 = [mEMORY[0x277D0F8D0] preferenceForKey:@"idsServerBagMaximumPollInterval"];
  numberValue = [v5 numberValue];
  [numberValue doubleValue];
  v8 = v7;

  if (fabs(v8) < 2.22044605e-16)
  {
    _HMFPreconditionFailure();
  }

  v9 = [objc_alloc(MEMORY[0x277D0F7B0]) initWithMinimumTimeInterval:2 maximumTimeInterval:12 exponentialFactor:30.0 options:v8];
  v10 = isInternalBuild();
  v11 = &stru_283CF9D50;
  if (v10)
  {
    v11 = @"-internal";
  }

  v12 = v11;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v20 = 138544130;
    v21 = v16;
    v22 = 2112;
    v23 = v12;
    v24 = 2048;
    v25 = 0x403E000000000000;
    v26 = 2048;
    v27 = v8;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Initializing using key suffix %@ with initial timer interval of %fs and maximum of %fs", &v20, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
  v17 = [(HMDIDSServerBag *)selfCopy initWithIDSServerBag:v3 refreshTimer:v9 keySuffix:v12];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t50_141936 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t50_141936, &__block_literal_global_141937);
  }

  v3 = logCategory__hmf_once_v51_141938;

  return v3;
}

void __30__HMDIDSServerBag_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v51_141938;
  logCategory__hmf_once_v51_141938 = v1;
}

@end