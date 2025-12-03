@interface HMDCameraClipSignificantEventBulletin
+ (id)actionURLForHomeUUID:(id)d cameraUUID:(id)iD;
+ (id)localizedMessageForSignificantEvents:(id)events cameraAccessory:(id)accessory;
+ (unint64_t)effectiveReasonForSignificantEvent:(id)event;
- (HMDCameraClipSignificantEventBulletin)initWithSignificantEvents:(id)events previewImageNotificationUUID:(id)d previewImageFilePathURL:(id)l dateOfOccurrence:(id)occurrence camera:(id)camera home:(id)home accessory:(id)accessory recordingService:(id)self0 clipUUID:(id)self1 shouldShowProvideFeedbackButton:(BOOL)self2;
- (HMDCameraClipSignificantEventBulletin)initWithSignificantEvents:(id)events previewImageNotificationUUID:(id)d previewImageFilePathURL:(id)l dateOfOccurrence:(id)occurrence camera:(id)camera home:(id)home accessory:(id)accessory recordingService:(id)self0 requestIdentifier:(id)self1 clipUUID:(id)self2 shouldShowProvideFeedbackButton:(BOOL)self3;
- (id)createUserInfoWithWithSignificantEvents:(id)events previewImageNotificationUUID:(id)d camera:(id)camera home:(id)home accessory:(id)accessory recordingService:(id)service clipUUID:(id)iD;
@end

@implementation HMDCameraClipSignificantEventBulletin

- (id)createUserInfoWithWithSignificantEvents:(id)events previewImageNotificationUUID:(id)d camera:(id)camera home:(id)home accessory:(id)accessory recordingService:(id)service clipUUID:(id)iD
{
  v45[9] = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  serviceCopy = service;
  accessoryCopy = accessory;
  homeCopy = home;
  dCopy = d;
  eventsCopy = events;
  contextSPIUniqueIdentifier = [camera contextSPIUniqueIdentifier];
  uUIDString = [contextSPIUniqueIdentifier UUIDString];

  contextSPIUniqueIdentifier2 = [homeCopy contextSPIUniqueIdentifier];
  uUIDString2 = [contextSPIUniqueIdentifier2 UUIDString];

  v41 = [objc_opt_class() actionURLForHomeUUID:uUIDString2 cameraUUID:uUIDString];
  v24 = [eventsCopy na_map:&__block_literal_global_66];
  allObjects = [v24 allObjects];

  v25 = [eventsCopy na_any:&__block_literal_global_68_243998];
  v26 = *MEMORY[0x277CCF308];
  v44[0] = *MEMORY[0x277CCF310];
  v44[1] = v26;
  v45[0] = allObjects;
  v45[1] = uUIDString;
  v44[2] = *MEMORY[0x277CCF300];
  uUIDString3 = [dCopy UUIDString];

  v28 = *MEMORY[0x277CCF328];
  v45[2] = uUIDString3;
  v45[3] = uUIDString2;
  v29 = *MEMORY[0x277CD13D8];
  v44[3] = v28;
  v44[4] = v29;
  absoluteString = [v41 absoluteString];
  v45[4] = absoluteString;
  v44[5] = @"service";
  contextID = [serviceCopy contextID];

  v45[5] = contextID;
  v44[6] = @"home";
  contextID2 = [homeCopy contextID];

  v45[6] = contextID2;
  v44[7] = @"accessory";
  contextID3 = [accessoryCopy contextID];

  v45[7] = contextID3;
  v44[8] = @"HMDBulletinContextDidDetectedPerson";
  v34 = [MEMORY[0x277CCABB0] numberWithBool:v25];
  v45[8] = v34;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:9];
  v36 = [v35 mutableCopy];

  uUIDString4 = [iDCopy UUIDString];

  [v36 setObject:uUIDString4 forKeyedSubscript:*MEMORY[0x277CCF2F8]];
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

