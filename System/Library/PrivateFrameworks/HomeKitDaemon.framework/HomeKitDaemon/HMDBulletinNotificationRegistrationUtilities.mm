@interface HMDBulletinNotificationRegistrationUtilities
+ (id)accessoryRegistrationFromLocalRegistration:(id)a3;
+ (id)accessoryRegistrationFromMKFRegistration:(id)a3;
+ (id)adjustedOffsetFromMKFLocalElementTimePeriodSunriseSunSet:(id)a3;
+ (id)audioAnalysisNotificationRegistrationFromRemoteRegistration:(id)a3;
+ (id)cameraAccessModeRegistrationFromLocalRegistration:(id)a3;
+ (id)cameraAccessModeRegistrationFromMKFRegistration:(id)a3;
+ (id)cameraReachabilityRegistrationFromLocalRegistration:(id)a3;
+ (id)cameraReachabilityRegistrationFromMKFRegistration:(id)a3;
+ (id)cameraSignificantEventRegistrationFromLocalRegistration:(id)a3;
+ (id)cameraSignificantEventRegistrationFromMKFRegistration:(id)a3;
+ (id)conditionsFromLocalConditions:(id)a3;
+ (id)conditionsFromMKFConditions:(id)a3;
+ (id)createAndAddLocalConditionsToRegistration:(id)a3 moc:(id)a4 conditions:(id)a5;
+ (id)createAndAddLocalPresenceConditionToRegistration:(id)a3 moc:(id)a4 condition:(id)a5;
+ (id)createAndAddLocalTimePeriodConditionToRegistration:(id)a3 moc:(id)a4 condition:(id)a5;
+ (id)createLocalElementFromSunriseSunset:(id)a3 moc:(id)a4;
+ (id)createLocalElementFromTimeOfDay:(id)a3 moc:(id)a4;
+ (id)endpointRegistrationFromLocalRegistration:(id)a3;
+ (id)matterRegistrationFromLocalRegistration:(id)a3 home:(id)a4;
+ (id)matterRegistrationFromMKFRegistration:(id)a3 home:(id)a4;
+ (id)presenceConditionFromLocalCondition:(id)a3;
+ (id)serviceRegistrationFromLocalRegistration:(id)a3;
+ (id)timePeriodConditionFromLocalCondition:(id)a3;
@end

@implementation HMDBulletinNotificationRegistrationUtilities

+ (id)conditionsFromMKFConditions:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__HMDBulletinNotificationRegistrationUtilities_conditionsFromMKFConditions___block_invoke;
  v5[3] = &__block_descriptor_40_e32__16__0___MKFBulletinCondition__8l;
  v5[4] = a1;
  v3 = [a3 na_map:v5];

  return v3;
}

