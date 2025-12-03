@interface HMDCameraAccessModeChangedBulletin
+ (id)localizedMessageForCameraAccessModeChange:(unint64_t)change changeReason:(int64_t)reason camera:(id)camera;
- (HMDCameraAccessModeChangedBulletin)initWithAccessMode:(unint64_t)mode camera:(id)camera home:(id)home changeReason:(int64_t)reason changeDate:(id)date;
- (HMDCameraAccessModeChangedBulletin)initWithTitle:(id)title body:(id)body threadIdentifier:(id)identifier dateOfOccurrence:(id)occurrence userInfo:(id)info isTimeSensitive:(BOOL)sensitive;
- (id)attributeDescriptions;
@end

@implementation HMDCameraAccessModeChangedBulletin

- (id)attributeDescriptions
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  title = [(HMDCameraAccessModeChangedBulletin *)self title];
  v22 = [v3 initWithName:@"Title" value:title];
  v24[0] = v22;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  body = [(HMDCameraAccessModeChangedBulletin *)self body];
  v5 = [v4 initWithName:@"Body" value:body];
  v24[1] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  threadIdentifier = [(HMDCameraAccessModeChangedBulletin *)self threadIdentifier];
  v8 = [v6 initWithName:@"Thread ID" value:threadIdentifier];
  v24[2] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  dateOfOccurrence = [(HMDCameraAccessModeChangedBulletin *)self dateOfOccurrence];
  v11 = [v9 initWithName:@"Date" value:dateOfOccurrence];
  v24[3] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  userInfo = [(HMDCameraAccessModeChangedBulletin *)self userInfo];
  v14 = [v12 initWithName:@"User Info" value:userInfo];
  v24[4] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCameraAccessModeChangedBulletin *)self isTimeSensitive];
  v16 = HMFBooleanToString();
  v17 = [v15 initWithName:@"Time Sensitive" value:v16];
  v24[5] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (HMDCameraAccessModeChangedBulletin)initWithAccessMode:(unint64_t)mode camera:(id)camera home:(id)home changeReason:(int64_t)reason changeDate:(id)date
{
  v34[4] = *MEMORY[0x277D85DE8];
  cameraCopy = camera;
  homeCopy = home;
  dateCopy = date;
  if (!cameraCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!homeCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
LABEL_10:
    _HMFPreconditionFailure();
  }

  v15 = dateCopy;
  if (!dateCopy)
  {
    goto LABEL_10;
  }

  v16 = [objc_opt_class() localizedMessageForCameraAccessModeChange:mode changeReason:reason camera:cameraCopy];
  if (v16)
  {
    v33[0] = *MEMORY[0x277CCF308];
    contextSPIUniqueIdentifier = [cameraCopy contextSPIUniqueIdentifier];
    uUIDString = [contextSPIUniqueIdentifier UUIDString];
    v34[0] = uUIDString;
    v33[1] = *MEMORY[0x277CCF328];
    contextSPIUniqueIdentifier2 = [homeCopy contextSPIUniqueIdentifier];
    [contextSPIUniqueIdentifier2 UUIDString];
    v18 = v32 = mode;
    v34[1] = v18;
    v33[2] = @"home";
    contextID = [homeCopy contextID];
    v34[2] = contextID;
    v33[3] = @"accessory";
    accessory = [cameraCopy accessory];
    [accessory contextID];
    v22 = v21 = v15;
    v34[3] = v22;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];

    v15 = v21;
    name = [homeCopy name];
    uuid = [homeCopy uuid];
    uUIDString2 = [uuid UUIDString];
    self = [(HMDCameraAccessModeChangedBulletin *)self initWithTitle:name body:v16 threadIdentifier:uUIDString2 dateOfOccurrence:v21 userInfo:v29 isTimeSensitive:v32 == 2];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HMDCameraAccessModeChangedBulletin)initWithTitle:(id)title body:(id)body threadIdentifier:(id)identifier dateOfOccurrence:(id)occurrence userInfo:(id)info isTimeSensitive:(BOOL)sensitive
{
  titleCopy = title;
  bodyCopy = body;
  identifierCopy = identifier;
  occurrenceCopy = occurrence;
  obj = info;
  infoCopy = info;
  if (!titleCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!bodyCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!identifierCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!occurrenceCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v19 = infoCopy;
  if (!infoCopy)
  {
LABEL_13:
    v23 = _HMFPreconditionFailure();
    return [(HMDCameraAccessModeChangedBulletin *)v23 localizedMessageForCameraAccessModeChange:v24 changeReason:v25 camera:v26, v27];
  }

  v30.receiver = self;
  v30.super_class = HMDCameraAccessModeChangedBulletin;
  v20 = [(HMDCameraAccessModeChangedBulletin *)&v30 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_title, title);
    objc_storeStrong(&v21->_body, body);
    objc_storeStrong(&v21->_threadIdentifier, identifier);
    objc_storeStrong(&v21->_dateOfOccurrence, occurrence);
    objc_storeStrong(&v21->_userInfo, obj);
    v21->_timeSensitive = sensitive;
  }

  return v21;
}

