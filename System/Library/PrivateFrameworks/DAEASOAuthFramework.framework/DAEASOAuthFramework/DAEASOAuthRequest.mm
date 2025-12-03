@interface DAEASOAuthRequest
+ (BOOL)urlPageWillContainAuthorizationCode:(id)code;
+ (id)authCodeFromRequest:(id)request;
+ (id)errorDescriptionFromRequest:(id)request;
+ (id)errorDomainFromRequest:(id)request;
+ (id)requestForURL:(id)l;
+ (id)stateFromRequest:(id)request;
+ (id)urlForOAuthURI:(id)i clientID:(id)d redirectURI:(id)rI scope:(id)scope username:(id)username state:(id)state codeChallenge:(id)challenge codeChallengeMethod:(int64_t)self0;
+ (id)urlForOnPremOAuthURI:(id)i clientID:(id)d redirectURI:(id)rI username:(id)username state:(id)state resource:(id)resource claims:(id)claims;
@end

@implementation DAEASOAuthRequest

+ (id)urlForOAuthURI:(id)i clientID:(id)d redirectURI:(id)rI scope:(id)scope username:(id)username state:(id)state codeChallenge:(id)challenge codeChallengeMethod:(int64_t)self0
{
  v51[9] = *MEMORY[0x277D85DE8];
  usernameCopy = username;
  v15 = MEMORY[0x277CBEAF8];
  challengeCopy = challenge;
  stateCopy = state;
  scopeCopy = scope;
  rICopy = rI;
  dCopy = d;
  iCopy = i;
  currentLocale = [v15 currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  lowercaseString = [localeIdentifier lowercaseString];
  v25 = [lowercaseString stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v26 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:iCopy];
  v27 = MEMORY[0x277CBEB18];
  v48 = v26;
  queryItems = [v26 queryItems];
  v45 = [v27 arrayWithArray:queryItems];

  v47 = [MEMORY[0x277CCAD18] queryItemWithName:@"response_type" value:@"code"];
  v51[0] = v47;
  v46 = [MEMORY[0x277CCAD18] queryItemWithName:@"client_id" value:dCopy];

  v51[1] = v46;
  v44 = [MEMORY[0x277CCAD18] queryItemWithName:@"redirect_uri" value:rICopy];

  v51[2] = v44;
  v29 = MEMORY[0x277CCAD18];
  v43 = [scopeCopy componentsJoinedByString:@" "];

  v30 = [v29 queryItemWithName:@"scope" value:v43];
  v51[3] = v30;
  v49 = v25;
  v31 = [MEMORY[0x277CCAD18] queryItemWithName:@"ui_locales" value:v25];
  v51[4] = v31;
  v32 = [MEMORY[0x277CCAD18] queryItemWithName:@"display" value:@"ios"];
  v51[5] = v32;
  v33 = [MEMORY[0x277CCAD18] queryItemWithName:@"state" value:stateCopy];

  v51[6] = v33;
  v34 = [MEMORY[0x277CCAD18] queryItemWithName:@"code_challenge" value:challengeCopy];

  v51[7] = v34;
  v35 = MEMORY[0x277CCAD18];
  v36 = [DAEASOAuthPKCEChallenge convertToString:method];
  v37 = [v35 queryItemWithName:@"code_challenge_method" value:v36];
  v51[8] = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:9];
  [v45 addObjectsFromArray:v38];

  if (usernameCopy)
  {
    v39 = [MEMORY[0x277CCAD18] queryItemWithName:@"login_hint" value:usernameCopy];
    [v45 addObject:v39];
  }

  [v48 setQueryItems:{v45, v43}];
  v40 = [v48 URL];

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

+ (id)urlForOnPremOAuthURI:(id)i clientID:(id)d redirectURI:(id)rI username:(id)username state:(id)state resource:(id)resource claims:(id)claims
{
  v45[8] = *MEMORY[0x277D85DE8];
  dCopy = d;
  usernameCopy = username;
  resourceCopy = resource;
  v16 = MEMORY[0x277CBEAF8];
  claimsCopy = claims;
  stateCopy = state;
  rICopy = rI;
  iCopy = i;
  currentLocale = [v16 currentLocale];
  v21 = [currentLocale objectForKey:*MEMORY[0x277CBE6C0]];
  lowercaseString = [v21 lowercaseString];
  v23 = [lowercaseString stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  if (([resourceCopy hasSuffix:@"/"] & 1) == 0)
  {
    v24 = [resourceCopy stringByAppendingString:@"/"];

    resourceCopy = v24;
  }

  v44 = dCopy;
  v45[0] = @"response_type=code";
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"client_id=%@", dCopy];
  v45[1] = dCopy;
  rICopy = [MEMORY[0x277CCACA8] stringWithFormat:@"redirect_uri=%@", rICopy];

  v45[2] = rICopy;
  v41 = v23;
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"ui_locales=%@", v23];
  v45[3] = v27;
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"display=%@", @"ios"];
  v45[4] = v28;
  stateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"state=%@", stateCopy];

  v45[5] = stateCopy;
  resourceCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"resource=%@", resourceCopy];
  v45[6] = resourceCopy;
  claimsCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"claims=%@", claimsCopy];

  v45[7] = claimsCopy;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:8];

  if (usernameCopy)
  {
    usernameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"login_hint=%@", usernameCopy];
    v34 = [v32 arrayByAddingObject:usernameCopy];

    v32 = v34;
  }

  v35 = [v32 componentsJoinedByString:@"&"];
  v36 = [v35 stringByAddingPercentEscapesUsingEncoding:4];

  v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@?%@", iCopy, v36];

  v38 = [MEMORY[0x277CBEBC0] URLWithString:v37];

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

