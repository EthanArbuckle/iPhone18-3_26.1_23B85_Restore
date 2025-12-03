@interface HFCameraPosterFrameRequests
- (HFCameraPosterFrameRequests)init;
- (id)fulfillAllRequestsForPosterFrameGenerationForHighQualityClip:(id)clip;
- (id)fulfillRequestForPosterFrameGenerationForHighQualityClip:(id)clip atOffset:(double)offset;
- (id)fulfillRequestsForTimelapseFileForTimelapseClip:(id)clip;
- (void)addRequestForTimelapseFileForDelegate:(id)delegate forHighQualityClip:(id)clip andTimelapseClip:(id)timelapseClip atOffset:(double)offset;
- (void)addRequestsForPosterFrameGeneration:(id)generation forHighQualityClip:(id)clip;
@end

@implementation HFCameraPosterFrameRequests

- (HFCameraPosterFrameRequests)init
{
  v8.receiver = self;
  v8.super_class = HFCameraPosterFrameRequests;
  v2 = [(HFCameraPosterFrameRequests *)&v8 init];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  timelapseRequests = v2->_timelapseRequests;
  v2->_timelapseRequests = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  generationRequests = v2->_generationRequests;
  v2->_generationRequests = dictionary2;

  return v2;
}

- (void)addRequestForTimelapseFileForDelegate:(id)delegate forHighQualityClip:(id)clip andTimelapseClip:(id)timelapseClip atOffset:(double)offset
{
  v26 = *MEMORY[0x277D85DE8];
  timelapseClipCopy = timelapseClip;
  clipCopy = clip;
  delegateCopy = delegate;
  v13 = objc_alloc_init(HFCameraPosterFrameDelegateRequest);
  [(HFCameraPosterFrameDelegateRequest *)v13 setHighQualityClip:clipCopy];

  [(HFCameraPosterFrameDelegateRequest *)v13 setTimelapseClip:timelapseClipCopy];
  [(HFCameraPosterFrameDelegateRequest *)v13 setDelegate:delegateCopy];

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:offset];
  [(HFCameraPosterFrameDelegateRequest *)v13 setOffsetNumber:v14];

  uniqueIdentifier = [timelapseClipCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  timelapseRequests = [(HFCameraPosterFrameRequests *)self timelapseRequests];
  array = [timelapseRequests objectForKeyedSubscript:uUIDString];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    timelapseRequests2 = [(HFCameraPosterFrameRequests *)self timelapseRequests];
    [timelapseRequests2 setObject:array forKeyedSubscript:uUIDString];
  }

  v20 = HFLogForCategory(0x19uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier2 = [timelapseClipCopy uniqueIdentifier];
    uUIDString2 = [uniqueIdentifier2 UUIDString];
    v24 = 138412290;
    v25 = uUIDString2;
    _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "REQUEST: Adding request for timelapse clip %@", &v24, 0xCu);
  }

  [array addObject:v13];
  v23 = *MEMORY[0x277D85DE8];
}

- (id)fulfillRequestsForTimelapseFileForTimelapseClip:(id)clip
{
  v17 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  v5 = HFLogForCategory(0x19uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [clipCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v15 = 138412290;
    v16 = uUIDString;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "REQUEST: Fulfilling all requests for timelapse clip %@", &v15, 0xCu);
  }

  uniqueIdentifier2 = [clipCopy uniqueIdentifier];
  uUIDString2 = [uniqueIdentifier2 UUIDString];

  timelapseRequests = [(HFCameraPosterFrameRequests *)self timelapseRequests];
  v11 = [timelapseRequests objectForKeyedSubscript:uUIDString2];

  timelapseRequests2 = [(HFCameraPosterFrameRequests *)self timelapseRequests];
  [timelapseRequests2 setObject:0 forKeyedSubscript:uUIDString2];

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)addRequestsForPosterFrameGeneration:(id)generation forHighQualityClip:(id)clip
{
  v31 = *MEMORY[0x277D85DE8];
  generationCopy = generation;
  clipCopy = clip;
  uniqueIdentifier = [clipCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  generationRequests = [(HFCameraPosterFrameRequests *)self generationRequests];
  dictionary = [generationRequests objectForKeyedSubscript:uUIDString];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = generationCopy;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        offsetNumber = [v17 offsetNumber];
        [dictionary setObject:v17 forKeyedSubscript:offsetNumber];
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v14);
  }

  generationRequests2 = [(HFCameraPosterFrameRequests *)self generationRequests];
  [generationRequests2 setObject:dictionary forKeyedSubscript:uUIDString];

  v20 = HFLogForCategory(0x19uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier2 = [clipCopy uniqueIdentifier];
    uUIDString2 = [uniqueIdentifier2 UUIDString];
    *buf = 138412290;
    v29 = uUIDString2;
    _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "REQUEST: Adding request for high quality clip %@", buf, 0xCu);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)fulfillRequestForPosterFrameGenerationForHighQualityClip:(id)clip atOffset:(double)offset
{
  uniqueIdentifier = [clip uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  generationRequests = [(HFCameraPosterFrameRequests *)self generationRequests];
  v9 = [generationRequests objectForKeyedSubscript:uUIDString];

  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:offset];
    v11 = [v9 objectForKeyedSubscript:v10];
    if (v11)
    {
      [v9 removeObjectForKey:v10];
      if (![v9 count])
      {
        generationRequests2 = [(HFCameraPosterFrameRequests *)self generationRequests];
        [generationRequests2 setObject:0 forKeyedSubscript:uUIDString];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)fulfillAllRequestsForPosterFrameGenerationForHighQualityClip:(id)clip
{
  uniqueIdentifier = [clip uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  generationRequests = [(HFCameraPosterFrameRequests *)self generationRequests];
  v7 = [generationRequests objectForKeyedSubscript:uUIDString];

  if (v7)
  {
    generationRequests2 = [(HFCameraPosterFrameRequests *)self generationRequests];
    [generationRequests2 setObject:0 forKeyedSubscript:uUIDString];

    allValues = [v7 allValues];
  }

  else
  {
    allValues = MEMORY[0x277CBEBF8];
  }

  return allValues;
}

@end