+ (id)localizedMessageForCameraAccessModeChange:(unint64_t)change changeReason:(int64_t)reason camera:(id)camera
{
  v52 = *MEMORY[0x277D85DE8];
  cameraCopy = camera;
  hapAccessory = [(__CFString *)cameraCopy hapAccessory];
  if (!hapAccessory)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v19;
      v46 = 2112;
      changeCopy = cameraCopy;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Accessory reference was nil on camera: %@", buf, 0x16u);
    }

    goto LABEL_13;
  }

  if (change > 3 || (HMDLocalizedStringForKey(off_279734E48[change]), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v16;
      v46 = 2048;
      changeCopy = change;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unknown accessMode %lu, not posting notification", buf, 0x16u);
    }

LABEL_13:
    objc_autoreleasePoolPop(v13);
    v20 = 0;
    goto LABEL_14;
  }

  v11 = v10;
  if (reason == 1)
  {
    v12 = @"CAMERA_ACCESS_MODE_CHANGE_REASON_OCCUPIED";
  }

  else
  {
    if (reason != 2)
    {
LABEL_24:
      v34 = MEMORY[0x277CCACA8];
      v35 = HMDLocalizedStringForKey(@"CAMERA_ACCESS_MODE_CHANGED_NOTIFICATION");
      v42 = 0;
      name = [hapAccessory name];
      v29 = [v34 localizedStringWithValidatedFormat:v35 validFormatSpecifiers:@"%@ %@" error:&v42, name, v11];
      v24 = v42;

      v37 = v29;
      if (!v29)
      {
        v38 = objc_autoreleasePoolPush();
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = HMFGetLogIdentifier();
          *buf = 138544130;
          v45 = v40;
          v46 = 2112;
          changeCopy = @"CAMERA_ACCESS_MODE_CHANGED_NOTIFICATION";
          v48 = 2112;
          v49 = @"%@ %@";
          v50 = 2112;
          v51 = v24;
          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v38);
        v37 = @"CAMERA_ACCESS_MODE_CHANGED_NOTIFICATION";
      }

      v20 = v37;
      goto LABEL_29;
    }

    v12 = @"CAMERA_ACCESS_MODE_CHANGE_REASON_UNOCCUPIED";
  }

  v23 = HMDLocalizedStringForKey(v12);
  if (!v23)
  {
    goto LABEL_24;
  }

  v24 = v23;
  v25 = MEMORY[0x277CCACA8];
  v26 = HMDLocalizedStringForKey(@"CAMERA_ACCESS_MODE_CHANGED_NOTIFICATION_WITH_REASON");
  v43 = 0;
  name2 = [hapAccessory name];
  v28 = [v25 localizedStringWithValidatedFormat:v26 validFormatSpecifiers:@"%@ %@ %@" error:&v43, name2, v11, v24];
  v29 = v43;

  v30 = v28;
  if (!v28)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v33 = v41 = v31;
      *buf = 138544130;
      v45 = v33;
      v46 = 2112;
      changeCopy = @"CAMERA_ACCESS_MODE_CHANGED_NOTIFICATION_WITH_REASON";
      v48 = 2112;
      v49 = @"%@ %@ %@";
      v50 = 2112;
      v51 = v29;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

      v31 = v41;
    }

    objc_autoreleasePoolPop(v31);
    v30 = @"CAMERA_ACCESS_MODE_CHANGED_NOTIFICATION_WITH_REASON";
  }

  v20 = v30;

LABEL_29:
LABEL_14:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end