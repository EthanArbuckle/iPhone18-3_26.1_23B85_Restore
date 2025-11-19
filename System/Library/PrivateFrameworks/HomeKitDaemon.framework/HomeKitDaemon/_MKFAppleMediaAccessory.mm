@interface _MKFAppleMediaAccessory
- (BOOL)isDemoAccessory;
- (MKFAppleMediaAccessoryDatabaseID)databaseID;
- (NSArray)actionsAppleMediaAccessoryPower;
- (id)analysisBulletinRegistrationWithDeviceIdsIdentifier:(id)a3 user:(id)a4 context:(id)a5;
- (id)bulletinRegistrationFromFetchRequest:(id)a3 context:(id)a4;
- (void)willSave;
@end

@implementation _MKFAppleMediaAccessory

- (NSArray)actionsAppleMediaAccessoryPower
{
  v2 = [(_MKFAppleMediaAccessory *)self valueForKey:@"actionsAppleMediaAccessoryPower_"];
  v3 = [v2 allObjects];

  return v3;
}

- (MKFAppleMediaAccessoryDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFAppleMediaAccessoryDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (id)analysisBulletinRegistrationWithDeviceIdsIdentifier:(id)a3 user:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[_MKFAnalysisEventBulletinRegistration fetchRequest];
  v12 = [(_MKFAppleMediaAccessory *)self _analysisPredicateToFetchBulletinRegistrationOnDeviceIdsIdentifier:v10 user:v9];

  [v11 setPredicate:v12];
  v13 = [(_MKFAppleMediaAccessory *)self bulletinRegistrationFromFetchRequest:v11 context:v8];

  return v13;
}

- (id)bulletinRegistrationFromFetchRequest:(id)a3 context:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v8 = [v7 executeFetchRequest:v6 error:&v17];
  v9 = v17;
  if (v8)
  {
    v10 = [v8 firstObject];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch bulletin registrations on accessory %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)isDemoAccessory
{
  v2 = [(_MKFAppleMediaAccessory *)self variant];
  v3 = [v2 unsignedIntegerValue];

  return (v3 & 0xA0) != 0;
}

- (void)willSave
{
  v61 = *MEMORY[0x277D85DE8];
  v54.receiver = self;
  v54.super_class = _MKFAppleMediaAccessory;
  [(_MKFModel *)&v54 willSave];
  if ([(_MKFAppleMediaAccessory *)self isDeleted])
  {
    v3 = [(_MKFAppleMediaAccessory *)self managedObjectContext];
    v4 = v3;
    if (!v3)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v56 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not find MOC when processing removal for AppleMediaAccessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      goto LABEL_45;
    }

    v5 = [v3 hmd_coreData];
    v6 = [v5 localStore];

    if (!v6)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v56 = v19;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not find local store when processing removal for AppleMediaAccessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      goto LABEL_44;
    }

    v7 = +[HMDDeviceCapabilities isAppleMediaAccessory];
    if (isInternalBuild())
    {
      v8 = [v4 userInfo];
      v9 = [v8 hmf_BOOLForKey:@"test__MKFAppleMediaAccessoryMockIsAppleMediaAccessoryMetadataKey"];

      if (v9)
      {
        v10 = [v4 userInfo];
        v11 = [v10 hmf_BOOLForKey:@"test__MKFAppleMediaAccessoryMockIsAppleMediaAccessoryMetadataKey"];

        if ((v11 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else if (!v7)
      {
LABEL_44:

LABEL_45:
        goto LABEL_46;
      }
    }

    else if (!v7)
    {
      goto LABEL_44;
    }

    v20 = [(_MKFAppleMediaAccessory *)self identifier];
    if (!v20)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v56 = v40;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Nil identifier when processing removal for AppleMediaAccessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      goto LABEL_43;
    }

    v21 = _mediaRouteIdentifier;
    if (isInternalBuild())
    {
      v22 = [v4 userInfo];
      v23 = [v22 hmf_stringForKey:@"test_MKFAppleMediaAccessoryMockMediaRouteMetadataKey"];

      if (v23)
      {
        v24 = [v4 userInfo];
        v25 = [v24 hmf_stringForKey:@"test_MKFAppleMediaAccessoryMockMediaRouteMetadataKey"];

        v21 = v25;
      }
    }

    if (v21)
    {
      if ([v21 isEqualToString:v20])
      {
        v26 = [(_MKFAppleMediaAccessory *)self modelID];
        if (v26)
        {
          if (![(_MKFAppleMediaAccessory *)self isDemoAccessory])
          {
            v27 = [v6 metadata];
            v28 = [v27 hmf_UUIDForKey:@"HMDLastRemovedCurrentAccessoryMetadataKey"];
            v29 = [v28 hmf_isEqualToUUID:v26];

            if ((v29 & 1) == 0)
            {
              v30 = [v6 metadata];
              v31 = [v30 mutableCopy];

              v32 = [v26 UUIDString];
              [v31 setObject:v32 forKeyedSubscript:@"HMDLastRemovedCurrentAccessoryMetadataKey"];

              [v6 setMetadata:v31];
              v33 = objc_autoreleasePoolPush();
              v34 = self;
              v35 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                v36 = HMFGetLogIdentifier();
                *buf = 138543618;
                v56 = v36;
                v57 = 2112;
                v58 = v26;
                _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Storing removed current accessory uuid into local store metadata %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v33);
            }
          }
        }

        else
        {
          v49 = objc_autoreleasePoolPush();
          v50 = self;
          v51 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v52 = HMFGetLogIdentifier();
            *buf = 138543362;
            v56 = v52;
            _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@Nil accessory uuid/modelID when processing removal for AppleMediaAccessory", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v49);
        }

        goto LABEL_42;
      }

      v41 = objc_autoreleasePoolPush();
      v42 = self;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543874;
        v56 = v44;
        v57 = 2112;
        v58 = v20;
        v59 = 2112;
        v60 = v21;
        v45 = "%{public}@Removed accessory identifier (%@) does not match current accessory media routeID %@";
        v46 = v43;
        v47 = OS_LOG_TYPE_INFO;
        v48 = 32;
        goto LABEL_36;
      }
    }

    else
    {
      v41 = objc_autoreleasePoolPush();
      v42 = self;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543362;
        v56 = v44;
        v45 = "%{public}@Nil current device media route id when processing removal for AppleMediaAccessory";
        v46 = v43;
        v47 = OS_LOG_TYPE_ERROR;
        v48 = 12;
LABEL_36:
        _os_log_impl(&dword_229538000, v46, v47, v45, buf, v48);
      }
    }

    objc_autoreleasePoolPop(v41);
LABEL_42:

LABEL_43:
    goto LABEL_44;
  }

LABEL_46:
  v53 = *MEMORY[0x277D85DE8];
}

@end