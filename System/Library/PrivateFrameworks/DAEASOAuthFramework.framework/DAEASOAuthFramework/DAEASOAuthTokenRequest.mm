@interface DAEASOAuthTokenRequest
+ (id)_urlRequestForTokenRequestURI:(id)i params:(id)params clientID:(id)d;
+ (id)claimsValueWithClaimsChallenge:(id)challenge;
+ (id)oauthTokenRefreshRequestForTokenRequestURI:(id)i clientID:(id)d scope:(id)scope refreshToken:(id)token claims:(id)claims;
+ (id)urlRequestForTokenRequestURI:(id)i clientID:(id)d redirectURI:(id)rI authCode:(id)code scope:(id)scope codeVerifier:(id)verifier claims:(id)claims;
@end

@implementation DAEASOAuthTokenRequest

+ (id)claimsValueWithClaimsChallenge:(id)challenge
{
  v33 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  v27 = challengeCopy;
  if (challengeCopy && (v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:challengeCopy options:0]) != 0)
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
  allKeys = [v10 allKeys];

  v12 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = [v5 objectForKeyedSubscript:@"access_token"];
        v18 = [v17 objectForKeyedSubscript:v16];
        [v7 setValue:v18 forKey:v16];
      }

      v13 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  [v23 setValue:v7 forKey:@"access_token"];
  v19 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v23 options:0 error:0];
  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v19 encoding:4];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)urlRequestForTokenRequestURI:(id)i clientID:(id)d redirectURI:(id)rI authCode:(id)code scope:(id)scope codeVerifier:(id)verifier claims:(id)claims
{
  claimsCopy = claims;
  verifierCopy = verifier;
  scopeCopy = scope;
  codeCopy = code;
  rICopy = rI;
  dCopy = d;
  iCopy = i;
  v21 = objc_opt_new();
  [v21 setObject:dCopy forKeyedSubscript:@"client_id"];
  [v21 setObject:codeCopy forKeyedSubscript:@"code"];

  v22 = [scopeCopy componentsJoinedByString:@" "];

  [v21 setObject:v22 forKeyedSubscript:@"scope"];
  [v21 setObject:@"authorization_code" forKeyedSubscript:@"grant_type"];
  [v21 setObject:rICopy forKeyedSubscript:@"redirect_uri"];

  [v21 setObject:verifierCopy forKeyedSubscript:@"code_verifier"];
  v23 = [objc_opt_class() claimsValueWithClaimsChallenge:claimsCopy];

  [v21 setObject:v23 forKeyedSubscript:@"claims"];
  v24 = [self _urlRequestForTokenRequestURI:iCopy params:v21 clientID:dCopy];

  return v24;
}

+ (id)oauthTokenRefreshRequestForTokenRequestURI:(id)i clientID:(id)d scope:(id)scope refreshToken:(id)token claims:(id)claims
{
  dCopy = d;
  scopeCopy = scope;
  tokenCopy = token;
  claimsCopy = claims;
  iCopy = i;
  v17 = objc_opt_new();
  [v17 setObject:dCopy forKeyedSubscript:@"client_id"];
  if (scopeCopy)
  {
    v18 = [scopeCopy componentsJoinedByString:@" "];
    [v17 setObject:v18 forKeyedSubscript:@"scope"];
  }

  [v17 setObject:tokenCopy forKeyedSubscript:@"refresh_token"];
  [v17 setObject:@"refresh_token" forKeyedSubscript:@"grant_type"];
  v19 = [objc_opt_class() claimsValueWithClaimsChallenge:claimsCopy];

  [v17 setObject:v19 forKeyedSubscript:@"claims"];
  v20 = [self _urlRequestForTokenRequestURI:iCopy params:v17 clientID:dCopy];

  return v20;
}

+ (id)_urlRequestForTokenRequestURI:(id)i params:(id)params clientID:(id)d
{
  v34 = *MEMORY[0x277D85DE8];
  iCopy = i;
  paramsCopy = params;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(paramsCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = paramsCopy;
  obj = [paramsCopy allKeys];
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
  v22 = [MEMORY[0x277CBEBC0] URLWithString:iCopy];
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