@interface HMDHH2AutoMigrationEligibilityChecker
+ (id)logCategory;
- (HMDHH2AutoMigrationEligibilityChecker)initWithHomeManager:(id)manager;
- (HMDHH2AutoMigrationEligibilityChecker)initWithHomeManager:(id)manager accountManager:(id)accountManager featuresDataSource:(id)source userDefaults:(id)defaults cloudkitReachabilitySource:(id)reachabilitySource;
- (HMDHomeManager)homeManager;
- (uint64_t)_hasAnySharedUser;
- (uint64_t)_migrationReadinessiCloudAccountStatus;
- (uint64_t)_rampHash;
- (uint64_t)_unsupportedDeviceTypeFromDevice:(void *)device;
- (uint64_t)_unsupportedDevicesOnCurrentAccountNotAtLeastVersion:(void *)version;
- (uint64_t)_unsupportedDevicesWithCurrentDeviceAtLeastVersion:(void *)version residentDevicesAtLeastVersion:(void *)leastVersion otherDevicesAtLeastVersion:;
- (uint64_t)allHomesSupportHH2;
- (uint64_t)numberOwnedNonEmptyHomes;
- (uint64_t)numberOwnedSharedHomes;
- (uint64_t)numberUnownedSharedHomes;
- (uint64_t)ownedHomesAreEmpty;
- (void)_unsupportedDevicesOnCurrentAccountForOwnerAutoMigration;
- (void)fetchIsCurrentUserEligibleForAutoMigrationWithCompletion:(id)completion;
- (void)fetchIsCurrentUserEligibleForMigrationByOwnerWithCompletion:(id)completion;
@end

@implementation HMDHH2AutoMigrationEligibilityChecker

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)fetchIsCurrentUserEligibleForMigrationByOwnerWithCompletion:(id)completion
{
  v95 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!self)
  {
    goto LABEL_23;
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  homeManager = [(HMDHH2AutoMigrationEligibilityChecker *)self homeManager];
  homes = [homeManager homes];

  v6 = [homes countByEnumeratingWithState:&v84 objects:v91 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v85;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v85 != v9)
        {
          objc_enumerationMutation(homes);
        }

        v11 = *(*(&v84 + 1) + 8 * i);
        if (([v11 isOwnerUser] & 1) == 0 && (objc_msgSend(v11, "isUpdatedToHH2") & 1) == 0)
        {
          owner = [v11 owner];
          v13 = owner;
          if (v8)
          {
            v14 = [v8 isAccountEqualWithUser:owner];

            if ((v14 & 1) == 0)
            {
              v15 = objc_autoreleasePoolPush();
              selfCopy = self;
              v17 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                v19 = HMFGetLogIdentifier();
                *buf = 138543362;
                v90 = v19;
                _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@At least one shared home owned by different a owner, all shared homes must be owned by the same owner to be eligible for auto migration by owner", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v15);
              v88 = 0;

              goto LABEL_21;
            }
          }

          else
          {
            v8 = owner;
          }
        }
      }

      v7 = [homes countByEnumeratingWithState:&v84 objects:v91 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

  v88 = 1;
LABEL_21:

  if (v88)
  {
    v20 = 0;
  }

  else
  {
LABEL_23:
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *v91 = 138543362;
      v92 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Current user is not eligible for auto migration by owner: only shared homes owned by the same owner supported", v91, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v20 = 512;
  }

  if (([(HMDHH2AutoMigrationEligibilityChecker *)self ownedHomesAreEmpty]& 1) == 0)
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *v91 = 138543362;
      v92 = v28;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Current user is not eligible for auto migration by owner: found non-empty owned homes", v91, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    v20 |= 0x400uLL;
  }

  homeManager2 = [(HMDHH2AutoMigrationEligibilityChecker *)self homeManager];
  _migrationReadinessiCloudAccountStatus = [(HMDHH2AutoMigrationEligibilityChecker *)self _migrationReadinessiCloudAccountStatus];
  v83 = _migrationReadinessiCloudAccountStatus;
  if (_migrationReadinessiCloudAccountStatus)
  {
    v31 = _migrationReadinessiCloudAccountStatus;
    v32 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      v36 = v35;
      v37 = @"iCloud account is not signed in";
      if (v31 <= 7)
      {
        if (v31 == 2)
        {
          v37 = @"iCloud account status could not be determined";
        }

        else if (v31 == 4)
        {
          v37 = @"iCloud account status is temporarily unavailable";
        }
      }

      else
      {
        switch(v31)
        {
          case 8:
            v37 = @"iCloud account status is restricted";
            break;
          case 16:
            v37 = @"iCloud account invalid credentials";
            break;
          case 32:
            v37 = @"iCloud account need to verify terms";
            break;
        }
      }

      *v91 = 138543618;
      v92 = v35;
      v93 = 2114;
      v94 = v37;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Current user is not eligible for auto migration by owner: %{public}@", v91, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v20 |= 1uLL;
  }

  cloudDataSyncStateFilter = [homeManager2 cloudDataSyncStateFilter];
  isiCloudSwitchEnabled = [cloudDataSyncStateFilter isiCloudSwitchEnabled];

  if ((isiCloudSwitchEnabled & 1) == 0)
  {
    v40 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *v91 = 138543362;
      v92 = v43;
      _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@Current user is not eligible for auto migration by owner: iCloud switch for HomeKit is not enabled", v91, 0xCu);
    }

    objc_autoreleasePoolPop(v40);
    v20 |= 2uLL;
  }

  cloudDataSyncStateFilter2 = [homeManager2 cloudDataSyncStateFilter];
  isKeychainSyncSwitchEnabled = [cloudDataSyncStateFilter2 isKeychainSyncSwitchEnabled];

  if ((isKeychainSyncSwitchEnabled & 1) == 0)
  {
    v46 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      *v91 = 138543362;
      v92 = v49;
      _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Current user is not eligible for auto migration by owner: iCloud keychain sync is not enabled", v91, 0xCu);
    }

    objc_autoreleasePoolPop(v46);
    v20 |= 4uLL;
  }

  isHSA2Enabled = [(HMDHH2AutoMigrationEligibilityChecker *)self isHSA2Enabled];
  v51 = isHSA2Enabled[2]();

  if ((v51 & 1) == 0)
  {
    v52 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = HMFGetLogIdentifier();
      *v91 = 138543362;
      v92 = v55;
      _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, "%{public}@Current user is not eligible for auto migration by owner: HSA2 is not enabled", v91, 0xCu);
    }

    objc_autoreleasePoolPop(v52);
    v20 |= 8uLL;
  }

  if (!self || (-[HMDHH2AutoMigrationEligibilityChecker homeManager](self, "homeManager"), v56 = objc_claimAutoreleasedReturnValue(), [v56 idsServerBag], v57 = objc_claimAutoreleasedReturnValue(), v56, !v57))
  {
    v59 = 0;
    goto LABEL_64;
  }

  minimumHomeKitVersionForSharedUserHH2MigrationByOwnerManual = [v57 minimumHomeKitVersionForSharedUserHH2MigrationByOwnerManual];
  v59 = [(HMDHH2AutoMigrationEligibilityChecker *)self _unsupportedDevicesOnCurrentAccountNotAtLeastVersion:minimumHomeKitVersionForSharedUserHH2MigrationByOwnerManual];

  if (!v59)
  {
LABEL_64:
    v64 = v20;
    goto LABEL_65;
  }

  v60 = objc_autoreleasePoolPush();
  selfCopy8 = self;
  v62 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
  {
    v63 = HMFGetLogIdentifier();
    *v91 = 138543362;
    v92 = v63;
    _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_INFO, "%{public}@Current user is not eligible for migration by owner: not all devices support migration by owner performing manual migration", v91, 0xCu);
  }

  objc_autoreleasePoolPop(v60);
  v64 = v20 | 0x10;
