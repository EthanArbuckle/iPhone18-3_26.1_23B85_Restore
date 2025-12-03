@interface BRReportManager
- (BRRTCPairingReportManager)pairingReportManager;
- (void)reportRTCMetric:(id)metric;
@end

@implementation BRReportManager

- (void)reportRTCMetric:(id)metric
{
  v31 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  v5 = br_metriccollection_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v30 = "[BRReportManager reportRTCMetric:]";
    _os_log_impl(&dword_241ECA000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  dictionaryRepresentation = [metricCopy dictionaryRepresentation];
  allValues = [dictionaryRepresentation allValues];

  v8 = [allValues countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v16 = MEMORY[0x277CCA9B8];
              v26 = *MEMORY[0x277CCA450];
              v27 = @"RTC only accepts NSString, NSNumber, or NSDate as submittable values";
              v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
              v18 = [v16 errorWithDomain:@"BRReportingErrorDomain" code:3 userInfo:v17];
              v19 = v18;

              objc_exception_throw(v18);
            }
          }
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v9);
  }

  configuration = [(BRReportManager *)self configuration];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __35__BRReportManager_reportRTCMetric___block_invoke;
  v20[3] = &unk_278D27388;
  v20[4] = self;
  v21 = metricCopy;
  v14 = metricCopy;
  [BRRTCSession startRTCReportingSessionWithConfiguration:configuration andComplection:v20];

  v15 = *MEMORY[0x277D85DE8];
}

void __35__BRReportManager_reportRTCMetric___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) category];
    v8 = [*(a1 + 40) rtcType];
    v9 = [*(a1 + 40) dictionaryRepresentation];
    [v5 sendMessageWithCategory:v7 type:v8 payload:v9 error:0];
  }

  else
  {
    v9 = br_metriccollection_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_241ECA000, v9, OS_LOG_TYPE_DEFAULT, "RTC session failed with error: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BRRTCPairingReportManager)pairingReportManager
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingReportManager);

  return WeakRetained;
}

@end