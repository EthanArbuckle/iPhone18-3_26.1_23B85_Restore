@interface ContextualSpanMatcherSELFLogging
+ (BOOL)emitEvent:(id)a3;
+ (id)createContextualSpanMatcherEndedEvent:(id)a3 withNLXMetadata:(id)a4 andLinkId:(id)a5;
+ (id)createContextualSpanMatcherEndedTier1Event:(id)a3 withNLXMetadata:(id)a4 andLinkId:(id)a5;
@end

@implementation ContextualSpanMatcherSELFLogging

+ (id)createContextualSpanMatcherEndedTier1Event:(id)a3 withNLXMetadata:(id)a4 andLinkId:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277D59048]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [v7 contextualSpans];
  v13 = [v12 count];

  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = MEMORY[0x277D5DEF8];
      v16 = [v7 contextualSpans];
      v17 = [v16 objectAtIndexedSubscript:v14];
      v18 = [v15 convertMatchingSpanTier1:v17];

      [v11 addObject:v18];
      ++v14;
      v19 = [v7 contextualSpans];
      v20 = [v19 count];
    }

    while (v14 < v20);
  }

  [v10 setContextualSpansTier1s:v11];
  [v10 setLinkId:v9];
  v21 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v21 setMarrsContextualSpanMatcherEndedTier1:v10];
  [v21 setEventMetadata:v8];

  return v21;
}

+ (id)createContextualSpanMatcherEndedEvent:(id)a3 withNLXMetadata:(id)a4 andLinkId:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277D59040]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [v7 contextualSpans];
  v13 = [v12 count];

  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = MEMORY[0x277D5DEF8];
      v16 = [v7 contextualSpans];
      v17 = [v16 objectAtIndexedSubscript:v14];
      v18 = [v15 convertMatchingSpan:v17];

      if (v18)
      {
        v19 = [v18 mainItem];
        [v11 addObject:v19];
      }

      ++v14;
      v20 = [v7 contextualSpans];
      v21 = [v20 count];
    }

    while (v14 < v21);
  }

  [v10 setContextualSpans:v11];
  [v10 setLinkId:v9];
  v22 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v22 setMarrsContextualSpanMatcherEnded:v10];
  [v22 setEventMetadata:v8];

  return v22;
}

+ (BOOL)emitEvent:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = os_log_create("com.apple.siri.marrs.mrr", "ContextualSpanMatcher");
  if ([v3 hasEventMetadata] && (objc_msgSend(v3, "eventMetadata"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasNlId"), v5, (v6 & 1) != 0))
  {
    v7 = [MEMORY[0x277D552B8] sharedStream];
    [v7 emitMessage:v3];

    v8 = v4;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v3 eventMetadata];
      v10 = [v9 nlId];
      v11 = [v10 toNSUUID];
      v12 = [v11 UUIDString];
      v16 = 136315138;
      v17 = [v12 UTF8String];
      _os_log_impl(&dword_2227A9000, v8, OS_LOG_TYPE_DEFAULT, "Emitted event with NL ID: %s", &v16, 0xCu);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_2227A9000, v4, OS_LOG_TYPE_DEFAULT, "Due to NL ID being Nil, this event won't be emitted.", &v16, 2u);
      v13 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

@end