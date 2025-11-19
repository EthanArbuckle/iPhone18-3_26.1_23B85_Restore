@interface NMAPIRequestOperation
- (NMAPIRequestOperation)initWithRequest:(id)a3;
- (NMAPIRequestOperation)initWithRequest:(id)a3 responseHandler:(id)a4;
- (id)_adjustedPayload:(id)a3 path:(id)a4;
- (id)_readResponseDictionaryFromDisk;
- (id)configurationForLoadingModelDataWithStoreURLBag:(id)a3 error:(id *)a4;
- (void)_personalizeResponse:(id)a3 completion:(id)a4;
- (void)_readResponseDictionaryFromDisk;
- (void)_writeResponseDictionaryToDisk:(id)a3;
- (void)execute;
- (void)produceResponseWithLoadedOutput:(id)a3 completion:(id)a4;
@end

@implementation NMAPIRequestOperation

- (NMAPIRequestOperation)initWithRequest:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NMAPIRequestOperation;
  v5 = [(MPStoreModelRequestOperation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MPStoreModelRequestOperation *)v5 setRequest:v4];
  }

  return v6;
}

- (NMAPIRequestOperation)initWithRequest:(id)a3 responseHandler:(id)a4
{
  v5.receiver = self;
  v5.super_class = NMAPIRequestOperation;
  return [(MPStoreModelRequestOperation *)&v5 initWithRequest:a3 responseHandler:a4];
}

- (id)configurationForLoadingModelDataWithStoreURLBag:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  objc_storeStrong(&self->_storeURLBag, a3);
  v8 = [(MPStoreModelRequestOperation *)self request];
  v9 = [v8 urlComponentsWithStoreURLBag:v7 error:a4];

  if (v9)
  {
    v10 = MEMORY[0x277CCAB70];
    v11 = [v9 URL];
    v12 = [v10 requestWithURL:v11];

    [v12 setHTTPMethod:@"GET"];
    [(MPStoreModelRequestOperation *)self remainingTimeInterval];
    [v12 setTimeoutInterval:?];
    v13 = objc_alloc(MEMORY[0x277CD60D0]);
    v18[0] = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v15 = [v13 initWithURLRequests:v14];
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7101 userInfo:0];
    *a4 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)produceResponseWithLoadedOutput:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = NMLogForCategory(10);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [NMAPIRequestOperation produceResponseWithLoadedOutput:completion:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_alloc(MEMORY[0x277CD6060]);
    v10 = [(NMAPIRequestOperation *)self _adjustedPayload:v6 path:&stru_286C7C680];
    v11 = [v9 initWithPayload:v10];

    v12 = [(MPAsyncOperation *)self userIdentity];
    [v11 setUserIdentity:v12];

    v13 = [MEMORY[0x277CD6058] sharedServerObjectDatabase];
    v37 = 0;
    v14 = [v13 importObjectsFromRequest:v11 options:1 error:&v37];
    v15 = v37;

    if (v15)
    {
      v16 = NMLogForCategory(9);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [NMAPIRequestOperation produceResponseWithLoadedOutput:completion:];
      }

      v7[2](v7, 0, v15);
    }

    else
    {
      v18 = [(MPStoreModelRequestOperation *)self request];
      v19 = objc_alloc_init([v18 responseParserClass]);

      v20 = [v14 annotatedPayload];
      v36 = 0;
      v21 = [v19 resultsWithDictionary:v20 error:&v36];
      v22 = v36;

      if (v22)
      {
        v23 = NMLogForCategory(9);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [NMAPIRequestOperation produceResponseWithLoadedOutput:completion:];
        }

        v7[2](v7, 0, v22);
      }

      else
      {
        v35 = v19;
        v24 = v21;
        v25 = [(MPStoreModelRequestOperation *)self request];
        v26 = [v25 cachePolicy];

        if ((v26 & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          [(NMAPIRequestOperation *)self _writeResponseDictionaryToDisk:v6];
        }

        v27 = [NMAPIDefaultSectionedCollectionDataSource alloc];
        v28 = [(MPStoreModelRequestOperation *)self request];
        v34 = v24;
        v29 = [(NMAPIDefaultSectionedCollectionDataSource *)v27 initWithRequest:v28 results:v24 storeURLBag:self->_storeURLBag];

        v30 = objc_alloc(MEMORY[0x277CD5F40]);
        v31 = [(MPStoreModelRequestOperation *)self request];
        v32 = [v30 initWithRequest:v31];

        v33 = [objc_alloc(MEMORY[0x277CD5DB0]) initWithDataSource:v29];
        [v32 setResults:v33];

        v21 = v34;
        [(NMAPIRequestOperation *)self _personalizeResponse:v32 completion:v7];

        v19 = v35;
      }
    }
  }

  else
  {
    v17 = NMLogForCategory(9);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [NMAPIRequestOperation produceResponseWithLoadedOutput:completion:];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7102 userInfo:0];
    v7[2](v7, 0, v15);
  }
}

