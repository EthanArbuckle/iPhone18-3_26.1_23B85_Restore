@interface ICASNoteCreateEvent
+ (int64_t)timestampGranularity;
- (NSDictionary)eventProperties;
@end

@implementation ICASNoteCreateEvent

+ (int64_t)timestampGranularity
{
  v2 = [MEMORY[0x277CEAF38] shared];
  v3 = [v2 initWithName:@"jitter"];

  return v3;
}

- (NSDictionary)eventProperties
{
  v14[8] = *MEMORY[0x277D85DE8];
  v13[0] = @"noteData";
  v2 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v14[0] = v2;
  v13[1] = @"noteCreateData";
  v3 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:1];
  v14[1] = v3;
  v13[2] = @"folderData";
  v4 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v14[2] = v4;
  v13[3] = @"accountData";
  v5 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v14[3] = v5;
  v13[4] = @"orientationData";
  v6 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v14[4] = v6;
  v13[5] = @"privateUserData";
  v7 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v14[5] = v7;
  v13[6] = @"privateEventData";
  v8 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v14[6] = v8;
  v13[7] = @"eventData";
  v9 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v14[7] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:8];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end