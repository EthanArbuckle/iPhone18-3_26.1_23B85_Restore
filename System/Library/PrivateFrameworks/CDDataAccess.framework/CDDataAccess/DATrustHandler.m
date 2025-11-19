@interface DATrustHandler
- (BOOL)handleTrustChallenge:(id)a3 forAccount:(id)a4 completionHandler:(id)a5;
- (BOOL)haveWarnedAboutCert:(id)a3 forHost:(id)a4;
- (BOOL)resetCertWarnings;
- (DATrustHandler)initWithDelegate:(id)a3;
- (DATrustHandlerDelegate)delegate;
- (id)_serverSuffixesToAlwaysFail;
- (int)_actionForTrust:(__SecTrust *)a3 host:(id)a4 service:(id)a5;
- (void)handleTrust:(__SecTrust *)a3 forHost:(id)a4 forAccount:(id)a5 withCompletionBlock:(id)a6;
- (void)setHaveWarnedAboutCert:(id)a3 forHost:(id)a4;
@end

@implementation DATrustHandler

- (DATrustHandler)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DATrustHandler;
  v5 = [(DATrustHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (BOOL)haveWarnedAboutCert:(id)a3 forHost:(id)a4
{
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_haveWarnedAboutCertDict objectForKeyedSubscript:a3];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 containsObject:v6];
  }

  else
  {
    v9 = v7 != 0;
  }

  return v9;
}

- (void)setHaveWarnedAboutCert:(id)a3 forHost:(id)a4
{
  v11 = a3;
  v6 = a4;
  haveWarnedAboutCertDict = self->_haveWarnedAboutCertDict;
  if (!haveWarnedAboutCertDict)
  {
    v8 = objc_opt_new();
    v9 = self->_haveWarnedAboutCertDict;
    self->_haveWarnedAboutCertDict = v8;

    haveWarnedAboutCertDict = self->_haveWarnedAboutCertDict;
  }

  v10 = [(NSMutableDictionary *)haveWarnedAboutCertDict objectForKeyedSubscript:v11];
  if (!v10)
  {
    v10 = [MEMORY[0x277CBEB58] set];
    [(NSMutableDictionary *)self->_haveWarnedAboutCertDict setObject:v10 forKeyedSubscript:v11];
  }

  if (v6)
  {
    [v10 addObject:v6];
  }
}

- (BOOL)resetCertWarnings
{
  haveWarnedAboutCertDict = self->_haveWarnedAboutCertDict;
  self->_haveWarnedAboutCertDict = 0;

  return 1;
}

