@interface ICASFastSyncSessionEndEvent
+ (int64_t)timestampGranularity;
- (NSDictionary)eventProperties;
@end

@implementation ICASFastSyncSessionEndEvent

+ (int64_t)timestampGranularity
{
  mEMORY[0x277CEAF38] = [MEMORY[0x277CEAF38] shared];
  v3 = [mEMORY[0x277CEAF38] initWithName:@"day"];

  return v3;
}

- (NSDictionary)eventProperties
{
  v16[10] = *MEMORY[0x277D85DE8];
  v15[0] = @"privateUserData";
  v14 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v16[0] = v14;
  v15[1] = @"privateEventData";
  v2 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v16[1] = v2;
  v15[2] = @"noteData";
  v3 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v16[2] = v3;
  v15[3] = @"noteContentData";
  v4 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v16[3] = v4;
  v15[4] = @"noteAccessData";
  v5 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v16[4] = v5;
  v15[5] = @"fastSyncData";
  v6 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v16[5] = v6;
  v15[6] = @"fastSyncParticipantData";
  v7 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v16[6] = v7;
  v15[7] = @"fastSyncMessageData";
  v8 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:1];
  v16[7] = v8;
  v15[8] = @"fastSyncErrorData";
  v9 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:1];
  v16[8] = v9;
  v15[9] = @"eventData";
  v10 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v16[9] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end