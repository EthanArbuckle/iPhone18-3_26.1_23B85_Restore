@interface _DPAppleIntelligenceTransparencyLog
- (BOOL)writeToDiskWithError:(id *)error;
- (_DPAppleIntelligenceTransparencyLog)initWithDonations:(id)donations error:(id *)error;
@end

@implementation _DPAppleIntelligenceTransparencyLog

- (_DPAppleIntelligenceTransparencyLog)initWithDonations:(id)donations error:(id *)error
{
  v5 = [_DPLog framework:donations];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_DPAppleIntelligenceTransparencyLog initWithDonations:v5 error:?];
  }

  return 0;
}

- (BOOL)writeToDiskWithError:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  donations = [(_DPAppleIntelligenceTransparencyLog *)self donations];
  v4 = [donations countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(donations);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [[_DPAppleIntelligenceReportParameters alloc] initWithDonation:v8];
        v10 = v9;
        if (v9)
        {
          v11 = [(_DPAppleIntelligenceReportParameters *)v9 key];
          taskExpiration = [(_DPAppleIntelligenceReportParameters *)v10 taskExpiration];
          minBatchSize = [(_DPAppleIntelligenceReportParameters *)v10 minBatchSize];
          [(_DPAppleIntelligenceReportParameters *)v10 targetCentralEpsilon];
          v15 = v14;
          [(_DPAppleIntelligenceReportParameters *)v10 targetCentralDelta];
          v17 = v16;
          [(_DPAppleIntelligenceReportParameters *)v10 localEpsilon];
          [_DPAppleIntelligenceReportShim sendLogWithKey:v11 taskExpiration:taskExpiration minBatchSize:minBatchSize targetCentralEpsilon:[(_DPAppleIntelligenceReportParameters *)v10 privateAccessToken] targetCentralDelta:[(_DPAppleIntelligenceReportParameters *)v10 ohttp] localEpsilon:v15 privateAccessToken:v17 ohttp:v18];
        }

        else
        {
          v11 = +[_DPLog framework];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v8 key];
            *buf = 138412290;
            v27 = v19;
            _os_log_impl(&dword_22622D000, v11, OS_LOG_TYPE_DEFAULT, "skip log for collectionID=%@: invalid metadata", buf, 0xCu);
          }
        }
      }

      v5 = [donations countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v5);
  }

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

@end