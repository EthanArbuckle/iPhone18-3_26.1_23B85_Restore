@interface ASAutodiscoverV2Task
- (ASAutodiscoverV2Task)initWithEmailAddress:(id)a3;
- (id)_OAuthURLFromResponseData:(id)a3;
- (id)_url;
- (id)localizedErrorStringForCertificateErrorCode:(int)a3 host:(id)a4;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)didProcessContext:(id)a3;
- (void)finishWithError:(id)a3;
- (void)loadRequest:(id)a3;
@end

@implementation ASAutodiscoverV2Task

- (ASAutodiscoverV2Task)initWithEmailAddress:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASAutodiscoverV2Task;
  v6 = [(ASTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_emailAddress, a3);
    v7->_addEmptyBearer = 0;
    v7->_discoverOAuthEndpoint = 0;
  }

  return v7;
}

- (id)_url
{
  if ([(ASAutodiscoverV2Task *)self isOnPrem])
  {
    v3 = [(NSString *)self->_emailAddress componentsSeparatedByString:@"@"];
    if ([v3 count] >= 2 && (objc_msgSend(v3, "lastObject"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v4;
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://autodiscover.%@/autodiscover/autodiscover.json/v1.0/%@?Protocol=ActiveSync", v4, self->_emailAddress];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/v1.0/%@?Protocol=ActiveSync", @"https://outlook.office365.com/autodiscover/autodiscover.json", self->_emailAddress];
  }

  return v6;
}

- (id)localizedErrorStringForCertificateErrorCode:(int)a3 host:(id)a4
{
  if ((a3 & 0xFFFFFFFC) == 0xFFFFFB4C)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = MEMORY[0x277CCA8D8];
    v6 = a4;
    v7 = [v5 bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"SERVER_CERTIFICATE_UNVERIFIED_AUTODISCOVERY" value:&stru_285D39BD0 table:@"DataAccess"];
    v9 = [v4 stringWithFormat:v8, v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_OAuthURLFromResponseData:(id)a3
{
  v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:0];
  v4 = [v3 objectForKeyedSubscript:@"Url"];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];

  return v5;
}

- (void)loadRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  if ([MEMORY[0x277D03910] customAutoDV2UserAgentEnabled])
  {
    v6 = [v4 allHTTPHeaderFields];
    v7 = [v6 objectForKeyedSubscript:@"User-Agent"];
    v8 = [v7 stringByReplacingOccurrencesOfString:@"Apple-" withString:@"AppleTest-"];

    [v5 setValue:v8 forHTTPHeaderField:@"User-Agent"];
  }

  [v5 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
  v9.receiver = self;
  v9.super_class = ASAutodiscoverV2Task;
  [(ASTask *)&v9 loadRequest:v5];
}

- (void)didProcessContext:(id)a3
{
  if (!self->_discoverOAuthEndpoint)
  {
    v4 = [a3 bufferWithAllData];
    v8 = [(ASAutodiscoverV2Task *)self _OAuthURLFromResponseData:v4];

    v5 = [MEMORY[0x277CBAB50] requestWithURL:v8];
    v6 = [v8 absoluteString];
    easEndPoint = self->_easEndPoint;
    self->_easEndPoint = v6;

    [v5 setValue:@"Bearer" forHTTPHeaderField:@"Authorization"];
    [v5 setValue:self->_emailAddress forHTTPHeaderField:@"X-User-Identity"];
    self->_discoverOAuthEndpoint = 1;
    [(ASAutodiscoverV2Task *)self loadRequest:v5];
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_discoverOAuthEndpoint)
  {
    v14 = [v12 allHeaderFields];
    v15 = [v14 copy];
    accountInfo = self->_accountInfo;
    self->_accountInfo = v15;
  }

  v17.receiver = self;
  v17.super_class = ASAutodiscoverV2Task;
  [(ASTask *)&v17 URLSession:v10 dataTask:v11 didReceiveResponse:v12 completionHandler:v13];
}

- (void)finishWithError:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTask *)self taskStatusForError:v4];
  if (v5 == 79)
  {
    v26 = self;
    v27 = v4;
    [(NSMutableDictionary *)self->_accountInfo objectForKeyedSubscript:@"WWW-Authenticate"];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v25 = v39 = 0u;
    v6 = [v25 componentsSeparatedByString:{@", "}];
    v7 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (!v7)
    {
      v28 = 0;
      v9 = 0;
      goto LABEL_17;
    }

    v8 = v7;
    v28 = 0;
    v9 = 0;
    v10 = *v37;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        v13 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v14 = [v12 stringByTrimmingCharactersInSet:v13];

        if ([v14 hasPrefix:@"authorization_uri"])
        {
          v15 = [v12 componentsSeparatedByString:@"="];
          v16 = [v15 objectAtIndexedSubscript:1];

          v17 = [v16 stringByReplacingOccurrencesOfString:@"" withString:&stru_285D39BD0];
          v18 = v9;
          v9 = v17;
        }

        else
        {
          if (![v14 hasPrefix:@"issuer_kind"])
          {
            goto LABEL_12;
          }

          v19 = [v12 componentsSeparatedByString:@"="];
          v16 = [v19 objectAtIndexedSubscript:1];

          v20 = [v16 stringByReplacingOccurrencesOfString:@"" withString:&stru_285D39BD0];
          v18 = v28;
          v28 = v20;
        }

LABEL_12:
      }

      v8 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (!v8)
      {
LABEL_17:

        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __40__ASAutodiscoverV2Task_finishWithError___block_invoke;
        v32[3] = &unk_278FC7E48;
        v4 = v27;
        v32[4] = v26;
        v33 = v9;
        v34 = v28;
        v35 = v27;
        v22 = v28;
        v23 = v9;
        [(ASTask *)v26 finishWithError:v35 afterDelegateCallout:v32];

        v21 = v25;
        goto LABEL_18;
      }
    }
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __40__ASAutodiscoverV2Task_finishWithError___block_invoke_2;
  v29[3] = &unk_278FC7B68;
  v29[4] = self;
  v31 = v5;
  v30 = v4;
  [(ASTask *)self finishWithError:v30 afterDelegateCallout:v29];
  v21 = v30;
LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
}

void __40__ASAutodiscoverV2Task_finishWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 248);
  WeakRetained = objc_loadWeakRetained((v2 + 24));
  v5 = a1[4];
  v11 = WeakRetained;
  if (v3)
  {
    v6 = *(v5 + 248);
    v7 = a1[5];
    v8 = a1[6];
    v9 = 2;
    v10 = 0;
  }

  else
  {
    v8 = a1[6];
    v10 = a1[7];
    v9 = 55;
    v7 = 0;
    v6 = 0;
  }

  [WeakRetained autodiscoverV2Task:v5 completedWithStatus:v9 authorizationURI:v7 easEndPoint:v6 issuer:v8 error:v10];
}

void __40__ASAutodiscoverV2Task_finishWithError___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  [WeakRetained autodiscoverV2Task:a1[4] completedWithStatus:a1[6] authorizationURI:0 easEndPoint:*(a1[4] + 248) issuer:0 error:a1[5]];
}

@end