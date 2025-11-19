@interface MADComputeService(Photos)
- (id)performRequests:()Photos assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:;
- (id)scheduleRequests:()Photos assets:photoLibrary:options:error:;
@end

@implementation MADComputeService(Photos)

- (id)performRequests:()Photos assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:
{
  v92 = *MEMORY[0x277D85DE8];
  v60 = a3;
  v14 = a4;
  v55 = a5;
  v58 = a7;
  v57 = a8;
  v59 = a9;
  v15 = MEMORY[0x277CCACA8];
  v16 = MEMORY[0x277CCABB0];
  v17 = [MEMORY[0x277CBEAA8] now];
  v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "hash")}];
  v19 = [v18 stringValue];
  v20 = [v15 stringWithFormat:@"OnDemand-%@", v19];

  v62 = v20;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Request: %@ %@ with assets %@", v20, v60, v14];
  v61 = a1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v89 = @"[MADComputeService+Photos]";
    v90 = 2112;
    v91 = v21;
    _os_log_impl(&dword_25845A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@ %@", buf, 0x16u);
  }

  v56 = v21;
  v22 = [MEMORY[0x277CBEB38] dictionary];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v23 = v14;
  v24 = [v23 countByEnumeratingWithState:&v77 objects:v87 count:16];
  if (v24)
  {
    v25 = *v78;
    v26 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v78 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v77 + 1) + 8 * i);
        v29 = [v28 localIdentifier];
        v30 = v29 == 0;

        if (v30)
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v89 = @"[MADComputeService+Photos]";
            v90 = 2112;
            v91 = v28;
            _os_log_error_impl(&dword_25845A000, v26, OS_LOG_TYPE_ERROR, "%@ Asset (%@) without localIdentifier; skip", buf, 0x16u);
          }
        }

        else
        {
          v31 = [v28 localIdentifier];
          [v22 setObject:v28 forKeyedSubscript:v31];
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v77 objects:v87 count:16];
    }

    while (v24);
  }

  v75 = 0;
  v76 = 0;
  v32 = [a1 extensionDataForResultDirectoryURL:&v76 error:&v75];
  v33 = v76;
  v34 = v75;
  if (!v33)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MADComputeService(Photos) performRequests:assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:];
    }

    v36 = [v34 copy];
    v59[2](v59, v62, v36);
    goto LABEL_26;
  }

  v35 = [a1 registerProgressHandler:v58 requestID:v62];
  if (v35)
  {
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Failed to register progressHandler (%d)", @"[MADComputeService+Photos]", v35];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MADComputeService(Photos) performRequests:assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:];
    }

    [a1 deregisterProgressHandlerForRequestID:v62];
    [a1 deregisterResultsHandlerForRequestID:v62];
    v85 = *MEMORY[0x277CCA450];
    v86 = v36;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
    v38 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v35 userInfo:v37];
    v59[2](v59, 0, v38);

LABEL_26:
    v42 = 0;
    goto LABEL_27;
  }

  v39 = [a1 registerResultsHandler:v57 requestID:v62];
  if (v39)
  {
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Failed to register resultsHandler (%d)", @"[MADComputeService+Photos]", v39];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MADComputeService(Photos) performRequests:assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:];
    }

    [a1 deregisterProgressHandlerForRequestID:v62];
    [a1 deregisterResultsHandlerForRequestID:v62];
    v83 = *MEMORY[0x277CCA450];
    v84 = v36;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    v41 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v39 userInfo:v40];
    v59[2](v59, 0, v41);

    goto LABEL_26;
  }

  v45 = [a1 connection];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __122__MADComputeService_Photos__performRequests_assets_photoLibrary_options_progressHandler_resultsHandler_completionHandler___block_invoke;
  v70[3] = &unk_279899108;
  v71 = @"[MADComputeService+Photos]";
  v72 = a1;
  v42 = v62;
  v73 = v42;
  v46 = v59;
  v74 = v46;
  v63 = [v45 remoteObjectProxyWithErrorHandler:v70];

  if (v63)
  {
    v54 = [v22 allKeys];
    v47 = [v55 photoLibraryURL];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __122__MADComputeService_Photos__performRequests_assets_photoLibrary_options_progressHandler_resultsHandler_completionHandler___block_invoke_208;
    v64[3] = &unk_279899130;
    v65 = @"[MADComputeService+Photos]";
    v66 = v56;
    v67 = v61;
    v48 = v42;
    v68 = v48;
    v69 = v46;
    [v63 requestProcessing:v60 localIdentifiers:v54 photoLibraryURL:v47 resultDirectoryURL:v33 resultExtensionData:v32 requestID:v48 reply:v64];

    v49 = v48;
  }

  else
  {
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Failed to connect to compute service", @"[MADComputeService+Photos]"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MADComputeService(Photos) performRequests:assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:];
    }

    v81 = *MEMORY[0x277CCA450];
    v82 = v50;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    [v61 deregisterProgressHandlerForRequestID:v42];
    [v61 deregisterResultsHandlerForRequestID:v42];
    v52 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-18 userInfo:v51];
    v46[2](v46, v42, v52);

    v53 = v42;
  }

  v36 = v71;