HMDTimePeriodNotificationCondition *__76__HMDBulletinNotificationRegistrationUtilities_conditionsFromMKFConditions___block_invoke(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_283EE0F90])
  {
    v4 = v3;
    v5 = [v4 presenceEventType];
    v6 = [v5 unsignedIntegerValue];

    v7 = [v4 presenceEventUserType];
    v8 = [v7 unsignedIntegerValue];

    v9 = [v4 users];
    v10 = [v9 na_map:&__block_literal_global_332_164489];

    v11 = [HMDPresenceNotificationCondition alloc];
    v12 = [MEMORY[0x277CBEB98] setWithArray:v10];

    v13 = [(HMDPresenceNotificationCondition *)v11 initWithPresenceEventType:v6 presenceEventUserType:v8 userUUIDs:v12];
    goto LABEL_20;
  }

  if ([v3 conformsToProtocol:&unk_283EDDC10])
  {
    v14 = v3;
    v15 = [v14 startElement];
    if ([v15 conformsToProtocol:&unk_283EE1758])
    {
      v16 = [v14 endElement];
      v17 = [v16 conformsToProtocol:&unk_283EE1758];

      if (v17)
      {
        v18 = [v14 startElement];
        v19 = [v14 endElement];
        v20 = [HMDTimeOfDayTimePeriodElement alloc];
        v21 = [v18 hour];
        v22 = [v21 unsignedIntegerValue];
        v23 = [v18 minute];
        v24 = -[HMDTimeOfDayTimePeriodElement initWithHour:minute:](v20, "initWithHour:minute:", v22, [v23 unsignedIntegerValue]);

        v25 = [HMDTimeOfDayTimePeriodElement alloc];
        v26 = [v19 hour];
        v27 = [v26 unsignedIntegerValue];
        v28 = [v19 minute];
        v29 = -[HMDTimeOfDayTimePeriodElement initWithHour:minute:](v25, "initWithHour:minute:", v27, [v28 unsignedIntegerValue]);

        v13 = [[HMDTimePeriodNotificationCondition alloc] initWithStartElement:v24 endElement:v29];
LABEL_14:

LABEL_19:
        goto LABEL_20;
      }
    }

    else
    {
    }

    v34 = [v14 startElement];
    if ([v34 conformsToProtocol:&unk_283F7C808])
    {
      v35 = [v14 endElement];
      v36 = [v35 conformsToProtocol:&unk_283F7C808];

      if (v36)
      {
        v18 = [v14 startElement];
        v19 = [v14 endElement];
        v37 = [HMDSunriseSunsetTimePeriodElement alloc];
        v38 = [v18 significantEvent];
        v39 = [v18 offsetSeconds];
        v40 = HMDTimeOffsetToDateComponents([v39 integerValue], 0);
        v24 = [(HMDSunriseSunsetTimePeriodElement *)v37 initWithSignificantEvent:v38 offset:v40];

        v41 = [HMDSunriseSunsetTimePeriodElement alloc];
        v42 = [v19 significantEvent];
        v43 = [v19 offsetSeconds];
        v44 = HMDTimeOffsetToDateComponents([v43 integerValue], 0);
        v45 = [(HMDSunriseSunsetTimePeriodElement *)v41 initWithSignificantEvent:v42 offset:v44];

        v13 = [[HMDTimePeriodNotificationCondition alloc] initWithStartElement:v24 endElement:v45];
        goto LABEL_14;
      }
    }

    else
    {
    }

    v46 = objc_autoreleasePoolPush();
    v47 = *(a1 + 32);
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      v50 = [v14 startElement];
      v51 = [v14 endElement];
      v54 = 138543874;
      v55 = v49;
      v56 = 2112;
      v57 = v50;
      v58 = 2112;
      v59 = v51;
      _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Unrecognized time period start element: %@ end element: %@, unable to convert", &v54, 0x20u);
    }

    objc_autoreleasePoolPop(v46);
    v13 = 0;
    goto LABEL_19;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = *(a1 + 32);
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = HMFGetLogIdentifier();
    v54 = 138543618;
    v55 = v33;
    v56 = 2112;
    v57 = v3;
    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unrecognized condition: %@, unable to convert", &v54, 0x16u);
  }

  objc_autoreleasePoolPop(v30);
  v13 = 0;
LABEL_20:

  v52 = *MEMORY[0x277D85DE8];

  return v13;
}

id __76__HMDBulletinNotificationRegistrationUtilities_conditionsFromMKFConditions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 modelID];
  v3 = [v2 UUIDString];

  return v3;
}

