@interface ContextualSpanMatcherSELFLogging
+ (BOOL)emitEvent:(id)event;
+ (id)createContextualSpanMatcherEndedEvent:(id)event withNLXMetadata:(id)metadata andLinkId:(id)id;
+ (id)createContextualSpanMatcherEndedTier1Event:(id)event withNLXMetadata:(id)metadata andLinkId:(id)id;
@end

@implementation ContextualSpanMatcherSELFLogging

+ (id)createContextualSpanMatcherEndedTier1Event:(id)event withNLXMetadata:(id)metadata andLinkId:(id)id
{
  eventCopy = event;
  metadataCopy = metadata;
  idCopy = id;
  v10 = objc_alloc_init(MEMORY[0x277D59048]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  contextualSpans = [eventCopy contextualSpans];
  v13 = [contextualSpans count];

  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = MEMORY[0x277D5DEF8];
      contextualSpans2 = [eventCopy contextualSpans];
      v17 = [contextualSpans2 objectAtIndexedSubscript:v14];
      v18 = [v15 convertMatchingSpanTier1:v17];

      [v11 addObject:v18];
      ++v14;
      contextualSpans3 = [eventCopy contextualSpans];
      v20 = [contextualSpans3 count];
    }

    while (v14 < v20);
  }

  [v10 setContextualSpansTier1s:v11];
  [v10 setLinkId:idCopy];
  v21 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v21 setMarrsContextualSpanMatcherEndedTier1:v10];
  [v21 setEventMetadata:metadataCopy];

  return v21;
}

+ (id)createContextualSpanMatcherEndedEvent:(id)event withNLXMetadata:(id)metadata andLinkId:(id)id
{
  eventCopy = event;
  metadataCopy = metadata;
  idCopy = id;
  v10 = objc_alloc_init(MEMORY[0x277D59040]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  contextualSpans = [eventCopy contextualSpans];
  v13 = [contextualSpans count];

  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = MEMORY[0x277D5DEF8];
      contextualSpans2 = [eventCopy contextualSpans];
      v17 = [contextualSpans2 objectAtIndexedSubscript:v14];
      v18 = [v15 convertMatchingSpan:v17];

      if (v18)
      {
        mainItem = [v18 mainItem];
        [v11 addObject:mainItem];
      }

      ++v14;
      contextualSpans3 = [eventCopy contextualSpans];
      v21 = [contextualSpans3 count];
    }

    while (v14 < v21);
  }

  [v10 setContextualSpans:v11];
  [v10 setLinkId:idCopy];
  v22 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v22 setMarrsContextualSpanMatcherEnded:v10];
  [v22 setEventMetadata:metadataCopy];

  return v22;
}

+ (BOOL)emitEvent:(id)event
{
  v18 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = os_log_create("com.apple.siri.marrs.mrr", "ContextualSpanMatcher");
  if ([eventCopy hasEventMetadata] && (objc_msgSend(eventCopy, "eventMetadata"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasNlId"), v5, (v6 & 1) != 0))
  {
    mEMORY[0x277D552B8] = [MEMORY[0x277D552B8] sharedStream];
    [mEMORY[0x277D552B8] emitMessage:eventCopy];

    v8 = v4;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      eventMetadata = [eventCopy eventMetadata];
      nlId = [eventMetadata nlId];
      toNSUUID = [nlId toNSUUID];
      uUIDString = [toNSUUID UUIDString];
      v16 = 136315138;
      uTF8String = [uUIDString UTF8String];
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