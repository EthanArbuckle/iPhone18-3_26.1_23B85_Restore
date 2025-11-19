@interface PHMediaFormatAssetBundleConversionRequest
- (BOOL)prepareWithError:(id *)a3;
- (BOOL)requiresFormatConversion;
- (id)outputFileType;
- (id)outputPathExtension;
- (void)enqueueSubrequestsOnConversionManager:(id)a3;
- (void)enumerateSubrequests:(id)a3;
@end

@implementation PHMediaFormatAssetBundleConversionRequest

- (id)outputFileType
{
  if (![(PHMediaFormatConversionRequest *)self preflighted])
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1962 description:@"Request must be preflighted"];
  }

  v4 = [(PHMediaFormatConversionRequest *)self source];

  if (!v4)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1963 description:@"Invalid request for output type identifier on request without source"];
  }

  v5 = [(PHMediaFormatConversionRequest *)self source];
  v6 = [v5 fileType];

  return v6;
}

- (id)outputPathExtension
{
  if (![(PHMediaFormatConversionRequest *)self preflighted])
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1953 description:@"Request must be preflighted"];
  }

  v4 = [(PHMediaFormatConversionRequest *)self source];

  if (!v4)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1954 description:@"Invalid request for output path extension on request without source"];
  }

  v5 = [(PHMediaFormatConversionRequest *)self source];
  v6 = [v5 fileURL];
  v7 = [v6 pathExtension];

  return v7;
}

- (BOOL)requiresFormatConversion
{
  if (![(PHMediaFormatConversionRequest *)self preflighted])
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1910 description:@"Request must be preflighted"];
  }

  return 0;
}

- (void)enumerateSubrequests:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(PHMediaFormatAssetBundleConversionRequest *)self subrequests];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)enqueueSubrequestsOnConversionManager:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(PHMediaFormatConversionCompositeRequest *)self propagateRequestOptionsToSubrequests];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(PHMediaFormatAssetBundleConversionRequest *)self subrequests];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v4 enqueueConversionRequest:? completionHandler:?];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __83__PHMediaFormatAssetBundleConversionRequest_enqueueSubrequestsOnConversionManager___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Asset Bundle request subrequest finished: %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (BOOL)prepareWithError:(id *)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [(PHMediaFormatConversionRequest *)self source];
  v5 = [v4 fileURL];

  v6 = [objc_alloc(MEMORY[0x277D3B3F0]) initWithAssetBundleAtURL:v5];
  if (!v6)
  {
    if (a3)
    {
      *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:5 userInfo:0];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = [v5 path];
      v10 = 138412290;
      v11 = v9;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create asset photo bundle with path %@", &v10, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6 != 0;
}

@end