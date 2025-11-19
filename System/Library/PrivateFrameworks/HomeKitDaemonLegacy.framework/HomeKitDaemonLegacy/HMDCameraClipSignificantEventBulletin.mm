@interface HMDCameraClipSignificantEventBulletin
+ (id)actionURLForHomeUUID:(id)a3 cameraUUID:(id)a4;
+ (id)localizedMessageForSignificantEvents:(id)a3 cameraAccessory:(id)a4;
+ (unint64_t)effectiveReasonForSignificantEvent:(id)a3;
- (HMDCameraClipSignificantEventBulletin)initWithSignificantEvents:(id)a3 previewImageNotificationUUID:(id)a4 previewImageFilePathURL:(id)a5 dateOfOccurrence:(id)a6 camera:(id)a7 home:(id)a8 accessory:(id)a9 recordingService:(id)a10 clipUUID:(id)a11 shouldShowProvideFeedbackButton:(BOOL)a12;
- (HMDCameraClipSignificantEventBulletin)initWithSignificantEvents:(id)a3 previewImageNotificationUUID:(id)a4 previewImageFilePathURL:(id)a5 dateOfOccurrence:(id)a6 camera:(id)a7 home:(id)a8 accessory:(id)a9 recordingService:(id)a10 requestIdentifier:(id)a11 clipUUID:(id)a12 shouldShowProvideFeedbackButton:(BOOL)a13;
- (id)createUserInfoWithWithSignificantEvents:(id)a3 previewImageNotificationUUID:(id)a4 camera:(id)a5 home:(id)a6 accessory:(id)a7 recordingService:(id)a8 clipUUID:(id)a9;
@end

@implementation HMDCameraClipSignificantEventBulletin

- (id)createUserInfoWithWithSignificantEvents:(id)a3 previewImageNotificationUUID:(id)a4 camera:(id)a5 home:(id)a6 accessory:(id)a7 recordingService:(id)a8 clipUUID:(id)a9
{
  v45[9] = *MEMORY[0x277D85DE8];
  v43 = a9;
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a4;
  v19 = a3;
  v20 = [a5 contextSPIUniqueIdentifier];
  v21 = [v20 UUIDString];

  v22 = [v17 contextSPIUniqueIdentifier];
  v23 = [v22 UUIDString];

  v41 = [objc_opt_class() actionURLForHomeUUID:v23 cameraUUID:v21];
  v24 = [v19 na_map:&__block_literal_global_66];
  v42 = [v24 allObjects];

  v25 = [v19 na_any:&__block_literal_global_68_165512];
  v26 = *MEMORY[0x277CCF308];
  v44[0] = *MEMORY[0x277CCF310];
  v44[1] = v26;
  v45[0] = v42;
  v45[1] = v21;
  v44[2] = *MEMORY[0x277CCF300];
  v27 = [v18 UUIDString];

  v28 = *MEMORY[0x277CCF328];
  v45[2] = v27;
  v45[3] = v23;
  v29 = *MEMORY[0x277CD13D8];
  v44[3] = v28;
  v44[4] = v29;
  v30 = [v41 absoluteString];
  v45[4] = v30;
  v44[5] = @"service";
  v31 = [v15 contextID];

  v45[5] = v31;
  v44[6] = @"home";
  v32 = [v17 contextID];

  v45[6] = v32;
  v44[7] = @"accessory";
  v33 = [v16 contextID];

  v45[7] = v33;
  v44[8] = @"HMDBulletinContextDidDetectedPerson";
  v34 = [MEMORY[0x277CCABB0] numberWithBool:v25];
  v45[8] = v34;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:9];
  v36 = [v35 mutableCopy];

  v37 = [v43 UUIDString];

  [v36 setObject:v37 forKeyedSubscript:*MEMORY[0x277CCF2F8]];
  v38 = [v36 copy];

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

id __158__HMDCameraClipSignificantEventBulletin_createUserInfoWithWithSignificantEvents_previewImageNotificationUUID_camera_home_accessory_recordingService_clipUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (HMDCameraClipSignificantEventBulletin)initWithSignificantEvents:(id)a3 previewImageNotificationUUID:(id)a4 previewImageFilePathURL:(id)a5 dateOfOccurrence:(id)a6 camera:(id)a7 home:(id)a8 accessory:(id)a9 recordingService:(id)a10 clipUUID:(id)a11 shouldShowProvideFeedbackButton:(BOOL)a12
{
  HIDWORD(v29) = a12;
  v18 = a11;
  v19 = a10;
  v20 = a9;
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v27 = [v18 UUIDString];
  LOBYTE(v29) = a12;
  v31 = [(HMDCameraClipSignificantEventBulletin *)self initWithSignificantEvents:v26 previewImageNotificationUUID:v25 previewImageFilePathURL:v24 dateOfOccurrence:v23 camera:v22 home:v21 accessory:v20 recordingService:v19 requestIdentifier:v27 clipUUID:v18 shouldShowProvideFeedbackButton:v29];

  return v31;
}

