@interface NPTAWDLCollector
- (id)awdlOpModeString;
- (id)fetchAWDLData;
- (void)startCollectingWithCompletion:(id)completion;
- (void)stopCollecting;
@end

@implementation NPTAWDLCollector

- (void)startCollectingWithCompletion:(id)completion
{
  v29[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(NPTAWDLCollector *)self setCachedMetadata:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  cachedMetadata = [(NPTAWDLCollector *)self cachedMetadata];
  [cachedMetadata setObject:v7 forKeyedSubscript:@"initial_state"];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  cachedMetadata2 = [(NPTAWDLCollector *)self cachedMetadata];
  [cachedMetadata2 setObject:v9 forKeyedSubscript:@"events"];

  if (os_variant_has_internal_content())
  {
    v11 = [objc_alloc(MEMORY[0x277D02B18]) initWithServiceType:1];
    [(NPTAWDLCollector *)self setInterface:v11];

    objc_initWeak(&location, self);
    interface = [(NPTAWDLCollector *)self interface];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __50__NPTAWDLCollector_startCollectingWithCompletion___block_invoke;
    v26[3] = &unk_2789D4200;
    objc_copyWeak(&v27, &location);
    [interface setEventHandler:v26];

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    interface2 = [(NPTAWDLCollector *)self interface];
    [interface2 activate];

    interface3 = [(NPTAWDLCollector *)self interface];
    v25 = 0;
    [interface3 startMonitoringEventType:17 error:&v25];
    v16 = v25;

    fetchAWDLData = [(NPTAWDLCollector *)self fetchAWDLData];
    [v5 addEntriesFromDictionary:fetchAWDLData];
    cachedMetadata3 = [(NPTAWDLCollector *)self cachedMetadata];
    [cachedMetadata3 setObject:v5 forKeyedSubscript:@"initial_state"];

    if (v16)
    {
      [v13 addObject:v16];
    }

    if (completionCopy)
    {
      v19 = [v13 copy];
      completionCopy[2](completionCopy, v5, v19);
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setValue:@"AWDL Metrics only available on Internal Builds" forKey:*MEMORY[0x277CCA450]];
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPTKit" code:-1 userInfo:dictionary];
    v22 = v21;
    if (completionCopy)
    {
      v29[0] = v21;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
      completionCopy[2](completionCopy, v5, v23);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __50__NPTAWDLCollector_startCollectingWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_alloc_init(NPTMetadataEvent);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [MEMORY[0x277CBEAA8] now];
  [(NPTMetadataEvent *)v4 setTimeStamp:v6];

  [(NPTMetadataEvent *)v4 setCollectorType:objc_opt_class()];
  if ([v17 type] == 17)
  {
    [(NPTMetadataEvent *)v4 setEventType:17];
    v7 = [WeakRetained interface];
    v8 = [v7 AWDLSyncState];

    if (v8)
    {
      [v8 bytes];
      v9 = W5DescriptionForAWDLSyncState();
      [v5 setObject:v9 forKeyedSubscript:@"data"];
    }

    else
    {
      [v5 setObject:0 forKeyedSubscript:@"data"];
    }

    v11 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v5];
    [(NPTMetadataEvent *)v4 setData:v11];

    if (!v4)
    {
      goto LABEL_10;
    }

    v12 = WeakRetained;
    objc_sync_enter(v12);
    v13 = [v12 cachedMetadata];
    v14 = [v13 objectForKeyedSubscript:@"events"];
    v15 = [(NPTMetadataEvent *)v4 asDictionary];
    [v14 addObject:v15];

    objc_sync_exit(v12);
    v16 = [v12 metadataDidChangeHandler];

    if (!v16)
    {
      goto LABEL_10;
    }

    v10 = [v12 metadataDidChangeHandler];
    (v10)[2](v10, v4, 0);
  }

  else
  {
    v10 = v4;
    v4 = 0;
  }

LABEL_10:
}

- (void)stopCollecting
{
  interface = [(NPTAWDLCollector *)self interface];
  [interface invalidate];
}

- (id)fetchAWDLData
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = MEMORY[0x277CCABB0];
  interface = [(NPTAWDLCollector *)self interface];
  aWDL = [interface AWDL];
  v7 = [v4 numberWithBool:{objc_msgSend(aWDL, "powerOn")}];
  [v3 setObject:v7 forKeyedSubscript:@"awdl_power_state"];

  interface2 = [(NPTAWDLCollector *)self interface];
  aWDLMasterChannel = [interface2 AWDLMasterChannel];

  if (aWDLMasterChannel)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i", *(objc_msgSend(aWDLMasterChannel, "bytes") + 4)];
    [v3 setObject:v10 forKeyedSubscript:@"awdl_master_channel"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"awdl_master_channel"];
  }

  interface3 = [(NPTAWDLCollector *)self interface];
  aWDLSecondaryMasterChannel = [interface3 AWDLSecondaryMasterChannel];

  if (aWDLSecondaryMasterChannel)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i", *(objc_msgSend(aWDLSecondaryMasterChannel, "bytes") + 4)];
    [v3 setObject:v13 forKeyedSubscript:@"awdl_secondary_master_channel"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"awdl_secondary_master_channel"];
  }

  awdlOpModeString = [(NPTAWDLCollector *)self awdlOpModeString];
  [v3 setObject:awdlOpModeString forKeyedSubscript:@"awdl_op_mode"];

  interface4 = [(NPTAWDLCollector *)self interface];
  aWDLElectionParameters = [interface4 AWDLElectionParameters];

  if (aWDLElectionParameters)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i", *(objc_msgSend(aWDLElectionParameters, "bytes") + 32)];
    [v3 setObject:v17 forKeyedSubscript:@"awdl_election_parameters"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"awdl_election_parameters"];
  }

  interface5 = [(NPTAWDLCollector *)self interface];
  aWDLSyncState = [interface5 AWDLSyncState];

  if (aWDLSyncState)
  {
    [aWDLSyncState bytes];
    v20 = W5DescriptionForAWDLSyncState();
    [v3 setObject:v20 forKeyedSubscript:@"awdl_sync_state"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"awdl_sync_state"];
  }

  interface6 = [(NPTAWDLCollector *)self interface];
  aWDLSyncChannelSequence = [interface6 AWDLSyncChannelSequence];

  if (aWDLSyncChannelSequence)
  {
    [aWDLSyncChannelSequence bytes];
    v23 = W5DescriptionForAWDLSyncChannelSequence();
    [v3 setObject:v23 forKeyedSubscript:@"awdl_sync_channel_sequence"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"awdl_sync_channel_sequence"];
  }

  interface7 = [(NPTAWDLCollector *)self interface];
  aWDLStrategy = [interface7 AWDLStrategy];

  if (aWDLStrategy)
  {
    v26 = *([aWDLStrategy bytes] + 8);
    v27 = W5DescriptionForAWDLScheduleState();
    [v3 setObject:v27 forKeyedSubscript:@"awdl_schedule"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"awdl_schedule"];
  }

  return v3;
}

- (id)awdlOpModeString
{
  interface = [(NPTAWDLCollector *)self interface];
  aWDLOpMode = [interface AWDLOpMode];

  if (aWDLOpMode)
  {
    v4 = MEMORY[0x277CCACA8];
    if (*([aWDLOpMode bytes] + 4) <= 2u)
    {
      v5 = awdlOpModeString_modestr[*([aWDLOpMode bytes] + 4)];
    }

    else
    {
      v5 = "Unknown";
    }

    v6 = [v4 stringWithFormat:@"%s", v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end