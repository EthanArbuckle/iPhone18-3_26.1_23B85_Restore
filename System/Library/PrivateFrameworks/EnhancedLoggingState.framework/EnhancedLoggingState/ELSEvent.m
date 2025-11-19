@interface ELSEvent
+ (id)sessionData;
+ (void)createLoggingEventWith:(id)a3 postfix:(id)a4;
@end

@implementation ELSEvent

+ (void)createLoggingEventWith:(id)a3 postfix:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (createLoggingEventWith_postfix__onceToken != -1)
  {
    +[ELSEvent createLoggingEventWith:postfix:];
  }

  v8 = +[ELSManager sharedManager];
  v9 = [v8 snapshot];
  v10 = [v9 metadata];

  if (v10)
  {
    v11 = +[ELSEnvironment sharedInstance];
    v12 = [v11 cloudKitContainerIdentifier];

    v13 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v12];
    v14 = [v13 publicCloudDatabase];
    if (v7)
    {
      v15 = [@":" stringByAppendingString:v7];
    }

    else
    {
      v15 = &stru_285D33320;
    }

    v16 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"EnhancedLoggingEvent"];
    v17 = [a1 sessionData];
    [v16 setObject:v17 forKeyedSubscript:@"session"];

    v18 = [v6 stringByAppendingString:v15];
    [v16 setObject:v18 forKeyedSubscript:@"event"];

    v19 = [MEMORY[0x277CBEAA8] date];
    [v16 setObject:v19 forKeyedSubscript:@"capturedAt"];

    v20 = objc_alloc(MEMORY[0x277CBC4A0]);
    v24[0] = v16;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v22 = [v20 initWithRecordsToSave:v21 recordIDsToDelete:0];

    [v22 setPerRecordSaveBlock:&__block_literal_global_16];
    [v14 addOperation:v22];
  }

  else
  {
    v12 = ELSLogHandleForCategory(11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ELSEvent createLoggingEventWith:v12 postfix:?];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __43__ELSEvent_createLoggingEventWith_postfix___block_invoke_13(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = ELSLogHandleForCategory(11);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __43__ELSEvent_createLoggingEventWith_postfix___block_invoke_13_cold_1(v6, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __43__ELSEvent_createLoggingEventWith_postfix___block_invoke_13_cold_2(v5, v8);
  }
}

+ (id)sessionData
{
  v2 = +[ELSManager sharedManager];
  v3 = [v2 snapshot];
  v4 = [v3 metadata];

  v5 = @"sessionKey";
  v6 = [v4 objectForKeyedSubscript:@"sessionKey"];

  if (!v6)
  {
    v5 = @"enrollmentTicketNumber";
    v7 = [v4 objectForKeyedSubscript:@"enrollmentTicketNumber"];

    if (!v7)
    {
      v5 = @"gigafilesToken";
      v8 = [v4 objectForKeyedSubscript:@"gigafilesToken"];

      if (!v8)
      {
        v5 = @"not-found";
      }
    }
  }

  v9 = v5;
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:", v9];
  v11 = [v4 objectForKeyedSubscript:v9];

  if (v11)
  {
    v12 = [v4 objectForKeyedSubscript:v9];
    v13 = [v10 stringByAppendingString:v12];

    v10 = v12;
  }

  else
  {
    v13 = [v10 stringByAppendingString:@"not-found"];
  }

  return v13;
}

void __43__ELSEvent_createLoggingEventWith_postfix___block_invoke_13_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24A07C000, a2, OS_LOG_TYPE_ERROR, "Error saving enhancedLoggingEventRecord: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __43__ELSEvent_createLoggingEventWith_postfix___block_invoke_13_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_24A07C000, a2, OS_LOG_TYPE_DEBUG, "Saved enhancedLoggingEventRecord: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end