LABEL_65:
  numberOwnedNonEmptyHomes = [(HMDHH2AutoMigrationEligibilityChecker *)self numberOwnedNonEmptyHomes];
  numberUnownedSharedHomes = [(HMDHH2AutoMigrationEligibilityChecker *)self numberUnownedSharedHomes];
  numberOwnedSharedHomes = [(HMDHH2AutoMigrationEligibilityChecker *)self numberOwnedSharedHomes];
  p_superclass = HMDHomeLocationData.superclass;
  v69 = [[HMDHH2AutoMigrationEligibilityResult alloc] initWithStatus:v64 iCloudAccountStatus:v83 unsupportedDevices:v59 hasOnlyEmptyHomes:[(HMDHH2AutoMigrationEligibilityChecker *)self ownedHomesAreEmpty] numberOwnedNonEmptyHomes:numberOwnedNonEmptyHomes numberUnownedSharedHomes:numberUnownedSharedHomes numberOwnedSharedHomes:numberOwnedSharedHomes];
  v81 = homeManager2;
  if (self && (-[HMDHH2AutoMigrationEligibilityChecker homeManager](self, "homeManager"), v70 = objc_claimAutoreleasedReturnValue(), [v70 idsServerBag], v71 = objc_claimAutoreleasedReturnValue(), v70, v71))
  {
    minimumHomeKitVersionForSharedUserHH2MigrationByOwnerAuto = [v71 minimumHomeKitVersionForSharedUserHH2MigrationByOwnerAuto];
    v73 = [(HMDHH2AutoMigrationEligibilityChecker *)self _unsupportedDevicesOnCurrentAccountNotAtLeastVersion:minimumHomeKitVersionForSharedUserHH2MigrationByOwnerAuto];

    if (v73)
    {
      v74 = objc_autoreleasePoolPush();
      selfCopy9 = self;
      v76 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v77 = v80 = v74;
        *v91 = 138543362;
        v92 = v77;
        _os_log_impl(&dword_2531F8000, v76, OS_LOG_TYPE_INFO, "%{public}@Current user is not eligible for migration by owner: not all devices support migration by owner performing auto migration", v91, 0xCu);

        v74 = v80;
      }

      objc_autoreleasePoolPop(v74);
      v20 |= 0x10uLL;
      p_superclass = (HMDHomeLocationData + 8);
    }
  }

  else
  {
    v73 = 0;
  }

  v78 = [objc_alloc((p_superclass + 49)) initWithStatus:v20 iCloudAccountStatus:v83 unsupportedDevices:v73 hasOnlyEmptyHomes:-[HMDHH2AutoMigrationEligibilityChecker ownedHomesAreEmpty](self) numberOwnedNonEmptyHomes:numberOwnedNonEmptyHomes numberUnownedSharedHomes:numberUnownedSharedHomes numberOwnedSharedHomes:numberOwnedSharedHomes];
  completionCopy[2](completionCopy, v69, v78);

  v79 = *MEMORY[0x277D85DE8];
}