+ (id)cameraAccessModeRegistrationFromMKFRegistration:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 conditions];
  v6 = [a1 conditionsFromMKFConditions:v5];

  v7 = [v4 accessory];
  v8 = [v7 modelID];

  v9 = [HMDCameraAccessModeBulletinNotificationRegistration alloc];
  v10 = [MEMORY[0x277CBEB98] setWithArray:v6];
  v11 = [(HMDCameraAccessModeBulletinNotificationRegistration *)v9 initWithAccessoryUUID:v8 conditions:v10];

  v12 = [v4 deviceIdsIdentifier];
  v13 = [v4 deviceIdsDestination];
  v14 = [v4 user];
  v15 = [v14 modelID];

  v27 = v13;
  v28 = v12;
  v16 = [[HMDDeviceAddress alloc] initWithIDSIdentifier:v12 idsDestination:v13];
  v17 = [[HMDBulletinNotificationRegistrationSource alloc] initWithUserUUID:v15 deviceAddress:v16];
  v29 = [[HMDCameraAccessModeBulletinNotificationRegistrationRemote alloc] initWithCameraAccessModeBulletinNotificationRegistration:v11 source:v17];
  v18 = objc_autoreleasePoolPush();
  v19 = a1;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v26 = v11;
    v21 = v8;
    v23 = v22 = v6;
    *buf = 138543874;
    v31 = v23;
    v32 = 2112;
    v33 = v29;
    v34 = 2112;
    v35 = v4;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from MKF registration: %@", buf, 0x20u);

    v6 = v22;
    v8 = v21;
    v11 = v26;
  }

  objc_autoreleasePoolPop(v18);
  v24 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)audioAnalysisNotificationRegistrationFromRemoteRegistration:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = [v4 conditions];
  v7 = [a1 conditionsFromMKFConditions:v6];
  v8 = [v5 setWithArray:v7];

  v9 = [HMDAudioAnalysisEventBulletinNotificationRegistration alloc];
  v10 = [v4 classifierOptions];
  v11 = [v10 unsignedIntegerValue];
  v12 = [v4 accessory];
  v13 = [v12 modelID];
  v31 = v8;
  v14 = [(HMDAudioAnalysisEventBulletinNotificationRegistration *)v9 initWithConditions:v8 audioAnalysisClassifierOptions:v11 accessoryUUID:v13];

  v15 = [v4 deviceIdsIdentifier];
  v16 = [v4 deviceIdsDestination];
  v17 = [v4 user];
  v18 = [v17 modelID];

  v30 = v16;
  v19 = [[HMDDeviceAddress alloc] initWithIDSIdentifier:v15 idsDestination:v16];
  v20 = [[HMDBulletinNotificationRegistrationSource alloc] initWithUserUUID:v18 deviceAddress:v19];
  v21 = [[HMDAudioAnalysisEventBulletinNotificationRegistrationRemote alloc] initWithAudioAnalysisEventBulletinNotificationRegistration:v14 source:v20];
  v22 = objc_autoreleasePoolPush();
  v23 = a1;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v29 = v15;
    v26 = v25 = v14;
    *buf = 138543874;
    v33 = v26;
    v34 = 2112;
    v35 = v21;
    v36 = 2112;
    v37 = v4;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from MKF registration: %@", buf, 0x20u);

    v14 = v25;
    v15 = v29;
  }

  objc_autoreleasePoolPop(v22);
  v27 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)cameraReachabilityRegistrationFromMKFRegistration:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 conditions];
  v6 = [a1 conditionsFromMKFConditions:v5];

  v7 = [v4 accessory];
  v8 = [v7 modelID];

  v9 = [HMDCameraReachabilityBulletinNotificationRegistration alloc];
  v10 = [MEMORY[0x277CBEB98] setWithArray:v6];
  v11 = [(HMDCameraReachabilityBulletinNotificationRegistration *)v9 initWithAccessoryUUID:v8 conditions:v10];

  v12 = [v4 deviceIdsIdentifier];
  v13 = [v4 deviceIdsDestination];
  v14 = [v4 user];
  v15 = [v14 modelID];

  v27 = v13;
  v28 = v12;
  v16 = [[HMDDeviceAddress alloc] initWithIDSIdentifier:v12 idsDestination:v13];
  v17 = [[HMDBulletinNotificationRegistrationSource alloc] initWithUserUUID:v15 deviceAddress:v16];
  v29 = [[HMDCameraReachabilityBulletinNotificationRegistrationRemote alloc] initWithCameraReachabilityBulletinNotificationRegistration:v11 source:v17];
  v18 = objc_autoreleasePoolPush();
  v19 = a1;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v26 = v11;
    v21 = v8;
    v23 = v22 = v6;
    *buf = 138543874;
    v31 = v23;
    v32 = 2112;
    v33 = v29;
    v34 = 2112;
    v35 = v4;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from MKF registration: %@", buf, 0x20u);

    v6 = v22;
    v8 = v21;
    v11 = v26;
  }

  objc_autoreleasePoolPop(v18);
  v24 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)cameraSignificantEventRegistrationFromMKFRegistration:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 conditions];
  v6 = [a1 conditionsFromMKFConditions:v5];

  v7 = [v4 accessory];
  v8 = [v7 modelID];

  v9 = [v4 notificationModes];
  v10 = [v9 unsignedIntegerValue];

  v11 = [v4 significantEventTypes];
  v12 = [v11 unsignedIntegerValue];

  v13 = [v4 personFamiliarityOptions];
  v14 = [v13 unsignedIntegerValue];

  v15 = [HMDCameraSignificantEventBulletinNotificationRegistration alloc];
  v34 = v6;
  v16 = [MEMORY[0x277CBEB98] setWithArray:v6];
  v33 = v8;
  v17 = [(HMDCameraSignificantEventBulletinNotificationRegistration *)v15 initWithCameraIdentifier:v8 notificationModes:v10 significantEventTypes:v12 personFamiliarityOptions:v14 conditions:v16];

  v18 = [v4 deviceIdsIdentifier];
  v19 = [v4 deviceIdsDestination];
  v20 = [v4 user];
  v21 = [v20 modelID];

  v22 = [[HMDDeviceAddress alloc] initWithIDSIdentifier:v18 idsDestination:v19];
  v23 = [[HMDBulletinNotificationRegistrationSource alloc] initWithUserUUID:v21 deviceAddress:v22];
  v35 = [[HMDCameraSignificantEventBulletinNotificationRegistrationRemote alloc] initWithCameraCameraSignificantEventBulletinNotificationRegistration:v17 source:v23];
  v24 = objc_autoreleasePoolPush();
  v25 = a1;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v32 = v19;
    v27 = v18;
    v29 = v28 = v17;
    *buf = 138543874;
    v37 = v29;
    v38 = 2112;
    v39 = v35;
    v40 = 2112;
    v41 = v4;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from MKF registration: %@", buf, 0x20u);

    v17 = v28;
    v18 = v27;
    v19 = v32;
  }

  objc_autoreleasePoolPop(v24);
  v30 = *MEMORY[0x277D85DE8];

  return v35;
}