- (HMDCameraClipSignificantEventBulletin)initWithSignificantEvents:(id)a3 previewImageNotificationUUID:(id)a4 previewImageFilePathURL:(id)a5 dateOfOccurrence:(id)a6 camera:(id)a7 home:(id)a8 accessory:(id)a9 recordingService:(id)a10 requestIdentifier:(id)a11 clipUUID:(id)a12 shouldShowProvideFeedbackButton:(BOOL)a13
{
  v18 = a3;
  v19 = a4;
  v54 = a5;
  v57 = a5;
  v55 = a6;
  v20 = a6;
  obj = a7;
  v59 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  if (!v18)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v19)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v20)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v26 = v20;
  v27 = v59;
  if (!v59)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!v21)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!v22)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!v23)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  if (!v24)
  {
LABEL_19:
    v49 = _HMFPreconditionFailure();
    return [(HMDCameraClipSignificantEventBulletin *)v49 actionURLForHomeUUID:v50 cameraUUID:v51, v52];
  }

  v28 = v25;
  v58 = v26;
  v60.receiver = self;
  v60.super_class = HMDCameraClipSignificantEventBulletin;
  v29 = [(HMDCameraClipSignificantEventBulletin *)&v60 init];
  v30 = v29;
  if (v29)
  {
    v29->_shouldShowProvideFeedbackButton = a13;
    v31 = [v24 copy];
    requestIdentifier = v30->_requestIdentifier;
    v30->_requestIdentifier = v31;

    objc_storeStrong(&v30->_camera, obj);
    objc_storeStrong(&v30->_home, a8);
    objc_storeStrong(&v30->_recordingService, a10);
    objc_storeStrong(&v30->_accessory, a9);
    objc_storeStrong(&v30->_previewImageFilePathURL, v54);
    v33 = [v18 copy];
    significantEvents = v30->_significantEvents;
    v30->_significantEvents = v33;

    v35 = [v19 copy];
    previewImageNotificationUUID = v30->_previewImageNotificationUUID;
    v30->_previewImageNotificationUUID = v35;

    v37 = [(HMDCameraClipSignificantEventBulletin *)v30 createUserInfoWithWithSignificantEvents:v18 previewImageNotificationUUID:v19 camera:v59 home:v21 accessory:v22 recordingService:v23 clipUUID:v28];
    userInfo = v30->_userInfo;
    v30->_userInfo = v37;

    v39 = [v21 name];
    title = v30->_title;
    v30->_title = v39;

    v41 = [objc_opt_class() localizedMessageForSignificantEvents:v18 cameraAccessory:v22];
    body = v30->_body;
    v30->_body = v41;

    v43 = [v21 uuid];
    v44 = [v43 UUIDString];
    threadIdentifier = v30->_threadIdentifier;
    v30->_threadIdentifier = v44;

    v27 = v59;
    objc_storeStrong(&v30->_dateOfOccurrence, v55);
    v46 = [v28 copy];
    clipUUID = v30->_clipUUID;
    v30->_clipUUID = v46;
  }

  return v30;
}

+ (id)actionURLForHomeUUID:(id)a3 cameraUUID:(id)a4
{
  v5 = MEMORY[0x277CD1878];
  v6 = a4;
  v7 = [v5 tupleWithQueryType:0 uuidString:a3];
  v8 = [MEMORY[0x277CD1878] tupleWithQueryType:5 uuidString:v6];

  v9 = [MEMORY[0x277CBEB98] setWithObject:v7];
  v10 = generateURLForHomeKitObject();

  return v10;
}