- (uint64_t)ownedHomesAreEmpty
{
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    homeManager = [self homeManager];
    homes = [homeManager homes];

    v3 = [homes countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(homes);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          if ([v7 isOwnerUser] && !HMDIsEmptyHome(v7))
          {
            v8 = 0;
            goto LABEL_13;
          }
        }

        v4 = [homes countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_13:
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (uint64_t)_migrationReadinessiCloudAccountStatus
{
  if (!self)
  {
    return 0;
  }

  v1 = *(self + 40);
  v7 = 0;
  v2 = v1;
  v3 = [v2 areCloudKitServersReachableWithError:&v7];
  v4 = v7;

  v5 = 0;
  if (v3 <= 6)
  {
    v5 = qword_253D4BB10[v3];
  }

  return v5;
}

- (uint64_t)numberOwnedNonEmptyHomes
{
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    homeManager = [self homeManager];
    homes = [homeManager homes];

    v3 = [homes countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v12;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(homes);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([v8 isOwnerUser])
          {
            v5 += !HMDIsEmptyHome(v8);
          }
        }

        v4 = [homes countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (uint64_t)numberUnownedSharedHomes
{
  v15 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    homeManager = [self homeManager];
    homes = [homeManager homes];

    v3 = [homes countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v11;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(homes);
          }

          v5 += [*(*(&v10 + 1) + 8 * i) isOwnerUser] ^ 1;
        }

        v4 = [homes countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (uint64_t)numberOwnedSharedHomes
{
  v18 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    homeManager = [self homeManager];
    homes = [homeManager homes];

    v3 = [homes countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v14;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(homes);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          if ([v8 isOwnerUser])
          {
            users = [v8 users];
            v10 = [users na_any:&__block_literal_global_102_66716];

            v5 += v10;
          }
        }

        v4 = [homes countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (uint64_t)_unsupportedDevicesOnCurrentAccountNotAtLeastVersion:(void *)version
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [objc_getProperty(version v4];
  devices = [v5 devices];

  v7 = devices;
  v8 = [devices countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    v12 = *v28;
    *&v9 = 138543874;
    v24 = v9;
    v25 = v7;
    do
    {
      v13 = 0;
      v26 = v10;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);
        derivedVersion = [v14 derivedVersion];
        v16 = [derivedVersion isAtLeastVersion:v3];

        if ((v16 & 1) == 0)
        {
          v17 = objc_autoreleasePoolPush();
          versionCopy = version;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v21 = v20 = version;
            *buf = v24;
            v32 = v21;
            v33 = 2114;
            v34 = v3;
            v35 = 2114;
            v36 = v14;
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Device for current user does not meet required version %{public}@ for HH2 auto migration: %{public}@", buf, 0x20u);

            version = v20;
            v7 = v25;
          }

          objc_autoreleasePoolPop(v17);
          v11 |= [(HMDHH2AutoMigrationEligibilityChecker *)versionCopy _unsupportedDeviceTypeFromDevice:v14];
          v10 = v26;
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = [v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

- (uint64_t)_unsupportedDeviceTypeFromDevice:(void *)device
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isCurrentDevice])
  {
    v4 = 16;
  }

  else
  {
    v4 = 0;
  }

  productInfo = [v3 productInfo];
  productPlatform = [productInfo productPlatform];

  if (productPlatform > 2)
  {
    switch(productPlatform)
    {
      case 3:
        v4 |= 8uLL;
        break;
      case 4:
        v4 |= 2uLL;
        break;
      case 5:
        v8 = objc_autoreleasePoolPush();
        deviceCopy = device;
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = HMFGetLogIdentifier();
          v18 = 138543362;
          v19 = v11;
          _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unexpected VisionOS device that does not support HH2", &v18, 0xCu);
        }

        objc_autoreleasePoolPop(v8);
        v4 |= 0x20uLL;
        break;
    }
  }

  else if (productPlatform)
  {
    v7 = v4 | 1;
    if (productPlatform != 2)
    {
      v7 = v4 | 4;
    }

    if (productPlatform == 1)
    {
      v4 |= 4uLL;
    }

    else
    {
      v4 = v7;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    deviceCopy2 = device;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unexpected HMFProductPlatformUnknown", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL __63__HMDHH2AutoMigrationEligibilityChecker_numberOwnedSharedHomes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isOwner] & 1) != 0 || (objc_msgSend(v2, "isRemoteGateway"))
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 userID];
    v3 = v4 != 0;
  }

  return v3;
}

- (void)fetchIsCurrentUserEligibleForAutoMigrationWithCompletion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  homeManager = [(HMDHH2AutoMigrationEligibilityChecker *)self homeManager];
  _migrationReadinessiCloudAccountStatus = [(HMDHH2AutoMigrationEligibilityChecker *)self _migrationReadinessiCloudAccountStatus];
  if (_migrationReadinessiCloudAccountStatus)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = v10;
      v12 = @"iCloud account is not signed in";
      if (_migrationReadinessiCloudAccountStatus <= 7)
      {
        if (_migrationReadinessiCloudAccountStatus == 2)
        {
          v12 = @"iCloud account status could not be determined";
        }

        else if (_migrationReadinessiCloudAccountStatus == 4)
        {
          v12 = @"iCloud account status is temporarily unavailable";
        }
      }

      else
      {
        switch(_migrationReadinessiCloudAccountStatus)
        {
          case 8:
            v12 = @"iCloud account status is restricted";
            break;
          case 16:
            v12 = @"iCloud account invalid credentials";
            break;
          case 32:
            v12 = @"iCloud account need to verify terms";
            break;
        }
      }

      *buf = 138543618;
      v44 = v10;
      v45 = 2114;
      v46 = v12;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Current user is not eligible for auto migration: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v40[3] |= 1uLL;
  }

  cloudDataSyncStateFilter = [homeManager cloudDataSyncStateFilter];
  isiCloudSwitchEnabled = [cloudDataSyncStateFilter isiCloudSwitchEnabled];

  if ((isiCloudSwitchEnabled & 1) == 0)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Current user is not eligible for auto migration: iCloud switch for HomeKit is not enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v40[3] |= 2uLL;
  }

  cloudDataSyncStateFilter2 = [homeManager cloudDataSyncStateFilter];
  isKeychainSyncSwitchEnabled = [cloudDataSyncStateFilter2 isKeychainSyncSwitchEnabled];

  if ((isKeychainSyncSwitchEnabled & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Current user is not eligible for auto migration: iCloud keychain sync is not enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v40[3] |= 4uLL;
  }

  isHSA2Enabled = [(HMDHH2AutoMigrationEligibilityChecker *)self isHSA2Enabled];
  v26 = isHSA2Enabled[2]();

  if ((v26 & 1) == 0)
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v30;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Current user is not eligible for auto migration: HSA2 is not enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v40[3] |= 8uLL;
  }

  _unsupportedDevicesOnCurrentAccountForOwnerAutoMigration = [(HMDHH2AutoMigrationEligibilityChecker *)self _unsupportedDevicesOnCurrentAccountForOwnerAutoMigration];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __98__HMDHH2AutoMigrationEligibilityChecker_fetchIsCurrentUserEligibleForAutoMigrationWithCompletion___block_invoke;
  v34[3] = &unk_279728398;
  v34[4] = self;
  v36 = &v39;
  v37 = _unsupportedDevicesOnCurrentAccountForOwnerAutoMigration;
  v38 = _migrationReadinessiCloudAccountStatus;
  v32 = completionCopy;
  v35 = v32;
  [homeManager fetchHasOnlyEmptyHomesWithCompletion:v34];

  _Block_object_dispose(&v39, 8);
  v33 = *MEMORY[0x277D85DE8];
}

- (void)_unsupportedDevicesOnCurrentAccountForOwnerAutoMigration
{
  selfCopy = self;
  if (self)
  {
    hasAnyShared = [(HMDHH2AutoMigrationEligibilityChecker *)self _hasAnySharedUser];
    homeManager = [selfCopy homeManager];
    idsServerBag = [homeManager idsServerBag];

    if (hasAnyShared)
    {
      if (idsServerBag)
      {
        minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithSharedUsers = [idsServerBag minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithSharedUsers];
        minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithSharedUsers = [idsServerBag minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithSharedUsers];
        minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithSharedUsers = [idsServerBag minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithSharedUsers];
LABEL_7:
        v8 = minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithSharedUsers;
        selfCopy = [(HMDHH2AutoMigrationEligibilityChecker *)selfCopy _unsupportedDevicesWithCurrentDeviceAtLeastVersion:minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithSharedUsers residentDevicesAtLeastVersion:minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithSharedUsers otherDevicesAtLeastVersion:minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithSharedUsers];

LABEL_9:
        return selfCopy;
      }
    }

    else if (idsServerBag)
    {
      minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithSharedUsers = [idsServerBag minimumHomeKitVersionForOwnerMeDeviceAutoHH2MigrationWithoutSharedUsers];
      minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithSharedUsers = [idsServerBag minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithoutSharedUsers];
      minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithSharedUsers = [idsServerBag minimumHomeKitVersionForOwnerOtherDevicesAutoHH2MigrationWithoutSharedUsers];
      goto LABEL_7;
    }

    selfCopy = 0;
    goto LABEL_9;
  }

  return selfCopy;
}

void __98__HMDHH2AutoMigrationEligibilityChecker_fetchIsCurrentUserEligibleForAutoMigrationWithCompletion___block_invoke(uint64_t a1, unsigned int a2)
{
  v193 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v170 = a1;
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v7 = HMFBooleanToString();
    *buf = 138543618;
    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Does user have only empty homes: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  if (([(HMDHH2AutoMigrationEligibilityChecker *)*(v170 + 32) allHomesSupportHH2]& 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(v170 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Current user is not eligible for auto migration: not all homes support HH2", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    *(*(*(v170 + 48) + 8) + 24) |= 0x20uLL;
  }

  if ((a2 & 1) == 0 && *(v170 + 56))
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(v170 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Current user is not eligible for auto migration: not all devices on current account support HH2 auto migration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    *(*(*(v170 + 48) + 8) + 24) |= 0x10uLL;
  }

  v17 = *(v170 + 32);
  if (v17)
  {
    v166 = [*(v170 + 32) homeManager];
    v168 = [v166 lastUserAddRemoveTimestamp];
    v18 = objc_autoreleasePoolPush();
    self = v17;
    v19 = HMFGetOSLogHandle();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v168)
    {
      if (v20)
      {
        v21 = HMFGetLogIdentifier();
        *v186 = 138543618;
        *&v186[4] = v21;
        *&v186[12] = 2114;
        *&v186[14] = v168;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Last user add/remove occurred on %{public}@", v186, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [MEMORY[0x277CBEAA8] now];
      [v22 timeIntervalSinceDate:v168];
      v24 = v23;
      v26 = [objc_getProperty(self v25];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;

      if (v28)
      {
        [v28 doubleValue];
        v30 = v29;
      }

      else if (isInternalBuild())
      {
        v30 = 432000.0;
      }

      else
      {
        v30 = 2592000.0;
      }

      v169 = v24 < v30;
    }

    else
    {
      if (v20)
      {
        v31 = HMFGetLogIdentifier();
        *v186 = 138543362;
        *&v186[4] = v31;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Setting last user add/remove to now since it is not set", v186, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      [v166 setLastUserAddRemoveTimestamp];
      v169 = 1;
    }

    [v166 homes];
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    obj = v177 = 0u;
    v32 = [obj countByEnumeratingWithState:&v176 objects:buf count:16];
    if (v32)
    {
      v33 = *v177;
      while (2)
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v177 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v176 + 1) + 8 * i);
          if (HMDIsEmptyHome(v35))
          {
            v36 = objc_autoreleasePoolPush();
            v37 = self;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = HMFGetLogIdentifier();
              v40 = [v35 shortDescription];
              *v186 = 138543618;
              *&v186[4] = v39;
              *&v186[12] = 2114;
              *&v186[14] = v40;
              _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Home %{public}@ is empty, ignoring for eligible resident check", v186, 0x16u);
            }

            objc_autoreleasePoolPop(v36);
          }

          else
          {
            *v186 = 0;
            *&v186[8] = v186;
            *&v186[16] = 0x2020000000;
            v187 = 0;
            v41 = [v35 enabledResidents];
            v175[0] = MEMORY[0x277D85DD0];
            v175[1] = 3221225472;
            v175[2] = __74__HMDHH2AutoMigrationEligibilityChecker_allHomesHaveHH2SupportedResidents__block_invoke;
            v175[3] = &unk_2797283E0;
            v175[4] = v186;
            v42 = [v41 na_filter:v175];

            if (*(*&v186[8] + 24) >= 1)
            {
              v43 = [v35 enabledResidents];
              v44 = [v43 count];
              v45 = v44 == *(*&v186[8] + 24);

              if (v45)
              {
                v65 = objc_autoreleasePoolPush();
                v66 = self;
                v67 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
                {
                  v68 = HMFGetLogIdentifier();
                  v69 = [v35 shortDescription];
                  *v180 = 138543618;
                  v181 = v68;
                  v182 = 2114;
                  v183 = v69;
                  _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@Home %{public}@ only has iPad as resident", v180, 0x16u);
                }

                objc_autoreleasePoolPop(v65);
                v59 = 0x2000;
LABEL_66:

                _Block_object_dispose(v186, 8);
LABEL_67:

                goto LABEL_68;
              }
            }

            if ((HMDHH2AutoMigrationHasSharedUserOrPendingInvitation(v35) | v169))
            {
              if (![v42 count])
              {
                HasSharedUserOrPendingInvitation = HMDHH2AutoMigrationHasSharedUserOrPendingInvitation(v35);
                v71 = objc_autoreleasePoolPush();
                v72 = self;
                if ((HasSharedUserOrPendingInvitation | !v169))
                {
                  v73 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                  {
                    v74 = HMFGetLogIdentifier();
                    v75 = [v35 shortDescription];
                    *v180 = 138543618;
                    v181 = v74;
                    v182 = 2114;
                    v183 = v75;
                    _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Home %{public}@ doesn't have an eligible resident", v180, 0x16u);
                  }

                  objc_autoreleasePoolPop(v71);
                  v59 = 64;
                }

                else
                {
                  v76 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
                  {
                    v77 = HMFGetLogIdentifier();
                    v78 = [v35 shortDescription];
                    *v180 = 138543874;
                    v181 = v77;
                    v182 = 2114;
                    v183 = v78;
                    v184 = 2114;
                    v185 = v168;
                    _os_log_impl(&dword_2531F8000, v76, OS_LOG_TYPE_INFO, "%{public}@Home %{public}@ doesn't have an eligible resident, recent user add/remove on %{public}@", v180, 0x20u);
                  }

                  objc_autoreleasePoolPop(v71);
                  v59 = 0x4000;
                }

                goto LABEL_66;
              }

              v46 = [v35 appleMediaAccessories];
              v173[0] = MEMORY[0x277D85DD0];
              v173[1] = 3221225472;
              v173[2] = __74__HMDHH2AutoMigrationEligibilityChecker_allHomesHaveHH2SupportedResidents__block_invoke_105;
              v173[3] = &unk_279734F10;
              v47 = v42;
              v174 = v47;
              v48 = [v46 na_filter:v173];

              if (!v48 || [v48 hmf_isEmpty])
              {
                v60 = objc_autoreleasePoolPush();
                v61 = self;
                v62 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                {
                  v63 = HMFGetLogIdentifier();
                  v64 = [v35 shortDescription];
                  *v180 = 138543618;
                  v181 = v63;
                  v182 = 2114;
                  v183 = v64;
                  _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_INFO, "%{public}@Home %{public}@ doesn't have a resident that is also accessory", v180, 0x16u);
                }

                objc_autoreleasePoolPop(v60);
                _Block_object_dispose(v186, 8);
                v59 = 64;
                goto LABEL_67;
              }
            }

            else
            {
              v49 = objc_autoreleasePoolPush();
              v50 = self;
              v51 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
              {
                v52 = HMFGetLogIdentifier();
                v53 = [v35 shortDescription];
                *v180 = 138543874;
                v181 = v52;
                v182 = 2114;
                v183 = v53;
                v184 = 2114;
                v185 = v168;
                _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_INFO, "%{public}@Home %{public}@ last user change on %{public}@, ignoring resident requiremnt", v180, 0x20u);
              }

              objc_autoreleasePoolPop(v49);
            }

            _Block_object_dispose(v186, 8);
          }
        }

        v32 = [obj countByEnumeratingWithState:&v176 objects:buf count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v54 = objc_autoreleasePoolPush();
    v55 = self;
    v56 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      v57 = HMFGetLogIdentifier();
      v58 = [obj count];
      *v186 = 138543618;
      *&v186[4] = v57;
      *&v186[12] = 2050;
      *&v186[14] = v58;
      _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_INFO, "%{public}@All homes (%{public}lu) have at least one eligible resident device or no recent user add/remove", v186, 0x16u);
    }

    objc_autoreleasePoolPop(v54);
    v59 = 0;
LABEL_68:

    if (v59 && (a2 & 1) == 0)
    {
      v79 = objc_autoreleasePoolPush();
      v80 = *(v170 + 32);
      v81 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
      {
        v82 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v82;
        _os_log_impl(&dword_2531F8000, v81, OS_LOG_TYPE_INFO, "%{public}@Current user is not eligible for auto migration: not enough eligible residents exist for owned homes", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v79);
      *(*(*(v170 + 48) + 8) + 24) |= v59;
    }
  }

  if ((a2 & 1) == 0)
  {
    Property = *(v170 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v8, 24, 1);
    }

    if (([Property isHH2AutoMigrationEnabled] & 1) == 0)
    {
      v84 = objc_autoreleasePoolPush();
      v85 = *(v170 + 32);
      v86 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
      {
        v87 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v87;
        _os_log_impl(&dword_2531F8000, v86, OS_LOG_TYPE_INFO, "%{public}@Current user is not eligible for auto migration: HH2 auto migration feature flag is not enabled", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v84);
      *(*(*(v170 + 48) + 8) + 24) |= 0x80uLL;
    }

    v88 = *(v170 + 32);
    if (!v88)
    {
      goto LABEL_91;
    }

    v89 = [*(v170 + 32) homeManager];
    v90 = [v89 idsServerBag];

    if (!v90)
    {
      v93 = objc_autoreleasePoolPush();
      v94 = v88;
      v95 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        v96 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v96;
        _os_log_impl(&dword_2531F8000, v95, OS_LOG_TYPE_ERROR, "%{public}@Not ramp eligible because server bag is unavailable", buf, 0xCu);
      }

      goto LABEL_90;
    }

    if ([(HMDHH2AutoMigrationEligibilityChecker *)v88 _hasAnySharedUser])
    {
      v91 = [v90 hh2AutoMigrationWithSharedUserRampDivisor];
      v92 = [v91 unsignedIntegerValue];

      [v90 hh2AutoMigrationWithSharedUserRampRemainder];
    }

    else
    {
      v97 = [v90 hh2AutoMigrationWithoutSharedUserRampDivisor];
      v92 = [v97 unsignedIntegerValue];

      [v90 hh2AutoMigrationWithoutSharedUserRampRemainder];
    }
    v98 = ;
    v99 = [v98 unsignedIntegerValue];

    if (v92 <= 0x63)
    {
      v93 = objc_autoreleasePoolPush();
      v101 = v88;
      v95 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
      {
        v102 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v102;
        *&buf[12] = 2050;
        *&buf[14] = v92;
        *&buf[22] = 2050;
        v189 = 100;
        _os_log_impl(&dword_2531F8000, v95, OS_LOG_TYPE_INFO, "%{public}@Ramp dividier %{public}tu is less than the required minimum %{public}tu", buf, 0x20u);
      }

LABEL_90:

      objc_autoreleasePoolPop(v93);
LABEL_91:
      v103 = objc_autoreleasePoolPush();
      v104 = *(v170 + 32);
      v105 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
      {
        v106 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v106;
        _os_log_impl(&dword_2531F8000, v105, OS_LOG_TYPE_INFO, "%{public}@Current user is not eligible for auto migration: ramp roll out in effect", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v103);
      *(*(*(v170 + 48) + 8) + 24) |= 0x1000uLL;
      goto LABEL_94;
    }

    v140 = [(HMDHH2AutoMigrationEligibilityChecker *)v88 _rampHash];
    v141 = objc_autoreleasePoolPush();
    v142 = v88;
    v143 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v143, OS_LOG_TYPE_INFO))
    {
      v144 = HMFGetLogIdentifier();
      v145 = HMFBooleanToString();
      *buf = 138544386;
      *&buf[4] = v144;
      *&buf[12] = 2050;
      *&buf[14] = v140;
      *&buf[22] = 2050;
      v189 = v92;
      *v190 = 2050;
      *&v190[2] = v99;
      *&v190[10] = 2114;
      *&v190[12] = v145;
      _os_log_impl(&dword_2531F8000, v143, OS_LOG_TYPE_INFO, "%{public}@HH2 auto migration ramp decision: dividend=%{public}tu, divisor=%{public}tu, remainder=%{public}tu, result=%{public}@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v141);
    if (v140 % v92 >= v99)
    {
      goto LABEL_91;
    }
  }

LABEL_94:
  v107 = [HMDHH2AutoMigrationEligibilityResult alloc];
  v108 = *(v170 + 56);
  v109 = *(*(*(v170 + 48) + 8) + 24);
  v110 = *(v170 + 64);
  v111 = [(HMDHH2AutoMigrationEligibilityChecker *)*(v170 + 32) numberOwnedNonEmptyHomes];
  v112 = [(HMDHH2AutoMigrationEligibilityChecker *)*(v170 + 32) numberUnownedSharedHomes];
  v113 = [(HMDHH2AutoMigrationEligibilityResult *)v107 initWithStatus:v109 iCloudAccountStatus:v110 unsupportedDevices:v108 hasOnlyEmptyHomes:a2 numberOwnedNonEmptyHomes:v111 numberUnownedSharedHomes:v112 numberOwnedSharedHomes:[(HMDHH2AutoMigrationEligibilityChecker *)*(v170 + 32) numberOwnedSharedHomes]];
  if ([(HMDHH2AutoMigrationEligibilityResult *)v113 isEligible])
  {
    goto LABEL_117;
  }

  v114 = *(v170 + 32);
  if (!v114)
  {
    goto LABEL_117;
  }

  v115 = [*(v170 + 32) homeManager];
  v116 = [v115 idsServerBag];

  if (!v116)
  {
    v136 = objc_autoreleasePoolPush();
    v137 = v114;
    v138 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
    {
      v139 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v139;
      _os_log_impl(&dword_2531F8000, v138, OS_LOG_TYPE_ERROR, "%{public}@Assuming auto migration server key is not enabled because server bag is unavailable", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v136);
    goto LABEL_116;
  }

  v117 = [v116 hh2AggressiveMigrationMinimumHomeKitVersion];
  v118 = v117 == 0;

  if (v118)
  {
LABEL_116:

    goto LABEL_117;
  }

  v120 = [objc_getProperty(v114 v119];
  v121 = [v120 productInfo];
  v122 = [v121 productClass] == 1;

  if (!v122)
  {

    goto LABEL_116;
  }

  v123 = [v120 derivedVersion];
  v124 = [v116 hh2AggressiveMigrationMinimumHomeKitVersion];
  v125 = [v123 isAtLeastVersion:v124];

  if (!v125)
  {
LABEL_117:
    (*(*(v170 + 40) + 16))();
    goto LABEL_118;
  }

  v126 = *(v170 + 32);
  v127 = *(v170 + 40);
  if (v126)
  {
    *&v176 = 0;
    *(&v176 + 1) = &v176;
    v177 = 0x2020000000uLL;
    v128 = [v126 homeManager];
    v129 = [(HMDHH2AutoMigrationEligibilityChecker *)v126 _migrationReadinessiCloudAccountStatus];
    if (v129)
    {
      v130 = objc_autoreleasePoolPush();
      v131 = v126;
      v132 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
      {
        v133 = HMFGetLogIdentifier();
        v134 = v133;
        v135 = @"iCloud account is not signed in";
        if (v129 <= 7)
        {
          if (v129 == 2)
          {
            v135 = @"iCloud account status could not be determined";
          }

          else if (v129 == 4)
          {
            v135 = @"iCloud account status is temporarily unavailable";
          }
        }

        else
        {
          switch(v129)
          {
            case 8:
              v135 = @"iCloud account status is restricted";
              break;
            case 16:
              v135 = @"iCloud account invalid credentials";
              break;
            case 32:
              v135 = @"iCloud account need to verify terms";
              break;
          }
        }

        *buf = 138543618;
        *&buf[4] = v133;
        *&buf[12] = 2114;
        *&buf[14] = v135;
        _os_log_impl(&dword_2531F8000, v132, OS_LOG_TYPE_ERROR, "%{public}@Current user is not eligible for aggressive migration: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v130);
      *(*(&v176 + 1) + 24) |= 1uLL;
    }

    v147 = [v128 cloudDataSyncStateFilter];
    v148 = [v147 isiCloudSwitchEnabled];

    if ((v148 & 1) == 0)
    {
      v149 = objc_autoreleasePoolPush();
      v150 = v126;
      v151 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
      {
        v152 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v152;
        _os_log_impl(&dword_2531F8000, v151, OS_LOG_TYPE_ERROR, "%{public}@Current user is not eligible for aggressive migration: iCloud switch for HomeKit is not enabled", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v149);
      *(*(&v176 + 1) + 24) |= 2uLL;
    }

    v153 = [v128 cloudDataSyncStateFilter];
    v154 = [v153 isKeychainSyncSwitchEnabled];

    if ((v154 & 1) == 0)
    {
      v155 = objc_autoreleasePoolPush();
      v156 = v126;
      v157 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
      {
        v158 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v158;
        _os_log_impl(&dword_2531F8000, v157, OS_LOG_TYPE_ERROR, "%{public}@Current user is not eligible for aggressive migration: iCloud keychain sync is not enabled", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v155);
      *(*(&v176 + 1) + 24) |= 4uLL;
    }

    v159 = [v126 isHSA2Enabled];
    v160 = v159[2]();

    if ((v160 & 1) == 0)
    {
      v161 = objc_autoreleasePoolPush();
      v162 = v126;
      v163 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
      {
        v164 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v164;
        _os_log_impl(&dword_2531F8000, v163, OS_LOG_TYPE_INFO, "%{public}@Current user is not eligible for aggressive migration: HSA2 is not enabled", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v161);
      *(*(&v176 + 1) + 24) |= 8uLL;
    }

    v165 = [(HMDHH2AutoMigrationEligibilityChecker *)v126 _unsupportedDevicesOnCurrentAccountForOwnerAutoMigration];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __104__HMDHH2AutoMigrationEligibilityChecker__fetchCurrentUserEligibileForAggressiveMigrationWithCompletion___block_invoke;
    v189 = &unk_279728398;
    *v190 = v126;
    *&v190[16] = &v176;
    v191 = v129;
    v192 = v165;
    *&v190[8] = v127;
    [v128 fetchHasOnlyEmptyHomesWithCompletion:buf];

    _Block_object_dispose(&v176, 8);
  }

LABEL_118:
  v146 = *MEMORY[0x277D85DE8];
}

- (uint64_t)allHomesSupportHH2
{
  v59 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    homeManager = [self homeManager];
    homes = [homeManager homes];

    v4 = [homes countByEnumeratingWithState:&v47 objects:v58 count:16];
    if (v4)
    {
      v5 = v4;
      selfCopy = self;
      v42 = homes;
      v6 = *v48;
      v39 = *v48;
      while (2)
      {
        v7 = 0;
        v40 = v5;
        do
        {
          if (*v48 != v6)
          {
            objc_enumerationMutation(homes);
          }

          v8 = *(*(&v47 + 1) + 8 * v7);
          if (([v8 isOwnerUser] & 1) == 0)
          {
            v35 = objc_autoreleasePoolPush();
            v36 = selfCopy;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = HMFGetLogIdentifier();
              *buf = 138543618;
              v52 = v38;
              v53 = 2112;
              v54 = v8;
              _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Current user is in a shared home: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v35);
            v22 = 0;
            goto LABEL_33;
          }

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          users = [v8 users];
          v10 = [users countByEnumeratingWithState:&v43 objects:v57 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v44;
            while (2)
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v44 != v12)
                {
                  objc_enumerationMutation(users);
                }

                v14 = *(*(&v43 + 1) + 8 * i);
                if (([v14 isOwner] & 1) == 0)
                {
                  userDataController = [v14 userDataController];
                  supportsHH2MigrationByOwnerManual = [userDataController supportsHH2MigrationByOwnerManual];
                  supportsHH2MigrationByOwnerAuto = [userDataController supportsHH2MigrationByOwnerAuto];
                  v18 = isInternalBuild();
                  v19 = supportsHH2MigrationByOwnerAuto | supportsHH2MigrationByOwnerManual;
                  if (!v18)
                  {
                    v19 = supportsHH2MigrationByOwnerAuto;
                  }

                  if ((v19 & 1) == 0)
                  {
                    v23 = objc_autoreleasePoolPush();
                    v24 = selfCopy;
                    v25 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                    {
                      v26 = HMFGetLogIdentifier();
                      shortDescription = [v8 shortDescription];
                      *buf = 138543874;
                      v52 = v26;
                      v53 = 2114;
                      v54 = shortDescription;
                      v55 = 2114;
                      v56 = v14;
                      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Home %{public}@ has at least one shared user that doesn't support migration by owner performing auto migration: %{public}@", buf, 0x20u);
                    }

                    objc_autoreleasePoolPop(v23);
                    goto LABEL_32;
                  }
                }

                if (([v14 isOwner] & 1) == 0)
                {
                  userDataController2 = [v14 userDataController];
                  supportsHH2MigrationByOwnerAuto2 = [userDataController2 supportsHH2MigrationByOwnerAuto];

                  if ((supportsHH2MigrationByOwnerAuto2 & 1) == 0)
                  {
                    v28 = objc_autoreleasePoolPush();
                    v29 = selfCopy;
                    v30 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                    {
                      v31 = HMFGetLogIdentifier();
                      shortDescription2 = [v8 shortDescription];
                      *buf = 138543874;
                      v52 = v31;
                      v53 = 2114;
                      v54 = shortDescription2;
                      v55 = 2114;
                      v56 = v14;
                      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Home %{public}@ has at least one shared user that doesn't support migration by owner performing auto migration: %{public}@", buf, 0x20u);
                    }

                    objc_autoreleasePoolPop(v28);
LABEL_32:

                    v22 = 0;
                    homes = v42;
                    goto LABEL_33;
                  }
                }
              }

              v11 = [users countByEnumeratingWithState:&v43 objects:v57 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          ++v7;
          v6 = v39;
          homes = v42;
        }

        while (v7 != v40);
        v5 = [v42 countByEnumeratingWithState:&v47 objects:v58 count:16];
        v22 = 1;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v22 = 1;
    }

LABEL_33:
  }

  else
  {
    v22 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v22;
}

void __104__HMDHH2AutoMigrationEligibilityChecker__fetchCurrentUserEligibileForAggressiveMigrationWithCompletion___block_invoke(uint64_t a1, unsigned int a2)
{
  v127 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v102 = a1;
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    v118 = v6;
    v119 = 1024;
    LODWORD(v120) = a2;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Does user have only empty homes: %{BOOL}d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v3);
  if (([(HMDHH2AutoMigrationEligibilityChecker *)*(a1 + 32) allHomesSupportHH2]& 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v118 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Current user is not eligible for aggressive migration: not all homes support HH2", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    *(*(*(a1 + 48) + 8) + 24) |= 0x20uLL;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v98 = [*(a1 + 32) homeManager];
    v100 = [v98 idsServerBag];
    if (v100)
    {
      [v98 homes];
      v109 = 0u;
      v110 = 0u;
      v108 = 0u;
      obj = v107 = 0u;
      v12 = [obj countByEnumeratingWithState:&v107 objects:buf count:16];
      if (v12)
      {
        v13 = *v108;
        do
        {
          v14 = 0;
          do
          {
            if (*v108 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v107 + 1) + 8 * v14);
            if (HMDIsEmptyHome(v15))
            {
              v16 = objc_autoreleasePoolPush();
              v17 = v11;
              v18 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                v19 = HMFGetLogIdentifier();
                v20 = [v15 shortDescription];
                *v115 = 138543618;
                *&v115[4] = v19;
                *&v115[12] = 2114;
                *&v115[14] = v20;
                _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Home %{public}@ is empty, ignoring for eligible resident check", v115, 0x16u);
              }

LABEL_17:

              objc_autoreleasePoolPop(v16);
              goto LABEL_26;
            }

            v21 = [v15 users];
            v22 = [v21 na_any:&__block_literal_global_226_66759];

            if ((v22 & 1) == 0)
            {
              v23 = [v15 enabledResidents];
              v24 = [v23 count] == 0;

              if (v24)
              {
                v16 = objc_autoreleasePoolPush();
                v33 = v11;
                v18 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
                {
                  v34 = HMFGetLogIdentifier();
                  v35 = [v15 shortDescription];
                  *v115 = 138543618;
                  *&v115[4] = v34;
                  *&v115[12] = 2114;
                  *&v115[14] = v35;
                  _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Home %{public}@ has no resident device, ignoring for eligible resident check", v115, 0x16u);
                }

                goto LABEL_17;
              }
            }

            *v115 = 0;
            *&v115[8] = v115;
            *&v115[16] = 0x2020000000;
            v116 = 0;
            v25 = [v15 enabledResidents];
            v106[0] = MEMORY[0x277D85DD0];
            v106[1] = 3221225472;
            v106[2] = __97__HMDHH2AutoMigrationEligibilityChecker__allHomesHaveAtLeastOneHH2SupportedResidentsOrNoResident__block_invoke;
            v106[3] = &unk_2797283E0;
            v106[4] = v115;
            v26 = [v25 na_filter:v106];

            if (*(*&v115[8] + 24) >= 1)
            {
              v27 = [v15 enabledResidents];
              v28 = [v27 count];
              v29 = v28 == *(*&v115[8] + 24);

              if (v29)
              {
                v93 = objc_autoreleasePoolPush();
                v94 = v11;
                v95 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
                {
                  v96 = HMFGetLogIdentifier();
                  v97 = [v15 shortDescription];
                  *v111 = 138543618;
                  v112 = v96;
                  v113 = 2114;
                  v114 = v97;
                  _os_log_impl(&dword_2531F8000, v95, OS_LOG_TYPE_INFO, "%{public}@Home %{public}@ only has iPad as resident", v111, 0x16u);
                }

                objc_autoreleasePoolPop(v93);
                _Block_object_dispose(v115, 8);
                v42 = 0x2000;
                goto LABEL_44;
              }
            }

            v104[0] = MEMORY[0x277D85DD0];
            v104[1] = 3221225472;
            v104[2] = __97__HMDHH2AutoMigrationEligibilityChecker__allHomesHaveAtLeastOneHH2SupportedResidentsOrNoResident__block_invoke_112;
            v104[3] = &unk_27972AE10;
            v105 = v100;
            v30 = [v26 na_filter:v104];
            if (![v30 count])
            {
              v52 = objc_autoreleasePoolPush();
              v53 = v11;
              v54 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
              {
                v55 = HMFGetLogIdentifier();
                v56 = [v15 shortDescription];
                *v111 = 138543618;
                v112 = v55;
                v113 = 2114;
                v114 = v56;
                _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, "%{public}@Home %{public}@ doesn't have supported resident device", v111, 0x16u);
              }

              objc_autoreleasePoolPop(v52);
              goto LABEL_43;
            }

            v103[0] = MEMORY[0x277D85DD0];
            v103[1] = 3221225472;
            v103[2] = __97__HMDHH2AutoMigrationEligibilityChecker__allHomesHaveAtLeastOneHH2SupportedResidentsOrNoResident__block_invoke_113;
            v103[3] = &unk_27972AE10;
            v103[4] = v15;
            v31 = [v30 na_filter:v103];
            v32 = v31;
            if (!v31 || [v31 hmf_isEmpty])
            {
              v47 = objc_autoreleasePoolPush();
              v48 = v11;
              v49 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
              {
                v50 = HMFGetLogIdentifier();
                v51 = [v15 shortDescription];
                *v111 = 138543618;
                v112 = v50;
                v113 = 2114;
                v114 = v51;
                _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_INFO, "%{public}@Home %{public}@ supported resident device is no also accessory", v111, 0x16u);
              }

              objc_autoreleasePoolPop(v47);
LABEL_43:
              _Block_object_dispose(v115, 8);
              v42 = 0x8000;
LABEL_44:

              goto LABEL_45;
            }

            _Block_object_dispose(v115, 8);
LABEL_26:
            ++v14;
          }

          while (v12 != v14);
          v36 = [obj countByEnumeratingWithState:&v107 objects:buf count:16];
          v12 = v36;
        }

        while (v36);
      }

      v37 = objc_autoreleasePoolPush();
      v38 = v11;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        v41 = [obj count];
        *v115 = 138543618;
        *&v115[4] = v40;
        *&v115[12] = 2050;
        *&v115[14] = v41;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@All homes (%{public}lu) have at least one eligible resident device or no resident", v115, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      v42 = 0;
LABEL_45:
    }

    else
    {
      v43 = objc_autoreleasePoolPush();
      v44 = v11;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        *v115 = 138543362;
        *&v115[4] = v46;
        _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Assuming auto migration server key is not enabled because server bag is unavailable", v115, 0xCu);
      }

      objc_autoreleasePoolPop(v43);
      v42 = 0x8000;
    }

    if (v42 && (a2 & 1) == 0)
    {
      v57 = objc_autoreleasePoolPush();
      v58 = *(v102 + 32);
      v59 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        v60 = HMFGetLogIdentifier();
        *buf = 138543362;
        v118 = v60;
        _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_INFO, "%{public}@Current user is not eligible for aggressive migration: not all owned homes have at least eligible residents", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v57);
      *(*(*(v102 + 48) + 8) + 24) |= v42;
    }
  }

  if ((a2 & 1) == 0)
  {
    v61 = *(v102 + 32);
    if (!v61)
    {
LABEL_60:
      v75 = objc_autoreleasePoolPush();
      v76 = *(v102 + 32);
      v77 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
      {
        v78 = HMFGetLogIdentifier();
        *buf = 138543362;
        v118 = v78;
        _os_log_impl(&dword_2531F8000, v77, OS_LOG_TYPE_INFO, "%{public}@Current user is not eligible for aggressive migration: ramp roll out in effect", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v75);
      *(*(*(v102 + 48) + 8) + 24) |= 0x10000uLL;
      goto LABEL_63;
    }

    v62 = [*(v102 + 32) homeManager];
    v63 = [v62 idsServerBag];

    if (!v63)
    {
      v69 = objc_autoreleasePoolPush();
      v73 = v61;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v74 = HMFGetLogIdentifier();
        *buf = 138543362;
        v118 = v74;
        _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_ERROR, "%{public}@Not ramp eligible because server bag is unavailable", buf, 0xCu);
      }

      goto LABEL_59;
    }

    v64 = [v63 hh2AggressiveMigrationRampDivisor];
    v65 = [v64 unsignedIntegerValue];

    v66 = [v63 hh2AggressiveMigrationRampRemainder];
    v67 = [v66 unsignedIntegerValue];

    if (v65 <= 0x63)
    {
      v69 = objc_autoreleasePoolPush();
      v70 = v61;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        v72 = HMFGetLogIdentifier();
        *buf = 138543874;
        v118 = v72;
        v119 = 2050;
        v120 = v65;
        v121 = 2050;
        v122 = 100;
        _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_INFO, "%{public}@HH2 Aggressive migration ramp dividier %{public}tu is less than the required minimum %{public}tu", buf, 0x20u);
      }

LABEL_59:

      objc_autoreleasePoolPop(v69);
      goto LABEL_60;
    }

    v87 = [(HMDHH2AutoMigrationEligibilityChecker *)v61 _rampHash];
    v88 = objc_autoreleasePoolPush();
    v89 = v61;
    v90 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      v91 = HMFGetLogIdentifier();
      v92 = HMFBooleanToString();
      *buf = 138544386;
      v118 = v91;
      v119 = 2050;
      v120 = v87;
      v121 = 2050;
      v122 = v65;
      v123 = 2050;
      v124 = v67;
      v125 = 2114;
      v126 = v92;
      _os_log_impl(&dword_2531F8000, v90, OS_LOG_TYPE_INFO, "%{public}@HH2 Aggressive migration ramp decision: dividend=%{public}tu, divisor=%{public}tu, remainder=%{public}tu, result=%{public}@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v88);
    if (v87 % v65 >= v67)
    {
      goto LABEL_60;
    }
  }

LABEL_63:
  v79 = [HMDHH2AutoMigrationEligibilityResult alloc];
  v80 = *(v102 + 56);
  v81 = *(*(*(v102 + 48) + 8) + 24);
  v82 = *(v102 + 64);
  v83 = [(HMDHH2AutoMigrationEligibilityChecker *)*(v102 + 32) numberOwnedNonEmptyHomes];
  v84 = [(HMDHH2AutoMigrationEligibilityChecker *)*(v102 + 32) numberUnownedSharedHomes];
  v85 = [(HMDHH2AutoMigrationEligibilityResult *)v79 initWithStatus:v81 iCloudAccountStatus:v80 unsupportedDevices:v82 hasOnlyEmptyHomes:a2 numberOwnedNonEmptyHomes:v83 numberUnownedSharedHomes:v84 numberOwnedSharedHomes:[(HMDHH2AutoMigrationEligibilityChecker *)*(v102 + 32) numberOwnedSharedHomes]];
  (*(*(v102 + 40) + 16))();

  v86 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_rampHash
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [objc_getProperty(self a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5 || (uUID = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5]) == 0)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v8 = objc_getProperty(self, v7, 32, 1);
    uUIDString = [uUID UUIDString];
    [v8 setObject:uUIDString forKey:@"rmigration-ercv"];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *v19 = 138543618;
      *&v19[4] = v13;
      v20 = 2114;
      v21 = uUID;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Generated ramp candidate value: %{public}@", v19, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  hmf_bytesAsData = [uUID hmf_bytesAsData];
  hm_generateSHA256 = [hmf_bytesAsData hm_generateSHA256];

  [hm_generateSHA256 getBytes:v19 length:8];
  v16 = *v19;

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

BOOL __97__HMDHH2AutoMigrationEligibilityChecker__allHomesHaveAtLeastOneHH2SupportedResidentsOrNoResident__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  v4 = [v3 productInfo];
  v5 = [v4 productClass];

  if (v5 == 3)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return v5 != 3;
}

uint64_t __97__HMDHH2AutoMigrationEligibilityChecker__allHomesHaveAtLeastOneHH2SupportedResidentsOrNoResident__block_invoke_112(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  v4 = [v3 derivedVersion];
  v5 = [*(a1 + 32) minimumHomeKitVersionForOwnerResidentDevicesAutoHH2MigrationWithSharedUsers];
  v6 = [v4 isAtLeastVersion:v5];

  return v6;
}

uint64_t __97__HMDHH2AutoMigrationEligibilityChecker__allHomesHaveAtLeastOneHH2SupportedResidentsOrNoResident__block_invoke_113(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [*(a1 + 32) appleMediaAccessories];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) device];
        v9 = [v3 device];
        v10 = [v8 isEqual:v9];

        if (v10)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (uint64_t)_hasAnySharedUser
{
  homeManager = [self homeManager];
  homes = [homeManager homes];
  v3 = [homes na_any:&__block_literal_global_111];

  return v3;
}

