@interface ESExchangeEmptyBearerResponse
- (ESExchangeEmptyBearerResponse)initWithData:(id)data urlResponse:(id)response error:(id)error;
@end

@implementation ESExchangeEmptyBearerResponse

- (ESExchangeEmptyBearerResponse)initWithData:(id)data urlResponse:(id)response error:(id)error
{
  v42 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  v38.receiver = self;
  v38.super_class = ESExchangeEmptyBearerResponse;
  v9 = [(ESExchangeEmptyBearerResponse *)&v38 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_error, error);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = responseCopy;
      v10->_statusCode = [v11 statusCode];
      v12 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v12, v13))
      {
        statusCode = v10->_statusCode;
        *buf = 134217984;
        v41 = statusCode;
        _os_log_impl(&dword_247E05000, v12, v13, "ESExchangeEmptyBearerResponse httpResponse status code %ld", buf, 0xCu);
      }

      if (!v10->_error)
      {
        v32 = errorCopy;
        v33 = responseCopy;
        v31 = v11;
        [v11 valueForHTTPHeaderField:@"Www-Authenticate"];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v30 = v37 = 0u;
        v15 = [v30 componentsSeparatedByString:{@", "}];
        v16 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v35;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v35 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v34 + 1) + 8 * i);
              whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
              v22 = [v20 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

              if ([v22 hasPrefix:@"authorization_uri"])
              {
                v23 = [v20 componentsSeparatedByString:@"="];
                v24 = [v23 objectAtIndexedSubscript:1];

                v25 = [v24 stringByReplacingOccurrencesOfString:@"" withString:&stru_2859ED5C8];
                authURI = v10->_authURI;
                v10->_authURI = v25;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
          }

          while (v17);
        }

        errorCopy = v32;
        responseCopy = v33;
        v11 = v31;
      }
    }

    else
    {
      v11 = DALoggingwithCategory();
      v27 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v11, v27))
      {
        *buf = 0;
        _os_log_impl(&dword_247E05000, v11, v27, "ESExchangeEmptyBearerResponse response is not an NSHTTPURLResponse.", buf, 2u);
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v10;
}

@end