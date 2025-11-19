@interface DAEASOpenIDMetadataResponse
- (DAEASOpenIDMetadataResponse)initWithData:(id)a3 urlResponse:(id)a4 error:(id)a5;
@end

@implementation DAEASOpenIDMetadataResponse

- (DAEASOpenIDMetadataResponse)initWithData:(id)a3 urlResponse:(id)a4 error:(id)a5
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v51.receiver = self;
  v51.super_class = DAEASOpenIDMetadataResponse;
  v11 = [(DAEASOpenIDMetadataResponse *)&v51 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_error, a5);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = DALoggingwithCategory();
      v24 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v13, v24))
      {
        *buf = 0;
        _os_log_impl(&dword_247E05000, v13, v24, "DAEASOpenIDMetadataResponse response is not NSHTTPURLResponse. Game over.", buf, 2u);
      }

      goto LABEL_22;
    }

    v13 = v9;
    v12->_statusCode = [v13 statusCode];
    v14 = DALoggingwithCategory();
    v15 = MEMORY[0x277D03988];
    v16 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v14, v16))
    {
      statusCode = v12->_statusCode;
      *buf = 134217984;
      v53 = statusCode;
      _os_log_impl(&dword_247E05000, v14, v16, "DAEASOpenIDMetadataResponse httpResponse status code %ld", buf, 0xCu);
    }

    if (v12->_error)
    {
LABEL_22:

      goto LABEL_23;
    }

    v50 = 0;
    v18 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v50];
    v19 = v50;
    if (v19)
    {
      error = v12->_error;
      v12->_error = v19;
      v21 = v19;

      v22 = DALoggingwithCategory();
      v23 = *(v15 + 3);
      if (os_log_type_enabled(v22, v23))
      {
        *buf = 138412290;
        v53 = v21;
        _os_log_impl(&dword_247E05000, v22, v23, "DAEASOAuthTokenResponse response JSON data does not represent NSDictionary. Game over. %@", buf, 0xCu);
      }

      goto LABEL_21;
    }

    objc_storeStrong(&v12->_data, v18);
    v25 = [(NSDictionary *)v12->_data objectForKeyedSubscript:@"error"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v27 = [(NSDictionary *)v12->_data objectForKeyedSubscript:@"error_code"];
      errorMessage = v12->_errorMessage;
      v12->_errorMessage = v27;

      v21 = DALoggingwithCategory();
      v29 = *(v15 + 3);
      if (os_log_type_enabled(v21, v29))
      {
        v30 = v12->_errorMessage;
        *buf = 138412546;
        v53 = v30;
        v54 = 2112;
        v55 = v18;
        v31 = "DAEASOpenIDMetadataResponse received an error: %@ %@";
        v32 = v21;
        v33 = v29;
        v34 = 22;
LABEL_20:
        _os_log_impl(&dword_247E05000, v32, v33, v31, buf, v34);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = [(NSDictionary *)v12->_data objectForKeyedSubscript:@"token_endpoint"];
        tokenRequestURI = v12->_tokenRequestURI;
        v12->_tokenRequestURI = v35;

        v37 = [(NSDictionary *)v12->_data objectForKeyedSubscript:@"authorization_endpoint"];
        authorizationURI = v12->_authorizationURI;
        v12->_authorizationURI = v37;

        v39 = [(NSDictionary *)v12->_data objectForKeyedSubscript:@"jwks_uri"];
        jwksURI = v12->_jwksURI;
        v12->_jwksURI = v39;

        v41 = [(NSDictionary *)v12->_data objectForKeyedSubscript:@"issuer"];
        issuer = v12->_issuer;
        v12->_issuer = v41;

        v21 = DALoggingwithCategory();
        if (os_log_type_enabled(v21, v16))
        {
          v43 = v12->_tokenRequestURI;
          v44 = v12->_authorizationURI;
          v45 = v12->_jwksURI;
          v46 = v12->_issuer;
          *buf = 138413058;
          v53 = v43;
          v54 = 2112;
          v55 = v44;
          v56 = 2112;
          v57 = v45;
          v58 = 2112;
          v59 = v46;
          v31 = "DAEASOpenIDMetadataResponse response token_endpoint: %@, authorization_endpoint: %@, jwks_uri: %@, issuer: %@";
          v32 = v21;
          v33 = v16;
          v34 = 42;
          goto LABEL_20;
        }
      }

      else
      {
        v21 = DALoggingwithCategory();
        v47 = *(v15 + 3);
        if (os_log_type_enabled(v21, v47))
        {
          *buf = 0;
          v31 = "DAEASOpenIDMetadataResponse response JSON data does not represent NSDictionary.";
          v32 = v21;
          v33 = v47;
          v34 = 2;
          goto LABEL_20;
        }
      }
    }

LABEL_21:

    goto LABEL_22;
  }

LABEL_23:

  v48 = *MEMORY[0x277D85DE8];
  return v12;
}

@end