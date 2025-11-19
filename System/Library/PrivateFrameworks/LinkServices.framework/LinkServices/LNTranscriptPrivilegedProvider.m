@interface LNTranscriptPrivilegedProvider
@end

@implementation LNTranscriptPrivilegedProvider

void __109__LNTranscriptPrivilegedProvider_transcriptPublisherWithStreamName_fromDate_toDate_maxEvents_reversed_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_ERROR, "Error when executing requestReadAccessForStream. error: %@", &v9, 0xCu);
  }

  v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"LNTranscriptErrorDomain" code:1004 userInfo:0];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x1E69E9840];
}

void __109__LNTranscriptPrivilegedProvider_transcriptPublisherWithStreamName_fromDate_toDate_maxEvents_reversed_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __107__LNTranscriptPrivilegedProvider_donateActionRecordData_bundleIdentifier_timestamp_writeImmediately_reply___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "XPC Error when executing donateActionRecordData. error: %@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = getLNLogCategoryExecution();
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v6, OS_SIGNPOST_INTERVAL_END, v7, "donating", "", &v9, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __107__LNTranscriptPrivilegedProvider_donateActionRecordData_bundleIdentifier_timestamp_writeImmediately_reply___block_invoke_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_INFO, "Error when executing donateActionRecordData. error: %@", &v9, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
  v5 = getLNLogCategoryExecution();
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_19763D000, v6, OS_SIGNPOST_INTERVAL_END, v7, "donating", "", &v9, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end