+ (id)matterRegistrationFromMKFRegistration:(id)a3 home:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[HMDCoreData featuresDataSource];
  v9 = [v8 isRVCEnabled];

  if (v9)
  {
    v10 = [v6 conditions];
    v11 = [a1 conditionsFromMKFConditions:v10];

    v12 = [v6 matterPaths];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __91__HMDBulletinNotificationRegistrationUtilities_matterRegistrationFromMKFRegistration_home___block_invoke;
    v39[3] = &unk_27867C680;
    v40 = v7;
    v42 = a1;
    v13 = v6;
    v41 = v13;
    v37 = v12;
    v14 = [v12 na_map:v39];
    v15 = [HMDMatterBulletinNotificationRegistration alloc];
    v38 = v11;
    v16 = [MEMORY[0x277CBEB98] setWithArray:v11];
    v36 = v14;
    v17 = [(HMDMatterBulletinNotificationRegistration *)v15 initWithMatterPaths:v14 conditions:v16];

    v18 = [v13 deviceIdsIdentifier];
    v19 = [v13 deviceIdsDestination];
    v20 = [v13 user];
    v21 = [v20 modelID];

    if (!v21)
    {
      v22 = [v13 guest];
      v21 = [v22 modelID];
    }

    v33 = v19;
    v34 = v18;
    v23 = [[HMDDeviceAddress alloc] initWithIDSIdentifier:v18 idsDestination:v19];
    v24 = [[HMDBulletinNotificationRegistrationSource alloc] initWithUserUUID:v21 deviceAddress:v23];
    v35 = v17;
    v25 = [[HMDMatterBulletinNotificationRegistrationRemote alloc] initWithMatterBulletinNotificationRegistration:v17 source:v24];
    v26 = objc_autoreleasePoolPush();
    v27 = a1;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v29 = v32 = v7;
      *buf = 138543874;
      v44 = v29;
      v45 = 2112;
      v46 = v25;
      v47 = 2112;
      v48 = v13;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from MKF registration: %@", buf, 0x20u);

      v7 = v32;
    }

    objc_autoreleasePoolPop(v26);
  }

  else
  {
    v25 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v25;
}