- (int)_actionForTrust:(__SecTrust *)a3 host:(id)a4 service:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3)
  {
    v10 = [MEMORY[0x277CF9710] defaultTrustManager];
    v11 = [v10 actionForTrust:a3 forHost:v8 andService:v9];

    if (v11 == 2)
    {
      if (SecTrustGetCertificateCount(a3))
      {
        SecTrustGetCertificateAtIndex(a3, 0);
        v12 = SecCertificateGetSHA1Digest();
        if (v12)
        {
          v13 = [(DATrustHandler *)self delegate];
          v14 = [v13 exceptionsForDigest:v12];

          if (v14)
          {
            v15 = SecTrustCopyExceptions(a3);
            if (v15)
            {
              v16 = v15;
              if (CFEqual(v14, v15))
              {
                v11 = 2;
              }

              else
              {
                v18 = [MEMORY[0x277CF9710] defaultTrustManager];
                [v18 allowTrust:a3 forHost:v8 service:v9];

                v19 = [(DATrustHandler *)self delegate];
                [v19 setExceptions:0 forDigest:v12];

                v11 = 1;
              }

              CFRelease(v16);
              goto LABEL_12;
            }
          }
        }
      }

      else
      {
        v12 = 0;
      }

      v11 = 2;
LABEL_12:
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_serverSuffixesToAlwaysFail
{
  if (_serverSuffixesToAlwaysFail_onceToken != -1)
  {
    [DATrustHandler _serverSuffixesToAlwaysFail];
  }

  v3 = _serverSuffixesToAlwaysFail__sServerSuffixes;

  return v3;
}

uint64_t __45__DATrustHandler__serverSuffixesToAlwaysFail__block_invoke()
{
  _serverSuffixesToAlwaysFail__sServerSuffixes = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@".me.com", @".icloud.com", 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)handleTrust:(__SecTrust *)a3 forHost:(id)a4 forAccount:(id)a5 withCompletionBlock:(id)a6
{
  v60 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v45 = a5;
  v10 = a6;
  v11 = DALoggingwithCategory();
  v12 = MEMORY[0x277CF3AF0];
  v13 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v11, v13))
  {
    *buf = 0;
    _os_log_impl(&dword_24244C000, v11, v13, "Checking to see if we should trust the server certificate", buf, 2u);
  }

  v14 = *MEMORY[0x277CF9718];
  if (!a3)
  {
    v15 = DALoggingwithCategory();
    v21 = *(v12 + 3);
    if (os_log_type_enabled(v15, *(v12 + 3)))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&dword_24244C000, v15, v21, "Terminating connection because server does not have an SSL certificate. Host: %@", buf, 0xCu);
    }

    v20 = 0;
    goto LABEL_26;
  }

  v15 = [v45 accountPropertyForKey:@"DAAccountUseTrustedSSLCertificate"];
  v16 = [MEMORY[0x277CF9710] defaultTrustManager];
  v17 = [v16 rawTrustResultForSSLTrust:a3 hostname:v9 service:v14];

  if (v17 == 1)
  {
    goto LABEL_11;
  }

  if (v17 != 5)
  {
    if (v17 != 4)
    {
      v19 = DALoggingwithCategory();
      if (os_log_type_enabled(v19, v13))
      {
        *buf = 67109120;
        *&buf[4] = v17;
        _os_log_impl(&dword_24244C000, v19, v13, "Got SecTrustEvaluate result %u. Denying.", buf, 8u);
      }

      v20 = 0;
      goto LABEL_25;
    }

    if (([v15 BOOLValue]& 1) == 0)
    {
      v18 = DALoggingwithCategory();
      if (os_log_type_enabled(v18, v13))
      {
        *buf = 138412546;
        *&buf[4] = @"DAAccountUseTrustedSSLCertificate";
        *&buf[12] = 2112;
        *&buf[14] = v45;
        _os_log_impl(&dword_24244C000, v18, v13, "Account now requires trusted certificate. Setting %@ to YES for account: %@", buf, 0x16u);
      }

      [v45 setAccountProperty:MEMORY[0x277CBEC38] forKey:@"DAAccountUseTrustedSSLCertificate"];
      [v45 updateExistingAccountProperties];
    }

LABEL_11:
    v19 = DALoggingwithCategory();
    if (os_log_type_enabled(v19, v13))
    {
      *buf = 67109120;
      *&buf[4] = v17;
      _os_log_impl(&dword_24244C000, v19, v13, "Got SecTrustEvaluate result %u. Allowing.", buf, 8u);
    }

    v20 = 1;
LABEL_25:

LABEL_26:
    v29 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v59 = 1;
LABEL_27:
    v10[2](v10, v20);
    goto LABEL_28;
  }

  v22 = DALoggingwithCategory();
  if (os_log_type_enabled(v22, v13))
  {
    *buf = 67109120;
    *&buf[4] = 5;
    _os_log_impl(&dword_24244C000, v22, v13, "Got SecTrustEvaluate result %u. Checking if needing to prompt.", buf, 8u);
  }

  v43 = [v15 BOOLValue];
  v23 = DALoggingwithCategory();
  v24 = v23;
  if (v43)
  {
    v25 = *(v12 + 3);
    if (os_log_type_enabled(v23, v25))
    {
      *buf = 138412290;
      *&buf[4] = v45;
      v26 = "Terminating connection and warning user about an untrusted SSL certificate. The account requires trusted SSL certificate. Account: %@";
      v27 = v24;
      v28 = v25;
LABEL_31:
      _os_log_impl(&dword_24244C000, v27, v28, v26, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v23, v13))
  {
    *buf = 138412290;
    *&buf[4] = v45;
    v26 = "Account does not require trusted certificate. Prompting user. Account: %@";
    v27 = v24;
    v28 = v13;
    goto LABEL_31;
  }

  if (SecTrustGetCertificateCount(a3) && (SecTrustGetCertificateAtIndex(a3, 0), (v31 = SecCertificateGetSHA1Digest()) != 0))
  {
    v29 = v31;
    v32 = [(DATrustHandler *)self haveWarnedAboutCert:v31 forHost:v9];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v59 = 1;
    if (v32)
    {
LABEL_47:
      v20 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v29 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v59 = 1;
  }

  if (([MEMORY[0x277CF3AC8] promptForAllCerts] & 1) == 0)
  {
    v33 = [v9 lowercaseString];
    v34 = [(DATrustHandler *)self _serverSuffixesToAlwaysFail];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __69__DATrustHandler_handleTrust_forHost_forAccount_withCompletionBlock___block_invoke;
    v53[3] = &unk_278D4C878;
    v35 = v33;
    v54 = v35;
    v55 = buf;
    [v34 enumerateObjectsUsingBlock:v53];
  }

  if (!*(*&buf[8] + 24))
  {
    v41 = DALoggingwithCategory();
    v42 = *(v12 + 4);
    if (os_log_type_enabled(v41, v42))
    {
      *v56 = 138412290;
      v57 = v9;
      _os_log_impl(&dword_24244C000, v41, v42, "IT'S A TARP!!! We received an untrusted cert for %@. You really think we're going to fall for that?", v56, 0xCu);
    }

    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v36 = DALoggingwithCategory();
  if (os_log_type_enabled(v36, v13))
  {
    *v56 = 138412290;
    v57 = v9;
    _os_log_impl(&dword_24244C000, v36, v13, "prompting certificate for host: %@", v56, 0xCu);
  }

  v37 = objc_opt_new();
  [v37 setTrust:a3];
  [v37 setHost:v9];
  [v37 setService:v14];
  v38 = [(DATrustHandler *)self delegate];
  v39 = [v38 accountDescription];
  [v37 setConnectionDisplayName:v39];

  if (v43)
  {
    v40 = objc_opt_new();
    [v40 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CF9738]];
  }

  else
  {
    v40 = 0;
  }

  CFRetain(a3);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __69__DATrustHandler_handleTrust_forHost_forAccount_withCompletionBlock___block_invoke_11;
  v46[3] = &unk_278D4C8C8;
  v29 = v29;
  v47 = v29;
  v48 = self;
  v49 = v9;
  v52 = a3;
  v50 = v14;
  v51 = v10;
  [v37 showPromptWithOptions:v40 responseBlock:v46];

LABEL_28:
  _Block_object_dispose(buf, 8);

  v30 = *MEMORY[0x277D85DE8];
}

void __69__DATrustHandler_handleTrust_forHost_forAccount_withCompletionBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  if (([*(a1 + 32) hasSuffix:?] & 1) != 0 || (v5 = *(a1 + 32), objc_msgSend(v7, "substringFromIndex:", 1), v6 = objc_claimAutoreleasedReturnValue(), LODWORD(v5) = objc_msgSend(v5, "isEqualToString:", v6), v6, v5))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }
}

