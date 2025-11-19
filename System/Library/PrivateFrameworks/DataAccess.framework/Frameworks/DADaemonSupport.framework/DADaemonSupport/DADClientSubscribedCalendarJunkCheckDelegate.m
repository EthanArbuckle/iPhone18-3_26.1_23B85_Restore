@interface DADClientSubscribedCalendarJunkCheckDelegate
- (id)_createURLRequestForSubscriptionCalendarURL:(id)a3;
- (id)_findCalendarURLFromAccount:(id)a3;
- (id)_generateBodyWithURL:(id)a3;
- (void)_finishWithJunkStatusString:(id)a3 error:(id)a4;
- (void)checkSubscribedCalendarJunkStatus:(id)a3;
- (void)finishWithError:(id)a3;
@end

@implementation DADClientSubscribedCalendarJunkCheckDelegate

- (void)checkSubscribedCalendarJunkStatus:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DADClientSubscribedCalendarJunkCheckDelegate *)self _createURLRequestForSubscriptionCalendarURL:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAD30] sharedSession];
    v7 = [v5 HTTPBody];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __82__DADClientSubscribedCalendarJunkCheckDelegate_checkSubscribedCalendarJunkStatus___block_invoke;
    v14 = &unk_278F1D4C8;
    v15 = v4;
    v16 = self;
    v8 = [v6 uploadTaskWithRequest:v5 fromData:v7 completionHandler:&v11];

    [v8 resume];
  }

  else
  {
    v6 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v6, v9))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_248524000, v6, v9, "Checking whether subscribed calendar is junk failed. Unable to create a URL request. Calendar URL = %@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __82__DADClientSubscribedCalendarJunkCheckDelegate_checkSubscribedCalendarJunkStatus___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = v6;
  if ([v8 statusCode] == 200)
  {
    v9 = [v8 valueForHTTPHeaderField:@"X-Apple-Junk-Score"];
    v10 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277D03988] + 6);
    v12 = os_log_type_enabled(v10, v11);
    if (v9)
    {
      if (v12)
      {
        v13 = *(a1 + 32);
        v23 = 138412546;
        v24 = v9;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&dword_248524000, v10, v11, "Checking whether subscribed calendar is junk successful. Received result %@ for URL: %@", &v23, 0x16u);
      }

      goto LABEL_18;
    }

    if (v12)
    {
      v14 = *(a1 + 32);
      v23 = 138412290;
      v24 = v14;
      _os_log_impl(&dword_248524000, v10, v11, "Checking whether subscribed calendar returned success, but did not give us a junk score: %@", &v23, 0xCu);
    }
  }

  if (v8)
  {
    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = [v8 statusCode];
      v18 = *(a1 + 32);
      v23 = 138412802;
      v24 = v7;
      v25 = 2048;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_248524000, v15, v16, "Checking whether subscribed calendar is junk failed. Error = %@  Response status code = %ld  Calendar URL = %@", &v23, 0x20u);
    }
  }

  else
  {
LABEL_13:
    v15 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v15, v19))
    {
      v20 = *(a1 + 32);
      v23 = 138412546;
      v24 = v7;
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&dword_248524000, v15, v19, "Checking whether subscribed calendar is junk failed. Error = %@  Calendar URL = %@", &v23, 0x16u);
    }

    v8 = 0;
  }

  if (!v7)
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:10 userInfo:0];
    v9 = 0;
    goto LABEL_20;
  }

  v9 = 0;
LABEL_18:
  v21 = v7;
LABEL_20:
  [*(a1 + 40) _finishWithJunkStatusString:v9 error:v21];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)finishWithError:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_248524000, v5, v6, "Checking whether subscribed calendar is junk -finishWithError: called with error %@", &v8, 0xCu);
  }

  [(DADClientSubscribedCalendarJunkCheckDelegate *)self _finishWithJunkStatusString:0 error:v4];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)_createURLRequestForSubscriptionCalendarURL:(id)a3
{
  v4 = a3;
  v5 = sharedDAAccountStore();
  v6 = [v5 aa_primaryAppleAccount];

  if (v6)
  {
    v7 = [(DADClientSubscribedCalendarJunkCheckDelegate *)self _findCalendarURLFromAccount:v6];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v7];
      [v8 setPath:@"/subscribe/validate"];
      v9 = [v8 URL];

      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = 0;
LABEL_6:
  v10 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:@"https://caldav.icloud.com"];
  [v10 setPath:@"/subscribe/validate"];
  v11 = [v10 URL];
  v12 = objc_alloc(MEMORY[0x277CCAB70]);
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  v14 = [v12 initWithURL:v13];
  [v14 setHTTPMethod:@"POST"];
  v15 = [MEMORY[0x277CBEBC0] URLWithString:@"/subscribe/validate"];
  [v14 setMainDocumentURL:v15];

  [v14 addValue:@"text/xml; charset=utf-8" forHTTPHeaderField:@"content-type"];
  v16 = [(DADClientSubscribedCalendarJunkCheckDelegate *)self _generateBodyWithURL:v4];

  [v14 setHTTPBody:v16];
  if (v9 && ([v14 aa_addAuthTokenOrBasicAuthHeaderWithAccount:v6 preferUsingPassword:0] & 1) == 0)
  {
    [v14 setURL:v11];
    v17 = DALoggingwithCategory();
    v18 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v17, v18))
    {
      *v20 = 0;
      _os_log_impl(&dword_248524000, v17, v18, "Unable to add authentication headers. Sending subscribed calendar report without it.", v20, 2u);
    }
  }

  return v14;
}

- (id)_generateBodyWithURL:(id)a3
{
  v3 = MEMORY[0x277CFDCA0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = *MEMORY[0x277CFDE60];
  v7 = *MEMORY[0x277CFDE90];
  [v5 startElement:*MEMORY[0x277CFDE60] inNamespace:*MEMORY[0x277CFDE90] withAttributes:0];
  v8 = *MEMORY[0x277CFDF38];
  v9 = *MEMORY[0x277CFDEF8];
  v10 = [v4 absoluteString];

  [v5 appendElement:v8 inNamespace:v9 withStringContent:v10 withAttributeNamesAndValues:0];
  [v5 endElement:v6 inNamespace:v7];
  v11 = [v5 data];

  return v11;
}

- (void)_finishWithJunkStatusString:(id)a3 error:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (![(DADisableableObject *)self isDisabled]&& ![(DADClientDelegate *)self finished])
  {
    [(DADClientDelegate *)self setFinished:1];
    v7 = [(DADClientDelegate *)self client];
    v8 = [v7 rawConnection];

    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
      [v9 setObject:*MEMORY[0x277D03AF0] forKeyedSubscript:*MEMORY[0x277D03C88]];
      v10 = [(DADClientDelegate *)self delegateID];
      [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x277D03AF8]];

      [v9 setObject:v13 forKeyedSubscript:*MEMORY[0x277D03B00]];
      v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
      [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x277D03B40]];

      v12 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(v8, v12);
    }
  }
}

- (id)_findCalendarURLFromAccount:(id)a3
{
  v3 = [a3 calSyncingAccountUsingChildAccounts:0];
  v4 = [objc_alloc(MEMORY[0x277D03720]) initWithBackingAccountInfo:v3];
  v5 = [v4 urlFromDataclassPropertiesForDataclass:*MEMORY[0x277CB8958]];
  v6 = [v5 absoluteString];

  return v6;
}

@end