uint64_t __58__HMDHH2AutoMigrationEligibilityChecker__hasAnySharedUser__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 users];
  v3 = [v2 na_any:&__block_literal_global_226_66759];

  return v3;
}

BOOL __74__HMDHH2AutoMigrationEligibilityChecker_allHomesHaveHH2SupportedResidents__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  v4 = [v3 productInfo];
  v5 = [v4 productClass];

  if (v5 == 3)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return v5 != 3;
}

uint64_t __74__HMDHH2AutoMigrationEligibilityChecker_allHomesHaveHH2SupportedResidents__block_invoke_105(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a2 device];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) device];
        v9 = [v3 isEqual:v8];

        if (v9)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (uint64_t)_unsupportedDevicesWithCurrentDeviceAtLeastVersion:(void *)version residentDevicesAtLeastVersion:(void *)leastVersion otherDevicesAtLeastVersion:
{
  v53 = *MEMORY[0x277D85DE8];
  v41 = a2;
  versionCopy = version;
  leastVersionCopy = leastVersion;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = [objc_getProperty(self v7];
  devices = [v8 devices];

  obj = devices;
  v10 = [devices countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v43;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v42 + 1) + 8 * i);
        if (![v15 isCurrentDevice])
        {
          productInfo = [v15 productInfo];
          if ([productInfo productClass] != 3 && (objc_msgSend(productInfo, "productPlatform") == 4 || (objc_msgSend(v15, "capabilities"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "isResidentCapable"), v31, v32)))
          {
            derivedVersion = [v15 derivedVersion];
            v34 = [derivedVersion isAtLeastVersion:versionCopy];

            if ((v34 & 1) == 0)
            {
              v25 = objc_autoreleasePoolPush();
              selfCopy = self;
              v27 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                v28 = HMFGetLogIdentifier();
                *buf = 138543874;
                v47 = v28;
                v48 = 2114;
                v49 = versionCopy;
                v50 = 2114;
                v51 = v15;
                v29 = v27;
                v30 = "%{public}@Resident device on current user's account does not meet required version %{public}@ for HH2 auto migration: %{public}@";
LABEL_20:
                _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, v30, buf, 0x20u);
              }

              goto LABEL_21;
            }
          }

          else
          {
            derivedVersion2 = [v15 derivedVersion];
            v24 = [derivedVersion2 isAtLeastVersion:leastVersionCopy];

            if ((v24 & 1) == 0)
            {
              v25 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v27 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                v28 = HMFGetLogIdentifier();
                *buf = 138543874;
                v47 = v28;
                v48 = 2114;
                v49 = leastVersionCopy;
                v50 = 2114;
                v51 = v15;
                v29 = v27;
                v30 = "%{public}@Controller device on current user's account does not meet required version %{public}@ for HH2 auto migration: %{public}@";
                goto LABEL_20;
              }

LABEL_21:

              objc_autoreleasePoolPop(v25);
              v12 |= [(HMDHH2AutoMigrationEligibilityChecker *)self _unsupportedDeviceTypeFromDevice:v15];
            }
          }

          continue;
        }

        derivedVersion3 = [v15 derivedVersion];
        v17 = [derivedVersion3 isAtLeastVersion:v41];

        if ((v17 & 1) == 0)
        {
          v18 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543874;
            v47 = v21;
            v48 = 2114;
            v49 = v41;
            v50 = 2114;
            v51 = v15;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Current device on current user's account does not meet required version %{public}@ for HH2 auto migration: %{public}@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v18);
          v12 |= [(HMDHH2AutoMigrationEligibilityChecker *)selfCopy3 _unsupportedDeviceTypeFromDevice:v15];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
      if (!v11)
      {
        goto LABEL_27;
      }
    }
  }

  v12 = 0;
