@interface BRRTCSession
+ (id)_parentRTCReportingSession:(id)a3;
+ (id)reportingSession;
+ (void)startRTCReportingSessionWithConfiguration:(id)a3 andComplection:(id)a4;
@end

@implementation BRRTCSession

+ (id)reportingSession
{
  if (reportingSession_onceToken != -1)
  {
    +[BRRTCSession reportingSession];
  }

  v3 = BRRTCSessionSharedInstance;

  return v3;
}

uint64_t __32__BRRTCSession_reportingSession__block_invoke()
{
  BRRTCSessionSharedInstance = objc_alloc_init(BRRTCSession);

  return MEMORY[0x2821F96F8]();
}

+ (void)startRTCReportingSessionWithConfiguration:(id)a3 andComplection:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (_utilityQueue_onceToken != -1)
  {
    +[BRRTCSession startRTCReportingSessionWithConfiguration:andComplection:];
  }

  v7 = _utilityQueue_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__BRRTCSession_startRTCReportingSessionWithConfiguration_andComplection___block_invoke;
  v10[3] = &unk_278D26F90;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __73__BRRTCSession_startRTCReportingSessionWithConfiguration_andComplection___block_invoke(uint64_t a1)
{
  v2 = [BRRTCSession _parentRTCReportingSession:*(a1 + 32)];
  if (v2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __73__BRRTCSession_startRTCReportingSessionWithConfiguration_andComplection___block_invoke_2;
    v4[3] = &unk_278D26F68;
    v6 = *(a1 + 40);
    v5 = v2;
    [v5 startConfigurationWithCompletionHandler:v4];
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BRReportingErrorDomain" code:1 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __73__BRRTCSession_startRTCReportingSessionWithConfiguration_andComplection___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v3 = br_metriccollection_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "+[BRRTCSession startRTCReportingSessionWithConfiguration:andComplection:]_block_invoke_2";
      v9 = 2112;
      v10 = 0;
      _os_log_impl(&dword_241ECA000, v3, OS_LOG_TYPE_DEFAULT, "%s backends is nil, we will attempt to submit anyway %@", &v7, 0x16u);
    }
  }

  v4 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)_parentRTCReportingSession:(id)a3
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D44040];
  v18[0] = *MEMORY[0x277D44030];
  v18[1] = v3;
  v19[0] = &unk_2854117B0;
  v19[1] = &unk_2854117C8;
  v4 = *MEMORY[0x277D44010];
  v18[2] = *MEMORY[0x277D44080];
  v18[3] = v4;
  v19[2] = &unk_2854117C8;
  v19[3] = MEMORY[0x277CBEC38];
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v19 forKeys:v18 count:4];
  v8 = *MEMORY[0x277D44098];
  v16[0] = *MEMORY[0x277D44090];
  v16[1] = v8;
  v17[0] = @"SetupAndPairing";
  v17[1] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v10 = objc_alloc(MEMORY[0x277D43FE0]);

  v11 = [v10 initWithSessionInfo:v7 userInfo:v9 frameworksToCheck:MEMORY[0x277CBEBF8]];
  if (v11)
  {
    v12 = br_metriccollection_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_241ECA000, v12, OS_LOG_TYPE_DEFAULT, "RTC session instance created", v15, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

@end