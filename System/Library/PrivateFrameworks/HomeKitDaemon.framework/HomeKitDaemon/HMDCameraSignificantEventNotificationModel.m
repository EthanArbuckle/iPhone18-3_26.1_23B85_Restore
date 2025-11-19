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
    dispatch_once(&significantEventsBetweenDatesQueryWithIsAscending__onceToken, &__block_literal_global_40_42492);
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
  v4 = [v0 queryWithSQLPredicate:@"dateOfOccurrence >= :dateAfter AND dateOfOccurrence < :dateBefore ORDER BY dateOfOccurrence ASC" sequenceArgumentName:@"dateAfter" indexedProperties:&unk_283E75668 arguments:v3];
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
  v10 = [v6 queryWithSQLPredicate:@"dateOfOccurrence > :dateAfter AND dateOfOccurrence <= :dateBefore ORDER BY dateOfOccurrence DESC" sequenceArgumentName:@"dateBefore" indexedProperties:&unk_283E75680 arguments:v9];
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
  if (hmbProperties_onceToken_42519 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_42519, &__block_literal_global_42520);
  }

  v3 = hmbProperties__properties_42521;

  return v3;
}

void __59__HMDCameraSignificantEventNotificationModel_hmbProperties__block_invoke()
{
  v31[7] = *MEMORY[0x277D85DE8];
  v30[0] = @"significantEvent";
  v25 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v31[0] = v25;
  v30[1] = @"dateOfOccurrence";
  v0 = MEMORY[0x277D170B8];
  v1 = objc_opt_class();
  v24 = [MEMORY[0x277D170C0] queryableField];
  v29 = v24;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v22 = [v0 fieldWithClass:v1 options:v23];
  v31[1] = v22;
  v30[2] = @"timeOffsetWithinClip";
  v21 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v31[2] = v21;
  v30[3] = @"associatedClip";
  v2 = MEMORY[0x277D170B8];
  v3 = objc_opt_class();
  v20 = [MEMORY[0x277D170C0] externalRecordField:@"r00"];
  v28 = v20;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v5 = [v2 fieldWithClass:v3 options:v4];
  v31[3] = v5;
  v30[4] = @"heroFrameAsset";
  v6 = MEMORY[0x277D170B8];
  v7 = objc_opt_class();
  v8 = [MEMORY[0x277D170C0] externalRecordField:@"a00"];
  v27 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v10 = [v6 fieldWithClass:v7 options:v9];
  v31[4] = v10;
  v30[5] = @"faceCropAsset";
  v11 = MEMORY[0x277D170B8];
  v12 = objc_opt_class();
  v13 = [MEMORY[0x277D170C0] externalRecordField:@"a01"];
  v26 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v15 = [v11 fieldWithClass:v12 options:v14];
  v31[5] = v15;
  v30[6] = @"confidenceLevel";
  v16 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v31[6] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:7];
  v18 = hmbProperties__properties_42521;
  hmbProperties__properties_42521 = v17;

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
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Cannot create significant event from model: %@", buf, 0x16u);

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