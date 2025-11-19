@interface ICASFullscreenDrawingToInlineDrawingEvent
+ (int64_t)timestampGranularity;
- (NSDictionary)eventProperties;
@end

@implementation ICASFullscreenDrawingToInlineDrawingEvent

+ (int64_t)timestampGranularity
{
  v2 = [MEMORY[0x277CEAF38] shared];
  v3 = [v2 initWithName:@"jitter"];

  return v3;
}

- (NSDictionary)eventProperties
{
  v17[11] = *MEMORY[0x277D85DE8];
  v16[0] = @"noteData";
  v15 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v17[0] = v15;
  v16[1] = @"noteAccessData";
  v14 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v17[1] = v14;
  v16[2] = @"accountData";
  v2 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v17[2] = v2;
  v16[3] = @"drawingData";
  v3 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v17[3] = v3;
  v16[4] = @"startDrawingStrokeData";
  v4 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v17[4] = v4;
  v16[5] = @"endDrawingStrokeData";
  v5 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:1];
  v17[5] = v5;
  v16[6] = @"orientationData";
  v6 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v17[6] = v6;
  v16[7] = @"privateUserData";
  v7 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v17[7] = v7;
  v16[8] = @"privateEventData";
  v8 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v17[8] = v8;
  v16[9] = @"drawingConversionData";
  v9 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v17[9] = v9;
  v16[10] = @"eventData";
  v10 = [objc_alloc(MEMORY[0x277CEAF08]) initWithDataType:objc_opt_class() requirement:0];
  v17[10] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:11];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end