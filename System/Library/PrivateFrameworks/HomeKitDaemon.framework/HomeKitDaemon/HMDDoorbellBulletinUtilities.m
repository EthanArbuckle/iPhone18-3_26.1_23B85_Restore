@interface HMDDoorbellBulletinUtilities
+ (id)_mostRelevantSignificantEventsForDoorbellPressAtDate:(id)a3 fromSignificantEvents:(id)a4;
+ (id)_relevantSignificantEventDateIntervalForDoorbellPressAtDate:(id)a3;
+ (id)logCategory;
- (id)_localizedDoorbellMessageForSignificantEvents:(id)a3 forAudioAccessory:(BOOL)a4;
- (id)clipUUIDsForCoalesceableSignificantEvents:(id)a3;
- (id)localizedMessageForCharacteristic:(id)a3;
- (id)significantEventsRelevantToDoorbellPressAtDate:(id)a3 forCameraProfile:(id)a4;
- (void)fetchSignificantEventsRelevantToDoorbellPressAtDate:(id)a3 forCameraProfile:(id)a4 completion:(id)a5;
@end

@implementation HMDDoorbellBulletinUtilities

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_76317 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_76317, &__block_literal_global_47_76318);
  }

  v3 = logCategory__hmf_once_v8_76319;

  return v3;
}

void __43__HMDDoorbellBulletinUtilities_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_76319;
  logCategory__hmf_once_v8_76319 = v1;
}

+ (id)_mostRelevantSignificantEventsForDoorbellPressAtDate:(id)a3 fromSignificantEvents:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __107__HMDDoorbellBulletinUtilities__mostRelevantSignificantEventsForDoorbellPressAtDate_fromSignificantEvents___block_invoke;
  v25[3] = &unk_278675828;
  v8 = v6;
  v26 = v8;
  v9 = [v7 sortedArrayUsingComparator:v25];
  v10 = objc_autoreleasePoolPush();
  v11 = a1;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543874;
    v28 = v13;
    v29 = 2112;
    v30 = v8;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@For doorbell press at %@, sorted recent significant events are %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [v9 na_firstObjectPassingTest:&__block_literal_global_44_76325];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __107__HMDDoorbellBulletinUtilities__mostRelevantSignificantEventsForDoorbellPressAtDate_fromSignificantEvents___block_invoke_2;
  v23 = &unk_278682D78;
  v24 = v14;
  v15 = v14;
  v16 = [v7 na_filter:&v20];
  v17 = [MEMORY[0x277CBEB98] setWithArray:{v16, v20, v21, v22, v23}];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __107__HMDDoorbellBulletinUtilities__mostRelevantSignificantEventsForDoorbellPressAtDate_fromSignificantEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 dateOfOccurrence];
  [v6 timeIntervalSinceDate:*(a1 + 32)];
  v8 = fabs(v7);

  v9 = [v5 dateOfOccurrence];

  [v9 timeIntervalSinceDate:*(a1 + 32)];
  v11 = fabs(v10);

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  v14 = [v12 compare:v13];

  return v14;
}

uint64_t __107__HMDDoorbellBulletinUtilities__mostRelevantSignificantEventsForDoorbellPressAtDate_fromSignificantEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 clipUUID];
  v4 = [*(a1 + 32) clipUUID];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

BOOL __107__HMDDoorbellBulletinUtilities__mostRelevantSignificantEventsForDoorbellPressAtDate_fromSignificantEvents___block_invoke_41(uint64_t a1, void *a2)
{
  v2 = [a2 faceClassification];
  v3 = v2 != 0;

  return v3;
}

+ (id)_relevantSignificantEventDateIntervalForDoorbellPressAtDate:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 dateWithTimeInterval:v4 sinceDate:-300.0];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v4 sinceDate:30.0];

  v7 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:v6];

  return v7;
}

- (id)clipUUIDsForCoalesceableSignificantEvents:(id)a3
{
  v3 = a3;
  v4 = [v3 na_map:&__block_literal_global_34];
  v5 = [v3 na_map:&__block_literal_global_36_76346];

  v6 = [v4 na_setByRemovingObjectsFromSet:v5];

  return v6;
}

id __74__HMDDoorbellBulletinUtilities_clipUUIDsForCoalesceableSignificantEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 reason] == 1 || objc_msgSend(v2, "reason") == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 clipUUID];
  }

  return v3;
}

