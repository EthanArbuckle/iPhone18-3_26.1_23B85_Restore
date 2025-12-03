@interface MDMAuthenticationHelper
+ (unint64_t)enrollmentMethodFromAuthenticateString:(id)string outParams:(id *)params;
+ (void)performExchangeMAIDForBearerTokenAtURL:(id)l rmAccountIdentifier:(id)identifier anchorCertificateRefs:(id)refs completionHandler:(id)handler;
@end

@implementation MDMAuthenticationHelper

+ (unint64_t)enrollmentMethodFromAuthenticateString:(id)string outParams:(id *)params
{
  stringCopy = string;
  if (stringCopy)
    v6 = {;
    v44[0] = 0;
    v7 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v6 options:1 error:v44];
    v8 = v44[0];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
LABEL_28:

      goto LABEL_29;
    }

    v11 = [v7 firstMatchInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];
    v12 = [v11 rangeAtIndex:1];
    v39 = [stringCopy substringWithRange:{v12, v13}];
    if (![v39 isEqualToString:@"Bearer"])
    {
      v9 = 0;
      v10 = 0;
LABEL_27:

      goto LABEL_28;
    }

    v38 = v11;
    v14 = [v11 rangeAtIndex:2];
    v16 = [stringCopy substringWithRange:{v14, v15}];
    if (![v16 length])
    {
      v9 = 0;
      v10 = 0;
LABEL_26:

      v11 = v38;
      goto LABEL_27;
    }
    v17 = ;
    v43 = 0;
    v18 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v17 options:1 error:&v43];
    v9 = v43;

    v19 = objc_opt_new();
    v20 = [v16 length];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __76__MDMAuthenticationHelper_enrollmentMethodFromAuthenticateString_outParams___block_invoke;
    v40[3] = &unk_278856CA8;
    v41 = v16;
    v21 = v19;
    v42 = v21;
    v37 = v18;
    [v18 enumerateMatchesInString:v41 options:0 range:0 usingBlock:{v20, v40}];
    v22 = [v21 objectForKeyedSubscript:@"method"];
    if (!v22)
    {
      v10 = 0;
LABEL_25:

      v7 = v37;
      goto LABEL_26;
    }

    v36 = v17;
    v23 = +[MDMBearerTokenAuthenticator authenticationMethod];
    if ([v22 isEqualToString:v23])
    {
      v24 = objc_opt_new();
      v25 = [v24 validAuthParams:v21];

      if (v25)
      {
        v26 = v21;
        *params = v21;
        v10 = 2;
LABEL_24:
        v17 = v36;
        goto LABEL_25;
      }
    }

    else
    {
    }

    v27 = +[MDMMAIDBearerTokenAuthenticator authenticationMethod];
    if ([v22 isEqualToString:v27])
    {
      v28 = objc_opt_new();
      v29 = [v28 validAuthParams:v21];

      if (v29)
      {
        v30 = v21;
        *params = v21;
        v10 = 1;
        goto LABEL_24;
      }
    }

    else
    {
    }

    v31 = +[MDMOAuth2Authenticator authenticationMethod];
    if ([v22 isEqualToString:v31])
    {
      v32 = objc_opt_new();
      v33 = [v32 validAuthParams:v21];

      if (v33)
      {
        v34 = v21;
        *params = v21;
        v10 = 5;
        goto LABEL_24;
      }
    }

    else
    {
    }

    v10 = 0;
    goto LABEL_24;
  }

  v10 = 0;
LABEL_29:

  return v10;
}

void __76__MDMAuthenticationHelper_enrollmentMethodFromAuthenticateString_outParams___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(a1 + 32);
  v4 = [v10 rangeWithName:@"pname"];
  v6 = [v3 substringWithRange:{v4, v5}];
  v7 = [v10 rangeWithName:@"pvalue"];
  if (!v8)
  {
    v7 = [v10 rangeWithName:@"pquoted"];
  }

  v9 = [*(a1 + 32) substringWithRange:{v7, v8}];
  [*(a1 + 40) setObject:v9 forKeyedSubscript:v6];
}

+ (void)performExchangeMAIDForBearerTokenAtURL:(id)l rmAccountIdentifier:(id)identifier anchorCertificateRefs:(id)refs completionHandler:(id)handler
{
  v20[2] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  identifierCopy = identifier;
  lCopy = l;
  v11 = objc_opt_new();
  v19[0] = @"method";
  v12 = +[MDMMAIDBearerTokenAuthenticator authenticationMethod];
  v20[0] = v12;
  v19[1] = @"url";
  absoluteString = [lCopy absoluteString];

  v20[1] = absoluteString;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __126__MDMAuthenticationHelper_performExchangeMAIDForBearerTokenAtURL_rmAccountIdentifier_anchorCertificateRefs_completionHandler___block_invoke;
  v17[3] = &unk_278856CD0;
  v18 = handlerCopy;
  v15 = handlerCopy;
  [v11 refreshTokenWithAuthParams:v14 accountID:identifierCopy completionHandler:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __126__MDMAuthenticationHelper_performExchangeMAIDForBearerTokenAtURL_rmAccountIdentifier_anchorCertificateRefs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [a2 objectForKeyedSubscript:@"token"];
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }
}

@end