id __91__HMDBulletinNotificationRegistrationUtilities_matterRegistrationFromMKFRegistration_home___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 accessory];
  v6 = [v5 modelID];
  v7 = [v4 accessoryWithUUID:v6];

  v8 = [v3 attributeID];

  if (v8)
  {
    v9 = [v3 attributeID];
    v10 = [v3 endpointID];
    v11 = [v3 clusterID];
    v12 = [HMDMatterPath PathWithAttributeID:v9 endpointID:v10 clusterID:v11 accessory:v7];
LABEL_5:
    v14 = v12;

    goto LABEL_6;
  }

  v13 = [v3 eventID];

  if (v13)
  {
    v9 = [v3 eventID];
    v10 = [v3 endpointID];
    v11 = [v3 clusterID];
    v12 = [HMDMatterPath PathWithEventID:v9 endpointID:v10 clusterID:v11 accessory:v7];
    goto LABEL_5;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = *(a1 + 48);
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    v21 = *(a1 + 40);
    v22 = 138543618;
    v23 = v20;
    v24 = 2112;
    v25 = v21;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@No attributeID or eventID found on working store Matter bulletin registration=%@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v14 = 0;
LABEL_6:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)accessoryRegistrationFromMKFRegistration:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 conditions];
  v6 = [a1 conditionsFromMKFConditions:v5];

  v7 = [v4 characteristic];
  v8 = [v7 service];
  v9 = [v8 accessory];
  v10 = [v9 modelID];

  v11 = [v4 characteristic];
  v12 = [v11 service];
  v13 = [v12 instanceID];

  v14 = [v4 characteristic];
  v15 = [v14 instanceID];

  v16 = [HMDAccessoryBulletinNotificationRegistration alloc];
  v17 = [MEMORY[0x277CBEB98] setWithArray:v6];
  v38 = v15;
  v39 = v13;
  v18 = [(HMDAccessoryBulletinNotificationRegistration *)v16 initWithAccessoryUUID:v10 serviceInstanceID:v13 characteristicInstanceID:v15 conditions:v17];

  v19 = [v4 deviceIdsIdentifier];
  v20 = [v4 deviceIdsDestination];
  v21 = [v4 user];
  v22 = [v21 modelID];

  if (!v22)
  {
    v23 = [v4 guest];
    v22 = [v23 modelID];
  }

  v35 = v20;
  v36 = v19;
  v24 = [[HMDDeviceAddress alloc] initWithIDSIdentifier:v19 idsDestination:v20];
  v25 = [[HMDBulletinNotificationRegistrationSource alloc] initWithUserUUID:v22 deviceAddress:v24];
  v37 = v18;
  v26 = [[HMDAccessoryBulletinNotificationRegistrationRemote alloc] initWithAccessoryBulletinNotificationRegistration:v18 source:v25];
  v27 = objc_autoreleasePoolPush();
  v28 = a1;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v34 = v10;
    v31 = v30 = v6;
    *buf = 138543874;
    v41 = v31;
    v42 = 2112;
    v43 = v26;
    v44 = 2112;
    v45 = v4;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from MKF registration: %@", buf, 0x20u);

    v6 = v30;
    v10 = v34;
  }

  objc_autoreleasePoolPop(v27);
  v32 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)cameraAccessModeRegistrationFromLocalRegistration:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accessoryModelID];
  v6 = [v4 conditions];
  v7 = [a1 conditionsFromLocalConditions:v6];

  v8 = [[HMDCameraAccessModeBulletinNotificationRegistration alloc] initWithAccessoryUUID:v5 conditions:v7];
  v9 = objc_autoreleasePoolPush();
  v10 = a1;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v12;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from local registration: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)cameraReachabilityRegistrationFromLocalRegistration:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accessoryModelID];
  v6 = [v4 conditions];
  v7 = [a1 conditionsFromLocalConditions:v6];

  v8 = [[HMDCameraReachabilityBulletinNotificationRegistration alloc] initWithAccessoryUUID:v5 conditions:v7];
  v9 = objc_autoreleasePoolPush();
  v10 = a1;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v12;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from local registration: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)cameraSignificantEventRegistrationFromLocalRegistration:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accessoryModelID];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "notificationModes")}];
  v7 = [v6 unsignedIntegerValue];

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "significantEventTypes")}];
  v9 = [v8 unsignedIntegerValue];

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "personFamiliarityOptions")}];
  v11 = [v10 unsignedIntegerValue];

  v12 = [v4 conditions];
  v13 = [a1 conditionsFromLocalConditions:v12];

  v14 = [[HMDCameraSignificantEventBulletinNotificationRegistration alloc] initWithCameraIdentifier:v5 notificationModes:v7 significantEventTypes:v9 personFamiliarityOptions:v11 conditions:v13];
  v15 = objc_autoreleasePoolPush();
  v16 = a1;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    v21 = 138543874;
    v22 = v18;
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from local registration: %@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)endpointRegistrationFromLocalRegistration:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[HMDCoreData featuresDataSource];
  v6 = [v5 isRVCEnabled];

  if (v6)
  {
    v7 = [v4 accessoryModelID];
    v8 = [v4 endpointID];
    v9 = [v4 conditions];
    v10 = [a1 conditionsFromLocalConditions:v9];

    v11 = [[HMDEndpointBulletinNotificationRegistration alloc] initWithAccessoryUUID:v7 endpointID:v8 conditions:v10];
    v12 = objc_autoreleasePoolPush();
    v13 = a1;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v15;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from local registration: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)serviceRegistrationFromLocalRegistration:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accessoryModelID];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "serviceInstanceID")}];
  v7 = [v4 conditions];
  v8 = [a1 conditionsFromLocalConditions:v7];

  v9 = [[HMDServiceBulletinNotificationRegistration alloc] initWithAccessoryUUID:v5 serviceInstanceID:v6 conditions:v8];
  v10 = objc_autoreleasePoolPush();
  v11 = a1;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v13;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from local registration: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)matterRegistrationFromLocalRegistration:(id)a3 home:(id)a4
{
  v45[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[HMDCoreData featuresDataSource];
  v9 = [v8 isRVCEnabled];

  if (!v9)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v10 = [(HMDMatterBulletinNotificationRegistration *)v6 endpointID];
  v11 = [(HMDMatterBulletinNotificationRegistration *)v6 clusterID];
  v12 = [(HMDMatterBulletinNotificationRegistration *)v6 attributeID];
  v13 = [(HMDMatterBulletinNotificationRegistration *)v6 eventID];
  v38 = [(HMDMatterBulletinNotificationRegistration *)v6 accessoryModelID];
  v14 = [v7 accessoryWithUUID:?];
  v37 = v14;
  if (v12)
  {
    v35 = v13;
    v36 = v12;
    v15 = [HMDMatterPath PathWithAttributeID:v12 endpointID:v10 clusterID:v11 accessory:v14];
  }

  else
  {
    if (!v13)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = a1;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v40 = v33;
        v41 = 2112;
        v42 = v6;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@No attributeID or eventID found for local Matter registration=%@", buf, 0x16u);

        v13 = 0;
      }

      objc_autoreleasePoolPop(v30);
      v16 = 0;
      goto LABEL_10;
    }

    v35 = v13;
    v36 = 0;
    v15 = [HMDMatterPath PathWithEventID:v13 endpointID:v10 clusterID:v11 accessory:v14];
  }

  v17 = v15;
  v18 = [(HMDBulletinNotificationRegistration *)v6 conditions];
  v19 = [a1 conditionsFromLocalConditions:v18];

  v20 = [HMDMatterBulletinNotificationRegistration alloc];
  v45[0] = v17;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
  v16 = [(HMDMatterBulletinNotificationRegistration *)v20 initWithMatterPaths:v21 conditions:v19];

  v22 = objc_autoreleasePoolPush();
  v23 = a1;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v34 = v7;
    v25 = v11;
    v27 = v26 = v10;
    *buf = 138543874;
    v40 = v27;
    v41 = 2112;
    v42 = v16;
    v43 = 2112;
    v44 = v6;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from local registration: %@", buf, 0x20u);

    v10 = v26;
    v11 = v25;
    v7 = v34;
  }

  objc_autoreleasePoolPop(v22);
  v13 = v35;
  v12 = v36;
