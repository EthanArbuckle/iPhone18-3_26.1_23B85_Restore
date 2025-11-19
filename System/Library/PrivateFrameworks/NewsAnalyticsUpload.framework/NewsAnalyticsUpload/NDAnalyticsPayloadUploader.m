@interface NDAnalyticsPayloadUploader
- (NDAnalyticsPayloadUploader)init;
- (NDAnalyticsPayloadUploader)initWithAppConfigurationManager:(id)a3;
- (void)uploadPayloadsForInfos:(id)a3 withEnvelopeStore:(id)a4 perPayloadCompletion:(id)a5 completion:(id)a6;
@end

@implementation NDAnalyticsPayloadUploader

- (NDAnalyticsPayloadUploader)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NDAnalyticsPayloadUploader init]";
    v10 = 2080;
    v11 = "NDAnalyticsPayloadUploader.m";
    v12 = 1024;
    v13 = 32;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BDF7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NDAnalyticsPayloadUploader init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NDAnalyticsPayloadUploader)initWithAppConfigurationManager:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsPayloadUploader initWithAppConfigurationManager:];
  }

  v12.receiver = self;
  v12.super_class = NDAnalyticsPayloadUploader;
  v5 = [(NDAnalyticsPayloadUploader *)&v12 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D30F80]) initWithSourceApplicationBundleIdentifier:@"com.apple.news"];
    v7 = [objc_alloc(MEMORY[0x277D30DC0]) initWithEndpointConnection:v6];
    endpointConnection = v5->_endpointConnection;
    v5->_endpointConnection = v7;

    v9 = objc_opt_new();
    uploadQueue = v5->_uploadQueue;
    v5->_uploadQueue = v9;
  }

  return v5;
}

- (void)uploadPayloadsForInfos:(id)a3 withEnvelopeStore:(id)a4 perPayloadCompletion:(id)a5 completion:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v23 = a5;
  v20 = a6;
  if (!v10 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsPayloadUploader uploadPayloadsForInfos:withEnvelopeStore:perPayloadCompletion:completion:];
    if (v11)
    {
      goto LABEL_6;
    }
  }

  else if (v11)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsPayloadUploader uploadPayloadsForInfos:withEnvelopeStore:perPayloadCompletion:completion:];
  }

LABEL_6:
  v12 = v11;
  if (!v23 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsPayloadUploader uploadPayloadsForInfos:withEnvelopeStore:perPayloadCompletion:completion:];
  }

  v13 = [(NDAnalyticsPayloadUploader *)self uploadQueue];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __103__NDAnalyticsPayloadUploader_uploadPayloadsForInfos_withEnvelopeStore_perPayloadCompletion_completion___block_invoke;
        v26[3] = &unk_27997A908;
        v27 = v12;
        v28 = v18;
        v29 = self;
        v30 = v23;
        [v13 enqueueBlock:v26];
      }

      v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v15);
  }

  if (v21)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __103__NDAnalyticsPayloadUploader_uploadPayloadsForInfos_withEnvelopeStore_perPayloadCompletion_completion___block_invoke_4;
    v24[3] = &unk_27997A930;
    v25 = v21;
    [v13 enqueueBlock:v24];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __103__NDAnalyticsPayloadUploader_uploadPayloadsForInfos_withEnvelopeStore_perPayloadCompletion_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) entriesToUpload];
  v6 = [v4 envelopesForEntries:v5];

  v7 = [v6 allValues];
  v8 = [*(a1 + 40) droppedEntriesByReason];
  v9 = [v8 objectForKeyedSubscript:&unk_286D791E0];

  v10 = objc_opt_new();
  [v10 setMajorVersion:0];
  [v10 setMinorVersion:1];
  [v10 setPatchVersion:0];
  [v10 setEnvelopeDroppedCountDueToSizeLimit:{objc_msgSend(v9, "count")}];
  v11 = [v7 mutableCopy];
  [v10 setEnvelopes:v11];

  v12 = MEMORY[0x277CBEA60];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __103__NDAnalyticsPayloadUploader_uploadPayloadsForInfos_withEnvelopeStore_perPayloadCompletion_completion___block_invoke_25;
  v25[3] = &unk_27997A8B8;
  v26 = v7;
  v27 = v9;
  v13 = v9;
  v14 = v7;
  v15 = [v12 fc_array:v25];
  [NAUAnalyticsEnvelopeTracker registerEnvelopeContentTypesAsPreparedForUpload:v15];
  v16 = [*(a1 + 48) endpointConnection];
  v17 = [*(a1 + 40) endpointURL];
  v18 = [*(a1 + 40) valuesByHTTPHeaderField];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __103__NDAnalyticsPayloadUploader_uploadPayloadsForInfos_withEnvelopeStore_perPayloadCompletion_completion___block_invoke_3;
  v22[3] = &unk_27997A8E0;
  v23 = v3;
  v19 = *(a1 + 56);
  v20 = *(a1 + 40);
  v24 = v19;
  v22[4] = v20;
  v21 = v3;
  [v16 uploadEnvelopeBatch:v10 withURL:v17 valuesByHTTPHeaderField:v18 completion:v22];
}

void __103__NDAnalyticsPayloadUploader_uploadPayloadsForInfos_withEnvelopeStore_perPayloadCompletion_completion___block_invoke_25(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) fc_arrayByTransformingWithBlock:&__block_literal_global_2];
  [v8 addObjectsFromArray:v3];

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = NDAnalyticsEnvelopeContentTypesFromEntries(v4);
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MEMORY[0x277CBEBF8];
    }

    [v8 addObjectsFromArray:v7];
  }
}

uint64_t __103__NDAnalyticsPayloadUploader_uploadPayloadsForInfos_withEnvelopeStore_perPayloadCompletion_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 contentType];

  return [v2 numberWithInt:v3];
}

void __103__NDAnalyticsPayloadUploader_uploadPayloadsForInfos_withEnvelopeStore_perPayloadCompletion_completion___block_invoke_3(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[5];
  v5 = *(v4 + 16);
  v7 = a3;
  v5(v4);
  v6 = a1[4];
  (*(a1[6] + 16))();
}

uint64_t __103__NDAnalyticsPayloadUploader_uploadPayloadsForInfos_withEnvelopeStore_perPayloadCompletion_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a2);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)initWithAppConfigurationManager:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "appConfigurationManager", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)uploadPayloadsForInfos:withEnvelopeStore:perPayloadCompletion:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "payloadInfos", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)uploadPayloadsForInfos:withEnvelopeStore:perPayloadCompletion:completion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "envelopeStore", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)uploadPayloadsForInfos:withEnvelopeStore:perPayloadCompletion:completion:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "perPayloadCompletion", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end