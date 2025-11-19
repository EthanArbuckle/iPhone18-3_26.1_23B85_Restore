@interface HMDCameraSignificantEventNotificationModel
+ (id)hmbProperties;
+ (id)hmbQueries;
+ (id)significantEventsBetweenDatesQueryWithIsAscending:(BOOL)a3;
- (id)createClipSignificantEventWithCameraProfileUUID:(id)a3 faceClassification:(id)a4;
@end

@implementation HMDCameraSignificantEventNotificationModel

+ (id)significantEventsBetweenDatesQueryWithIsAscending:(BOOL)a3
{
  v3 = a3;
  if (significantEventsBetweenDatesQueryWithIsAscending__onceToken != -1)
  {
    dispatch_once(&significantEventsBetweenDatesQueryWithIsAscending__onceToken, &__block_literal_global_43_28334);
  }

  v4 = &significantEventsBetweenDatesQueryWithIsAscending__ascendingQuery;
  if (!v3)
  {
    v4 = &significantEventsBetweenDatesQueryWithIsAscending__descendingQuery;
  }

  v5 = *v4;

  return v5;
}

void __96__HMDCameraSignificantEventNotificationModel_significantEventsBetweenDatesQueryWithIsAscending___block_invoke()
{
  v16[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D170C8];
  v15[0] = @"dateAfter";
  v1 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"dateOfOccurrence"];
  v15[1] = @"dateBefore";
  v16[0] = v1;
  v2 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"dateOfOccurrence"];
  v16[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v4 = [v0 queryWithSQLPredicate:@"dateOfOccurrence >= :dateAfter AND dateOfOccurrence < :dateBefore ORDER BY dateOfOccurrence ASC" sequenceArgumentName:@"dateAfter" indexedProperties:&unk_286626D28 arguments:v3];
  v5 = significantEventsBetweenDatesQueryWithIsAscending__ascendingQuery;
  significantEventsBetweenDatesQueryWithIsAscending__ascendingQuery = v4;

  v6 = MEMORY[0x277D170C8];
  v13[0] = @"dateAfter";
  v7 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"dateOfOccurrence"];
  v13[1] = @"dateBefore";
  v14[0] = v7;
  v8 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"dateOfOccurrence"];
  v14[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [v6 queryWithSQLPredicate:@"dateOfOccurrence > :dateAfter AND dateOfOccurrence <= :dateBefore ORDER BY dateOfOccurrence DESC" sequenceArgumentName:@"dateBefore" indexedProperties:&unk_286626D40 arguments:v9];
  v11 = significantEventsBetweenDatesQueryWithIsAscending__descendingQuery;
  significantEventsBetweenDatesQueryWithIsAscending__descendingQuery = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)hmbQueries
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [a1 significantEventsBetweenDatesQueryWithIsAscending:1];
  v8[0] = v3;
  v4 = [a1 significantEventsBetweenDatesQueryWithIsAscending:0];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_28361 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_28361, &__block_literal_global_28362);
  }

  v3 = hmbProperties__properties_28363;

  return v3;
}

void __59__HMDCameraSignificantEventNotificationModel_hmbProperties__block_invoke()
{
  v32[8] = *MEMORY[0x277D85DE8];
  v31[0] = @"significantEvent";
  v26 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v32[0] = v26;
  v31[1] = @"dateOfOccurrence";
  v0 = MEMORY[0x277D170B8];
  v1 = objc_opt_class();
  v25 = [MEMORY[0x277D170C0] queryableField];
  v30 = v25;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v23 = [v0 fieldWithClass:v1 options:v24];
  v32[1] = v23;
  v31[2] = @"timeOffsetWithinClip";
  v22 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v32[2] = v22;
  v31[3] = @"associatedClip";
  v2 = MEMORY[0x277D170B8];
  v3 = objc_opt_class();
  v21 = [MEMORY[0x277D170C0] externalRecordField:@"r00"];
  v29 = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v4 = [v2 fieldWithClass:v3 options:v20];
  v32[3] = v4;
  v31[4] = @"heroFrameAsset";
  v5 = MEMORY[0x277D170B8];
  v6 = objc_opt_class();
  v7 = [MEMORY[0x277D170C0] externalRecordField:@"a00"];
  v28 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v9 = [v5 fieldWithClass:v6 options:v8];
  v32[4] = v9;
  v31[5] = @"faceCropAsset";
  v10 = MEMORY[0x277D170B8];
  v11 = objc_opt_class();
  v12 = [MEMORY[0x277D170C0] externalRecordField:@"a01"];
  v27 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v14 = [v10 fieldWithClass:v11 options:v13];
  v32[5] = v14;
  v31[6] = @"homePresenceByPairingIdentity";
  v15 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v32[6] = v15;
  v31[7] = @"confidenceLevel";
  v16 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v32[7] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:8];
  v18 = hmbProperties__properties_28363;
  hmbProperties__properties_28363 = v17;

  v19 = *MEMORY[0x277D85DE8];
}

- (id)createClipSignificantEventWithCameraProfileUUID:(id)a3 faceClassification:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v40 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
  }

  v7 = [(HMDCameraSignificantEventNotificationModel *)self significantEvent];
  v8 = [(HMDCameraSignificantEventNotificationModel *)self dateOfOccurrence];
  v9 = [(HMDCameraSignificantEventNotificationModel *)self confidenceLevel];
  v10 = [(HMDCameraSignificantEventNotificationModel *)self timeOffsetWithinClip];
  v11 = [(HMDCameraSignificantEventNotificationModel *)self associatedClip];
  v12 = v11;
  if (v7 && v8 && v9 && v10 && v11)
  {
    v38 = v8;
    v13 = objc_alloc(MEMORY[0x277CD18F8]);
    v14 = [(HMBModel *)self hmbModelID];
    v15 = [v7 unsignedIntegerValue];
    v16 = [v9 unsignedIntegerValue];
    [v10 doubleValue];
    v18 = v17;
    [v12 hmbModelID];
    v19 = v12;
    v20 = v10;
    v21 = v9;
    v22 = v7;
    v24 = v23 = v6;
    v25 = v13;
    v8 = v38;
    v26 = [v25 initWithUniqueIdentifier:v14 reason:v15 dateOfOccurrence:v38 confidenceLevel:v16 cameraProfileUUID:v23 faceClassification:v40 timeOffsetWithinClip:v18 clipUUID:v24];

    v6 = v23;
    v7 = v22;
    v9 = v21;
    v10 = v20;
    v12 = v19;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      [(HMBModel *)v28 debugDescription];
      v39 = v12;
      v31 = v9;
      v32 = v8;
      v33 = v7;
      v35 = v34 = v27;
      *buf = 138543618;
      v42 = v30;
      v43 = 2112;
      v44 = v35;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Cannot create significant event from model: %@", buf, 0x16u);

      v27 = v34;
      v7 = v33;
      v8 = v32;
      v9 = v31;
      v12 = v39;
    }

    objc_autoreleasePoolPop(v27);
    v26 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v26;
}

@end