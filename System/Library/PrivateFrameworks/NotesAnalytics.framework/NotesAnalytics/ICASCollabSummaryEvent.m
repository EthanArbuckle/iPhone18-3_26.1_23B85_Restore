@interface ICASCollabSummaryEvent
+ (int64_t)timestampGranularity;
- (NSDictionary)eventProperties;
@end

@implementation ICASCollabSummaryEvent

+ (int64_t)timestampGranularity
{
  v2 = [MEMORY[0x277CEAF38] shared];
  v3 = [v2 initWithName:@"jitter"];

  return v3;
}

- (NSDictionary)eventProperties
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = @"privateUserData";
  v2 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v12[0] = v2;
  v11[1] = @"privateEventData";
  v3 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v12[1] = v3;
  v11[2] = @"orientationData";
  v4 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v12[2] = v4;
  v11[3] = @"noteData";
  v5 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:1];
  v12[3] = v5;
  v11[4] = @"streamUpdateData";
  v6 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v12[4] = v6;
  v11[5] = @"eventData";
  v7 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v12[5] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:6];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end