+ (id)localizedMessageForSignificantEvents:(id)a3 cameraAccessory:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] arrayWithObject:@"CAMERA_RECORDING_SIGNIFICANT_EVENT_DETECTED_MESSAGE"];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __94__HMDCameraClipSignificantEventBulletin_localizedMessageForSignificantEvents_cameraAccessory___block_invoke;
  v44[3] = &__block_descriptor_40_e34_B16__0__HMCameraSignificantEvent_8l;
  v44[4] = a1;
  v9 = [v6 na_filter:v44];
  v10 = [v9 na_map:&__block_literal_global_165555];
  v35 = v10;
  v36 = v7;
  if (![v10 count])
  {
    if ([v9 count] == 1)
    {
      v20 = @"PERSON_UNFAMILIAR";
    }

    else
    {
      if ([v9 count] < 2)
      {
LABEL_11:
        v18 = 0;
        goto LABEL_12;
      }

      v20 = @"PERSON_UNFAMILIAR_MULTIPLE";
    }

    [v8 addObject:v20];
    goto LABEL_11;
  }

  v11 = [v7 home];
  v12 = [v11 currentUser];
  v13 = [v12 personSettingsManager];

  v14 = [v10 allObjects];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __94__HMDCameraClipSignificantEventBulletin_localizedMessageForSignificantEvents_cameraAccessory___block_invoke_3;
  v42[3] = &unk_279731020;
  v43 = v13;
  v15 = v13;
  v16 = [v14 sortedArrayUsingComparator:v42];

  v17 = [v16 firstObject];
  v18 = [v17 name];

  if ([v9 count] == 1)
  {
    v19 = @"PERSON_FAMILIAR";
  }

  else
  {
    v19 = @"PERSON_FAMILIAR_MULTIPLE";
  }

  [v8 addObject:v19];

LABEL_12:
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __94__HMDCameraClipSignificantEventBulletin_localizedMessageForSignificantEvents_cameraAccessory___block_invoke_4;
  v41[3] = &__block_descriptor_40_e34_B16__0__HMCameraSignificantEvent_8l;
  v41[4] = a1;
  if ([v6 na_any:v41])
  {
    [v8 addObject:@"ANIMAL"];
  }

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __94__HMDCameraClipSignificantEventBulletin_localizedMessageForSignificantEvents_cameraAccessory___block_invoke_5;
  v40[3] = &__block_descriptor_40_e34_B16__0__HMCameraSignificantEvent_8l;
  v40[4] = a1;
  if ([v6 na_any:v40])
  {
    [v8 addObject:@"VEHICLE"];
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __94__HMDCameraClipSignificantEventBulletin_localizedMessageForSignificantEvents_cameraAccessory___block_invoke_6;
  v39[3] = &__block_descriptor_40_e34_B16__0__HMCameraSignificantEvent_8l;
  v39[4] = a1;
  if ([v6 na_any:v39])
  {
    [v8 addObject:@"PACKAGE"];
  }

  if ([v8 count] == 1)
  {
    [v8 addObject:@"MOTION"];
  }

  v21 = [v8 componentsJoinedByString:@"_"];
  v22 = MEMORY[0x277CCACA8];
  v23 = HMDLocalizedStringForKey(v21);
  if (v18)
  {
    v38 = 0;
    v24 = [v36 name];
    v25 = [v22 localizedStringWithValidatedFormat:v23 validFormatSpecifiers:@"%@ %@" error:&v38, v24, v18];
    v26 = v38;

    if (!v25)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138544130;
        v46 = v29;
        v47 = 2112;
        v48 = v21;
        v49 = 2112;
        v50 = @"%@ %@";
        v51 = 2112;
        v52 = v26;
LABEL_28:
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

        goto LABEL_29;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v37 = 0;
    v30 = [v36 name];
    v25 = [v22 localizedStringWithValidatedFormat:v23 validFormatSpecifiers:@"%@" error:&v37, v30];
    v26 = v37;

    if (!v25)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138544130;
        v46 = v29;
        v47 = 2112;
        v48 = v21;
        v49 = 2112;
        v50 = @"%@";
        v51 = 2112;
        v52 = v26;
        goto LABEL_28;
      }

LABEL_29:

      objc_autoreleasePoolPop(v27);
      v31 = 0;
      v25 = v21;
      goto LABEL_30;
    }
  }

  v31 = v25;
LABEL_30:
  v32 = v25;

  v33 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t __94__HMDCameraClipSignificantEventBulletin_localizedMessageForSignificantEvents_cameraAccessory___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 UUID];
  v9 = [v7 areClassificationNotificationsEnabledForPersonUUID:v8];

  v10 = *(a1 + 32);
  v11 = [v6 UUID];
  LODWORD(v10) = [v10 areClassificationNotificationsEnabledForPersonUUID:v11];

  if (v9 == v10)
  {
    v13 = [v5 name];
    v14 = [v6 name];
    v12 = [v13 localizedCaseInsensitiveCompare:v14];
  }

  else if (v9)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

void *__94__HMDCameraClipSignificantEventBulletin_localizedMessageForSignificantEvents_cameraAccessory___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 faceClassification];
  v3 = [v2 person];

  v4 = [v3 name];
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

+ (unint64_t)effectiveReasonForSignificantEvent:(id)a3
{
  v3 = a3;
  if ([v3 confidenceLevel] == 100)
  {
    v4 = [v3 reason];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end