void __69__DATrustHandler_handleTrust_forHost_forAccount_withCompletionBlock___block_invoke_11(uint64_t a1, int a2)
{
  v4 = dataaccess_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__DATrustHandler_handleTrust_forHost_forAccount_withCompletionBlock___block_invoke_2;
  block[3] = &unk_278D4C8A0;
  v15 = a2;
  *&v5 = *(a1 + 32);
  *(&v5 + 1) = *(a1 + 40);
  v9 = v5;
  v6 = *(a1 + 48);
  v14 = *(a1 + 72);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  v13 = *(a1 + 64);
  dispatch_async(v4, block);
}

uint64_t __69__DATrustHandler_handleTrust_forHost_forAccount_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 80);
    v10[0] = 67109120;
    v10[1] = v4;
    _os_log_impl(&dword_24244C000, v2, v3, "got prompt response %d", v10, 8u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    [*(a1 + 40) setHaveWarnedAboutCert:v5 forHost:*(a1 + 48)];
  }

  if (*(a1 + 80) == 2)
  {
    v6 = [MEMORY[0x277CF9710] defaultTrustManager];
    [v6 allowTrust:*(a1 + 72) forHost:*(a1 + 48) service:*(a1 + 56)];
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    CFRelease(v7);
  }

  result = (*(*(a1 + 64) + 16))(*(a1 + 64), *(a1 + 80) != 0);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)handleTrustChallenge:(id)a3 forAccount:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (handleTrustChallenge_forAccount_completionHandler__onceToken != -1)
  {
    [DATrustHandler handleTrustChallenge:forAccount:completionHandler:];
  }

  v11 = [(DATrustHandler *)self delegate];
  v12 = [v11 persistentUUID];

  v13 = +[DAPowerAssertionManager sharedPowerAssertionManager];
  [v13 dropPowerAssertionsForGroupIdentifier:v12];

  v14 = handleTrustChallenge_forAccount_completionHandler__sTrustChallengeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__DATrustHandler_handleTrustChallenge_forAccount_completionHandler___block_invoke_2;
  block[3] = &unk_278D4C918;
  v21 = v8;
  v22 = self;
  v23 = v9;
  v24 = v12;
  v25 = v10;
  v15 = v10;
  v16 = v12;
  v17 = v9;
  v18 = v8;
  dispatch_async(v14, block);

  return 0;
}