- (HMDCameraClipSignificantEventBulletin)initWithSignificantEvents:(id)events previewImageNotificationUUID:(id)d previewImageFilePathURL:(id)l dateOfOccurrence:(id)occurrence camera:(id)camera home:(id)home accessory:(id)accessory recordingService:(id)self0 clipUUID:(id)self1 shouldShowProvideFeedbackButton:(BOOL)self2
{
  HIDWORD(v29) = button;
  iDCopy = iD;
  serviceCopy = service;
  accessoryCopy = accessory;
  homeCopy = home;
  cameraCopy = camera;
  occurrenceCopy = occurrence;
  lCopy = l;
  dCopy = d;
  eventsCopy = events;
  uUIDString = [iDCopy UUIDString];
  LOBYTE(v29) = button;
  v31 = [(HMDCameraClipSignificantEventBulletin *)self initWithSignificantEvents:eventsCopy previewImageNotificationUUID:dCopy previewImageFilePathURL:lCopy dateOfOccurrence:occurrenceCopy camera:cameraCopy home:homeCopy accessory:accessoryCopy recordingService:serviceCopy requestIdentifier:uUIDString clipUUID:iDCopy shouldShowProvideFeedbackButton:v29];

  return v31;
}

- (HMDCameraClipSignificantEventBulletin)initWithSignificantEvents:(id)events previewImageNotificationUUID:(id)d previewImageFilePathURL:(id)l dateOfOccurrence:(id)occurrence camera:(id)camera home:(id)home accessory:(id)accessory recordingService:(id)self0 requestIdentifier:(id)self1 clipUUID:(id)self2 shouldShowProvideFeedbackButton:(BOOL)self3
{
  eventsCopy = events;
  dCopy = d;
  lCopy = l;
  lCopy2 = l;
  occurrenceCopy = occurrence;
  occurrenceCopy2 = occurrence;
  obj = camera;
  cameraCopy = camera;
  homeCopy = home;
  accessoryCopy = accessory;
  serviceCopy = service;
  identifierCopy = identifier;
  iDCopy = iD;
  if (!eventsCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!dCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!occurrenceCopy2)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v26 = occurrenceCopy2;
  v27 = cameraCopy;
  if (!cameraCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!homeCopy)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!accessoryCopy)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!serviceCopy)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  if (!identifierCopy)
  {
LABEL_19:
    v49 = _HMFPreconditionFailure();
    return [(HMDCameraClipSignificantEventBulletin *)v49 actionURLForHomeUUID:v50 cameraUUID:v51, v52];
  }

  v28 = iDCopy;
  v58 = v26;
  v60.receiver = self;
  v60.super_class = HMDCameraClipSignificantEventBulletin;
  v29 = [(HMDCameraClipSignificantEventBulletin *)&v60 init];
  v30 = v29;
  if (v29)
  {
    v29->_shouldShowProvideFeedbackButton = button;
    v31 = [identifierCopy copy];
    requestIdentifier = v30->_requestIdentifier;
    v30->_requestIdentifier = v31;

    objc_storeStrong(&v30->_camera, obj);
    objc_storeStrong(&v30->_home, home);
    objc_storeStrong(&v30->_recordingService, service);
    objc_storeStrong(&v30->_accessory, accessory);
    objc_storeStrong(&v30->_previewImageFilePathURL, lCopy);
    v33 = [eventsCopy copy];
    significantEvents = v30->_significantEvents;
    v30->_significantEvents = v33;

    v35 = [dCopy copy];
    previewImageNotificationUUID = v30->_previewImageNotificationUUID;
    v30->_previewImageNotificationUUID = v35;

    v37 = [(HMDCameraClipSignificantEventBulletin *)v30 createUserInfoWithWithSignificantEvents:eventsCopy previewImageNotificationUUID:dCopy camera:cameraCopy home:homeCopy accessory:accessoryCopy recordingService:serviceCopy clipUUID:v28];
    userInfo = v30->_userInfo;
    v30->_userInfo = v37;

    name = [homeCopy name];
    title = v30->_title;
    v30->_title = name;

    v41 = [objc_opt_class() localizedMessageForSignificantEvents:eventsCopy cameraAccessory:accessoryCopy];
    body = v30->_body;
    v30->_body = v41;

    uuid = [homeCopy uuid];
    uUIDString = [uuid UUIDString];
    threadIdentifier = v30->_threadIdentifier;
    v30->_threadIdentifier = uUIDString;

    v27 = cameraCopy;
    objc_storeStrong(&v30->_dateOfOccurrence, occurrenceCopy);
    v46 = [v28 copy];
    clipUUID = v30->_clipUUID;
    v30->_clipUUID = v46;
  }

  return v30;
}

