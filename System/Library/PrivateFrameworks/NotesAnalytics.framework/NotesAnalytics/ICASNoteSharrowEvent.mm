@interface ICASNoteSharrowEvent
+ (int64_t)timestampGranularity;
- (NSDictionary)eventProperties;
@end

@implementation ICASNoteSharrowEvent

+ (int64_t)timestampGranularity
{
  v2 = [MEMORY[0x277CEAF38] shared];
  v3 = [v2 initWithName:@"jitter"];

  return v3;
}

- (NSDictionary)eventProperties
{
  v20[14] = *MEMORY[0x277D85DE8];
  v19[0] = @"noteData";
  v18 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v20[0] = v18;
  v19[1] = @"noteContentData";
  v17 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v20[1] = v17;
  v19[2] = @"folderData";
  v16 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v20[2] = v16;
  v19[3] = @"sharrowContextData";
  v15 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v20[3] = v15;
  v19[4] = @"accountData";
  v14 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v20[4] = v14;
  v19[5] = @"privateUserData";
  v2 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v20[5] = v2;
  v19[6] = @"privateEventData";
  v3 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v20[6] = v3;
  v19[7] = @"contextPathData";
  v4 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:1];
  v20[7] = v4;
  v19[8] = @"noteAccessData";
  v5 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v20[8] = v5;
  v19[9] = @"startCollaborationCollaboratorData";
  v6 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v20[9] = v6;
  v19[10] = @"endCollaborationCollaboratorData";
  v7 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v20[10] = v7;
  v19[11] = @"collaboratorData";
  v8 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v20[11] = v8;
  v19[12] = @"shareFlowData";
  v9 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v20[12] = v9;
  v19[13] = @"eventData";
  v10 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v20[13] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end