- (void)execute
{
  v3 = [(MPStoreModelRequestOperation *)self request];
  v4 = [v3 cachePolicy];

  if (v4 > 1)
  {
    if (v4 != 3)
    {
      if (v4 != 2)
      {
        return;
      }

      v6 = [(NMAPIRequestOperation *)self _readResponseDictionaryFromDisk];

      if (v6)
      {
        v5 = 0;
        goto LABEL_9;
      }
    }

LABEL_11:
    v8.receiver = self;
    v8.super_class = NMAPIRequestOperation;
    [(MPStoreModelRequestOperation *)&v8 execute];
    return;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  if (v4 != 1)
  {
    return;
  }

  v5 = 1;
LABEL_9:
  v7 = [(NMAPIRequestOperation *)self _readResponseDictionaryFromDisk];
  if (v7)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __32__NMAPIRequestOperation_execute__block_invoke;
    v9[3] = &unk_27993B050;
    v9[4] = self;
    [(NMAPIRequestOperation *)self produceResponseWithLoadedOutput:v7 completion:v9];
  }

  else
  {
    if (!v5)
    {
      return;
    }

    [(MPStoreModelRequestOperation *)self _finishWithResponse:0 error:0];
  }
}

- (void)_writeResponseDictionaryToDisk:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MPStoreModelRequestOperation *)self request];
  v6 = [v5 cacheURL];

  if (v6)
  {
    if (v4)
    {
      v20 = 0;
      v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:0 error:&v20];
      v8 = v20;
      if (v8)
      {
        v9 = NMLogForCategory(9);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [NMAPIRequestOperation _writeResponseDictionaryToDisk:];
        }
      }

      else
      {
        v10 = [(MPStoreModelRequestOperation *)self request];
        v11 = [v10 cacheURL];
        v19 = 0;
        v12 = [v7 writeToURL:v11 options:1 error:&v19];
        v9 = v19;

        v13 = NMLogForCategory(9);
        v14 = v13;
        if (v12)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [(MPStoreModelRequestOperation *)self request];
            v16 = [(MPStoreModelRequestOperation *)self request];
            v17 = [v16 cacheURL];
            *buf = 138412546;
            v22 = v15;
            v23 = 2112;
            v24 = v17;
            _os_log_impl(&dword_25B251000, v14, OS_LOG_TYPE_DEFAULT, "[NMAPIRequestOperation] Cached new response for %@ at cacheURL %@", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [NMAPIRequestOperation _writeResponseDictionaryToDisk:];
        }
      }
    }

    else
    {
      v8 = NMLogForCategory(9);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [NMAPIRequestOperation _writeResponseDictionaryToDisk:v8];
      }
    }
  }

  else
  {
    v8 = NMLogForCategory(9);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NMAPIRequestOperation _writeResponseDictionaryToDisk:?];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_readResponseDictionaryFromDisk
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(MPStoreModelRequestOperation *)self request];
  v4 = [v3 cacheURL];

  if (v4)
  {
    v5 = MEMORY[0x277CBEA90];
    v6 = [(MPStoreModelRequestOperation *)self request];
    v7 = [v6 cacheURL];
    v19 = 0;
    v8 = [v5 dataWithContentsOfURL:v7 options:0 error:&v19];
    v9 = v19;

    if (v9)
    {
      v10 = NMLogForCategory(9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [NMAPIRequestOperation _readResponseDictionaryFromDisk];
      }

      v11 = 0;
    }

    else
    {
      v18 = 0;
      v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v18];
      v10 = v18;
      v12 = NMLogForCategory(9);
      v13 = v12;
      if (v10)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [NMAPIRequestOperation _readResponseDictionaryFromDisk];
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(MPStoreModelRequestOperation *)self request];
        v15 = [v14 cacheURL];
        *buf = 138412290;
        v21 = v15;
        _os_log_impl(&dword_25B251000, v13, OS_LOG_TYPE_DEFAULT, "[NMAPIRequestOperation] Found file at cacheURL (%@)", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = NMLogForCategory(9);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NMAPIRequestOperation _writeResponseDictionaryToDisk:?];
    }

    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_adjustedPayload:(id)a3 path:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 mutableCopy];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __47__NMAPIRequestOperation__adjustedPayload_path___block_invoke;
    v24[3] = &unk_27993B078;
    v25 = v8;
    v26 = self;
    v27 = v7;
    v9 = v8;
    [v9 enumerateKeysAndObjectsUsingBlock:v24];
    v10 = [v9 copy];

