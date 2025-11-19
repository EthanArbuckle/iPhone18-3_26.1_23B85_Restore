@interface HMDIDSServerBag
+ (id)logCategory;
- (HMDHomeKitVersion)serverBagHomeKitVersionForKey:(void *)a1;
- (HMDIDSServerBag)init;
- (HMDIDSServerBag)initWithIDSServerBag:(id)a3 refreshTimer:(id)a4 keySuffix:(id)a5;
- (HMDIDSServerBagDelegate)delegate;
- (id)serverBagValueForKey:(void *)a1;
- (void)configure;
- (void)serverBagNumberValueForKey:(void *)a1;
- (void)serverBagStringValueForKey:(void *)a1;
- (void)timerDidFire:(id)a3;
- (void)updateCachedValuesWithServerValues;
@end

@implementation HMDIDSServerBag

- (HMDIDSServerBagDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)timerDidFire:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDIDSServerBag *)self refreshTimer];

  if (v5 == v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Server bag refresh timer fired", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDIDSServerBag *)v7 updateCachedValuesWithServerValues];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateCachedValuesWithServerValues
{
  v406 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (!v2 || (v3 = [a1 isHH2SoftwareReleased], v3 == objc_msgSend(v2, "BOOLValue")))
    {
      v10 = 0;
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      v5 = a1;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        [v5 isHH2SoftwareReleased];
        v8 = HMFBooleanToString();
        [v2 BOOLValue];
        v9 = HMFBooleanToString();
        *buf = 138543874;
        v402 = v7;
        v403 = 2112;
        *v404 = v8;
        *&v404[8] = 2112;
        v405 = v9;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating hh2SoftwareReleased from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v4);
      [v5 setHh2SoftwareReleased:{objc_msgSend(v2, "BOOLValue")}];
      v10 = 1;
    }

    v11 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    v12 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    v400 = v11;
    if ([v11 BOOLValue])
    {
      v13 = 1;
    }

    else
    {
      v13 = [v12 BOOLValue];
    }

    v393 = v12;
    if (v400 | v12 && v13 != [a1 isHH2ManualMigrationEnabled])
    {
      v14 = objc_autoreleasePoolPush();
      v15 = a1;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        [v15 isHH2ManualMigrationEnabled];
        v18 = HMFBooleanToString();
        v19 = HMFBooleanToString();
        *buf = 138543874;
        v402 = v17;
        v403 = 2112;
        *v404 = v18;
        *&v404[8] = 2112;
        v405 = v19;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating hh2ManualMigrationEnabled from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      [v15 setHh2ManualMigrationEnabled:v13];
      v10 = 1;
    }

    v20 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    v21 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if ([v20 BOOLValue])
    {
      v22 = 1;
    }

    else
    {
      v22 = [v21 BOOLValue];
    }

    v392 = v20;
    v396 = v21;
    if (v20 | v21 && v22 != [a1 isHH2AutoMigrationEnabled])
    {
      v23 = objc_autoreleasePoolPush();
      v24 = a1;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        [v24 isHH2AutoMigrationEnabled];
        v27 = HMFBooleanToString();
        v28 = HMFBooleanToString();
        *buf = 138543874;
        v402 = v26;
        v403 = 2112;
        *v404 = v27;
        *&v404[8] = 2112;
        v405 = v28;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Updating hh2AutoMigrationEnabled from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      [v24 setHh2AutoMigrationEnabled:v22];
      v10 = 1;
    }

    v29 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    v394 = v2;
    if (v29 && ([a1 hh2AutoMigrationWithoutSharedUserRampDivisor], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isEqual:", v29), v30, (v31 & 1) == 0))
    {
      v33 = objc_autoreleasePoolPush();
      v34 = a1;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        v37 = [v34 hh2AutoMigrationWithoutSharedUserRampDivisor];
        *buf = 138543874;
        v402 = v36;
        v403 = 2112;
        *v404 = v37;
        *&v404[8] = 2112;
        v405 = v29;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Updating hh2AutoMigrationWithoutSharedUserRampDivisor from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v33);
      [v34 setHh2AutoMigrationWithoutSharedUserRampDivisor:v29];
      v32 = 1;
    }

    else
    {
      v32 = 0;
    }

    v38 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v38)
    {
      v39 = [a1 hh2AutoMigrationWithoutSharedUserRampRemainder];
      v40 = [v39 isEqual:v38];

      if ((v40 & 1) == 0)
      {
        v41 = objc_autoreleasePoolPush();
        v42 = a1;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = HMFGetLogIdentifier();
          v45 = [v42 hh2AutoMigrationWithoutSharedUserRampRemainder];
          *buf = 138543874;
          v402 = v44;
          v403 = 2112;
          *v404 = v45;
          *&v404[8] = 2112;
          v405 = v38;
          _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@Updating hh2AutoMigrationWithoutSharedUserRampRemainder from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v41);
        [v42 setHh2AutoMigrationWithoutSharedUserRampRemainder:v38];
        v32 = 1;
      }
    }

    v46 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v46)
    {
      v47 = [a1 hh2AutoMigrationWithSharedUserRampDivisor];
      v48 = [v47 isEqual:v46];

      if ((v48 & 1) == 0)
      {
        v49 = objc_autoreleasePoolPush();
        v50 = a1;
        v51 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = HMFGetLogIdentifier();
          v53 = [v50 hh2AutoMigrationWithSharedUserRampDivisor];
          *buf = 138543874;
          v402 = v52;
          v403 = 2112;
          *v404 = v53;
          *&v404[8] = 2112;
          v405 = v46;
          _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_INFO, "%{public}@Updating hh2AutoMigrationWithSharedUserRampDivisor from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v49);
        [v50 setHh2AutoMigrationWithSharedUserRampDivisor:v46];
        v32 = 1;
      }
    }

    v54 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v54)
    {
      v55 = [a1 hh2AutoMigrationWithSharedUserRampRemainder];
      v56 = [v55 isEqual:v54];

      if ((v56 & 1) == 0)
      {
        v57 = objc_autoreleasePoolPush();
        v58 = a1;
        v59 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          v60 = HMFGetLogIdentifier();
          v61 = [v58 hh2AutoMigrationWithSharedUserRampRemainder];
          *buf = 138543874;
          v402 = v60;
          v403 = 2112;
          *v404 = v61;
          *&v404[8] = 2112;
          v405 = v54;
          _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_INFO, "%{public}@Updating hh2AutoMigrationWithSharedUserRampRemainder from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v57);
        [v58 setHh2AutoMigrationWithSharedUserRampRemainder:v54];
        v32 = 1;
      }
    }

    v62 = [(HMDIDSServerBag *)a1 serverBagHomeKitVersionForKey:?];
    v63 = [a1 minimumHomeKitVersionForSharedUserHH2MigrationByOwnerManual];
    if (v62 && ([v62 isEqualToVersion:v63] & 1) == 0)
    {
      v65 = objc_autoreleasePoolPush();
      v66 = a1;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v69 = v68 = v32;
        *buf = 138543874;
        v402 = v69;
        v403 = 2114;
        *v404 = v63;
        *&v404[8] = 2114;
        v405 = v62;
        _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@Updating minimumHomeKitVersionForSharedUserHH2MigrationByOwnerManual from %{public}@ to %{public}@", buf, 0x20u);

        v32 = v68;
      }

      objc_autoreleasePoolPop(v65);
      [v66 setMinimumHomeKitVersionForSharedUserHH2MigrationByOwnerManual:v62];
      v64 = 1;
    }

    else
    {
      v64 = 0;
    }

    v70 = [(HMDIDSServerBag *)a1 serverBagHomeKitVersionForKey:?];
    v71 = [a1 minimumHomeKitVersionForSharedUserHH2MigrationByOwnerAuto];
    if (v70 && ([v70 isEqualToVersion:v71] & 1) == 0)
    {
      v72 = objc_autoreleasePoolPush();
      v73 = a1;
      v74 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v76 = v75 = v32;
        *buf = 138543874;
        v402 = v76;
        v403 = 2114;
        *v404 = v71;
        *&v404[8] = 2114;
        v405 = v70;
        _os_log_impl(&dword_2531F8000, v74, OS_LOG_TYPE_INFO, "%{public}@Updating minimumHomeKitVersionForSharedUserHH2MigrationByOwnerAuto from %{public}@ to %{public}@", buf, 0x20u);

        v32 = v75;
      }

      objc_autoreleasePoolPop(v72);
      [v73 setMinimumHomeKitVersionForSharedUserHH2MigrationByOwnerAuto:v70];
      v64 = 1;
    }

    v77 = [(HMDIDSServerBag *)a1 serverBagHomeKitVersionForKey:?];
    v78 = [a1 minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithoutSharedUsers];
    if (v77 && ([v77 isEqualToVersion:v78] & 1) == 0)
    {
      v79 = v10;
      v81 = objc_autoreleasePoolPush();
      v82 = a1;
      v83 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v85 = v84 = v32;
        *buf = 138543874;
        v402 = v85;
        v403 = 2114;
        *v404 = v78;
        *&v404[8] = 2114;
        v405 = v77;
        _os_log_impl(&dword_2531F8000, v83, OS_LOG_TYPE_INFO, "%{public}@Updating minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithoutSharedUsers from %{public}@ to %{public}@", buf, 0x20u);

        v32 = v84;
      }

      objc_autoreleasePoolPop(v81);
      [v82 setMinimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithoutSharedUsers:v77];
      v80 = 1;
    }

    else
    {
      v79 = v10;
      v80 = 0;
    }

    v86 = [(HMDIDSServerBag *)a1 serverBagHomeKitVersionForKey:?];
    v87 = [a1 minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithoutSharedUsers];
    if (v86 && ([v86 isEqualToVersion:v87] & 1) == 0)
    {
      v88 = objc_autoreleasePoolPush();
      v89 = a1;
      v90 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v92 = v91 = v32;
        *buf = 138543874;
        v402 = v92;
        v403 = 2114;
        *v404 = v87;
        *&v404[8] = 2114;
        v405 = v86;
        _os_log_impl(&dword_2531F8000, v90, OS_LOG_TYPE_INFO, "%{public}@Updating minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithoutSharedUsers from %{public}@ to %{public}@", buf, 0x20u);

        v32 = v91;
      }

      objc_autoreleasePoolPop(v88);
      [v89 setMinimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithoutSharedUsers:v86];
      v80 = 1;
    }

    v93 = [(HMDIDSServerBag *)a1 serverBagHomeKitVersionForKey:?];
    v94 = [a1 minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithoutSharedUsers];
    if (v93 && ([v93 isEqualToVersion:v94] & 1) == 0)
    {
      v95 = objc_autoreleasePoolPush();
      v96 = a1;
      v97 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v99 = v98 = v32;
        *buf = 138543874;
        v402 = v99;
        v403 = 2114;
        *v404 = v94;
        *&v404[8] = 2114;
        v405 = v93;
        _os_log_impl(&dword_2531F8000, v97, OS_LOG_TYPE_INFO, "%{public}@Updating minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithoutSharedUsers from %{public}@ to %{public}@", buf, 0x20u);

        v32 = v98;
      }

      objc_autoreleasePoolPop(v95);
      [v96 setMinimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithoutSharedUsers:v93];
      v80 = 1;
    }

    v100 = v79 | v32;

    v101 = [(HMDIDSServerBag *)a1 serverBagHomeKitVersionForKey:?];
    v102 = [a1 minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithSharedUsers];
    if (v101 && ([v101 isEqualToVersion:v102] & 1) == 0)
    {
      v104 = objc_autoreleasePoolPush();
      v105 = a1;
      v106 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
      {
        v107 = HMFGetLogIdentifier();
        *buf = 138543874;
        v402 = v107;
        v403 = 2114;
        *v404 = v102;
        *&v404[8] = 2114;
        v405 = v101;
        _os_log_impl(&dword_2531F8000, v106, OS_LOG_TYPE_INFO, "%{public}@Updating minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithSharedUsers from %{public}@ to %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v104);
      [v105 setMinimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithSharedUsers:v101];
      v103 = 1;
    }

    else
    {
      v103 = 0;
    }

    v108 = v64 | v100;

    v109 = [(HMDIDSServerBag *)a1 serverBagHomeKitVersionForKey:?];
    v110 = [a1 minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithSharedUsers];
    if (v109 && ([v109 isEqualToVersion:v110] & 1) == 0)
    {
      v111 = objc_autoreleasePoolPush();
      v112 = a1;
      v113 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
      {
        v114 = HMFGetLogIdentifier();
        *buf = 138543874;
        v402 = v114;
        v403 = 2114;
        *v404 = v110;
        *&v404[8] = 2114;
        v405 = v109;
        _os_log_impl(&dword_2531F8000, v113, OS_LOG_TYPE_INFO, "%{public}@Updating minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithSharedUsers from %{public}@ to %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v111);
      [v112 setMinimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithSharedUsers:v109];
      v103 = 1;
    }

    v115 = v80 | v108;

    v116 = [(HMDIDSServerBag *)a1 serverBagHomeKitVersionForKey:?];
    v117 = [a1 minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithSharedUsers];
    if (v116 && ([v116 isEqualToVersion:v117] & 1) == 0)
    {
      v118 = objc_autoreleasePoolPush();
      v119 = a1;
      v120 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
      {
        v121 = HMFGetLogIdentifier();
        *buf = 138543874;
        v402 = v121;
        v403 = 2114;
        *v404 = v117;
        *&v404[8] = 2114;
        v405 = v116;
        _os_log_impl(&dword_2531F8000, v120, OS_LOG_TYPE_INFO, "%{public}@Updating minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithSharedUsers from %{public}@ to %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v118);
      [v119 setMinimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithSharedUsers:v116];
      v103 = 1;
    }

    v122 = v103 | v115;
    v123 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    v399 = v123;
    if (v123)
    {
      v124 = v123;
      v125 = [a1 hh2SuppressDuplicateUserModelBulletins];
      if (v125 != [v124 BOOLValue])
      {
        v126 = objc_autoreleasePoolPush();
        v127 = a1;
        v128 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
        {
          v129 = HMFGetLogIdentifier();
          [v127 hh2SuppressDuplicateUserModelBulletins];
          v130 = HMFBooleanToString();
          [v399 BOOLValue];
          v131 = HMFBooleanToString();
          *buf = 138543874;
          v402 = v129;
          v403 = 2112;
          *v404 = v130;
          *&v404[8] = 2112;
          v405 = v131;
          _os_log_impl(&dword_2531F8000, v128, OS_LOG_TYPE_INFO, "%{public}@Updating hh2SuppressDuplicateUserModelBulletins from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v126);
        [v127 setHh2SuppressDuplicateUserModelBulletins:{objc_msgSend(v399, "BOOLValue")}];
        v122 = 1;
      }
    }

    v132 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    v398 = v132;
    if (v132)
    {
      v133 = v132;
      v134 = [a1 homeSafetySecurityEnabled];
      if (v134 != [v133 BOOLValue])
      {
        v135 = objc_autoreleasePoolPush();
        v136 = a1;
        v137 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
        {
          v138 = HMFGetLogIdentifier();
          [v136 homeSafetySecurityEnabled];
          v139 = HMFBooleanToString();
          [v398 BOOLValue];
          v140 = HMFBooleanToString();
          *buf = 138543874;
          v402 = v138;
          v403 = 2112;
          *v404 = v139;
          *&v404[8] = 2112;
          v405 = v140;
          _os_log_impl(&dword_2531F8000, v137, OS_LOG_TYPE_INFO, "%{public}@Updating homeSafetySecurityEnabled from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v135);
        [v136 setHomeSafetySecurityEnabled:{objc_msgSend(v398, "BOOLValue")}];
        v122 = 1;
      }
    }

    v141 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (!v141 || (v142 = [a1 statusKitResidentStatusEnabled], v142 == objc_msgSend(v141, "BOOLValue")))
    {
      v149 = 0;
    }

    else
    {
      v143 = objc_autoreleasePoolPush();
      v144 = a1;
      v145 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
      {
        v146 = HMFGetLogIdentifier();
        [v144 statusKitResidentStatusEnabled];
        v147 = HMFBooleanToString();
        [v141 BOOLValue];
        v148 = HMFBooleanToString();
        *buf = 138543874;
        v402 = v146;
        v403 = 2112;
        *v404 = v147;
        *&v404[8] = 2112;
        v405 = v148;
        _os_log_impl(&dword_2531F8000, v145, OS_LOG_TYPE_INFO, "%{public}@Updating statusKitResidentStatusEnabled from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v143);
      [v144 setStatusKitResidentStatusEnabled:{objc_msgSend(v141, "BOOLValue")}];
      v149 = 1;
    }

    v150 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v150)
    {
      v151 = [a1 statusKitInitialConnectionTimeoutSeconds];
      v152 = [v151 isEqual:v150];

      if ((v152 & 1) == 0)
      {
        v153 = objc_autoreleasePoolPush();
        v154 = a1;
        v155 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
        {
          v156 = HMFGetLogIdentifier();
          v157 = [v154 statusKitInitialConnectionTimeoutSeconds];
          *buf = 138543874;
          v402 = v156;
          v403 = 2112;
          *v404 = v157;
          *&v404[8] = 2112;
          v405 = v150;
          _os_log_impl(&dword_2531F8000, v155, OS_LOG_TYPE_INFO, "%{public}@Updating statusKitInitialConnectionTimeoutSeconds from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v153);
        [v154 setStatusKitInitialConnectionTimeoutSeconds:v150];
        v149 = 1;
      }
    }

    v158 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v158)
    {
      v159 = [a1 statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds];
      v160 = [v159 isEqual:v158];

      if ((v160 & 1) == 0)
      {
        v161 = objc_autoreleasePoolPush();
        v162 = a1;
        v163 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
        {
          v164 = HMFGetLogIdentifier();
          v165 = [v162 statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds];
          *buf = 138543874;
          v402 = v164;
          v403 = 2112;
          *v404 = v165;
          *&v404[8] = 2112;
          v405 = v158;
          _os_log_impl(&dword_2531F8000, v163, OS_LOG_TYPE_INFO, "%{public}@Updating statusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v161);
        [v162 setStatusKitConnectionTTSUNoReachablePrimaryTimeoutSeconds:v158];
        v149 = 1;
      }
    }

    v166 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v166)
    {
      v167 = [a1 statusKitUnsubscribeFromChannelDebounceTimeSec];
      v168 = [v167 isEqual:v166];

      if ((v168 & 1) == 0)
      {
        v169 = objc_autoreleasePoolPush();
        v170 = a1;
        v171 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v171, OS_LOG_TYPE_INFO))
        {
          v172 = HMFGetLogIdentifier();
          v173 = [v170 statusKitUnsubscribeFromChannelDebounceTimeSec];
          *buf = 138543874;
          v402 = v172;
          v403 = 2112;
          *v404 = v173;
          *&v404[8] = 2112;
          v405 = v166;
          _os_log_impl(&dword_2531F8000, v171, OS_LOG_TYPE_INFO, "%{public}@Updating statusKitUnsubscribeFromChannelDebounceTimeSec from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v169);
        [v170 setStatusKitUnsubscribeFromChannelDebounceTimeSec:v166];
        v149 = 1;
      }
    }

    v174 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v174 && ([a1 residentSelectionPreferredResidentEvaluationDelay], v175 = objc_claimAutoreleasedReturnValue(), v176 = objc_msgSend(v175, "isEqual:", v174), v175, (v176 & 1) == 0))
    {
      v178 = objc_autoreleasePoolPush();
      v179 = a1;
      v180 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
      {
        v181 = HMFGetLogIdentifier();
        v182 = [v179 residentSelectionPreferredResidentEvaluationDelay];
        *buf = 138543874;
        v402 = v181;
        v403 = 2112;
        *v404 = v182;
        *&v404[8] = 2112;
        v405 = v174;
        _os_log_impl(&dword_2531F8000, v180, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionPreferredResidentEvaluationDelay from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v178);
      [v179 setResidentSelectionPreferredResidentEvaluationDelay:v174];
      v177 = 1;
    }

    else
    {
      v177 = 0;
    }

    v183 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v183)
    {
      v184 = [a1 residentSelectionPreferredResidentsListMaxSize];
      v185 = [v184 isEqual:v183];

      if ((v185 & 1) == 0)
      {
        v186 = objc_autoreleasePoolPush();
        v187 = a1;
        v188 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v188, OS_LOG_TYPE_INFO))
        {
          v189 = HMFGetLogIdentifier();
          v190 = [v187 residentSelectionPreferredResidentsListMaxSize];
          *buf = 138543874;
          v402 = v189;
          v403 = 2112;
          *v404 = v190;
          *&v404[8] = 2112;
          v405 = v183;
          _os_log_impl(&dword_2531F8000, v188, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionPreferredResidentsListMaxSize from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v186);
        [v187 setResidentSelectionPreferredResidentsListMaxSize:v183];
        v177 = 1;
      }
    }

    v191 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v191)
    {
      v192 = [a1 residentSelectionStatusDebounceInterval];
      v193 = [v192 isEqual:v191];

      if ((v193 & 1) == 0)
      {
        v194 = objc_autoreleasePoolPush();
        v195 = a1;
        v196 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v196, OS_LOG_TYPE_INFO))
        {
          v197 = HMFGetLogIdentifier();
          v198 = [v195 residentSelectionStatusDebounceInterval];
          *buf = 138543874;
          v402 = v197;
          v403 = 2112;
          *v404 = v198;
          *&v404[8] = 2112;
          v405 = v191;
          _os_log_impl(&dword_2531F8000, v196, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionStatusDebounceInterval from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v194);
        [v195 setResidentSelectionStatusDebounceInterval:v191];
        v177 = 1;
      }
    }

    v199 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v199)
    {
      v200 = [a1 residentSelectionTakeOverIfPrimaryIsNotViableInterval];
      v201 = [v200 isEqual:v199];

      if ((v201 & 1) == 0)
      {
        v202 = objc_autoreleasePoolPush();
        v203 = a1;
        v204 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v204, OS_LOG_TYPE_INFO))
        {
          v205 = HMFGetLogIdentifier();
          v206 = [v203 residentSelectionTakeOverIfPrimaryIsNotViableInterval];
          *buf = 138543874;
          v402 = v205;
          v403 = 2112;
          *v404 = v206;
          *&v404[8] = 2112;
          v405 = v199;
          _os_log_impl(&dword_2531F8000, v204, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionTakeOverIfPrimaryIsNotViableInterval from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v202);
        [v203 setResidentSelectionTakeOverIfPrimaryIsNotViableInterval:v199];
        v177 = 1;
      }
    }

    v207 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v207)
    {
      v208 = [a1 residentSelectionTakeOverInterval];
      v209 = [v208 isEqual:v207];

      if ((v209 & 1) == 0)
      {
        v210 = objc_autoreleasePoolPush();
        v211 = a1;
        v212 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v212, OS_LOG_TYPE_INFO))
        {
          v213 = HMFGetLogIdentifier();
          v214 = [v211 residentSelectionTakeOverInterval];
          *buf = 138543874;
          v402 = v213;
          v403 = 2112;
          *v404 = v214;
          *&v404[8] = 2112;
          v405 = v207;
          _os_log_impl(&dword_2531F8000, v212, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionTakeOverInterval from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v210);
        [v211 setResidentSelectionTakeOverInterval:v207];
        v177 = 1;
      }
    }

    v215 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v215)
    {
      v216 = [a1 residentSelectionTakeOverOnlyIfCurrentPrimaryIsNotViableJitter];
      v217 = [v216 isEqual:v215];

      if ((v217 & 1) == 0)
      {
        v218 = objc_autoreleasePoolPush();
        v219 = a1;
        v220 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v220, OS_LOG_TYPE_INFO))
        {
          v221 = HMFGetLogIdentifier();
          v222 = [v219 residentSelectionTakeOverOnlyIfCurrentPrimaryIsNotViableJitter];
          *buf = 138543874;
          v402 = v221;
          v403 = 2112;
          *v404 = v222;
          *&v404[8] = 2112;
          v405 = v215;
          _os_log_impl(&dword_2531F8000, v220, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionTakeOverOnlyIfCurrentPrimaryIsNotViableJitter from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v218);
        [v219 setResidentSelectionTakeOverOnlyIfCurrentPrimaryIsNotViableJitter:v215];
        v177 = 1;
      }
    }

    v223 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v223)
    {
      v224 = [a1 residentSelectionPreferredListGenerationStartHour];
      v225 = [v224 isEqual:v223];

      if ((v225 & 1) == 0)
      {
        v226 = objc_autoreleasePoolPush();
        v227 = a1;
        v228 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v228, OS_LOG_TYPE_INFO))
        {
          v229 = HMFGetLogIdentifier();
          v230 = [v227 residentSelectionPreferredListGenerationStartHour];
          *buf = 138543874;
          v402 = v229;
          v403 = 2112;
          *v404 = v230;
          *&v404[8] = 2112;
          v405 = v223;
          _os_log_impl(&dword_2531F8000, v228, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionPreferredListGenerationStartHour from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v226);
        [v227 setResidentSelectionPreferredListGenerationStartHour:v223];
        v177 = 1;
      }
    }

    v231 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v231)
    {
      v232 = [a1 residentSelectionPreferredListGenerationEndHour];
      v233 = [v232 isEqual:v231];

      if ((v233 & 1) == 0)
      {
        v234 = objc_autoreleasePoolPush();
        v235 = a1;
        v236 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v236, OS_LOG_TYPE_INFO))
        {
          v237 = HMFGetLogIdentifier();
          v238 = [v235 residentSelectionPreferredListGenerationEndHour];
          *buf = 138543874;
          v402 = v237;
          v403 = 2112;
          *v404 = v238;
          *&v404[8] = 2112;
          v405 = v231;
          _os_log_impl(&dword_2531F8000, v236, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionPreferredListGenerationEndHour from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v234);
        [v235 setResidentSelectionPreferredListGenerationEndHour:v231];
        v177 = 1;
      }
    }

    v239 = [(HMDIDSServerBag *)a1 serverBagHomeKitVersionForKey:?];
    v240 = [a1 residentSelectionMinHomeKitVersion];
    if (v239 && ([v239 isEqualToVersion:v240] & 1) == 0)
    {
      v241 = objc_autoreleasePoolPush();
      v242 = a1;
      v243 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v243, OS_LOG_TYPE_INFO))
      {
        v244 = HMFGetLogIdentifier();
        *buf = 138543874;
        v402 = v244;
        v403 = 2114;
        *v404 = v240;
        *&v404[8] = 2114;
        v405 = v239;
        _os_log_impl(&dword_2531F8000, v243, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionMinHomeKitVersion from %{public}@ to %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v241);
      [v242 setResidentSelectionMinHomeKitVersion:v239];
      v177 = 1;
    }

    v245 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v245)
    {
      v246 = [a1 residentSelectionReachabilityNotificationAfterConnectivityDelay];
      v247 = [v246 isEqual:v245];

      if ((v247 & 1) == 0)
      {
        v248 = objc_autoreleasePoolPush();
        v249 = a1;
        v250 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v250, OS_LOG_TYPE_INFO))
        {
          v251 = HMFGetLogIdentifier();
          v252 = [v249 residentSelectionReachabilityNotificationAfterConnectivityDelay];
          *buf = 138543874;
          v402 = v251;
          v403 = 2112;
          *v404 = v252;
          *&v404[8] = 2112;
          v405 = v245;
          _os_log_impl(&dword_2531F8000, v250, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionReachabilityNotificationAfterConnectivityDelay from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v248);
        [v249 setResidentSelectionReachabilityNotificationAfterConnectivityDelay:v245];
        v177 = 1;
      }
    }

    v253 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v253)
    {
      v254 = [a1 residentSelectionUserPreferredReachabilityNotificationDelay];
      v255 = [v254 isEqual:v253];

      if ((v255 & 1) == 0)
      {
        v256 = objc_autoreleasePoolPush();
        v257 = a1;
        v258 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v258, OS_LOG_TYPE_INFO))
        {
          v259 = HMFGetLogIdentifier();
          v260 = [v257 residentSelectionUserPreferredReachabilityNotificationDelay];
          *buf = 138543874;
          v402 = v259;
          v403 = 2112;
          *v404 = v260;
          *&v404[8] = 2112;
          v405 = v253;
          _os_log_impl(&dword_2531F8000, v258, OS_LOG_TYPE_INFO, "%{public}@Updating residentSelectionUserPreferredReachabilityNotificationDelay from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v256);
        [v257 setResidentSelectionUserPreferredReachabilityNotificationDelay:v253];
        v177 = 1;
      }
    }

    v261 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v261)
    {
      v262 = [a1 disableResidentSelectionReachableAccessoriesCriteria];
      if (v262 != [v261 BOOLValue])
      {
        v263 = objc_autoreleasePoolPush();
        v264 = a1;
        v265 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v265, OS_LOG_TYPE_INFO))
        {
          v266 = HMFGetLogIdentifier();
          [v264 disableResidentSelectionReachableAccessoriesCriteria];
          v267 = HMFBooleanToString();
          [v261 BOOLValue];
          v268 = HMFBooleanToString();
          *buf = 138543874;
          v402 = v266;
          v403 = 2112;
          *v404 = v267;
          *&v404[8] = 2112;
          v405 = v268;
          _os_log_impl(&dword_2531F8000, v265, OS_LOG_TYPE_INFO, "%{public}@Updating disableResidentSelectionReachableAccessoriesCriteria from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v263);
        [v264 setDisableResidentSelectionReachableAccessoriesCriteria:{objc_msgSend(v261, "BOOLValue")}];
        v177 = 1;
      }
    }

    v269 = v149 | v177;
    v270 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v270)
    {
      v271 = [a1 residentDeviceManagerBlockPrimaryTakeoverDurationSeconds];
      v272 = [v271 isEqual:v270];

      if ((v272 & 1) == 0)
      {
        v273 = objc_autoreleasePoolPush();
        v274 = a1;
        v275 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v275, OS_LOG_TYPE_INFO))
        {
          v276 = HMFGetLogIdentifier();
          v277 = [v274 residentDeviceManagerBlockPrimaryTakeoverDurationSeconds];
          *buf = 138543874;
          v402 = v276;
          v403 = 2112;
          *v404 = v277;
          *&v404[8] = 2112;
          v405 = v270;
          _os_log_impl(&dword_2531F8000, v275, OS_LOG_TYPE_INFO, "%{public}@Updating residentDeviceManagerBlockPrimaryTakeoverDurationSeconds from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v273);
        [v274 setResidentDeviceManagerBlockPrimaryTakeoverDurationSeconds:v270];
        v269 = 1;
      }
    }

    v278 = v269 | v122;
    v279 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v279)
    {
      v280 = [a1 fetchHomeWiFiInfosMessageDisable];
      if (v280 != [v279 BOOLValue])
      {
        v281 = objc_autoreleasePoolPush();
        v282 = a1;
        v283 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v283, OS_LOG_TYPE_INFO))
        {
          v284 = HMFGetLogIdentifier();
          [v282 fetchHomeWiFiInfosMessageDisable];
          v285 = HMFBooleanToString();
          [v279 BOOLValue];
          v286 = HMFBooleanToString();
          *buf = 138543874;
          v402 = v284;
          v403 = 2112;
          *v404 = v285;
          *&v404[8] = 2112;
          v405 = v286;
          _os_log_impl(&dword_2531F8000, v283, OS_LOG_TYPE_INFO, "%{public}@Updating fetchHomeWiFiInfosMessageDisableNumber from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v281);
        [v282 setFetchHomeWiFiInfosMessageDisable:{objc_msgSend(v279, "BOOLValue")}];
        v278 = 1;
      }
    }

    v287 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    v395 = v287;
    if (v287)
    {
      v288 = v287;
      v289 = [a1 useDeferredResolutionStrategy];
      if (v289 == [v288 BOOLValue])
      {
        v290 = objc_autoreleasePoolPush();
        v291 = a1;
        v292 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v292, OS_LOG_TYPE_INFO))
        {
          v293 = HMFGetLogIdentifier();
          [v291 useDeferredResolutionStrategy];
          v294 = HMFBooleanToString();
          [v395 BOOLValue];
          v295 = HMFBooleanToString();
          *buf = 138543874;
          v402 = v293;
          v403 = 2112;
          *v404 = v294;
          *&v404[8] = 2112;
          v405 = v295;
          _os_log_impl(&dword_2531F8000, v292, OS_LOG_TYPE_INFO, "%{public}@Updating useDeferredResolutionStrategy from %@ to %@", buf, 0x20u);

          v288 = v395;
        }

        objc_autoreleasePoolPop(v290);
        [v291 setUseDeferredResolutionStrategy:{objc_msgSend(v288, "BOOLValue") ^ 1}];
        v278 = 1;
      }
    }

    v296 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v296)
    {
      v297 = [a1 shouldPostHH2UpgradeRequired];
      if (v297 != [v296 BOOLValue])
      {
        v298 = objc_autoreleasePoolPush();
        v299 = a1;
        v300 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v300, OS_LOG_TYPE_INFO))
        {
          v301 = HMFGetLogIdentifier();
          v302 = [v299 shouldPostHH2UpgradeRequired];
          v303 = [v296 BOOLValue];
          *buf = 138543874;
          v402 = v301;
          v403 = 1024;
          *v404 = v302;
          *&v404[4] = 1024;
          *&v404[6] = v303;
          _os_log_impl(&dword_2531F8000, v300, OS_LOG_TYPE_INFO, "%{public}@Updating shouldPostHH2UpgradeRequired from %{BOOL}d to %{BOOL}d", buf, 0x18u);
        }

        objc_autoreleasePoolPop(v298);
        [v299 setShouldPostHH2UpgradeRequired:{objc_msgSend(v296, "BOOLValue")}];
        v278 = 1;
      }
    }

    v304 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v304)
    {
      v305 = [a1 hh2UpgradeRecommendationRepostInterval];
      v306 = [v305 isEqual:v304];

      if ((v306 & 1) == 0)
      {
        v307 = objc_autoreleasePoolPush();
        v308 = a1;
        v309 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v309, OS_LOG_TYPE_INFO))
        {
          v310 = HMFGetLogIdentifier();
          v311 = [v308 hh2UpgradeRecommendationRepostInterval];
          *buf = 138543874;
          v402 = v310;
          v403 = 2112;
          *v404 = v311;
          *&v404[8] = 2112;
          v405 = v304;
          _os_log_impl(&dword_2531F8000, v309, OS_LOG_TYPE_INFO, "%{public}@Updating hh2UpgradeRecommendationRepostInterval from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v307);
        [v308 setHh2UpgradeRecommendationRepostInterval:v304];
        v278 = 1;
      }
    }

    v312 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    v397 = v312;
    if (v312)
    {
      v313 = v312;
      v314 = [a1 hh2UpgradeRecommendationDaysToLookBack];
      v315 = [v314 isEqual:v313];

      if ((v315 & 1) == 0)
      {
        v316 = objc_autoreleasePoolPush();
        v317 = a1;
        v318 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v318, OS_LOG_TYPE_INFO))
        {
          v319 = HMFGetLogIdentifier();
          v320 = [v317 hh2UpgradeRecommendationDaysToLookBack];
          *buf = 138543874;
          v402 = v319;
          v403 = 2112;
          *v404 = v320;
          *&v404[8] = 2112;
          v405 = v397;
          _os_log_impl(&dword_2531F8000, v318, OS_LOG_TYPE_INFO, "%{public}@Updating hh2UpgradeRecommendationDaysToLookBack from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v316);
        [v317 setHh2UpgradeRecommendationDaysToLookBack:v397];
        v278 = 1;
      }
    }

    v321 = [(HMDIDSServerBag *)a1 serverBagHomeKitVersionForKey:?];
    v390 = v304;
    if (v321 && ([a1 hh2AggressiveMigrationMinimumHomeKitVersion], v322 = objc_claimAutoreleasedReturnValue(), v323 = objc_msgSend(v321, "isEqualToVersion:", v322), v322, (v323 & 1) == 0))
    {
      v325 = objc_autoreleasePoolPush();
      v326 = a1;
      v327 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v327, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v329 = v328 = v278;
        [v326 hh2AggressiveMigrationMinimumHomeKitVersion];
        v331 = v330 = v279;
        *buf = 138543874;
        v402 = v329;
        v403 = 2114;
        *v404 = v331;
        *&v404[8] = 2114;
        v405 = v321;
        _os_log_impl(&dword_2531F8000, v327, OS_LOG_TYPE_INFO, "%{public}@Updating hh2AggressiveMigrationMinimumHomeKitVersion from %{public}@ to %{public}@", buf, 0x20u);

        v279 = v330;
        v278 = v328;
      }

      objc_autoreleasePoolPop(v325);
      [v326 setHh2AggressiveMigrationMinimumHomeKitVersion:v321];
      v324 = 1;
    }

    else
    {
      v324 = 0;
    }

    v332 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v332)
    {
      v333 = [a1 hh2AggressiveMigrationRampDivisor];
      v334 = [v333 isEqual:v332];

      if ((v334 & 1) == 0)
      {
        v335 = v278;
        v336 = objc_autoreleasePoolPush();
        v337 = a1;
        v338 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v338, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v339 = v388 = v279;
          [v337 hh2AggressiveMigrationRampDivisor];
          v341 = v340 = v296;
          *buf = 138543874;
          v402 = v339;
          v403 = 2112;
          *v404 = v341;
          *&v404[8] = 2112;
          v405 = v332;
          _os_log_impl(&dword_2531F8000, v338, OS_LOG_TYPE_INFO, "%{public}@Updating hh2AggressiveMigrationRampDivisor from %@ to %@", buf, 0x20u);

          v296 = v340;
          v279 = v388;
        }

        objc_autoreleasePoolPop(v336);
        [v337 setHh2AggressiveMigrationRampDivisor:v332];
        v324 = 1;
        v278 = v335;
      }
    }

    v391 = v296;
    v342 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v342)
    {
      v343 = [a1 hh2AggressiveMigrationRampRemainder];
      v344 = [v343 isEqual:v342];

      if ((v344 & 1) == 0)
      {
        v389 = v278;
        v345 = v279;
        v346 = objc_autoreleasePoolPush();
        v347 = a1;
        v348 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v348, OS_LOG_TYPE_INFO))
        {
          v349 = HMFGetLogIdentifier();
          v350 = [v347 hh2AggressiveMigrationRampRemainder];
          *buf = 138543874;
          v402 = v349;
          v403 = 2112;
          *v404 = v350;
          *&v404[8] = 2112;
          v405 = v342;
          _os_log_impl(&dword_2531F8000, v348, OS_LOG_TYPE_INFO, "%{public}@Updating hh2AggressiveMigrationRampRemainder from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v346);
        [v347 setHh2AggressiveMigrationRampRemainder:v342];
        v324 = 1;
        v279 = v345;
        v278 = v389;
      }
    }

    v351 = v324 | v278;
    v352 = [(HMDIDSServerBag *)a1 serverBagNumberValueForKey:?];
    if (v352)
    {
      v353 = [a1 homeUpdateRequiredNotificationThreshold];
      v354 = [v353 isEqual:v352];

      if ((v354 & 1) == 0)
      {
        v355 = objc_autoreleasePoolPush();
        v356 = a1;
        v357 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v357, OS_LOG_TYPE_INFO))
        {
          v358 = HMFGetLogIdentifier();
          v359 = [v356 homeUpdateRequiredNotificationThreshold];
          *buf = 138543874;
          v402 = v358;
          v403 = 2112;
          *v404 = v359;
          *&v404[8] = 2112;
          v405 = v352;
          _os_log_impl(&dword_2531F8000, v357, OS_LOG_TYPE_INFO, "%{public}@Updating homeUpdateRequiredNotificationThreshold from %@ to %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v355);
        [v356 setHomeUpdateRequiredNotificationThreshold:v352];
        v351 = 1;
      }
    }

    v360 = [(HMDIDSServerBag *)a1 serverBagHomeKitVersionForKey:?];
    if (v360)
    {
      v361 = [a1 hh1EOLMininumControllerHomeKitVersion];
      v362 = [v360 isEqualToVersion:v361];

      if ((v362 & 1) == 0)
      {
        v363 = objc_autoreleasePoolPush();
        v364 = a1;
        v365 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v365, OS_LOG_TYPE_INFO))
        {
          v366 = HMFGetLogIdentifier();
          v367 = [v364 hh1EOLMininumControllerHomeKitVersion];
          *buf = 138543874;
          v402 = v366;
          v403 = 2114;
          *v404 = v367;
          *&v404[8] = 2114;
          v405 = v360;
          _os_log_impl(&dword_2531F8000, v365, OS_LOG_TYPE_INFO, "%{public}@Updating hh1EOLMininumControllerHomeKitVersion from %{public}@ to %{public}@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v363);
        [v364 setHh1EOLMininumControllerHomeKitVersion:v360];
        v351 = 1;
      }
    }

    v368 = [(HMDIDSServerBag *)a1 serverBagStringValueForKey:?];
    if (v368)
    {
      v369 = v368;
      v370 = [objc_alloc(MEMORY[0x277D0F8F8]) initWithString:v368];

      if (v370)
      {
        v371 = [a1 hh1EOLMinimumResidentVersion];
        v372 = [v370 isEqualToVersion:v371];

        if ((v372 & 1) == 0)
        {
          v373 = v279;
          v374 = objc_autoreleasePoolPush();
          v375 = a1;
          v376 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v376, OS_LOG_TYPE_INFO))
          {
            v377 = HMFGetLogIdentifier();
            v378 = [v375 hh1EOLMinimumResidentVersion];
            *buf = 138543874;
            v402 = v377;
            v403 = 2114;
            *v404 = v378;
            *&v404[8] = 2114;
            v405 = v370;
            _os_log_impl(&dword_2531F8000, v376, OS_LOG_TYPE_INFO, "%{public}@Updating hh1EOLMinimumResidentVersion from %{public}@ to %{public}@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v374);
          [v375 setHh1EOLMinimumResidentVersion:v370];
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
    v383 = a1;
    v384 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v384, OS_LOG_TYPE_INFO))
    {
      v385 = HMFGetLogIdentifier();
      *buf = 138543362;
      v402 = v385;
      _os_log_impl(&dword_2531F8000, v384, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of server bag update", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v382);
    v386 = [v383 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v386 idsServerBagDidUpdate:v383];
    }

    v381 = v396;
    goto LABEL_249;
  }

LABEL_250:
  v387 = *MEMORY[0x277D85DE8];
}

