@interface HMDCameraClipModel
+ (HMBModelCountMatchesQuery)countOfClipsWithQualityBetweenDatesQuery;
+ (HMBModelInfiniteQuery)clipsBeforeDateQuery;
+ (HMBModelInfiniteQuery)clipsWithNeedsUploadFeedbackStatusQuery;
+ (HMBModelInfiniteQuery)clipsWithQualityBetweenDatesAscendingQuery;
+ (HMBModelInfiniteQuery)clipsWithQualityBetweenDatesDescendingQuery;
+ (HMBModelInfiniteQuery)incompleteClipsQuery;
+ (NSUUID)sentinelParentUUID;
+ (id)hmbProperties;
+ (id)hmbQueries;
- (NSArray)videoSegments;
- (id)createClipWithSignificantEvents:(id)a3;
- (int64_t)quality;
- (unint64_t)feedbackStatus;
- (void)setFeedbackStatus:(unint64_t)a3;
- (void)setQuality:(int64_t)a3;
@end

@implementation HMDCameraClipModel

+ (HMBModelCountMatchesQuery)countOfClipsWithQualityBetweenDatesQuery
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HMDCameraClipModel_countOfClipsWithQualityBetweenDatesQuery__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (countOfClipsWithQualityBetweenDatesQuery_onceToken != -1)
  {
    dispatch_once(&countOfClipsWithQualityBetweenDatesQuery_onceToken, block);
  }

  v2 = countOfClipsWithQualityBetweenDatesQuery_query;

  return v2;
}

void __62__HMDCameraClipModel_countOfClipsWithQualityBetweenDatesQuery__block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) qualityPredicate];
  v3 = [v1 stringWithFormat:@"%@ AND startDate >= :dateAfter AND startDate < :dateBefore", v2];

  v4 = MEMORY[0x277D170B0];
  v12[0] = @"quality";
  v5 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"qualityField"];
  v13[0] = v5;
  v12[1] = @"dateAfter";
  v6 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"startDate"];
  v13[1] = v6;
  v12[2] = @"dateBefore";
  v7 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"startDate"];
  v13[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v9 = [v4 queryWithSQLPredicate:v3 indexedProperties:&unk_286627400 arguments:v8];
  v10 = countOfClipsWithQualityBetweenDatesQuery_query;
  countOfClipsWithQualityBetweenDatesQuery_query = v9;

  v11 = *MEMORY[0x277D85DE8];
}

+ (HMBModelInfiniteQuery)clipsWithQualityBetweenDatesDescendingQuery
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDCameraClipModel_clipsWithQualityBetweenDatesDescendingQuery__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (clipsWithQualityBetweenDatesDescendingQuery_onceToken != -1)
  {
    dispatch_once(&clipsWithQualityBetweenDatesDescendingQuery_onceToken, block);
  }

  v2 = clipsWithQualityBetweenDatesDescendingQuery_query;

  return v2;
}

void __65__HMDCameraClipModel_clipsWithQualityBetweenDatesDescendingQuery__block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) qualityPredicate];
  v3 = [v1 stringWithFormat:@"%@ AND startDate > :dateAfter AND startDate <= :dateBefore ORDER BY startDate DESC", v2];

  v4 = MEMORY[0x277D170C8];
  v12[0] = @"quality";
  v5 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"qualityField"];
  v13[0] = v5;
  v12[1] = @"dateAfter";
  v6 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"startDate"];
  v13[1] = v6;
  v12[2] = @"dateBefore";
  v7 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"startDate"];
  v13[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v9 = [v4 queryWithSQLPredicate:v3 sequenceArgumentName:@"dateBefore" indexedProperties:&unk_2866273E8 arguments:v8];
  v10 = clipsWithQualityBetweenDatesDescendingQuery_query;
  clipsWithQualityBetweenDatesDescendingQuery_query = v9;

  v11 = *MEMORY[0x277D85DE8];
}

+ (HMBModelInfiniteQuery)clipsWithQualityBetweenDatesAscendingQuery
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMDCameraClipModel_clipsWithQualityBetweenDatesAscendingQuery__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (clipsWithQualityBetweenDatesAscendingQuery_onceToken != -1)
  {
    dispatch_once(&clipsWithQualityBetweenDatesAscendingQuery_onceToken, block);
  }

  v2 = clipsWithQualityBetweenDatesAscendingQuery_query;

  return v2;
}

