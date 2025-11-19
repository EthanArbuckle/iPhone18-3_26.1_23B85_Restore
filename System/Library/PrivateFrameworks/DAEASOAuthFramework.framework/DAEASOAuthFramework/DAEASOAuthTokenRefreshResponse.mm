@interface DAEASOAuthTokenRefreshResponse
- (DAEASOAuthTokenRefreshResponse)initWithData:(id)a3 urlResponse:(id)a4 error:(id)a5;
@end

@implementation DAEASOAuthTokenRefreshResponse

- (DAEASOAuthTokenRefreshResponse)initWithData:(id)a3 urlResponse:(id)a4 error:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DALoggingwithCategory();
  v12 = MEMORY[0x277D03988];
  v13 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v11, v13))
  {
    *buf = 134218242;
    v51 = [v8 length];
    v52 = 2112;
    v53 = v10;
    _os_log_impl(&dword_247E05000, v11, v13, "DAEASOAuthTokenRefreshResponse initWithData: (length: %lu, responseError: %@)", buf, 0x16u);
  }

  v49.receiver = self;
  v49.super_class = DAEASOAuthTokenRefreshResponse;
  v14 = [(DAEASOAuthTokenRefreshResponse *)&v49 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_error, a5);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = DALoggingwithCategory();
      v35 = *(v12 + 3);
      if (os_log_type_enabled(v16, v35))
      {
        *buf = 0;
        _os_log_impl(&dword_247E05000, v16, v35, "DAEASOAuthTokenRefreshResponse response is not NSHTTPURLResponse. Game over.", buf, 2u);
      }

      goto LABEL_21;
    }

    v16 = v9;
    v15->_statusCode = [v16 statusCode];
    v17 = DALoggingwithCategory();
    if (os_log_type_enabled(v17, v13))
    {
      statusCode = v15->_statusCode;
      *buf = 134217984;
      v51 = statusCode;
      _os_log_impl(&dword_247E05000, v17, v13, "DAEASOAuthTokenRefreshResponse httpResponse status code %ld", buf, 0xCu);
    }

    if (v15->_error)
    {
LABEL_21:

      goto LABEL_22;
    }

    v48 = 0;
    v19 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v48];
    v20 = v48;
    v21 = v48;
    if (v21)
    {
      objc_storeStrong(&v15->_error, v20);
    }

    v22 = [v19 objectForKeyedSubscript:@"error"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v24 = [v19 objectForKeyedSubscript:@"error"];
      errorName = v15->_errorName;
      v15->_errorName = v24;

      v26 = [v19 objectForKeyedSubscript:@"error_description"];
      errorMessage = v15->_errorMessage;
      v15->_errorMessage = v26;

      v28 = DALoggingwithCategory();
      v29 = *(v12 + 3);
      if (os_log_type_enabled(v28, v29))
      {
        v30 = v15->_errorMessage;
        *buf = 138543618;
        v51 = v30;
        v52 = 2112;
        v53 = v19;
        v31 = "DAEASOAuthTokenRefreshResponse received an error: %{public}@ %@";
        v32 = v28;
        v33 = v29;
        v34 = 22;
LABEL_19:
        _os_log_impl(&dword_247E05000, v32, v33, v31, buf, v34);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v15->_responseBody, v19);
        v36 = [(NSDictionary *)v15->_responseBody objectForKeyedSubscript:@"access_token"];
        accessToken = v15->_accessToken;
        v15->_accessToken = v36;

        v38 = [(NSDictionary *)v15->_responseBody objectForKeyedSubscript:@"refresh_token"];
        refreshToken = v15->_refreshToken;
        v15->_refreshToken = v38;

        v40 = [(NSDictionary *)v15->_responseBody objectForKeyedSubscript:@"id_token"];
        idToken = v15->_idToken;
        v15->_idToken = v40;

        v42 = MEMORY[0x277CBEAA8];
        v28 = [(NSDictionary *)v15->_responseBody objectForKeyedSubscript:@"expires_in"];
        v43 = [v42 dateWithTimeIntervalSinceNow:{-[NSObject integerValue](v28, "integerValue")}];
        expiryDate = v15->_expiryDate;
        v15->_expiryDate = v43;
      }

      else
      {
        v28 = DALoggingwithCategory();
        v45 = *(v12 + 3);
        if (os_log_type_enabled(v28, v45))
        {
          *buf = 0;
          v31 = "DAEASOAuthTokenRefreshResponse response JSON data does not represent NSDictionary. Game over.";
          v32 = v28;
          v33 = v45;
          v34 = 2;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_21;
  }

LABEL_22:

  v46 = *MEMORY[0x277D85DE8];
  return v15;
}

@end