LABEL_12:
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(NMAPIRequestOperation *)self _adjustedPayload:*(*(&v20 + 1) + 8 * i) path:v7, v20];
          [v9 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v13);
    }

    v10 = [v9 copy];
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 hasSuffix:@"/data/attributes/artwork/url"])
  {
    v17 = [v6 stringByReplacingOccurrencesOfString:@"{w}x{h}{c}.{f}" withString:@"{w}x{h}cc.{f}"];
  }

  else
  {
    v17 = v6;
  }

  v10 = v17;
LABEL_18:

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

void __47__NMAPIRequestOperation__adjustedPayload_path___block_invoke(void *a1, void *a2, void *a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a3;
  v8 = a2;
  v10 = [v6 stringByAppendingFormat:@"/%@", v8];
  v9 = [v5 _adjustedPayload:v7 path:v10];

  [v4 setObject:v9 forKey:v8];
}

- (void)_personalizeResponse:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 results];
  v8 = objc_alloc_init(MEMORY[0x277CD5FD0]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__NMAPIRequestOperation__personalizeResponse_completion___block_invoke;
  v17[3] = &unk_27993B0C8;
  v18 = v8;
  v19 = v7;
  v9 = v7;
  v10 = v8;
  [v9 enumerateSectionsUsingBlock:v17];
  v11 = objc_alloc(MEMORY[0x277CD60A8]);
  v12 = [(MPStoreModelRequestOperation *)self request];
  v13 = [v11 initWithUnpersonalizedRequest:v12 unpersonalizedContentDescriptors:v10];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__NMAPIRequestOperation__personalizeResponse_completion___block_invoke_3;
  v15[3] = &unk_27993B0F0;
  v16 = v6;
  v14 = v6;
  [v13 performWithResponseHandler:v15];
}

void __57__NMAPIRequestOperation__personalizeResponse_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CD60A0];
  v7 = a2;
  v8 = [[v6 alloc] initWithModel:v7 personalizationStyle:1];

  [v5 appendSection:v8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__NMAPIRequestOperation__personalizeResponse_completion___block_invoke_2;
  v10[3] = &unk_27993B0A0;
  v9 = *(a1 + 40);
  v11 = *(a1 + 32);
  [v9 enumerateItemsInSectionAtIndex:a3 usingBlock:v10];
}

void __57__NMAPIRequestOperation__personalizeResponse_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CD60A0];
  v4 = a2;
  v5 = [[v3 alloc] initWithModel:v4 personalizationStyle:1];

  [v2 appendItem:v5];
}

- (void)produceResponseWithLoadedOutput:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_25B251000, v0, OS_LOG_TYPE_DEBUG, "[NMAPIRequestOperation] Loaded output: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)produceResponseWithLoadedOutput:completion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3(&dword_25B251000, v0, v1, "[NMAPIRequestOperation] Expected dictionary for loaded output: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)produceResponseWithLoadedOutput:completion:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3(&dword_25B251000, v0, v1, "[NMAPIRequestOperation] Server Object Database import failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)produceResponseWithLoadedOutput:completion:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3(&dword_25B251000, v0, v1, "[NMAPIRequestOperation] Parsing failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_writeResponseDictionaryToDisk:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 request];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_writeResponseDictionaryToDisk:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 request];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_writeResponseDictionaryToDisk:(void *)a1 .cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 request];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_readResponseDictionaryFromDisk
{
  OUTLINED_FUNCTION_4();
  v9 = *MEMORY[0x277D85DE8];
  v1 = [v0 request];
  v2 = [v1 cacheURL];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end