void __64__HMDCameraClipModel_clipsWithQualityBetweenDatesAscendingQuery__block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) qualityPredicate];
  v3 = [v1 stringWithFormat:@"%@ AND startDate >= :dateAfter AND startDate < :dateBefore ORDER BY startDate ASC", v2];

  v4 = MEMORY[0x277D170C8];
  v12[0] = @"quality";
  v5 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"qualityField"];
  v13[0] = v5;
  v12[1] = @"dateAfter";
  v6 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"startDate"];
  v13[1] = v6;
  v12[2] = @"dateBefore";
  v7 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"startDate"];
  v13[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v9 = [v4 queryWithSQLPredicate:v3 sequenceArgumentName:@"dateAfter" indexedProperties:&unk_2866273D0 arguments:v8];
  v10 = clipsWithQualityBetweenDatesAscendingQuery_query;
  clipsWithQualityBetweenDatesAscendingQuery_query = v9;

  v11 = *MEMORY[0x277D85DE8];
}

+ (HMBModelInfiniteQuery)clipsBeforeDateQuery
{
  if (clipsBeforeDateQuery_onceToken != -1)
  {
    dispatch_once(&clipsBeforeDateQuery_onceToken, &__block_literal_global_78_191618);
  }

  v3 = clipsBeforeDateQuery_query;

  return v3;
}

void __42__HMDCameraClipModel_clipsBeforeDateQuery__block_invoke()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D170C8];
  v6 = @"dateBefore";
  v1 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"startDate"];
  v7[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [v0 queryWithSQLPredicate:@"startDate <= :dateBefore ORDER BY startDate DESC" sequenceArgumentName:@"dateBefore" indexedProperties:&unk_2866273B8 arguments:v2];
  v4 = clipsBeforeDateQuery_query;
  clipsBeforeDateQuery_query = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (HMBModelInfiniteQuery)clipsWithNeedsUploadFeedbackStatusQuery
{
  if (clipsWithNeedsUploadFeedbackStatusQuery_onceToken != -1)
  {
    dispatch_once(&clipsWithNeedsUploadFeedbackStatusQuery_onceToken, &__block_literal_global_69_191624);
  }

  v3 = clipsWithNeedsUploadFeedbackStatusQuery_query;

  return v3;
}

void __61__HMDCameraClipModel_clipsWithNeedsUploadFeedbackStatusQuery__block_invoke()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D170C8];
  v6 = @"feedbackStatusField";
  v1 = [MEMORY[0x277D170D0] argumentWithPropertyName:@"feedbackStatusField" defaultValue:&unk_28662A568];
  v7[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [v0 queryWithSQLPredicate:@"feedbackStatusField == :feedbackStatusField" sequenceArgumentName:@"feedbackStatusField" indexedProperties:&unk_2866273A0 arguments:v2];
  v4 = clipsWithNeedsUploadFeedbackStatusQuery_query;
  clipsWithNeedsUploadFeedbackStatusQuery_query = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (HMBModelInfiniteQuery)incompleteClipsQuery
{
  if (incompleteClipsQuery_onceToken != -1)
  {
    dispatch_once(&incompleteClipsQuery_onceToken, &__block_literal_global_62_191638);
  }

  v3 = incompleteClipsQuery_query;

  return v3;
}

void __42__HMDCameraClipModel_incompleteClipsQuery__block_invoke()
{
  v10[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D170C8];
  v9[0] = @"isComplete";
  v1 = [MEMORY[0x277D170D0] argumentWithPropertyName:? defaultValue:?];
  v9[1] = @"startDate";
  v10[0] = v1;
  v2 = MEMORY[0x277D170D0];
  v3 = [MEMORY[0x277CBEAA8] distantFuture];
  v4 = [v2 argumentWithPropertyName:@"startDate" defaultValue:v3];
  v10[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v6 = [v0 queryWithSQLPredicate:@"isComplete == :isComplete AND startDate <= :startDate ORDER BY startDate DESC" sequenceArgumentName:@"startDate" indexedProperties:&unk_286627388 arguments:v5];
  v7 = incompleteClipsQuery_query;
  incompleteClipsQuery_query = v6;

  v8 = *MEMORY[0x277D85DE8];
}

+ (NSUUID)sentinelParentUUID
{
  if (sentinelParentUUID_onceToken_191650 != -1)
  {
    dispatch_once(&sentinelParentUUID_onceToken_191650, &__block_literal_global_56_191651);
  }

  v3 = sentinelParentUUID_sentinelParentUUID_191652;

  return v3;
}

uint64_t __40__HMDCameraClipModel_sentinelParentUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C795FE32-95CB-4EE4-9197-6E572C6C2365"];
  v1 = sentinelParentUUID_sentinelParentUUID_191652;
  sentinelParentUUID_sentinelParentUUID_191652 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)hmbQueries
{
  v12[6] = *MEMORY[0x277D85DE8];
  v3 = [a1 incompleteClipsQuery];
  v12[0] = v3;
  v4 = [a1 clipsWithNeedsUploadFeedbackStatusQuery];
  v12[1] = v4;
  v5 = [a1 clipsBeforeDateQuery];
  v12[2] = v5;
  v6 = [a1 clipsWithQualityBetweenDatesAscendingQuery];
  v12[3] = v6;
  v7 = [a1 clipsWithQualityBetweenDatesDescendingQuery];
  v12[4] = v7;
  v8 = [a1 countOfClipsWithQualityBetweenDatesQuery];
  v12[5] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_191662 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_191662, &__block_literal_global_191663);
  }

  v3 = hmbProperties_properties_191664;

  return v3;
}

