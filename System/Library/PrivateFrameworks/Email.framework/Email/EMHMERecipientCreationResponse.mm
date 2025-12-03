@interface EMHMERecipientCreationResponse
+ (id)log;
- (EMHMERecipientCreationResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation EMHMERecipientCreationResponse

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EMHMERecipientCreationResponse_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_93 != -1)
  {
    dispatch_once(&log_onceToken_93, block);
  }

  v2 = log_log_92;

  return v2;
}

void __37__EMHMERecipientCreationResponse_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_92;
  log_log_92 = v1;
}

- (EMHMERecipientCreationResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v24 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dataCopy = data;
  v22.receiver = self;
  v22.super_class = EMHMERecipientCreationResponse;
  v8 = [(AAResponse *)&v22 initWithHTTPResponse:responseCopy data:dataCopy];
  v9 = v8;
  if (v8)
  {
    v10 = *MEMORY[0x1E698BA00];
    if ([*(&v8->super.super.isa + v10) statusCode] == 200)
    {
      v21 = 0;
      v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:&v21];
      v12 = v21;
      if (v12)
      {
        v13 = +[EMHMERecipientCreationRequest log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(EMHMERecipientCreationRequest *)v12 _httpBody];
        }

        v14 = *MEMORY[0x1E698B9F8];
        v15 = v12;
        v16 = *(&v9->super.super.isa + v14);
        *(&v9->super.super.isa + v14) = v15;
      }

      else
      {
        v17 = [v11 objectForKeyedSubscript:@"replyToAddress"];
        replyToAddress = v9->_replyToAddress;
        v9->_replyToAddress = v17;

        v16 = +[EMHMERecipientCreationRequest log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [(EMHMERecipientCreationResponse *)&v9->_replyToAddress initWithHTTPResponse:v11 data:v16];
        }
      }
    }

    else
    {
      v12 = +[EMHMERecipientCreationResponse log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        -[EMHMERecipientCreationResponse initWithHTTPResponse:data:].cold.1((v9 + v10), buf, [*(&v9->super.super.isa + v10) statusCode], v12);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)initWithHTTPResponse:(uint64_t)a3 data:(os_log_t)log .cold.1(uint64_t *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  v4 = *a1;
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = v4;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "EMHMERecipientCreationResponse has non-200 status code: %zd for response: %@", buf, 0x16u);
}

- (void)initWithHTTPResponse:(os_log_t)log data:.cold.3(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1C6655000, log, OS_LOG_TYPE_DEBUG, "Received _replyToAddress:%@ from jsonData: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end