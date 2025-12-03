@interface HMDUserActionPredictionModel
+ (id)hmbProperties;
- (HMDUserActionPredictionModel)initWithUserActionPrediction:(id)prediction;
- (id)userActionPrediction;
@end

@implementation HMDUserActionPredictionModel

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_40407 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_40407, &__block_literal_global_40408);
  }

  v3 = hmbProperties_properties_40409;

  return v3;
}

void __45__HMDUserActionPredictionModel_hmbProperties__block_invoke()
{
  v46[7] = *MEMORY[0x277D85DE8];
  v45[0] = @"predictionTargetUUID";
  v0 = MEMORY[0x277D170B8];
  v1 = objc_opt_class();
  v37 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v44 = v37;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  v35 = [v0 fieldWithClass:v1 options:v36];
  v46[0] = v35;
  v45[1] = @"targetServiceUUID";
  v2 = MEMORY[0x277D170B8];
  v3 = objc_opt_class();
  v34 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v43 = v34;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  v32 = [v2 fieldWithClass:v3 options:v33];
  v46[1] = v32;
  v45[2] = @"targetServiceGroupUUID";
  v4 = MEMORY[0x277D170B8];
  v5 = objc_opt_class();
  v31 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v42 = v31;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
  v29 = [v4 fieldWithClass:v5 options:v30];
  v46[2] = v29;
  v45[3] = @"targetGroupUUID";
  v6 = MEMORY[0x277D170B8];
  v7 = objc_opt_class();
  v28 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v41 = v28;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
  v26 = [v6 fieldWithClass:v7 options:v27];
  v46[3] = v26;
  v45[4] = @"type";
  v8 = MEMORY[0x277D170B8];
  v9 = objc_opt_class();
  v10 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v40 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v12 = [v8 fieldWithClass:v9 options:v11];
  v46[4] = v12;
  v45[5] = @"groupType";
  v13 = MEMORY[0x277D170B8];
  v14 = objc_opt_class();
  v15 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v39 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v17 = [v13 fieldWithClass:v14 options:v16];
  v46[5] = v17;
  v45[6] = @"predictionScore";
  v18 = MEMORY[0x277D170B8];
  v19 = objc_opt_class();
  v20 = [MEMORY[0x277D170C0] excludeFromCloudStorage];
  v38 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  v22 = [v18 fieldWithClass:v19 options:v21];
  v46[6] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:7];
  v24 = hmbProperties_properties_40409;
  hmbProperties_properties_40409 = v23;

  v25 = *MEMORY[0x277D85DE8];
}

- (id)userActionPrediction
{
  v3 = objc_alloc(MEMORY[0x277CD1EE8]);
  predictionTargetUUID = [(HMDUserActionPredictionModel *)self predictionTargetUUID];
  targetServiceUUID = [(HMDUserActionPredictionModel *)self targetServiceUUID];
  targetGroupUUID = [(HMDUserActionPredictionModel *)self targetGroupUUID];
  groupType = [(HMDUserActionPredictionModel *)self groupType];
  unsignedIntegerValue = [groupType unsignedIntegerValue];
  type = [(HMDUserActionPredictionModel *)self type];
  unsignedIntegerValue2 = [type unsignedIntegerValue];
  predictionScore = [(HMDUserActionPredictionModel *)self predictionScore];
  [predictionScore doubleValue];
  v12 = [v3 initWithPredictionTargetUUID:predictionTargetUUID targetServiceUUID:targetServiceUUID targetGroupUUID:targetGroupUUID targetGroupType:unsignedIntegerValue predictionType:unsignedIntegerValue2 predictionScore:?];

  return v12;
}

- (HMDUserActionPredictionModel)initWithUserActionPrediction:(id)prediction
{
  v48 = *MEMORY[0x277D85DE8];
  predictionCopy = prediction;
  predictionTargetUUID = [predictionCopy predictionTargetUUID];
  targetServiceUUID = [predictionCopy targetServiceUUID];
  v7 = MEMORY[0x277CCAD78];
  v8 = predictionTargetUUID;
  v9 = [[v7 alloc] initWithUUIDString:@"D73F97DF-5711-4EAA-9CA4-EB5C028A5EE8"];
  v10 = MEMORY[0x277CCAD78];
  uUIDString = [v8 UUIDString];

  v12 = [uUIDString dataUsingEncoding:4];
  v13 = [v10 hmf_UUIDWithNamespace:v9 data:v12];

  if (targetServiceUUID)
  {
    v14 = MEMORY[0x277CCAD78];
    uUIDString2 = [targetServiceUUID UUIDString];
    v16 = [uUIDString2 dataUsingEncoding:4];
    v17 = [v14 hmf_UUIDWithNamespace:v13 data:v16];

    v13 = v17;
  }

  v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"D73F97DF-5711-4EAA-9CA4-EB5C028A5EE8"];
  v19 = [(HMBModel *)self initWithModelID:v13 parentModelID:v18];
  predictionTargetUUID2 = [predictionCopy predictionTargetUUID];
  [(HMDUserActionPredictionModel *)v19 setPredictionTargetUUID:predictionTargetUUID2];

  targetServiceUUID2 = [predictionCopy targetServiceUUID];
  [(HMDUserActionPredictionModel *)v19 setTargetServiceUUID:targetServiceUUID2];

  targetGroupUUID = [predictionCopy targetGroupUUID];
  [(HMDUserActionPredictionModel *)v19 setTargetGroupUUID:targetGroupUUID];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(predictionCopy, "predictionType")}];
  [(HMDUserActionPredictionModel *)v19 setType:v23];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(predictionCopy, "targetGroupType")}];
  [(HMDUserActionPredictionModel *)v19 setGroupType:v24];

  v25 = MEMORY[0x277CCABB0];
  [predictionCopy predictionScore];
  v26 = [v25 numberWithDouble:?];
  [(HMDUserActionPredictionModel *)v19 setPredictionScore:v26];

  [(HMDUserActionPredictionModel *)v19 setTargetServiceGroupUUID:0];
  hmbModelID = [(HMBModel *)v19 hmbModelID];

  if (hmbModelID)
  {
    v28 = v19;
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = v19;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v42 = 138543874;
      v43 = v32;
      v44 = 2112;
      v45 = predictionCopy;
      v46 = 2112;
      v47 = v30;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@User Action Prediction: %@, resulted in nil hmbModelID for prediction model: %@", &v42, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    hmbModelID2 = [(HMBModel *)v30 hmbModelID];

    if (!hmbModelID2)
    {
      v36 = objc_autoreleasePoolPush();
      v37 = v30;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        v39 = HMFGetLogIdentifier();
        v42 = 138543362;
        v43 = v39;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: User Action Prediction ModelID should not be nil", &v42, 0xCu);
      }

      objc_autoreleasePoolPop(v36);
      v40 = [[HMDAssertionLogEvent alloc] initWithReason:@"User Action Prediction ModelID should not be nil"];
      v41 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v41 submitLogEvent:v40];
    }

    v28 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v28;
}

@end