LABEL_10:

LABEL_11:
  v28 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)accessoryRegistrationFromLocalRegistration:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accessoryModelID];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "serviceInstanceID")}];
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "characteristicInstanceID")}];
  v8 = [v4 conditions];
  v9 = [a1 conditionsFromLocalConditions:v8];

  v10 = [[HMDAccessoryBulletinNotificationRegistration alloc] initWithAccessoryUUID:v5 serviceInstanceID:v6 characteristicInstanceID:v7 conditions:v9];
  v11 = objc_autoreleasePoolPush();
  v12 = a1;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543874;
    v18 = v14;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Initialized registration: %@ from local registration: %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)adjustedOffsetFromMKFLocalElementTimePeriodSunriseSunSet:(id)a3
{
  v3 = [a3 offset];
  v4 = [v3 hour];
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v6 = v5;
  if (v4 && v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 setHour:v4];
  }

  v7 = [v3 minute];
  if (v7 && v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 setMinute:v7];
  }

  return v6;
}

+ (id)timePeriodConditionFromLocalCondition:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 startElement];
  v6 = [v4 endElement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      v10 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      v13 = [HMDTimeOfDayTimePeriodElement alloc];
      v14 = [v9 hour];
      v15 = [v14 unsignedIntegerValue];
      v16 = [v9 minute];
      v17 = -[HMDTimeOfDayTimePeriodElement initWithHour:minute:](v13, "initWithHour:minute:", v15, [v16 unsignedIntegerValue]);

      v18 = [HMDTimeOfDayTimePeriodElement alloc];
      v19 = [v12 hour];
      v20 = [v19 unsignedIntegerValue];
      v21 = [v12 minute];
      v22 = -[HMDTimeOfDayTimePeriodElement initWithHour:minute:](v18, "initWithHour:minute:", v20, [v21 unsignedIntegerValue]);

      v23 = [HMDTimePeriodNotificationCondition alloc];
      v24 = [(HMDTimePeriodNotificationCondition *)v23 initWithStartElement:v17 endElement:v22];

LABEL_19:
      goto LABEL_23;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;

      v28 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;

      v17 = [a1 adjustedOffsetFromMKFLocalElementTimePeriodSunriseSunSet:v27];
      v31 = [a1 adjustedOffsetFromMKFLocalElementTimePeriodSunriseSunSet:v30];
      v32 = [HMDSunriseSunsetTimePeriodElement alloc];
      v33 = [v27 significantEvent];
      v34 = [(HMDSunriseSunsetTimePeriodElement *)v32 initWithSignificantEvent:v33 offset:v17];

      v35 = [HMDSunriseSunsetTimePeriodElement alloc];
      v36 = [v30 significantEvent];
      v37 = [(HMDSunriseSunsetTimePeriodElement *)v35 initWithSignificantEvent:v36 offset:v31];

      v38 = [HMDTimePeriodNotificationCondition alloc];
      v24 = [(HMDTimePeriodNotificationCondition *)v38 initWithStartElement:v34 endElement:v37];

      goto LABEL_19;
    }
  }

  v39 = objc_autoreleasePoolPush();
  v40 = a1;
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = HMFGetLogIdentifier();
    v45 = 138543874;
    v46 = v42;
    v47 = 2112;
    v48 = v5;
    v49 = 2112;
    v50 = v6;
    _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unrecognized local time period start element: %@ end element: %@, unable to convert", &v45, 0x20u);
  }

  objc_autoreleasePoolPop(v39);
  v24 = 0;