LABEL_27:

  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

- (id)scheduleRequests:()Photos assets:photoLibrary:options:error:
{
  v73 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v42 = a4;
  v39 = a5;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy_;
  v64 = __Block_byref_object_dispose_;
  v9 = MEMORY[0x277CCACA8];
  v10 = MEMORY[0x277CCABB0];
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "hash")}];
  v13 = [v12 stringValue];
  v65 = [v9 stringWithFormat:@"Offline-%@", v13];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Schedule: %@ %@ on assets %@", v61[5], v44, v42];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v70 = @"[MADComputeService+Photos]";
    v71 = 2112;
    v72 = v14;
    _os_log_impl(&dword_25845A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@[Start] %@", buf, 0x16u);
  }

  v40 = v14;
  v15 = [MEMORY[0x277CBEB38] dictionary];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v16 = v42;
  v17 = [v16 countByEnumeratingWithState:&v56 objects:v68 count:16];
  if (v17)
  {
    v18 = *v57;
    v19 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v57 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v56 + 1) + 8 * i);
        v22 = [v21 localIdentifier];
        v23 = v22 == 0;

        if (v23)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v70 = @"[MADComputeService+Photos]";
            v71 = 2112;
            v72 = v21;
            _os_log_error_impl(&dword_25845A000, v19, OS_LOG_TYPE_ERROR, "%@ Asset (%@) without localIdentifier; skip", buf, 0x16u);
          }
        }

        else
        {
          v24 = [v21 localIdentifier];
          [v15 setObject:v21 forKeyedSubscript:v24];
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v56 objects:v68 count:16];
    }

    while (v17);
  }

  v54 = 0;
  v55 = 0;
  v25 = [a1 extensionDataForResultDirectoryURL:&v55 error:&v54];
  v26 = v55;
  v27 = v54;
  if (v26)
  {
    v28 = [a1 connection];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __80__MADComputeService_Photos__scheduleRequests_assets_photoLibrary_options_error___block_invoke;
    v50[3] = &unk_279899158;
    v51 = @"[MADComputeService+Photos]";
    v52 = &v60;
    v53 = a7;
    v29 = [v28 synchronousRemoteObjectProxyWithErrorHandler:v50];

    if (v29)
    {
      v30 = [v15 allKeys];
      v31 = [v39 photoLibraryURL];
      v32 = v61[5];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __80__MADComputeService_Photos__scheduleRequests_assets_photoLibrary_options_error___block_invoke_218;
      v45[3] = &unk_279899180;
      v46 = @"[MADComputeService+Photos]";
      v47 = v40;
      v48 = &v60;
      v49 = a7;
      [v29 scheduleProcessing:v44 localIdentifiers:v30 photoLibraryURL:v31 resultDirectoryURL:v26 resultExtensionData:v25 requestID:v32 reply:v45];

      v33 = v46;
    }

    else
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Failed to connect to compute service", @"[MADComputeService+Photos]"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MADComputeService(Photos) performRequests:assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:];
      }

      if (a7)
      {
        v66 = *MEMORY[0x277CCA450];
        v67 = v33;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        *a7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-18 userInfo:v35];
      }

      v36 = v61[5];
      v61[5] = 0;
    }

    v34 = v61[5];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MADComputeService(Photos) performRequests:assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:];
    }

    v34 = 0;
    if (a7)
    {
      *a7 = [v27 copy];
    }
  }

  _Block_object_dispose(&v60, 8);
  v37 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)performRequests:()Photos assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)performRequests:()Photos assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end