@interface HMDCameraRecordingUploadOperationEvent
- (HMDCameraRecordingUploadOperationEvent)initWithClipModelID:(id)d operation:(id)operation;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDCameraRecordingUploadOperationEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"runTime";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingUploadOperationEvent runTimeInMilliseconds](self, "runTimeInMilliseconds")}];
  v12[0] = v3;
  v11[1] = @"didCausePreviousClipToFinalizeDueToDurationLimit";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingUploadOperationEvent didCausePreviousClipToFinalizeDueToDurationLimit](self, "didCausePreviousClipToFinalizeDueToDurationLimit")}];
  v12[1] = v4;
  v11[2] = @"operationType";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingUploadOperationEvent operationType](self, "operationType")}];
  v12[2] = v5;
  v11[3] = @"totalClipDuration";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingUploadOperationEvent totalClipDurationMilliseconds](self, "totalClipDurationMilliseconds")}];
  v12[3] = v6;
  v11[4] = @"retryCount";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingUploadOperationEvent retryCount](self, "retryCount")}];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 initWithName:@"uploadMetricClass" value:v6];
  [array addObject:v7];

  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = MEMORY[0x277CCABB0];
  [(HMDCameraRecordingUploadOperationEvent *)self runTime];
  v10 = [v9 numberWithDouble:?];
  v11 = [v8 initWithName:@"runTime" value:v10];
  [array addObject:v11];

  v12 = objc_alloc(MEMORY[0x277D0F778]);
  clipModelID = [(HMDCameraRecordingUploadOperationEvent *)self clipModelID];
  v14 = [v12 initWithName:@"clipModelID" value:clipModelID];
  [array addObject:v14];

  v15 = objc_alloc(MEMORY[0x277D0F778]);
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCameraRecordingUploadOperationEvent didCausePreviousClipToFinalizeDueToDurationLimit](self, "didCausePreviousClipToFinalizeDueToDurationLimit")}];
  v17 = [v15 initWithName:@"didCausePreviousClipToFinalizeDueToDurationLimit" value:v16];
  [array addObject:v17];

  v18 = objc_alloc(MEMORY[0x277D0F778]);
  error = [(HMMLogEvent *)self error];
  v20 = [v18 initWithName:@"error" value:error];
  [array addObject:v20];

  v21 = objc_alloc(MEMORY[0x277D0F778]);
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingUploadOperationEvent retryCount](self, "retryCount")}];
  v23 = [v21 initWithName:@"retryCount" value:v22];
  [array addObject:v23];

  return array;
}

- (HMDCameraRecordingUploadOperationEvent)initWithClipModelID:(id)d operation:(id)operation
{
  dCopy = d;
  operationCopy = operation;
  v12.receiver = self;
  v12.super_class = HMDCameraRecordingUploadOperationEvent;
  v9 = [(HMMLogEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clipModelID, d);
    v10->_operationType = [objc_opt_class() cameraClipOperationType];
  }

  return v10;
}

@end