LABEL_23:

  v43 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)presenceConditionFromLocalCondition:(id)a3
{
  v3 = a3;
  v4 = [v3 userModelIDs];
  v5 = [MEMORY[0x277CBEB98] set];
  if ([v4 count])
  {
    v6 = [v4 anyObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && v6)
    {
      v8 = [v4 na_map:&__block_literal_global_164559];
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;

    v5 = v9;
  }

  v10 = [HMDPresenceNotificationCondition alloc];
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "presenceEventType")}];
  v12 = [v11 unsignedIntegerValue];
  v13 = MEMORY[0x277CCABB0];
  v14 = [v3 presenceEventUserType];

  v15 = [v13 numberWithLongLong:v14];
  v16 = -[HMDPresenceNotificationCondition initWithPresenceEventType:presenceEventUserType:userUUIDs:](v10, "initWithPresenceEventType:presenceEventUserType:userUUIDs:", v12, [v15 unsignedIntegerValue], v5);

  return v16;
}

id __84__HMDBulletinNotificationRegistrationUtilities_presenceConditionFromLocalCondition___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

+ (id)conditionsFromLocalConditions:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__HMDBulletinNotificationRegistrationUtilities_conditionsFromLocalConditions___block_invoke;
  v5[3] = &__block_descriptor_40_e35__16__0__MKFLocalBulletinCondition_8l;
  v5[4] = a1;
  v3 = [a3 na_map:v5];

  return v3;
}

id __78__HMDBulletinNotificationRegistrationUtilities_conditionsFromLocalConditions___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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

    v7 = [HMDBulletinNotificationRegistrationUtilities presenceConditionFromLocalCondition:v6];
LABEL_11:
    v10 = v7;

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v6 = v9;

    v7 = [HMDBulletinNotificationRegistrationUtilities timePeriodConditionFromLocalCondition:v6];
    goto LABEL_11;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v14;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unrecognized local condition: %@, unable to convert", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v10 = 0;
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)createLocalElementFromSunriseSunset:(id)a3 moc:(id)a4
{
  v5 = MEMORY[0x277CBE408];
  v6 = a4;
  v7 = a3;
  v8 = +[MKFLocalElementTimePeriodSunriseSunSet entity];
  v9 = [v8 name];
  v10 = [v5 insertNewObjectForEntityForName:v9 inManagedObjectContext:v6];

  v11 = [v7 significantEvent];
  [v10 setSignificantEvent:v11];

  v12 = [v7 offset];

  [v10 setOffset:v12];

  return v10;
}

