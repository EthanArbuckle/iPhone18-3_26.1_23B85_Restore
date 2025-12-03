@interface VIService(MediaAnalysis)
- (uint64_t)mad_isEncryptedSearchProxyEnabled;
@end

@implementation VIService(MediaAnalysis)

- (uint64_t)mad_isEncryptedSearchProxyEnabled
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v2 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__VIService_MediaAnalysis__mad_isEncryptedSearchProxyEnabled__block_invoke;
  v8[3] = &unk_1E834DFB8;
  v10 = &v11;
  v3 = v2;
  v9 = v3;
  [self checkEncryptedSearchProxyEnabledWithCompletion:v8];
  v4 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v3, v4) && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "checkEncryptedSearchProxyEnabledWithCompletion did not finish within 10s, defaulting to YES", v7, 2u);
  }

  v5 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v5;
}

@end