uint64_t __68__DATrustHandler_handleTrustChallenge_forAccount_completionHandler___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.dataaccess.trustChallengeQueue", v0);
  v2 = handleTrustChallenge_forAccount_completionHandler__sTrustChallengeQueue;
  handleTrustChallenge_forAccount_completionHandler__sTrustChallengeQueue = v1;

  handleTrustChallenge_forAccount_completionHandler__outstandingTrustChallengeLock = dispatch_semaphore_create(1);

  return MEMORY[0x2821F96F8]();
}

void __68__DATrustHandler_handleTrustChallenge_forAccount_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v2, v3))
  {
    *buf = 0;
    _os_log_impl(&dword_24244C000, v2, v3, "Grabbing trust challenge lock...", buf, 2u);
  }

  dispatch_semaphore_wait(handleTrustChallenge_forAccount_completionHandler__outstandingTrustChallengeLock, 0xFFFFFFFFFFFFFFFFLL);
  v4 = DALoggingwithCategory();
  if (os_log_type_enabled(v4, v3))
  {
    *buf = 0;
    _os_log_impl(&dword_24244C000, v4, v3, "Lock acquired. Checking trust.", buf, 2u);
  }

  v5 = [*(a1 + 32) protectionSpace];
  v6 = [v5 host];

  v7 = [*(a1 + 32) protectionSpace];
  v8 = [v7 serverTrust];

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__DATrustHandler_handleTrustChallenge_forAccount_completionHandler___block_invoke_17;
  v11[3] = &unk_278D4C8F0;
  v12 = *(a1 + 56);
  v13 = *(a1 + 32);
  v14 = *(a1 + 64);
  [v9 handleTrust:v8 forHost:v6 forAccount:v10 withCompletionBlock:v11];
}

void __68__DATrustHandler_handleTrustChallenge_forAccount_completionHandler___block_invoke_17(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = +[DAPowerAssertionManager sharedPowerAssertionManager];
  [v4 reattainPowerAssertionsForGroupIdentifier:*(a1 + 32)];

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = @"Not ";
    if (a2)
    {
      v7 = &stru_2854B2770;
    }

    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&dword_24244C000, v5, v6, "%@Continuing connection", &v15, 0xCu);
  }

  dispatch_semaphore_signal(handleTrustChallenge_forAccount_completionHandler__outstandingTrustChallengeLock);
  if (a2)
  {
    v8 = objc_alloc(MEMORY[0x277CBAB80]);
    v9 = [*(a1 + 40) protectionSpace];
    v10 = [v8 initWithTrust:{objc_msgSend(v9, "serverTrust")}];

    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))(v11, 0, v10);
    }

    else
    {
      v13 = [*(a1 + 40) sender];
      [v13 useCredential:v10 forAuthenticationChallenge:*(a1 + 40)];
    }

    goto LABEL_12;
  }

  v12 = *(a1 + 48);
  if (!v12)
  {
    v10 = [*(a1 + 40) sender];
    [v10 continueWithoutCredentialForAuthenticationChallenge:*(a1 + 40)];
LABEL_12:

    goto LABEL_13;
  }

  (*(v12 + 16))(v12, 1, 0);
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
}

- (DATrustHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end