- (void)fetchSignificantEventsRelevantToDoorbellPressAtDate:(id)a3 forCameraProfile:(id)a4 completion:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 clipManager];
  if (v11)
  {
    v12 = [objc_opt_class() _relevantSignificantEventDateIntervalForDoorbellPressAtDate:v8];
    v13 = [v11 fetchSignificantEventsWithDateInterval:v12];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __112__HMDDoorbellBulletinUtilities_fetchSignificantEventsRelevantToDoorbellPressAtDate_forCameraProfile_completion___block_invoke;
    v20[3] = &unk_278684DE0;
    v22 = v10;
    v20[4] = self;
    v21 = v8;
    v14 = [v13 addCompletionBlock:v20];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Cannot fetch significant events relevant to doorbell press: clip manager is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v12 = [MEMORY[0x277CBEB98] set];
    (*(v10 + 2))(v10, v12);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __112__HMDDoorbellBulletinUtilities_fetchSignificantEventsRelevantToDoorbellPressAtDate_forCameraProfile_completion___block_invoke(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a1[4];
  v5 = a2;
  v6 = [objc_opt_class() _mostRelevantSignificantEventsForDoorbellPressAtDate:a1[5] fromSignificantEvents:v5];

  (*(v3 + 16))(v3, v6);
}

- (id)significantEventsRelevantToDoorbellPressAtDate:(id)a3 forCameraProfile:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 clipManager];
  if (v8)
  {
    v9 = [objc_opt_class() _relevantSignificantEventDateIntervalForDoorbellPressAtDate:v6];
    v10 = [v8 significantEventsWithDateInterval:v9];
    v11 = [objc_opt_class() _mostRelevantSignificantEventsForDoorbellPressAtDate:v6 fromSignificantEvents:v10];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Cannot fetch significant events relevant to doorbell press: clip manager is nil", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v11 = [MEMORY[0x277CBEB98] set];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)localizedMessageForCharacteristic:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CCACA8];
  v5 = HMDLocalizedStringForKey(@"NOTIFICATION_MESSAGE_DOORBELL_EVENT");
  v19 = 0;
  v6 = [v3 accessory];
  v7 = [v6 room];
  v8 = [v7 name];
  v9 = [HMDBulletinCategory trimLeadingAndTailingSpacesInName:v8];
  v10 = [v4 localizedStringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:&v19, v9];
  v11 = v19;

  v12 = v10;
  if (!v10)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138544130;
      v21 = v15;
      v22 = 2112;
      v23 = @"NOTIFICATION_MESSAGE_DOORBELL_EVENT";
      v24 = 2112;
      v25 = @"%@";
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v12 = @"NOTIFICATION_MESSAGE_DOORBELL_EVENT";
  }

  v16 = v12;

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)_localizedDoorbellMessageForSignificantEvents:(id)a3 forAudioAccessory:(BOOL)a4
{
  v4 = a4;
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v48 = v10;
    v49 = 2112;
    v50 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Determining localized camera doorbell message from significant events: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(__CFString *)v6 na_map:&__block_literal_global_76362];
  v12 = [(__CFString *)v6 na_filter:&__block_literal_global_3_76363];
  v13 = [v11 allObjects];
  v14 = [v13 na_map:&__block_literal_global_6];

  v15 = [v14 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
  v16 = [v15 count];
  if (v16 == 1)
  {
    v43 = v12;
    v18 = @"NOTIFICATION_MESSAGE_CAMERA_DOORBELL_EVENT_FAMILIAR";
    if (v4)
    {
      v18 = @"NOTIFICATION_MESSAGE_CAMERA_DOORBELL_EVENT_FAMILIAR_AUDIO_ACCESSORY";
    }

    v19 = v18;
    v20 = MEMORY[0x277CCACA8];
    v21 = HMDLocalizedStringForKey(v19);
    v46 = 0;
    v22 = [v15 firstObject];
    v23 = [v20 localizedStringWithValidatedFormat:v21 validFormatSpecifiers:@"%@" error:&v46, v22];
    v24 = v46;

    v25 = v23;
    if (!v23)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138544130;
        v48 = v28;
        v49 = 2112;
        v50 = v19;
        v51 = 2112;
        v52 = @"%@";
        v53 = 2112;
        v54 = v24;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v26);
      v25 = v19;
    }

    v17 = v25;

    v12 = v43;
  }

  else if (v16)
  {
    v44 = v11;
    v29 = @"NOTIFICATION_MESSAGE_CAMERA_DOORBELL_EVENT_FAMILIAR_MULTIPLE";
    if (v4)
    {
      v29 = @"NOTIFICATION_MESSAGE_CAMERA_DOORBELL_EVENT_FAMILIAR_MULTIPLE_AUDIO_ACCESSORY";
    }

    v30 = v29;
    v31 = MEMORY[0x277CCACA8];
    v32 = HMDLocalizedStringForKey(v30);
    v45 = 0;
    v33 = [v15 firstObject];
    v34 = [v31 localizedStringWithValidatedFormat:v32 validFormatSpecifiers:@"%@" error:&v45, v33];
    v35 = v45;

    v36 = v34;
    if (!v34)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138544130;
        v48 = v39;
        v49 = 2112;
        v50 = v30;
        v51 = 2112;
        v52 = @"%@";
        v53 = 2112;
        v54 = v35;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v37);
      v36 = v30;
    }

    v17 = v36;

    v11 = v44;
  }

  else if (v4)
  {
    v17 = 0;
  }

  else
  {
    if ([v12 count] < 2)
    {
      v40 = @"NOTIFICATION_MESSAGE_CAMERA_DOORBELL_EVENT_UNFAMILIAR";
    }

    else
    {
      v40 = @"NOTIFICATION_MESSAGE_CAMERA_DOORBELL_EVENT_UNFAMILIAR_MULTIPLE";
    }

    v17 = HMDLocalizedStringForKey(v40);
  }

  v41 = *MEMORY[0x277D85DE8];

  return v17;
}

id __96__HMDDoorbellBulletinUtilities__localizedDoorbellMessageForSignificantEvents_forAudioAccessory___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 person];
  v3 = [v2 name];

  return v3;
}

@end