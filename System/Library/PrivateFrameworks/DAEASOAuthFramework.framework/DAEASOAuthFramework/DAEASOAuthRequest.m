@interface DAEASOAuthRequest
+ (BOOL)urlPageWillContainAuthorizationCode:(id)a3;
+ (id)authCodeFromRequest:(id)a3;
+ (id)errorDescriptionFromRequest:(id)a3;
+ (id)errorDomainFromRequest:(id)a3;
+ (id)requestForURL:(id)a3;
+ (id)stateFromRequest:(id)a3;
+ (id)urlForOAuthURI:(id)a3 clientID:(id)a4 redirectURI:(id)a5 scope:(id)a6 username:(id)a7 state:(id)a8 codeChallenge:(id)a9 codeChallengeMethod:(int64_t)a10;
+ (id)urlForOnPremOAuthURI:(id)a3 clientID:(id)a4 redirectURI:(id)a5 username:(id)a6 state:(id)a7 resource:(id)a8 claims:(id)a9;
@end

@implementation DAEASOAuthRequest

+ (id)urlForOAuthURI:(id)a3 clientID:(id)a4 redirectURI:(id)a5 scope:(id)a6 username:(id)a7 state:(id)a8 codeChallenge:(id)a9 codeChallengeMethod:(int64_t)a10
{
  v51[9] = *MEMORY[0x277D85DE8];
  v50 = a7;
  v15 = MEMORY[0x277CBEAF8];
  v16 = a9;
  v17 = a8;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [v15 currentLocale];
  v23 = [v22 localeIdentifier];
  v24 = [v23 lowercaseString];
  v25 = [v24 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v26 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v21];
  v27 = MEMORY[0x277CBEB18];
  v48 = v26;
  v28 = [v26 queryItems];
  v45 = [v27 arrayWithArray:v28];

  v47 = [MEMORY[0x277CCAD18] queryItemWithName:@"response_type" value:@"code"];
  v51[0] = v47;
  v46 = [MEMORY[0x277CCAD18] queryItemWithName:@"client_id" value:v20];

  v51[1] = v46;
  v44 = [MEMORY[0x277CCAD18] queryItemWithName:@"redirect_uri" value:v19];

  v51[2] = v44;
  v29 = MEMORY[0x277CCAD18];
  v43 = [v18 componentsJoinedByString:@" "];

  v30 = [v29 queryItemWithName:@"scope" value:v43];
  v51[3] = v30;
  v49 = v25;
  v31 = [MEMORY[0x277CCAD18] queryItemWithName:@"ui_locales" value:v25];
  v51[4] = v31;
  v32 = [MEMORY[0x277CCAD18] queryItemWithName:@"display" value:@"ios"];
  v51[5] = v32;
  v33 = [MEMORY[0x277CCAD18] queryItemWithName:@"state" value:v17];

  v51[6] = v33;
  v34 = [MEMORY[0x277CCAD18] queryItemWithName:@"code_challenge" value:v16];

  v51[7] = v34;
  v35 = MEMORY[0x277CCAD18];
  v36 = [DAEASOAuthPKCEChallenge convertToString:a10];
  v37 = [v35 queryItemWithName:@"code_challenge_method" value:v36];
  v51[8] = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:9];
  [v45 addObjectsFromArray:v38];

  if (v50)
  {
    v39 = [MEMORY[0x277CCAD18] queryItemWithName:@"login_hint" value:v50];
    [v45 addObject:v39];
  }

  [v48 setQueryItems:{v45, v43}];
  v40 = [v48 URL];

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