void __35__HMDCameraClipModel_hmbProperties__block_invoke()
{
  v52[13] = *MEMORY[0x277D85DE8];
  v51[0] = @"startDate";
  v0 = MEMORY[0x277D170B8];
  v1 = objc_opt_class();
  v43 = [MEMORY[0x277D170C0] queryableField];
  v50 = v43;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v41 = [v0 fieldWithClass:v1 options:v42];
  v52[0] = v41;
  v51[1] = @"isComplete";
  v2 = MEMORY[0x277D170B8];
  v3 = objc_opt_class();
  v40 = [MEMORY[0x277D170C0] queryableField];
  v49 = v40;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  v38 = [v2 fieldWithClass:v3 options:v39];
  v52[1] = v38;
  v51[2] = @"duration";
  v37 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v52[2] = v37;
  v51[3] = @"size";
  v36 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v52[3] = v36;
  v51[4] = @"targetFragmentDuration";
  v35 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v52[4] = v35;
  v51[5] = @"recordedLocally";
  v4 = MEMORY[0x277D170B8];
  v5 = objc_opt_class();
  v34 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v48 = v34;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
  v32 = [v4 fieldWithClass:v5 options:v33];
  v52[5] = v32;
  v51[6] = @"streamingAssetVersion";
  v31 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v52[6] = v31;
  v51[7] = @"encryptionKey";
  v30 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v52[7] = v30;
  v51[8] = @"encryptionScheme";
  v29 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v52[8] = v29;
  v51[9] = @"videoStreamingAsset";
  v6 = MEMORY[0x277D170B8];
  v7 = objc_opt_class();
  v28 = [MEMORY[0x277D170C0] externalRecordField:@"sa00"];
  v47 = v28;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  v26 = [v6 fieldWithClass:v7 options:v27];
  v52[9] = v26;
  v51[10] = @"videoMetadataArray";
  v8 = MEMORY[0x277D170B8];
  v9 = objc_opt_class();
  v10 = [MEMORY[0x277D170C0] encryptedExternalRecordField:@"ebl00"];
  v46 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  v12 = [v8 fieldWithClass:v9 options:v11];
  v52[10] = v12;
  v51[11] = @"feedbackStatusField";
  v13 = MEMORY[0x277D170B8];
  v14 = objc_opt_class();
  v15 = [MEMORY[0x277D170C0] queryableField];
  v45 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
  v17 = [v13 fieldWithClass:v14 options:v16];
  v52[11] = v17;
  v51[12] = @"qualityField";
  v18 = MEMORY[0x277D170B8];
  v19 = objc_opt_class();
  v20 = [MEMORY[0x277D170C0] queryableField];
  v44 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  v22 = [v18 fieldWithClass:v19 options:v21];
  v52[12] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:13];
  v24 = hmbProperties_properties_191664;
  hmbProperties_properties_191664 = v23;

  v25 = *MEMORY[0x277D85DE8];
}

- (void)setQuality:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(HMDCameraClipModel *)self setQualityField:v4];
}

