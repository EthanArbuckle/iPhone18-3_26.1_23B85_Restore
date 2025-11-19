@interface DAEASOAuthTokenRequest
+ (id)_urlRequestForTokenRequestURI:(id)a3 params:(id)a4 clientID:(id)a5;
+ (id)claimsValueWithClaimsChallenge:(id)a3;
+ (id)oauthTokenRefreshRequestForTokenRequestURI:(id)a3 clientID:(id)a4 scope:(id)a5 refreshToken:(id)a6 claims:(id)a7;
+ (id)urlRequestForTokenRequestURI:(id)a3 clientID:(id)a4 redirectURI:(id)a5 authCode:(id)a6 scope:(id)a7 codeVerifier:(id)a8 claims:(id)a9;
@end

@implementation DAEASOAuthTokenRequest

+ (id)claimsValueWithClaimsChallenge:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v27 = v3;
  if (v3 && (v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v3 options:0]) != 0)
  {
    v26 = v4;
    v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:0];
  }

  else
  {
    v5 = 0;
    v26 = 0;
  }

  v25 = [@"{access_token:{xms_cc:{values:[cp1]}}}" dataUsingEncoding:4];
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:? options:? error:?];
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = v6;
  v8 = [v6 objectForKeyedSubscript:@"access_token"];
  v9 = [v8 objectForKeyedSubscript:@"xms_cc"];
  [v7 setValue:v9 forKey:@"xms_cc"];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [v5 objectForKeyedSubscript:@"access_token"];
  v11 = [v10 allKeys];

  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = [v5 objectForKeyedSubscript:@"access_token"];
        v18 = [v17 objectForKeyedSubscript:v16];
        [v7 setValue:v18 forKey:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  [v23 setValue:v7 forKey:@"access_token"];
  v19 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v23 options:0 error:0];
  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v19 encoding:4];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)urlRequestForTokenRequestURI:(id)a3 clientID:(id)a4 redirectURI:(id)a5 authCode:(id)a6 scope:(id)a7 codeVerifier:(id)a8 claims:(id)a9
{
  v26 = a9;
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = objc_opt_new();
  [v21 setObject:v19 forKeyedSubscript:@"client_id"];
  [v21 setObject:v17 forKeyedSubscript:@"code"];

  v22 = [v16 componentsJoinedByString:@" "];

  [v21 setObject:v22 forKeyedSubscript:@"scope"];
  [v21 setObject:@"authorization_code" forKeyedSubscript:@"grant_type"];
  [v21 setObject:v18 forKeyedSubscript:@"redirect_uri"];

  [v21 setObject:v15 forKeyedSubscript:@"code_verifier"];
  v23 = [objc_opt_class() claimsValueWithClaimsChallenge:v26];

  [v21 setObject:v23 forKeyedSubscript:@"claims"];
  v24 = [a1 _urlRequestForTokenRequestURI:v20 params:v21 clientID:v19];

  return v24;
}

+ (id)oauthTokenRefreshRequestForTokenRequestURI:(id)a3 clientID:(id)a4 scope:(id)a5 refreshToken:(id)a6 claims:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a3;
  v17 = objc_opt_new();
  [v17 setObject:v12 forKeyedSubscript:@"client_id"];
  if (v13)
  {
    v18 = [v13 componentsJoinedByString:@" "];
    [v17 setObject:v18 forKeyedSubscript:@"scope"];
  }

  [v17 setObject:v14 forKeyedSubscript:@"refresh_token"];
  [v17 setObject:@"refresh_token" forKeyedSubscript:@"grant_type"];
  v19 = [objc_opt_class() claimsValueWithClaimsChallenge:v15];

  [v17 setObject:v19 forKeyedSubscript:@"claims"];
  v20 = [a1 _urlRequestForTokenRequestURI:v16 params:v17 clientID:v12];

  return v20;
}

+ (id)_urlRequestForTokenRequestURI:(id)a3 params:(id)a4 clientID:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = v6;
  obj = [v6 allKeys];
  v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:v13];
        v15 = MEMORY[0x277CCACA8];
        v16 = [v13 stringByAddingPercentEscapesUsingEncoding:4];
        v17 = [v14 stringByAddingPercentEscapesUsingEncoding:4];
        v18 = [v15 stringWithFormat:@"%@=%@", v16, v17];

        [v7 addObject:v18];
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  v19 = [v7 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v20 = [v19 componentsJoinedByString:@"&"];
  v21 = MEMORY[0x277CCAB70];
  v22 = [MEMORY[0x277CBEBC0] URLWithString:v27];
  v23 = [v21 requestWithURL:v22];

  v24 = [v20 dataUsingEncoding:4];
  [v23 setHTTPBody:v24];

  [v23 setCachePolicy:1];
  [v23 setHTTPMethod:@"POST"];
  [v23 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];

  v25 = *MEMORY[0x277D85DE8];

  return v23;
}

@end