+ (id)createLocalElementFromTimeOfDay:(id)a3 moc:(id)a4
{
  v5 = MEMORY[0x277CBE408];
  v6 = a4;
  v7 = a3;
  v8 = +[MKFLocalElementTimePeriodTimeOfDay entity];
  v9 = [v8 name];
  v10 = [v5 insertNewObjectForEntityForName:v9 inManagedObjectContext:v6];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "hour")}];
  [v10 setHour:v11];

  v12 = MEMORY[0x277CCABB0];
  v13 = [v7 minute];

  v14 = [v12 numberWithUnsignedInteger:v13];
  [v10 setMinute:v14];

  return v10;
}

+ (id)createAndAddLocalTimePeriodConditionToRegistration:(id)a3 moc:(id)a4 condition:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277CBE408];
  v11 = a3;
  v12 = +[MKFLocalBulletinConditionTimePeriod entity];
  v13 = [v12 name];
  v14 = [v10 insertNewObjectForEntityForName:v13 inManagedObjectContext:v8];

  v15 = [v9 startElement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v9 endElement];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v18 = [v9 startElement];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      v21 = [v9 endElement];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;

      v24 = [a1 createLocalElementFromTimeOfDay:v20 moc:v8];

      [v14 setStartElement:v24];
      v25 = [a1 createLocalElementFromTimeOfDay:v23 moc:v8];
LABEL_20:
      v26 = v25;

      [v14 setEndElement:v26];
      goto LABEL_21;
    }
  }

  else
  {
  }

  v26 = [v9 startElement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = [v9 endElement];
    objc_opt_class();
    v28 = objc_opt_isKindOfClass();

    if ((v28 & 1) == 0)
    {
      goto LABEL_22;
    }

    v29 = [v9 startElement];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    v32 = [v9 endElement];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v23 = v33;

    v34 = [a1 createLocalElementFromSunriseSunset:v31 moc:v8];

    [v14 setStartElement:v34];
    v25 = [a1 createLocalElementFromSunriseSunset:v23 moc:v8];
    goto LABEL_20;
  }

LABEL_21:

LABEL_22:
  [v14 setRegistration:v11];
  [v11 addConditionsObject:v14];

  return v14;
}

+ (id)createAndAddLocalPresenceConditionToRegistration:(id)a3 moc:(id)a4 condition:(id)a5
{
  v7 = MEMORY[0x277CBE408];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[MKFLocalBulletinConditionPresence entity];
  v12 = [v11 name];
  v13 = [v7 insertNewObjectForEntityForName:v12 inManagedObjectContext:v9];

  [v13 setPresenceEventType:{objc_msgSend(v8, "presenceEventType")}];
  [v13 setPresenceEventUserType:{objc_msgSend(v8, "presenceEventUserType")}];
  v14 = [v8 userUUIDs];

  [v13 setUserModelIDs:v14];
  [v13 setRegistration:v10];
  [v10 addConditionsObject:v13];

  return v13;
}

+ (id)createAndAddLocalConditionsToRegistration:(id)a3 moc:(id)a4 conditions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __105__HMDBulletinNotificationRegistrationUtilities_createAndAddLocalConditionsToRegistration_moc_conditions___block_invoke;
  v14[3] = &unk_27867C638;
  v16 = v9;
  v17 = a1;
  v15 = v8;
  v10 = v9;
  v11 = v8;
  v12 = [a5 na_map:v14];

  return v12;
}

id __105__HMDBulletinNotificationRegistrationUtilities_createAndAddLocalConditionsToRegistration_moc_conditions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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

    v7 = [*(a1 + 48) createAndAddLocalPresenceConditionToRegistration:*(a1 + 32) moc:*(a1 + 40) condition:v6];
LABEL_11:
    v10 = v7;

    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v6 = v9;

    v7 = [*(a1 + 48) createAndAddLocalTimePeriodConditionToRegistration:*(a1 + 32) moc:*(a1 + 40) condition:v6];
    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

@end