- (int64_t)quality
{
  v2 = [(HMDCameraClipModel *)self qualityField];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (NSArray)videoSegments
{
  v3 = [(HMDCameraClipModel *)self videoMetadataArray];
  v4 = v3;
  v5 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__HMDCameraClipModel_videoSegments__block_invoke;
  v9[3] = &unk_2797357A8;
  v9[4] = self;
  v7 = [v6 na_map:v9];

  return v7;
}

id __35__HMDCameraClipModel_videoSegments__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [[HMDCameraClipSegmentMetadata alloc] initWithData:v3];
  v5 = v4;
  if (v4)
  {
    if ([(HMDCameraClipSegmentMetadata *)v4 type])
    {
      v6 = objc_alloc(MEMORY[0x277CD1900]);
      v7 = [(HMDCameraClipSegmentMetadata *)v5 byteLength];
      v8 = [(HMDCameraClipSegmentMetadata *)v5 byteOffset];
      [(HMDCameraClipSegmentMetadata *)v5 duration];
      v10 = v9;
      [(HMDCameraClipSegmentMetadata *)v5 timeOffset];
      v12 = [v6 initWithByteLength:v7 byteOffset:v8 duration:v10 timeOffset:v11];
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x277CD1908]) initWithByteLength:-[HMDCameraClipSegmentMetadata byteLength](v5 byteOffset:{"byteLength"), -[HMDCameraClipSegmentMetadata byteOffset](v5, "byteOffset")}];
    }

    v18 = v12;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 32) hmbModelID];
      v21 = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode video segment metadata for clip %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)setFeedbackStatus:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(HMDCameraClipModel *)self setFeedbackStatusField:v4];
}

- (unint64_t)feedbackStatus
{
  v2 = [(HMDCameraClipModel *)self feedbackStatusField];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (id)createClipWithSignificantEvents:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v46 = a3;
  if (!v46)
  {
    _HMFPreconditionFailure();
  }

  v4 = [(HMDCameraClipModel *)self encryptionKey];
  v5 = [(HMDCameraClipModel *)self encryptionScheme];
  v6 = [(HMDCameraClipModel *)self startDate];
  v7 = [(HMDCameraClipModel *)self duration];
  v8 = [(HMDCameraClipModel *)self size];
  v9 = [(HMDCameraClipModel *)self targetFragmentDuration];
  v10 = [(HMDCameraClipModel *)self isComplete];
  v11 = [(HMDCameraClipModel *)self streamingAssetVersion];
  v12 = v11;
  v45 = v4;
  if (v4 && v5 && v6 && v7 && v9 && v10 && v11)
  {
    v43 = v11;
    v13 = [objc_alloc(MEMORY[0x277CD18D8]) initWithKey:v4 scheme:{objc_msgSend(v5, "unsignedIntegerValue")}];
    v41 = v6;
    v14 = objc_alloc(MEMORY[0x277CD18C8]);
    v15 = [(HMBModel *)self hmbModelID];
    [v7 doubleValue];
    v17 = v16;
    v37 = [v8 unsignedIntegerValue];
    [v9 floatValue];
    v19 = v18;
    contexta = v7;
    v20 = [v10 BOOLValue];
    v21 = v9;
    v22 = v8;
    v23 = v5;
    v24 = [(HMDCameraClipModel *)self feedbackStatus]!= 0;
    v25 = [(HMDCameraClipModel *)self quality];
    v26 = v14;
    v6 = v41;
    v27 = v20;
    v7 = contexta;
    v28 = v24;
    v5 = v23;
    v8 = v22;
    v9 = v21;
    v12 = v43;
    v29 = [v26 initWithUniqueIdentifier:v15 startDate:v41 duration:v37 size:v27 targetFragmentDuration:v28 isComplete:v25 isDonated:v17 quality:v19 streamingAssetVersion:v43 encryptionContext:v13 significantEvents:v46];
  }

  else
  {
    v42 = v10;
    context = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v32 = v44 = v12;
      [(HMBModel *)v30 debugDescription];
      v38 = v9;
      v34 = v33 = v6;
      *buf = 138543618;
      v48 = v32;
      v49 = 2112;
      v50 = v34;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Cannot create clip from model: %@", buf, 0x16u);

      v6 = v33;
      v9 = v38;

      v12 = v44;
    }

    objc_autoreleasePoolPop(context);
    v29 = 0;
    v10 = v42;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v29;
}

@end