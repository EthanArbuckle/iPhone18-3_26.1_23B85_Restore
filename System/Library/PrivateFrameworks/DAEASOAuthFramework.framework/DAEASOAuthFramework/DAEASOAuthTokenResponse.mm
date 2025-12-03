@interface DAEASOAuthTokenResponse
- (DAEASOAuthTokenResponse)initWithData:(id)data urlResponse:(id)response error:(id)error;
- (id)usernameFromJWTToken:(id)token;
@end

@implementation DAEASOAuthTokenResponse

- (DAEASOAuthTokenResponse)initWithData:(id)data urlResponse:(id)response error:(id)error
{
  v59 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  v11 = DALoggingwithCategory();
  v12 = MEMORY[0x277D03988];
  v13 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v11, v13))
  {
    *buf = 134218498;
    v54 = [dataCopy length];
    v55 = 2112;
    v56 = responseCopy;
    v57 = 2112;
    v58 = errorCopy;
    _os_log_impl(&dword_247E05000, v11, v13, "DAEASOAuthOAuth2TokenResponse initWithData: %lu length urlResponse: %@ error: %@", buf, 0x20u);
  }

  v52.receiver = self;
  v52.super_class = DAEASOAuthTokenResponse;
  v14 = [(DAEASOAuthTokenResponse *)&v52 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_error, error);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = DALoggingwithCategory();
      v25 = *(v12 + 3);
      if (os_log_type_enabled(v16, v25))
      {
        *buf = 0;
        _os_log_impl(&dword_247E05000, v16, v25, "DAEASOAuthOAuth2TokenResponse response is not NSHTTPURLResponse. Game over.", buf, 2u);
      }

      goto LABEL_15;
    }

    v16 = responseCopy;
    v15->_statusCode = [v16 statusCode];
    v17 = DALoggingwithCategory();
    if (os_log_type_enabled(v17, v13))
    {
      statusCode = v15->_statusCode;
      *buf = 134217984;
      v54 = statusCode;
      _os_log_impl(&dword_247E05000, v17, v13, "DAEASOAuthOAuth2TokenResponse httpResponse status code %ld", buf, 0xCu);
    }

    if (v15->_error)
    {
LABEL_15:

      goto LABEL_16;
    }

    v51 = 0;
    v19 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v51];
    v20 = v51;
    if (v20)
    {
      error = v15->_error;
      v15->_error = v20;
      v22 = v20;

      v23 = DALoggingwithCategory();
      v24 = *(v12 + 3);
      if (os_log_type_enabled(v23, v24))
      {
        *buf = 138412290;
        v54 = v22;
        _os_log_impl(&dword_247E05000, v23, v24, "DAEASOAuthTokenResponse response JSON data does not represent NSDictionary. Game over. %@", buf, 0xCu);
      }

      goto LABEL_12;
    }

    objc_storeStrong(&v15->_data, v19);
    v28 = [(NSDictionary *)v15->_data objectForKeyedSubscript:@"error"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v30 = [(NSDictionary *)v15->_data objectForKeyedSubscript:@"error_description"];
      errorMessage = v15->_errorMessage;
      v15->_errorMessage = v30;

      v22 = DALoggingwithCategory();
      v32 = *(v12 + 3);
      if (os_log_type_enabled(v22, v32))
      {
        v33 = v15->_errorMessage;
        *buf = 138543618;
        v54 = v33;
        v55 = 2112;
        v56 = v19;
        v34 = "DAEASOAuthTokenResponse received an error: %{public}@ %@";
        v35 = v22;
        v36 = v32;
        v37 = 22;
LABEL_25:
        _os_log_impl(&dword_247E05000, v35, v36, v34, buf, v37);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [(NSDictionary *)v15->_data objectForKeyedSubscript:@"id_token"];
        v38 = [(NSDictionary *)v15->_data objectForKeyedSubscript:@"id_token"];
        idToken = v15->_idToken;
        v15->_idToken = v38;

        if (v22)
        {
          v40 = [(DAEASOAuthTokenResponse *)v15 usernameFromJWTToken:v22];
          user_id = v15->_user_id;
          v15->_user_id = v40;

          v42 = [(NSDictionary *)v15->_data objectForKeyedSubscript:@"access_token"];
          accessToken = v15->_accessToken;
          v15->_accessToken = v42;

          v44 = [(NSDictionary *)v15->_data objectForKeyedSubscript:@"refresh_token"];
          refreshToken = v15->_refreshToken;
          v15->_refreshToken = v44;

          v46 = MEMORY[0x277CBEAA8];
          v47 = [(NSDictionary *)v15->_data objectForKeyedSubscript:@"expires_in"];
          v48 = [v46 dateWithTimeIntervalSinceNow:{objc_msgSend(v47, "integerValue")}];
          expiryDate = v15->_expiryDate;
          v15->_expiryDate = v48;
        }

        goto LABEL_12;
      }

      v22 = DALoggingwithCategory();
      v50 = *(v12 + 3);
      if (os_log_type_enabled(v22, v50))
      {
        *buf = 0;
        v34 = "DAEASOAuthOAuth2TokenResponse response JSON data does not represent NSDictionary.";
        v35 = v22;
        v36 = v50;
        v37 = 2;
        goto LABEL_25;
      }
    }

LABEL_12:

    goto LABEL_15;
  }

LABEL_16:

  v26 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)usernameFromJWTToken:(id)token
{
  v3 = [token componentsSeparatedByString:@"."];
  v4 = [v3 objectAtIndexedSubscript:1];

  if (([v4 length] & 3) != 0)
  {
    v5 = [&stru_2859ED5C8 stringByPaddingToLength:(4 * vcvtpd_s64_f64(vcvtd_n_f64_u64(objc_msgSend(v4 withString:"length") startingAtIndex:{2uLL))) - objc_msgSend(v4, "length"), @"=", 0}];
    v6 = [v4 stringByAppendingString:v5];

    v4 = v6;
  }

  v7 = [v4 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];

  v8 = [v7 stringByReplacingOccurrencesOfString:@"-" withString:@"+"];

  v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v8 options:0];
  if (v9)
  {
    v17 = 0;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v9 options:0 error:&v17];
    v11 = [v10 objectForKeyedSubscript:@"preferred_username"];
    v12 = v11;
    if (v11 && [v11 mf_isLegalEmailAddress])
    {
      v13 = v12;
    }

    else
    {
      v13 = [v10 objectForKeyedSubscript:@"email"];
    }

    v14 = v13;
  }

  else
  {
    v10 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v15))
    {
      *buf = 0;
      _os_log_impl(&dword_247E05000, v10, v15, "Can Not Retrieve E-mail address from DAEASOAuthTokenResponse response.", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

@end