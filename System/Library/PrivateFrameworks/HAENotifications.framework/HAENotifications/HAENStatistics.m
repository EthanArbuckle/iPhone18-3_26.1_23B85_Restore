@interface HAENStatistics
+ (id)sharedInstance;
- (HAENStatistics)init;
- (id)volumeActionString:(unsigned int)a3;
- (void)processMessage:(id)a3;
- (void)processStatsForEvent:(id)a3;
- (void)processStatsForLocationGating:(id *)a3;
@end

@implementation HAENStatistics

+ (id)sharedInstance
{
  if (sharedInstance_once_0 != -1)
  {
    +[HAENStatistics sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

uint64_t __32__HAENStatistics_sharedInstance__block_invoke()
{
  sharedInstance_instance_0 = objc_alloc_init(HAENStatistics);

  return MEMORY[0x2821F96F8]();
}

- (HAENStatistics)init
{
  v6.receiver = self;
  v6.super_class = HAENStatistics;
  v2 = [(HAENStatistics *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.coreaudio.hae.notifications.stats", 0);
    eventQueue = v2->_eventQueue;
    v2->_eventQueue = v3;
  }

  return v2;
}

- (void)processStatsForEvent:(id)a3
{
  v4 = a3;
  v5 = +[HAENVolumeControl sharedInstance];
  v6 = [v5 getStats];
  v8 = v7;

  eventQueue = self->_eventQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__HAENStatistics_processStatsForEvent___block_invoke;
  v11[3] = &unk_27969F268;
  v13 = self;
  v14 = v6;
  v15 = v8;
  v12 = v4;
  v10 = v4;
  dispatch_async(eventQueue, v11);
}

void __39__HAENStatistics_processStatsForEvent___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) eventType];
  v3 = @"loud";
  if (v2 == 2003133803)
  {
    v3 = @"weekly";
  }

  v4 = MEMORY[0x277CCABB0];
  v5 = *(a1 + 32);
  v34 = v3;
  [v5 level];
  v31 = [v4 numberWithDouble:?];
  LODWORD(v6) = *(a1 + 48);
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  LODWORD(v8) = *(a1 + 52);
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v10 = [*(a1 + 40) volumeActionString:*(a1 + 56)];
  v11 = MEMORY[0x277CCABB0];
  v12 = +[HAENDefaults sharedInstance];
  v32 = [v11 numberWithBool:{objc_msgSend(v12, "isHAENFeatureOptedIn")}];

  v13 = MEMORY[0x277CCABB0];
  v14 = +[HAENDefaults sharedInstance];
  v15 = [v13 numberWithBool:{objc_msgSend(v14, "isHAENFeatureMandatory")}];

  v16 = MEMORY[0x277CCABB0];
  v17 = +[HAENDefaults sharedInstance];
  v18 = [v16 numberWithBool:{objc_msgSend(v17, "isEUVolumeLimitOn")}];

  v19 = MEMORY[0x277CCABB0];
  v20 = +[HAENDefaults sharedInstance];
  v21 = [v19 numberWithBool:{objc_msgSend(v20, "isSKVolumeLimitOn")}];

  v22 = [*(a1 + 32) metadata];
  v23 = [v22 objectForKey:@"_HAENMetadataIdentifierWeeklyDosage"];

  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = &unk_2862C9748;
  }

  v33 = v9;
  v30 = v9;
  v25 = v18;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v24, @"dose", v31, @"level", v34, @"event_type", v15, @"feature_mandatory", v18, @"eu_volume_limit", v21, @"sk_volume_lmit", v32, @"feature_opt_in", v7, @"current_volume", v30, @"target_volume", v10, @"volume_action", 0}];

  [*(a1 + 40) _sendMessage:v26];
  v27 = HAENotificationsLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [*(a1 + 32) uuid];
    *buf = 138412290;
    v36 = v28;
    _os_log_impl(&dword_25081E000, v27, OS_LOG_TYPE_DEFAULT, "HAENStatistics sent %@", buf, 0xCu);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)volumeActionString:(unsigned int)a3
{
  v3 = @"lowered";
  v4 = @"unknown";
  if (a3 == 1986814576)
  {
    v4 = @"bypassed";
  }

  if (a3 != 1986817143)
  {
    v3 = v4;
  }

  if (a3 == 561409132)
  {
    return @"failed";
  }

  else
  {
    return v3;
  }
}

- (void)processStatsForLocationGating:(id *)a3
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3254779904;
  block[2] = __48__HAENStatistics_processStatsForLocationGating___block_invoke;
  block[3] = &unk_2862C6808;
  __copy_constructor_8_8_s0_s8_s16_t24w2(v7, a3);
  block[4] = self;
  dispatch_async(eventQueue, block);

  __destructor_8_s0_s8_s16(a3);
}

void __48__HAENStatistics_processStatsForLocationGating___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    v2 = @"unknown";
  }

  v3 = v2;
  v4 = *(a1 + 40);
  if (!v4)
  {
    v4 = @"unknown";
  }

  v5 = v4;
  v6 = *(a1 + 48);
  if (!v6)
  {
    v6 = @"unknown";
  }

  v7 = MEMORY[0x277CCABB0];
  v8 = v6;
  v9 = +[HAENDefaults sharedInstance];
  v10 = [v7 numberWithBool:{objc_msgSend(v9, "isSKVolumeLimitOn")}];

  v11 = MEMORY[0x277CBEAC0];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 64)];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 65)];
  v14 = [v11 dictionaryWithObjectsAndKeys:{v12, @"feature_mandatory", v3, @"disposition", v5, @"countryCode", v8, @"source", v13, @"eu_volume_limit", v10, @"sk_volume_limit", 0}];

  [*(a1 + 32) _sendMessage:v14];
  v15 = HAENotificationsLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25081E000, v15, OS_LOG_TYPE_DEFAULT, "HAENStatistics location gating stats sent", buf, 2u);
  }
}

- (void)processMessage:(id)a3
{
  v4 = a3;
  eventQueue = self->_eventQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__HAENStatistics_processMessage___block_invoke;
  v7[3] = &unk_27969F240;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(eventQueue, v7);
}

@end