LABEL_27:

  v36 = *MEMORY[0x277D85DE8];
  return v12;
}

- (HMDHH2AutoMigrationEligibilityChecker)initWithHomeManager:(id)manager accountManager:(id)accountManager featuresDataSource:(id)source userDefaults:(id)defaults cloudkitReachabilitySource:(id)reachabilitySource
{
  managerCopy = manager;
  accountManagerCopy = accountManager;
  sourceCopy = source;
  defaultsCopy = defaults;
  reachabilitySourceCopy = reachabilitySource;
  if (!managerCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!accountManagerCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!sourceCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v17 = reachabilitySourceCopy;
  if (!reachabilitySourceCopy)
  {
LABEL_11:
    v23 = _HMFPreconditionFailure();
    return __135__HMDHH2AutoMigrationEligibilityChecker_initWithHomeManager_accountManager_featuresDataSource_userDefaults_cloudkitReachabilitySource___block_invoke_2(v23);
  }

  v24.receiver = self;
  v24.super_class = HMDHH2AutoMigrationEligibilityChecker;
  v18 = [(HMDHH2AutoMigrationEligibilityChecker *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_homeManager, managerCopy);
    objc_storeStrong(&v19->_accountManager, accountManager);
    objc_storeStrong(&v19->_featuresDataSource, source);
    objc_storeStrong(&v19->_userDefaults, defaults);
    objc_storeStrong(&v19->_cloudkitReachabilitySource, reachabilitySource);
    isHSA2Enabled = v19->_isHSA2Enabled;
    v19->_isHSA2Enabled = &__block_literal_global_66799;

    frameworkSwitchProvider = v19->_frameworkSwitchProvider;
    v19->_frameworkSwitchProvider = &__block_literal_global_97;
  }

  return v19;
}

HMDHH2FrameworkSwitch *__135__HMDHH2AutoMigrationEligibilityChecker_initWithHomeManager_accountManager_featuresDataSource_userDefaults_cloudkitReachabilitySource___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDHH2FrameworkSwitch alloc] initWithAutoSwitch:0 homeManager:v2 dataSource:0 callBeforeFrameworkSwitch:0];

  return v3;
}

- (HMDHH2AutoMigrationEligibilityChecker)initWithHomeManager:(id)manager
{
  managerCopy = manager;
  v5 = +[HMDAppleAccountManager sharedManager];
  v6 = objc_alloc_init(HMDFeaturesDataSource);
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = objc_alloc_init(HMDCloudKitReachabilitySource);
  v9 = [(HMDHH2AutoMigrationEligibilityChecker *)self initWithHomeManager:managerCopy accountManager:v5 featuresDataSource:v6 userDefaults:standardUserDefaults cloudkitReachabilitySource:v8];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t66 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t66, &__block_literal_global_116);
  }

  v3 = logCategory__hmf_once_v67;

  return v3;
}

uint64_t __52__HMDHH2AutoMigrationEligibilityChecker_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v67;
  logCategory__hmf_once_v67 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end