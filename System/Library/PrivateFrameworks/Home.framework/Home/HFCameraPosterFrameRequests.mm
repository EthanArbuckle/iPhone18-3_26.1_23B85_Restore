@interface HFCameraPosterFrameRequests
- (HFCameraPosterFrameRequests)init;
- (id)fulfillAllRequestsForPosterFrameGenerationForHighQualityClip:(id)a3;
- (id)fulfillRequestForPosterFrameGenerationForHighQualityClip:(id)a3 atOffset:(double)a4;
- (id)fulfillRequestsForTimelapseFileForTimelapseClip:(id)a3;
- (void)addRequestForTimelapseFileForDelegate:(id)a3 forHighQualityClip:(id)a4 andTimelapseClip:(id)a5 atOffset:(double)a6;
- (void)addRequestsForPosterFrameGeneration:(id)a3 forHighQualityClip:(id)a4;
@end

@implementation HFCameraPosterFrameRequests

- (HFCameraPosterFrameRequests)init
{
  v8.receiver = self;
  v8.super_class = HFCameraPosterFrameRequests;
  v2 = [(HFCameraPosterFrameRequests *)&v8 init];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  timelapseRequests = v2->_timelapseRequests;
  v2->_timelapseRequests = v3;

  v5 = [MEMORY[0x277CBEB38] dictionary];
  generationRequests = v2->_generationRequests;
  v2->_generationRequests = v5;

  return v2;
}

- (void)addRequestForTimelapseFileForDelegate:(id)a3 forHighQualityClip:(id)a4 andTimelapseClip:(id)a5 atOffset:(double)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(HFCameraPosterFrameDelegateRequest);
  [(HFCameraPosterFrameDelegateRequest *)v13 setHighQualityClip:v11];

  [(HFCameraPosterFrameDelegateRequest *)v13 setTimelapseClip:v10];
  [(HFCameraPosterFrameDelegateRequest *)v13 setDelegate:v12];

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:a6];
  [(HFCameraPosterFrameDelegateRequest *)v13 setOffsetNumber:v14];

  v15 = [v10 uniqueIdentifier];
  v16 = [v15 UUIDString];

  v17 = [(HFCameraPosterFrameRequests *)self timelapseRequests];
  v18 = [v17 objectForKeyedSubscript:v16];

  if (!v18)
  {
    v18 = [MEMORY[0x277CBEB18] array];
    v19 = [(HFCameraPosterFrameRequests *)self timelapseRequests];
    [v19 setObject:v18 forKeyedSubscript:v16];
  }

  v20 = HFLogForCategory(0x19uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v10 uniqueIdentifier];
    v22 = [v21 UUIDString];
    v24 = 138412290;
    v25 = v22;
    _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "REQUEST: Adding request for timelapse clip %@", &v24, 0xCu);
  }

  [v18 addObject:v13];
  v23 = *MEMORY[0x277D85DE8];
}

- (id)fulfillRequestsForTimelapseFileForTimelapseClip:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x19uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uniqueIdentifier];
    v7 = [v6 UUIDString];
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "REQUEST: Fulfilling all requests for timelapse clip %@", &v15, 0xCu);
  }

  v8 = [v4 uniqueIdentifier];
  v9 = [v8 UUIDString];

  v10 = [(HFCameraPosterFrameRequests *)self timelapseRequests];
  v11 = [v10 objectForKeyedSubscript:v9];

  v12 = [(HFCameraPosterFrameRequests *)self timelapseRequests];
  [v12 setObject:0 forKeyedSubscript:v9];

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)addRequestsForPosterFrameGeneration:(id)a3 forHighQualityClip:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 uniqueIdentifier];
  v9 = [v8 UUIDString];

  v10 = [(HFCameraPosterFrameRequests *)self generationRequests];
  v11 = [v10 objectForKeyedSubscript:v9];

  if (!v11)
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v6;
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
        v18 = [v17 offsetNumber];
        [v11 setObject:v17 forKeyedSubscript:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v14);
  }

  v19 = [(HFCameraPosterFrameRequests *)self generationRequests];
  [v19 setObject:v11 forKeyedSubscript:v9];

  v20 = HFLogForCategory(0x19uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v7 uniqueIdentifier];
    v22 = [v21 UUIDString];
    *buf = 138412290;
    v29 = v22;
    _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "REQUEST: Adding request for high quality clip %@", buf, 0xCu);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)fulfillRequestForPosterFrameGenerationForHighQualityClip:(id)a3 atOffset:(double)a4
{
  v6 = [a3 uniqueIdentifier];
  v7 = [v6 UUIDString];

  v8 = [(HFCameraPosterFrameRequests *)self generationRequests];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v11 = [v9 objectForKeyedSubscript:v10];
    if (v11)
    {
      [v9 removeObjectForKey:v10];
      if (![v9 count])
      {
        v12 = [(HFCameraPosterFrameRequests *)self generationRequests];
        [v12 setObject:0 forKeyedSubscript:v7];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)fulfillAllRequestsForPosterFrameGenerationForHighQualityClip:(id)a3
{
  v4 = [a3 uniqueIdentifier];
  v5 = [v4 UUIDString];

  v6 = [(HFCameraPosterFrameRequests *)self generationRequests];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (v7)
  {
    v8 = [(HFCameraPosterFrameRequests *)self generationRequests];
    [v8 setObject:0 forKeyedSubscript:v5];

    v9 = [v7 allValues];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

@end