+ (id)actionURLForHomeUUID:(id)d cameraUUID:(id)iD
{
  v5 = MEMORY[0x277CD1878];
  iDCopy = iD;
  v7 = [v5 tupleWithQueryType:0 uuidString:d];
  v8 = [MEMORY[0x277CD1878] tupleWithQueryType:5 uuidString:iDCopy];

  v9 = [MEMORY[0x277CBEB98] setWithObject:v7];
  v10 = generateURLForHomeKitObject();

  return v10;
}

+ (id)localizedMessageForSignificantEvents:(id)events cameraAccessory:(id)accessory
{
  v53 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  accessoryCopy = accessory;
  v8 = [MEMORY[0x277CBEB18] arrayWithObject:@"CAMERA_RECORDING_SIGNIFICANT_EVENT_DETECTED_MESSAGE"];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __94__HMDCameraClipSignificantEventBulletin_localizedMessageForSignificantEvents_cameraAccessory___block_invoke;
  v44[3] = &__block_descriptor_40_e34_B16__0__HMCameraSignificantEvent_8l;
  v44[4] = self;
  v9 = [eventsCopy na_filter:v44];
  v10 = [v9 na_map:&__block_literal_global_244041];
  v35 = v10;
  v36 = accessoryCopy;
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
        name = 0;
        goto LABEL_12;
      }

      v20 = @"PERSON_UNFAMILIAR_MULTIPLE";
    }

    [v8 addObject:v20];
    goto LABEL_11;
  }

  home = [accessoryCopy home];
  currentUser = [home currentUser];
  personSettingsManager = [currentUser personSettingsManager];

  allObjects = [v10 allObjects];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __94__HMDCameraClipSignificantEventBulletin_localizedMessageForSignificantEvents_cameraAccessory___block_invoke_3;
  v42[3] = &unk_2786843A8;
  v43 = personSettingsManager;
  v15 = personSettingsManager;
  v16 = [allObjects sortedArrayUsingComparator:v42];

  firstObject = [v16 firstObject];
  name = [firstObject name];

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
  v41[4] = self;
  if ([eventsCopy na_any:v41])
  {
    [v8 addObject:@"ANIMAL"];
  }

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __94__HMDCameraClipSignificantEventBulletin_localizedMessageForSignificantEvents_cameraAccessory___block_invoke_5;
  v40[3] = &__block_descriptor_40_e34_B16__0__HMCameraSignificantEvent_8l;
  v40[4] = self;
  if ([eventsCopy na_any:v40])
  {
    [v8 addObject:@"VEHICLE"];
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __94__HMDCameraClipSignificantEventBulletin_localizedMessageForSignificantEvents_cameraAccessory___block_invoke_6;
  v39[3] = &__block_descriptor_40_e34_B16__0__HMCameraSignificantEvent_8l;
  v39[4] = self;
  if ([eventsCopy na_any:v39])
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
  if (name)
  {
    v38 = 0;
    name2 = [v36 name];
    v25 = [v22 localizedStringWithValidatedFormat:v23 validFormatSpecifiers:@"%@ %@" error:&v38, name2, name];
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
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

        goto LABEL_29;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v37 = 0;
    name3 = [v36 name];
    v25 = [v22 localizedStringWithValidatedFormat:v23 validFormatSpecifiers:@"%@" error:&v37, name3];
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

+ (unint64_t)effectiveReasonForSignificantEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy confidenceLevel] == 100)
  {
    reason = [eventCopy reason];
  }

  else
  {
    reason = 1;
  }

  return reason;
}

@end