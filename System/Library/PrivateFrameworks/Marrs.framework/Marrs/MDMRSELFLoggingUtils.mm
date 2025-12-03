@interface MDMRSELFLoggingUtils
+ (BOOL)emitEvent:(id)event;
+ (id)createMentionDetectorEvaluatedEvent:(id)event withNLXMetadata:(id)metadata andLinkId:(id)id;
+ (id)createMentionDetectorEvaluatedTier1Event:(id)event withNLXMetadata:(id)metadata andLinkId:(id)id;
+ (id)createMentionResolverEvaluatedEvent:(id)event withNLXMetadata:(id)metadata andLinkId:(id)id;
+ (id)createMentionResolverEvaluatedTier1Event:(id)event withNLXMetadata:(id)metadata andLinkId:(id)id;
@end

@implementation MDMRSELFLoggingUtils

+ (id)createMentionResolverEvaluatedTier1Event:(id)event withNLXMetadata:(id)metadata andLinkId:(id)id
{
  eventCopy = event;
  metadataCopy = metadata;
  idCopy = id;
  v10 = objc_alloc_init(MEMORY[0x277D59068]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (eventCopy)
  {
    for (i = 0; ; ++i)
    {
      mentions = [eventCopy mentions];
      v14 = [mentions count];

      if (i >= v14)
      {
        break;
      }

      v15 = MEMORY[0x277D5DEF8];
      mentions2 = [eventCopy mentions];
      v17 = [mentions2 objectAtIndexedSubscript:i];
      v18 = [v15 convertMatchingSpanTier1:v17];

      [v11 addObject:v18];
    }
  }

  [v10 setMentionResolverSpansTier1s:v11];
  [v10 setLinkId:idCopy];
  v19 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v19 setMarrsMentionResolverEndedTier1:v10];
  [v19 setEventMetadata:metadataCopy];

  return v19;
}

+ (id)createMentionResolverEvaluatedEvent:(id)event withNLXMetadata:(id)metadata andLinkId:(id)id
{
  eventCopy = event;
  metadataCopy = metadata;
  idCopy = id;
  v10 = objc_alloc_init(MEMORY[0x277D59060]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (eventCopy)
  {
    for (i = 0; ; ++i)
    {
      mentions = [eventCopy mentions];
      v14 = [mentions count];

      if (i >= v14)
      {
        break;
      }

      v15 = MEMORY[0x277D5DEF8];
      mentions2 = [eventCopy mentions];
      v17 = [mentions2 objectAtIndexedSubscript:i];
      v18 = [v15 convertMatchingSpan:v17];

      if (v18)
      {
        mainItem = [v18 mainItem];
        [v11 addObject:mainItem];
      }
    }
  }

  [v10 setMentionResolverSpans:v11];
  [v10 setLinkId:idCopy];
  v20 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v20 setMarrsMentionResolverEnded:v10];
  [v20 setEventMetadata:metadataCopy];

  return v20;
}

+ (id)createMentionDetectorEvaluatedTier1Event:(id)event withNLXMetadata:(id)metadata andLinkId:(id)id
{
  eventCopy = event;
  metadataCopy = metadata;
  idCopy = id;
  v10 = objc_alloc_init(MEMORY[0x277D59058]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; ; ++i)
  {
    mentions = [eventCopy mentions];
    v14 = [mentions count];

    if (i >= v14)
    {
      break;
    }

    v15 = MEMORY[0x277D5DEF8];
    mentions2 = [eventCopy mentions];
    v17 = [mentions2 objectAtIndexedSubscript:i];
    v18 = [v15 convertMatchingSpanTier1:v17];

    [v11 addObject:v18];
  }

  [v10 setMentionDetectorSpansTier1s:v11];
  [v10 setLinkId:idCopy];
  v19 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v19 setMarrsMentionDetectorEndedTier1:v10];
  [v19 setEventMetadata:metadataCopy];

  return v19;
}

+ (id)createMentionDetectorEvaluatedEvent:(id)event withNLXMetadata:(id)metadata andLinkId:(id)id
{
  eventCopy = event;
  metadataCopy = metadata;
  idCopy = id;
  v10 = objc_alloc_init(MEMORY[0x277D59050]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; ; ++i)
  {
    mentions = [eventCopy mentions];
    v14 = [mentions count];

    if (i >= v14)
    {
      break;
    }

    v15 = MEMORY[0x277D5DEF8];
    mentions2 = [eventCopy mentions];
    v17 = [mentions2 objectAtIndexedSubscript:i];
    v18 = [v15 convertMatchingSpan:v17];

    if (v18)
    {
      mainItem = [v18 mainItem];
      [v11 addObject:mainItem];
    }
  }

  [v10 setMentionDetectorSpans:v11];
  [v10 setLinkId:idCopy];
  v20 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v20 setMarrsMentionDetectorEnded:v10];
  [v20 setEventMetadata:metadataCopy];

  return v20;
}

+ (BOOL)emitEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([eventCopy hasEventMetadata] && (objc_msgSend(eventCopy, "eventMetadata"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "hasNlId"), v4, (v5 & 1) != 0))
  {
    mEMORY[0x277D552B8] = [MEMORY[0x277D552B8] sharedStream];
    [mEMORY[0x277D552B8] emitMessage:eventCopy];

    v7 = MRRLoggerForCategory(0);
    v8 = 1;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      eventMetadata = [eventCopy eventMetadata];
      nlId = [eventMetadata nlId];
      toNSUUID = [nlId toNSUUID];
      uUIDString = [toNSUUID UUIDString];
      v15 = 136315138;
      uTF8String = [uUIDString UTF8String];
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