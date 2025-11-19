@interface C2WarmRequest
- (C2WarmRequest)initWithData:(id)a3 callback:(id)a4;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
- (void)send;
@end

@implementation C2WarmRequest

- (C2WarmRequest)initWithData:(id)a3 callback:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v40.receiver = self;
  v40.super_class = C2WarmRequest;
  v8 = [(C2WarmRequest *)&v40 init];
  if (!v8)
  {
    goto LABEL_38;
  }

  if (!v6)
  {
    v15 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_ERROR, "Missing data, cannot init C2WarmRequest", buf, 2u);
    }

    goto LABEL_34;
  }

  v39 = 0;
  v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v39];
  v10 = v39;
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v13 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v11;
      v14 = "Error deserializing request options with error %@";
LABEL_20:
      _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v16 = [v9 invokedURL];

  if (v16)
  {
    v17 = [MEMORY[0x277CCAD78] UUID];
    v18 = [v17 UUIDString];

    if (v18)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"C2WarmRequest requestUUID:%@", v18];
      if (v19)
      {
        v20 = v19;
        [v9 setIdentifier:v19];
        v21 = MEMORY[0x277CCACE0];
        v22 = [v9 invokedURL];
        v23 = [v21 componentsWithURL:v22 resolvingAgainstBaseURL:1];

        if (v23)
        {
          [v23 setQueryItems:MEMORY[0x277CBEBF8]];
          [v23 setPath:@"/asset/init"];
          v24 = [v23 URL];
          if (v24)
          {
            v25 = v24;
            v26 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v24];
            v27 = v26;
            if (v26)
            {
              [v26 setValue:v18 forHTTPHeaderField:@"x-apple-request-uuid"];
              objc_storeStrong(&v8->_warmRequest, v27);
              v28 = MEMORY[0x259C67460](v7);
              callback = v8->_callback;
              v8->_callback = v28;

              objc_storeStrong(&v8->_warmOptions, v9);
            }

            else
            {
              v36 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v42 = v25;
                _os_log_impl(&dword_2577D8000, v36, OS_LOG_TYPE_ERROR, "Error initializing urlRequest with warmURL %@", buf, 0xCu);
              }
            }

            if (!v27)
            {
              goto LABEL_34;
            }

LABEL_38:
            v35 = v8;
            goto LABEL_39;
          }

          v34 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v42 = v23;
            _os_log_impl(&dword_2577D8000, v34, OS_LOG_TYPE_ERROR, "Error initializing warmURL with urlComponents %@", buf, 0xCu);
          }
        }

        else
        {
          v32 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = [v9 invokedURL];
            *buf = 138412290;
            v42 = v33;
            _os_log_impl(&dword_2577D8000, v32, OS_LOG_TYPE_ERROR, "Error initializing urlComponents with url %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v31 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_2577D8000, v31, OS_LOG_TYPE_ERROR, "Error initializing requestIdentifier", buf, 2u);
        }
      }
    }

    else
    {
      v30 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2577D8000, v30, OS_LOG_TYPE_ERROR, "Error initializing requestUUID", buf, 2u);
      }
    }

    goto LABEL_34;
  }

  v13 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v42 = v9;
    v14 = "Request options missing invokedURL %@ required for warming.";
    goto LABEL_20;
  }

LABEL_21:

LABEL_34:
  v35 = 0;
LABEL_39:

  v37 = *MEMORY[0x277D85DE8];
  return v35;
}

- (void)send
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"mmcs_http_warm.m" lineNumber:80 description:@"warmOptions must not be nil."];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v14 = v9;
    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 38, v9, @"Encountered Network Error on Warm Request", v10, v11, v12, v13, v17);
  }

  else
  {
    error_with_underlying_error = 0;
  }

  callback = self->_callback;
  if (callback)
  {
    callback[2](callback, error_with_underlying_error);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"mmcs_http_warm.m" lineNumber:130 description:@"Unexpected callback."];
}

@end