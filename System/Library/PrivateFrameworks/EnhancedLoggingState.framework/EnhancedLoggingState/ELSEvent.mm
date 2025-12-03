@interface ELSEvent
+ (id)sessionData;
+ (void)createLoggingEventWith:(id)with postfix:(id)postfix;
@end

@implementation ELSEvent

+ (void)createLoggingEventWith:(id)with postfix:(id)postfix
{
  v24[1] = *MEMORY[0x277D85DE8];
  withCopy = with;
  postfixCopy = postfix;
  if (createLoggingEventWith_postfix__onceToken != -1)
  {
    +[ELSEvent createLoggingEventWith:postfix:];
  }

  v8 = +[ELSManager sharedManager];
  snapshot = [v8 snapshot];
  metadata = [snapshot metadata];

  if (metadata)
  {
    v11 = +[ELSEnvironment sharedInstance];
    cloudKitContainerIdentifier = [v11 cloudKitContainerIdentifier];

    v13 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:cloudKitContainerIdentifier];
    publicCloudDatabase = [v13 publicCloudDatabase];
    if (postfixCopy)
    {
      v15 = [@":" stringByAppendingString:postfixCopy];
    }

    else
    {
      v15 = &stru_285D33320;
    }

    v16 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"EnhancedLoggingEvent"];
    sessionData = [self sessionData];
    [v16 setObject:sessionData forKeyedSubscript:@"session"];

    v18 = [withCopy stringByAppendingString:v15];
    [v16 setObject:v18 forKeyedSubscript:@"event"];

    date = [MEMORY[0x277CBEAA8] date];
    [v16 setObject:date forKeyedSubscript:@"capturedAt"];

    v20 = objc_alloc(MEMORY[0x277CBC4A0]);
    v24[0] = v16;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v22 = [v20 initWithRecordsToSave:v21 recordIDsToDelete:0];

    [v22 setPerRecordSaveBlock:&__block_literal_global_16];
    [publicCloudDatabase addOperation:v22];
  }

  else
  {
    cloudKitContainerIdentifier = ELSLogHandleForCategory(11);
    if (os_log_type_enabled(cloudKitContainerIdentifier, OS_LOG_TYPE_ERROR))
    {
      [ELSEvent createLoggingEventWith:cloudKitContainerIdentifier postfix:?];
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
  snapshot = [v2 snapshot];
  metadata = [snapshot metadata];

  v5 = @"sessionKey";
  v6 = [metadata objectForKeyedSubscript:@"sessionKey"];

  if (!v6)
  {
    v5 = @"enrollmentTicketNumber";
    v7 = [metadata objectForKeyedSubscript:@"enrollmentTicketNumber"];

    if (!v7)
    {
      v5 = @"gigafilesToken";
      v8 = [metadata objectForKeyedSubscript:@"gigafilesToken"];

      if (!v8)
      {
        v5 = @"not-found";
      }
    }
  }

  v9 = v5;
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:", v9];
  v11 = [metadata objectForKeyedSubscript:v9];

  if (v11)
  {
    v12 = [metadata objectForKeyedSubscript:v9];
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