+ (id)requestForURL:(id)l
{
  v3 = [MEMORY[0x277CCAB70] requestWithURL:l];
  [v3 setCachePolicy:1];

  return v3;
}

+ (BOOL)urlPageWillContainAuthorizationCode:(id)code
{
  absoluteString = [code absoluteString];
  v4 = [absoluteString hasPrefix:@"urn:ietf:wg:oauth:2.0:oob"];

  return v4;
}

+ (id)authCodeFromRequest:(id)request
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACE0];
  v4 = [request URL];
  v5 = [v3 componentsWithURL:v4 resolvingAgainstBaseURL:1];
  queryItems = [v5 queryItems];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = queryItems;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        name = [v12 name];
        v14 = [name isEqualToString:@"code"];

        if (v14)
        {
          value = [v12 value];
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  value = 0;
LABEL_11:

  v16 = DALoggingwithCategory();
  v17 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v16, v17))
  {
    *v20 = 0;
    _os_log_impl(&dword_247E05000, v16, v17, "Extracted auth code from request URL", v20, 2u);
  }

  v18 = *MEMORY[0x277D85DE8];

  return value;
}

+ (id)stateFromRequest:(id)request
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACE0];
  v4 = [request URL];
  v5 = [v3 componentsWithURL:v4 resolvingAgainstBaseURL:1];
  queryItems = [v5 queryItems];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = queryItems;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        name = [v12 name];
        v14 = [name isEqualToString:@"state"];

        if (v14)
        {
          value = [v12 value];
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  value = 0;
LABEL_11:

  v16 = DALoggingwithCategory();
  v17 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v16, v17))
  {
    *v20 = 0;
    _os_log_impl(&dword_247E05000, v16, v17, "Extracted state from request URL", v20, 2u);
  }

  v18 = *MEMORY[0x277D85DE8];

  return value;
}

+ (id)errorDomainFromRequest:(id)request
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v4 = MEMORY[0x277CCACE0];
  v5 = [requestCopy URL];
  v6 = [v4 componentsWithURL:v5 resolvingAgainstBaseURL:1];
  queryItems = [v6 queryItems];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = queryItems;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        name = [v13 name];
        v15 = [name isEqualToString:@"error"];

        if (v15)
        {
          value = [v13 value];
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  value = 0;
LABEL_11:

  v17 = DALoggingwithCategory();
  v18 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = [requestCopy URL];
    *buf = 138412546;
    v27 = value;
    v28 = 2112;
    v29 = v19;
    _os_log_impl(&dword_247E05000, v17, v18, "Extracted error - %@ from request URL - %@ ", buf, 0x16u);
  }

  v20 = *MEMORY[0x277D85DE8];

  return value;
}

+ (id)errorDescriptionFromRequest:(id)request
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v4 = MEMORY[0x277CCACE0];
  v5 = [requestCopy URL];
  v6 = [v4 componentsWithURL:v5 resolvingAgainstBaseURL:1];
  queryItems = [v6 queryItems];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = queryItems;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        name = [v13 name];
        v15 = [name isEqualToString:@"error_description"];

        if (v15)
        {
          value = [v13 value];
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  value = 0;
LABEL_11:

  v17 = DALoggingwithCategory();
  v18 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = [requestCopy URL];
    *buf = 138412546;
    v27 = value;
    v28 = 2112;
    v29 = v19;
    _os_log_impl(&dword_247E05000, v17, v18, "Extracted error_description - %@ from request URL - %@ ", buf, 0x16u);
  }

  v20 = *MEMORY[0x277D85DE8];

  return value;
}

@end