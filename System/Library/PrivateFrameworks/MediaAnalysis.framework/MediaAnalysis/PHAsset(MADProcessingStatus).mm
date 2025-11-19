@interface PHAsset(MADProcessingStatus)
- (id)mad_nextAttemptDateForStatus:()MADProcessingStatus currentAttemptDate:attemptCount:;
@end

@implementation PHAsset(MADProcessingStatus)

- (id)mad_nextAttemptDateForStatus:()MADProcessingStatus currentAttemptDate:attemptCount:
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (a5 >= 6)
  {
    v9 = 6;
  }

  else
  {
    v9 = a5;
  }

  v10 = [a1 photoLibrary];
  v11 = [v10 vcp_isSyndicationLibrary];

  if ((v11 & 1) == 0 && (a3 == 7 || a3 == 2))
  {
    if (a5 >= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = a5;
    }
  }

  v12 = [v8 dateByAddingTimeInterval:-[PHAsset(MADProcessingStatus) mad_nextAttemptDateForStatus:currentAttemptDate:attemptCount:]::kBackoffInterval[v9]];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v13 = +[VCPLogManager dateFormatterDateTime];
    v14 = [v13 stringFromDate:v12];
    v16 = 134218242;
    v17 = a5;
    v18 = 2112;
    v19 = v14;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "With %lu attempts, next attempt date will be: %@", &v16, 0x16u);
  }

  return v12;
}

@end