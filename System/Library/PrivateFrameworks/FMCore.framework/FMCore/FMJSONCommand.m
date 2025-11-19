@interface FMJSONCommand
- (FMJSONCommand)init;
- (NSDictionary)jsonResponseDictionary;
- (NSDictionary)serverAlertInfo;
- (id)body;
- (id)headers;
- (void)body;
- (void)sendRequest;
@end

@implementation FMJSONCommand

- (FMJSONCommand)init
{
  v5.receiver = self;
  v5.super_class = FMJSONCommand;
  v2 = [(FMCommandBase *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.icloud.fmcore.FMJSONCommand.response", 0);
    [(FMJSONCommand *)v2 setResponseQueue:v3];
  }

  return v2;
}

- (void)sendRequest
{
  [(FMJSONCommand *)self set_hasParsedResponseBody:0];
  [(FMJSONCommand *)self set_responseBodyDict:0];
  [(FMJSONCommand *)self setJsonResponseParseError:0];
  v3.receiver = self;
  v3.super_class = FMJSONCommand;
  [(FMCommandBase *)&v3 sendRequest];
}

- (id)headers
{
  v9.receiver = self;
  v9.super_class = FMJSONCommand;
  v3 = [(FMCommandBase *)&v9 headers];
  v4 = [(FMJSONCommand *)self _requestBodyDict];
  if (v4)
  {
    [(FMJSONCommand *)self set_requestBodyDict:v4];
  }

  else
  {
    v5 = [(FMJSONCommand *)self jsonBodyDictionary];
    [(FMJSONCommand *)self set_requestBodyDict:v5];
  }

  v6 = [(FMJSONCommand *)self _requestBodyDict];
  v7 = [v6 count];

  if (v7)
  {
    [v3 setObject:@"application/json; charset=utf-8" forKeyedSubscript:@"Content-Type"];
  }

  return v3;
}

- (id)body
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEA90] data];
  v4 = [(FMJSONCommand *)self _requestBodyDict];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(FMJSONCommand *)self jsonBodyDictionary];
  }

  v7 = v6;

  v8 = LogCategory_NetworkingVerbose();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v16 = self;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_24A2EE000, v8, OS_LOG_TYPE_INFO, "[%p] request_body: %@", buf, 0x16u);
  }

  if ([v7 count])
  {
    v14 = 0;
    v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v7 options:0 error:&v14];
    v10 = v14;

    if (v10)
    {
      v11 = LogCategory_Networking();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(FMJSONCommand *)self body];
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"[%@] JSON Creation error: %@", self, v10}];
    }

    v3 = v9;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSDictionary)jsonResponseDictionary
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = MEMORY[0x277CBEC10];
  v3 = [(FMJSONCommand *)self responseQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__FMJSONCommand_jsonResponseDictionary__block_invoke;
  v6[3] = &unk_278FD9A20;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __39__FMJSONCommand_jsonResponseDictionary__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _hasParsedResponseBody];
  v4 = *v2;
  if (!v3)
  {
    v9 = [v4 valueForResponseHTTPHeader:@"Content-Type"];
    v10 = [*v2 responseData];
    if ([v10 length])
    {
      v11 = [v9 lowercaseString];
      v12 = [v11 rangeOfString:@"json"];

      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_16:
        [*(a1 + 32) set_hasParsedResponseBody:1];
        [*(a1 + 32) set_responseBodyDict:*(*(*(a1 + 40) + 8) + 40)];

        v27 = *MEMORY[0x277D85DE8];
        return;
      }

      v13 = MEMORY[0x277CCAAA0];
      v14 = [*(a1 + 32) responseData];
      v28 = 0;
      v15 = [v13 JSONObjectWithData:v14 options:0 error:&v28];
      v10 = v28;
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      v18 = LogCategory_NetworkingVerbose();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 32);
        v20 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 134218242;
        v30 = v19;
        v31 = 2112;
        v32 = v20;
        _os_log_impl(&dword_24A2EE000, v18, OS_LOG_TYPE_INFO, "[%p] response_body: %@", buf, 0x16u);
      }

      if (v10)
      {
        [*v2 setJsonResponseParseError:v10];
        v21 = LogCategory_ServerError();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __39__FMJSONCommand_jsonResponseDictionary__block_invoke_cold_1(v2, v10, v21);
        }

        v22 = LogCategory_ServerError();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = *v2;
          v24 = objc_alloc(MEMORY[0x277CCACA8]);
          v25 = [*v2 responseData];
          v26 = [v24 initWithData:v25 encoding:4];
          *buf = 134218242;
          v30 = v23;
          v31 = 2112;
          v32 = v26;
          _os_log_impl(&dword_24A2EE000, v22, OS_LOG_TYPE_INFO, "[%p] Actual JSON that failed to parse: %@", buf, 0x16u);
        }
      }
    }

    goto LABEL_16;
  }

  v5 = [v4 _responseBodyDict];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = *MEMORY[0x277D85DE8];

  MEMORY[0x2821F96F8]();
}

- (NSDictionary)serverAlertInfo
{
  v2 = [(FMJSONCommand *)self jsonResponseDictionary];
  v3 = [v2 objectForKeyedSubscript:@"alert"];
  v4 = [v3 fm_nullToNil];

  return v4;
}

- (void)body
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0_1(&dword_24A2EE000, a2, a3, "[%@] JSON Creation error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __39__FMJSONCommand_jsonResponseDictionary__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0_1(&dword_24A2EE000, a2, a3, "[%p] JSON parse error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end