@interface MDMRSELFLoggingUtils
+ (BOOL)emitEvent:(id)a3;
+ (id)createMentionDetectorEvaluatedEvent:(id)a3 withNLXMetadata:(id)a4 andLinkId:(id)a5;
+ (id)createMentionDetectorEvaluatedTier1Event:(id)a3 withNLXMetadata:(id)a4 andLinkId:(id)a5;
+ (id)createMentionResolverEvaluatedEvent:(id)a3 withNLXMetadata:(id)a4 andLinkId:(id)a5;
+ (id)createMentionResolverEvaluatedTier1Event:(id)a3 withNLXMetadata:(id)a4 andLinkId:(id)a5;
@end

@implementation MDMRSELFLoggingUtils

+ (id)createMentionResolverEvaluatedTier1Event:(id)a3 withNLXMetadata:(id)a4 andLinkId:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277D59068]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v7)
  {
    for (i = 0; ; ++i)
    {
      v13 = [v7 mentions];
      v14 = [v13 count];

      if (i >= v14)
      {
        break;
      }

      v15 = MEMORY[0x277D5DEF8];
      v16 = [v7 mentions];
      v17 = [v16 objectAtIndexedSubscript:i];
      v18 = [v15 convertMatchingSpanTier1:v17];

      [v11 addObject:v18];
    }
  }

  [v10 setMentionResolverSpansTier1s:v11];
  [v10 setLinkId:v9];
  v19 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v19 setMarrsMentionResolverEndedTier1:v10];
  [v19 setEventMetadata:v8];

  return v19;
}

+ (id)createMentionResolverEvaluatedEvent:(id)a3 withNLXMetadata:(id)a4 andLinkId:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277D59060]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v7)
  {
    for (i = 0; ; ++i)
    {
      v13 = [v7 mentions];
      v14 = [v13 count];

      if (i >= v14)
      {
        break;
      }

      v15 = MEMORY[0x277D5DEF8];
      v16 = [v7 mentions];
      v17 = [v16 objectAtIndexedSubscript:i];
      v18 = [v15 convertMatchingSpan:v17];

      if (v18)
      {
        v19 = [v18 mainItem];
        [v11 addObject:v19];
      }
    }
  }

  [v10 setMentionResolverSpans:v11];
  [v10 setLinkId:v9];
  v20 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v20 setMarrsMentionResolverEnded:v10];
  [v20 setEventMetadata:v8];

  return v20;
}

+ (id)createMentionDetectorEvaluatedTier1Event:(id)a3 withNLXMetadata:(id)a4 andLinkId:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277D59058]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; ; ++i)
  {
    v13 = [v7 mentions];
    v14 = [v13 count];

    if (i >= v14)
    {
      break;
    }

    v15 = MEMORY[0x277D5DEF8];
    v16 = [v7 mentions];
    v17 = [v16 objectAtIndexedSubscript:i];
    v18 = [v15 convertMatchingSpanTier1:v17];

    [v11 addObject:v18];
  }

  [v10 setMentionDetectorSpansTier1s:v11];
  [v10 setLinkId:v9];
  v19 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v19 setMarrsMentionDetectorEndedTier1:v10];
  [v19 setEventMetadata:v8];

  return v19;
}

+ (id)createMentionDetectorEvaluatedEvent:(id)a3 withNLXMetadata:(id)a4 andLinkId:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277D59050]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; ; ++i)
  {
    v13 = [v7 mentions];
    v14 = [v13 count];

    if (i >= v14)
    {
      break;
    }

    v15 = MEMORY[0x277D5DEF8];
    v16 = [v7 mentions];
    v17 = [v16 objectAtIndexedSubscript:i];
    v18 = [v15 convertMatchingSpan:v17];

    if (v18)
    {
      v19 = [v18 mainItem];
      [v11 addObject:v19];
    }
  }

  [v10 setMentionDetectorSpans:v11];
  [v10 setLinkId:v9];
  v20 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v20 setMarrsMentionDetectorEnded:v10];
  [v20 setEventMetadata:v8];

  return v20;
}

+ (BOOL)emitEvent:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 hasEventMetadata] && (objc_msgSend(v3, "eventMetadata"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "hasNlId"), v4, (v5 & 1) != 0))
  {
    v6 = [MEMORY[0x277D552B8] sharedStream];
    [v6 emitMessage:v3];

    v7 = MRRLoggerForCategory(0);
    v8 = 1;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = [v3 eventMetadata];
      v10 = [v9 nlId];
      v11 = [v10 toNSUUID];
      v12 = [v11 UUIDString];
      v15 = 136315138;
      v16 = [v12 UTF8String];
      _os_log_impl(&dword_2227A9000, v7, OS_LOG_TYPE_INFO, "Emitted event with NL ID: %s", &v15, 0xCu);

      v8 = 1;
    }
  }

  else
  {
    v7 = MRRLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_2227A9000, v7, OS_LOG_TYPE_ERROR, "Due to NL ID being Nil, this event won't be emitted.", &v15, 2u);
    }

    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

@end