- (void)serverBagNumberValueForKey:(void *)a1
{
  v2 = [(HMDIDSServerBag *)a1 serverBagValueForKey:a2];
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

- (HMDHomeKitVersion)serverBagHomeKitVersionForKey:(void *)a1
{
  v2 = [(HMDIDSServerBag *)a1 serverBagStringValueForKey:a2];
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

- (void)serverBagStringValueForKey:(void *)a1
{
  v2 = [(HMDIDSServerBag *)a1 serverBagValueForKey:a2];
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

- (id)serverBagValueForKey:(void *)a1
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 keySuffix];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [a1 keySuffix];
    v7 = [v3 stringByAppendingString:v6];

    v8 = [a1 idsServerBag];
    v9 = [v8 objectForKey:v7];

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

  v11 = [a1 idsServerBag];
  v9 = [v11 objectForKey:v10];

  v7 = v10;
LABEL_6:
  v12 = objc_autoreleasePoolPush();
  v13 = a1;
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
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@serverBagValueForKey %@ returned %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)configure
{
  v3 = [(HMDIDSServerBag *)self refreshTimer];
  [v3 setDelegate:self];

  v4 = [(HMDIDSServerBag *)self refreshTimer];
  [v4 resume];

  [(HMDIDSServerBag *)self updateCachedValuesWithServerValues];
}

- (HMDIDSServerBag)initWithIDSServerBag:(id)a3 refreshTimer:(id)a4 keySuffix:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v28.receiver = self;
  v28.super_class = HMDIDSServerBag;
  v12 = [(HMDIDSServerBag *)&v28 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_idsServerBag, a3);
    objc_storeStrong(&v13->_refreshTimer, a4);
    v14 = [v11 copy];
    keySuffix = v13->_keySuffix;
    v13->_keySuffix = v14;

    v13->_useDeferredResolutionStrategy = 1;
    hh2AutoMigrationWithoutSharedUserRampDivisor = v13->_hh2AutoMigrationWithoutSharedUserRampDivisor;
    v13->_hh2AutoMigrationWithoutSharedUserRampDivisor = &unk_286627BB0;

    hh2AutoMigrationWithoutSharedUserRampRemainder = v13->_hh2AutoMigrationWithoutSharedUserRampRemainder;
    v13->_hh2AutoMigrationWithoutSharedUserRampRemainder = &unk_286627BC8;

    hh2AutoMigrationWithSharedUserRampDivisor = v13->_hh2AutoMigrationWithSharedUserRampDivisor;
    v13->_hh2AutoMigrationWithSharedUserRampDivisor = &unk_286627BB0;

    hh2AutoMigrationWithSharedUserRampRemainder = v13->_hh2AutoMigrationWithSharedUserRampRemainder;
    v13->_hh2AutoMigrationWithSharedUserRampRemainder = &unk_286627BC8;

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
    v13->_hh2UpgradeRecommendationDaysToLookBack = &unk_286627B98;

    hh2AggressiveMigrationRampDivisor = v13->_hh2AggressiveMigrationRampDivisor;
    v13->_hh2AggressiveMigrationRampDivisor = &unk_286627BB0;

    hh2AggressiveMigrationRampRemainder = v13->_hh2AggressiveMigrationRampRemainder;
    v13->_hh2AggressiveMigrationRampRemainder = &unk_286627BC8;

    hh2AggressiveMigrationMinimumHomeKitVersion = v13->_hh2AggressiveMigrationMinimumHomeKitVersion;
    v13->_hh2AggressiveMigrationMinimumHomeKitVersion = v20;
  }

  return v13;
}

- (HMDIDSServerBag)init
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D18A10] sharedInstanceForBagType:0];
  v4 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v5 = [v4 preferenceForKey:@"idsServerBagMaximumPollInterval"];
  v6 = [v5 numberValue];
  [v6 doubleValue];
  v8 = v7;

  if (fabs(v8) < 2.22044605e-16)
  {
    _HMFPreconditionFailure();
  }

  v9 = [objc_alloc(MEMORY[0x277D0F7B0]) initWithMinimumTimeInterval:2 maximumTimeInterval:12 exponentialFactor:30.0 options:v8];
  v10 = isInternalBuild();
  v11 = &stru_286509E58;
  if (v10)
  {
    v11 = @"-internal";
  }

  v12 = v11;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
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
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Initializing using key suffix %@ with initial timer interval of %fs and maximum of %fs", &v20, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
  v17 = [(HMDIDSServerBag *)v14 initWithIDSServerBag:v3 refreshTimer:v9 keySuffix:v12];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t50 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t50, &__block_literal_global_29627);
  }

  v3 = logCategory__hmf_once_v51;

  return v3;
}

uint64_t __30__HMDIDSServerBag_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v51;
  logCategory__hmf_once_v51 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end