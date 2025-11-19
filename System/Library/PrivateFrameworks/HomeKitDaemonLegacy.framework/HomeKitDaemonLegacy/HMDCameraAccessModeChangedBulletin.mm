@interface HMDCameraAccessModeChangedBulletin
+ (id)localizedMessageForCameraAccessModeChange:(unint64_t)a3 changeReason:(int64_t)a4 camera:(id)a5;
- (HMDCameraAccessModeChangedBulletin)initWithAccessMode:(unint64_t)a3 camera:(id)a4 home:(id)a5 changeReason:(int64_t)a6 changeDate:(id)a7;
- (HMDCameraAccessModeChangedBulletin)initWithTitle:(id)a3 body:(id)a4 threadIdentifier:(id)a5 dateOfOccurrence:(id)a6 userInfo:(id)a7 isTimeSensitive:(BOOL)a8;
- (id)attributeDescriptions;
@end

@implementation HMDCameraAccessModeChangedBulletin

- (id)attributeDescriptions
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v23 = [(HMDCameraAccessModeChangedBulletin *)self title];
  v22 = [v3 initWithName:@"Title" value:v23];
  v24[0] = v22;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v21 = [(HMDCameraAccessModeChangedBulletin *)self body];
  v5 = [v4 initWithName:@"Body" value:v21];
  v24[1] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDCameraAccessModeChangedBulletin *)self threadIdentifier];
  v8 = [v6 initWithName:@"Thread ID" value:v7];
  v24[2] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDCameraAccessModeChangedBulletin *)self dateOfOccurrence];
  v11 = [v9 initWithName:@"Date" value:v10];
  v24[3] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMDCameraAccessModeChangedBulletin *)self userInfo];
  v14 = [v12 initWithName:@"User Info" value:v13];
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

- (HMDCameraAccessModeChangedBulletin)initWithAccessMode:(unint64_t)a3 camera:(id)a4 home:(id)a5 changeReason:(int64_t)a6 changeDate:(id)a7
{
  v34[4] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (!v12)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v13)
  {
LABEL_9:
    _HMFPreconditionFailure();
LABEL_10:
    _HMFPreconditionFailure();
  }

  v15 = v14;
  if (!v14)
  {
    goto LABEL_10;
  }

  v16 = [objc_opt_class() localizedMessageForCameraAccessModeChange:a3 changeReason:a6 camera:v12];
  if (v16)
  {
    v33[0] = *MEMORY[0x277CCF308];
    v31 = [v12 contextSPIUniqueIdentifier];
    v30 = [v31 UUIDString];
    v34[0] = v30;
    v33[1] = *MEMORY[0x277CCF328];
    v17 = [v13 contextSPIUniqueIdentifier];
    [v17 UUIDString];
    v18 = v32 = a3;
    v34[1] = v18;
    v33[2] = @"home";
    v19 = [v13 contextID];
    v34[2] = v19;
    v33[3] = @"accessory";
    v20 = [v12 accessory];
    [v20 contextID];
    v22 = v21 = v15;
    v34[3] = v22;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];

    v15 = v21;
    v23 = [v13 name];
    v24 = [v13 uuid];
    v25 = [v24 UUIDString];
    self = [(HMDCameraAccessModeChangedBulletin *)self initWithTitle:v23 body:v16 threadIdentifier:v25 dateOfOccurrence:v21 userInfo:v29 isTimeSensitive:v32 == 2];

    v26 = self;
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (HMDCameraAccessModeChangedBulletin)initWithTitle:(id)a3 body:(id)a4 threadIdentifier:(id)a5 dateOfOccurrence:(id)a6 userInfo:(id)a7 isTimeSensitive:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  obj = a7;
  v18 = a7;
  if (!v14)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v15)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v16)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v17)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v19 = v18;
  if (!v18)
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
    objc_storeStrong(&v20->_title, a3);
    objc_storeStrong(&v21->_body, a4);
    objc_storeStrong(&v21->_threadIdentifier, a5);
    objc_storeStrong(&v21->_dateOfOccurrence, a6);
    objc_storeStrong(&v21->_userInfo, obj);
    v21->_timeSensitive = a8;
  }

  return v21;
}

+ (id)localizedMessageForCameraAccessModeChange:(unint64_t)a3 changeReason:(int64_t)a4 camera:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(__CFString *)v8 hapAccessory];
  if (!v9)
  {
    v13 = objc_autoreleasePoolPush();
    v17 = a1;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v19;
      v46 = 2112;
      v47 = v8;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Accessory reference was nil on camera: %@", buf, 0x16u);
    }

    goto LABEL_13;
  }

  if (a3 > 3 || (HMDLocalizedStringForKey(off_279734E48[a3]), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v16;
      v46 = 2048;
      v47 = a3;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unknown accessMode %lu, not posting notification", buf, 0x16u);
    }

LABEL_13:
    objc_autoreleasePoolPop(v13);
    v20 = 0;
    goto LABEL_14;
  }

  v11 = v10;
  if (a4 == 1)
  {
    v12 = @"CAMERA_ACCESS_MODE_CHANGE_REASON_OCCUPIED";
  }

  else
  {
    if (a4 != 2)
    {
LABEL_24:
      v34 = MEMORY[0x277CCACA8];
      v35 = HMDLocalizedStringForKey(@"CAMERA_ACCESS_MODE_CHANGED_NOTIFICATION");
      v42 = 0;
      v36 = [v9 name];
      v29 = [v34 localizedStringWithValidatedFormat:v35 validFormatSpecifiers:@"%@ %@" error:&v42, v36, v11];
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
          v47 = @"CAMERA_ACCESS_MODE_CHANGED_NOTIFICATION";
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
  v27 = [v9 name];
  v28 = [v25 localizedStringWithValidatedFormat:v26 validFormatSpecifiers:@"%@ %@ %@" error:&v43, v27, v11, v24];
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
      v47 = @"CAMERA_ACCESS_MODE_CHANGED_NOTIFICATION_WITH_REASON";
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