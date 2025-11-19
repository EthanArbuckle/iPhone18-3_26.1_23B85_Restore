@interface MADComputeService
@end

@implementation MADComputeService

void __122__MADComputeService_Photos__performRequests_assets_photoLibrary_options_progressHandler_resultsHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __122__MADComputeService_Photos__performRequests_assets_photoLibrary_options_progressHandler_resultsHandler_completionHandler___block_invoke_cold_1(a1);
  }

  [*(a1 + 40) deregisterProgressHandlerForRequestID:*(a1 + 48)];
  [*(a1 + 40) deregisterResultsHandlerForRequestID:*(a1 + 48)];
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = [v3 copy];
  (*(v4 + 16))(v4, v5, v6);
}

void __122__MADComputeService_Photos__performRequests_assets_photoLibrary_options_progressHandler_resultsHandler_completionHandler___block_invoke_208(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_25845A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@[Finish] %@", &v10, 0x16u);
  }

  [*(a1 + 48) deregisterProgressHandlerForRequestID:*(a1 + 56)];
  [*(a1 + 48) deregisterResultsHandlerForRequestID:*(a1 + 56)];
  v7 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8 = [v3 copy];
  (*(v6 + 16))(v6, v7, v8);

  v9 = *MEMORY[0x277D85DE8];
}

void __80__MADComputeService_Photos__scheduleRequests_assets_photoLibrary_options_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __122__MADComputeService_Photos__performRequests_assets_photoLibrary_options_progressHandler_resultsHandler_completionHandler___block_invoke_cold_1(a1);
  }

  if (*(a1 + 48))
  {
    **(a1 + 48) = [v3 copy];
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void __80__MADComputeService_Photos__scheduleRequests_assets_photoLibrary_options_error___block_invoke_218(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_25845A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@[Finish] %@", &v11, 0x16u);
  }

  if ((a2 & 1) == 0)
  {
    if (*(a1 + 56))
    {
      **(a1 + 56) = [v5 copy];
    }

    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __122__MADComputeService_Photos__performRequests_assets_photoLibrary_options_progressHandler_resultsHandler_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

@end