+ (id)urlForOnPremOAuthURI:(id)a3 clientID:(id)a4 redirectURI:(id)a5 username:(id)a6 state:(id)a7 resource:(id)a8 claims:(id)a9
{
  v45[8] = *MEMORY[0x277D85DE8];
  v14 = a4;
  v43 = a6;
  v15 = a8;
  v16 = MEMORY[0x277CBEAF8];
  v17 = a9;
  v18 = a7;
  v19 = a5;
  v42 = a3;
  v20 = [v16 currentLocale];
  v21 = [v20 objectForKey:*MEMORY[0x277CBE6C0]];
  v22 = [v21 lowercaseString];
  v23 = [v22 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  if (([v15 hasSuffix:@"/"] & 1) == 0)
  {
    v24 = [v15 stringByAppendingString:@"/"];

    v15 = v24;
  }

  v44 = v14;
  v45[0] = @"response_type=code";
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"client_id=%@", v14];
  v45[1] = v25;
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"redirect_uri=%@", v19];

  v45[2] = v26;
  v41 = v23;
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"ui_locales=%@", v23];
  v45[3] = v27;
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"display=%@", @"ios"];
  v45[4] = v28;
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"state=%@", v18];

  v45[5] = v29;
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"resource=%@", v15];
  v45[6] = v30;
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"claims=%@", v17];

  v45[7] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:8];

  if (v43)
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"login_hint=%@", v43];
    v34 = [v32 arrayByAddingObject:v33];

    v32 = v34;
  }

  v35 = [v32 componentsJoinedByString:@"&"];
  v36 = [v35 stringByAddingPercentEscapesUsingEncoding:4];

  v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@?%@", v42, v36];

  v38 = [MEMORY[0x277CBEBC0] URLWithString:v37];

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

+ (id)requestForURL:(id)a3
{
  v3 = [MEMORY[0x277CCAB70] requestWithURL:a3];
  [v3 setCachePolicy:1];

  return v3;
}

+ (BOOL)urlPageWillContainAuthorizationCode:(id)a3
{
  v3 = [a3 absoluteString];
  v4 = [v3 hasPrefix:@"urn:ietf:wg:oauth:2.0:oob"];

  return v4;
}

+ (id)authCodeFromRequest:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACE0];
  v4 = [a3 URL];
  v5 = [v3 componentsWithURL:v4 resolvingAgainstBaseURL:1];
  v6 = [v5 queryItems];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
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
        v13 = [v12 name];
        v14 = [v13 isEqualToString:@"code"];

        if (v14)
        {
          v15 = [v12 value];
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

  v15 = 0;
LABEL_11:

  v16 = DALoggingwithCategory();
  v17 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v16, v17))
  {
    *v20 = 0;
    _os_log_impl(&dword_247E05000, v16, v17, "Extracted auth code from request URL", v20, 2u);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)stateFromRequest:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACE0];
  v4 = [a3 URL];
  v5 = [v3 componentsWithURL:v4 resolvingAgainstBaseURL:1];
  v6 = [v5 queryItems];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
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
        v13 = [v12 name];
        v14 = [v13 isEqualToString:@"state"];

        if (v14)
        {
          v15 = [v12 value];
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

  v15 = 0;
LABEL_11:

  v16 = DALoggingwithCategory();
  v17 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v16, v17))
  {
    *v20 = 0;
    _os_log_impl(&dword_247E05000, v16, v17, "Extracted state from request URL", v20, 2u);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)errorDomainFromRequest:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CCACE0];
  v5 = [v3 URL];
  v6 = [v4 componentsWithURL:v5 resolvingAgainstBaseURL:1];
  v7 = [v6 queryItems];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v7;
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
        v14 = [v13 name];
        v15 = [v14 isEqualToString:@"error"];

        if (v15)
        {
          v16 = [v13 value];
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

  v16 = 0;
LABEL_11:

  v17 = DALoggingwithCategory();
  v18 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = [v3 URL];
    *buf = 138412546;
    v27 = v16;
    v28 = 2112;
    v29 = v19;
    _os_log_impl(&dword_247E05000, v17, v18, "Extracted error - %@ from request URL - %@ ", buf, 0x16u);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)errorDescriptionFromRequest:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CCACE0];
  v5 = [v3 URL];
  v6 = [v4 componentsWithURL:v5 resolvingAgainstBaseURL:1];
  v7 = [v6 queryItems];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v7;
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
        v14 = [v13 name];
        v15 = [v14 isEqualToString:@"error_description"];

        if (v15)
        {
          v16 = [v13 value];
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

  v16 = 0;
LABEL_11:

  v17 = DALoggingwithCategory();
  v18 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = [v3 URL];
    *buf = 138412546;
    v27 = v16;
    v28 = 2112;
    v29 = v19;
    _os_log_impl(&dword_247E05000, v17, v18, "Extracted error_description - %@ from request URL - %@ ", buf, 0x16u);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

@end