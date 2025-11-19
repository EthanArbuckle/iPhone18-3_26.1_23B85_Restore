@interface DADClientSubscribedCalendarDownloadDelegate
- (BOOL)shouldTrustChallenge:(id)a3;
- (DADClientSubscribedCalendarDownloadDelegate)initWithURL:(id)a3 client:(id)a4;
- (unsigned)evaluateTrust:(__SecTrust *)a3;
- (void)beginDownload;
- (void)createAndSubmitValidationTask;
- (void)dealloc;
- (void)finishWithError:(id)a3 summary:(id)a4;
- (void)handleTrustChallenge:(id)a3 forTask:(id)a4 completionHandler:(id)a5;
- (void)subCalTask:(id)a3 needsUsernameAndPasswordForHost:(id)a4 continuation:(id)a5;
- (void)subCalValidationTask:(id)a3 downloadProgressedTo:(int64_t)a4 outOf:(int64_t)a5;
- (void)subCalValidationTask:(id)a3 finishedWithError:(id)a4 calendarName:(id)a5 document:(id)a6 calendarData:(id)a7;
- (void)tryUsername:(id)a3 password:(id)a4;
@end

@implementation DADClientSubscribedCalendarDownloadDelegate

- (DADClientSubscribedCalendarDownloadDelegate)initWithURL:(id)a3 client:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = DADClientSubscribedCalendarDownloadDelegate;
  v8 = [(DADClientDelegate *)&v11 initWithAccountID:0 client:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_subscribedCalendarURL, a3);
  }

  return v9;
}

- (void)dealloc
{
  [(DADClientDelegate *)self disable];
  v3.receiver = self;
  v3.super_class = DADClientSubscribedCalendarDownloadDelegate;
  [(DADClientDelegate *)&v3 dealloc];
}

- (void)beginDownload
{
  if (![(DADisableableObject *)self isDisabled])
  {
    v3 = objc_alloc_init(MEMORY[0x277D037E0]);
    taskManager = self->_taskManager;
    self->_taskManager = v3;

    [(DADClientSubscribedCalendarDownloadDelegate *)self createAndSubmitValidationTask];
  }
}

- (void)createAndSubmitValidationTask
{
  v3 = sharedDAAccountStore();
  v4 = [v3 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8D10]];

  v5 = [MEMORY[0x277D03738] sharedInstance];
  [v5 loadDaemonBundleForACAccountType:v4];

  v6 = NSClassFromString(&cfstr_Subcalvalidati.isa);
  v7 = objc_alloc_init(v6);
  [v7 setDelegate:self];
  [v7 setSubscriptionURL:self->_subscribedCalendarURL];
  [v7 setPerformQuickValidation:0];
  [v7 setUseShortTimeout:1];
  [(DATaskManager *)self->_taskManager submitQueuedTask:v7];
}

- (void)subCalValidationTask:(id)a3 finishedWithError:(id)a4 calendarName:(id)a5 document:(id)a6 calendarData:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (![(DADisableableObject *)self isDisabled]&& ![(DADClientDelegate *)self finished])
  {
    if (v13)
    {
      v17 = 0;
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x277D03950]);
      [v17 setTitle:v14];
      v18 = [v12 subscriptionURL];
      [v17 setSubscriptionURL:v18];

      v19 = [v15 calendar];
      v20 = v19;
      if (v19)
      {
        v21 = [v19 x_wr_caldesc];
        [v17 setNotes:v21];

        v22 = [v20 x_apple_calendar_color];
        v23 = v22;
        if (v22)
        {
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"#%02X%02X%02X", objc_msgSend(v22, "red"), objc_msgSend(v22, "green"), objc_msgSend(v22, "blue")];
          [v17 setColor:v24];
        }

        v30 = v23;
        v25 = [v20 x_apple_auto_refresh];
        v26 = v25;
        if (v25)
        {
          [v25 timeInterval];
          [v17 setRefreshInterval:?];
        }

        v27 = [v20 x_wr_relcalid];
        [v17 setSubscriptionID:v27];

        [v17 setData:v16];
      }

      else
      {
        v28 = DALoggingwithCategory();
        v29 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v28, v29))
        {
          *buf = 0;
          _os_log_impl(&dword_248524000, v28, v29, "No valid document after downloading subscribed calendar", buf, 2u);
        }
      }
    }

    [(DADClientSubscribedCalendarDownloadDelegate *)self finishWithError:v13 summary:v17];
  }
}

- (void)subCalValidationTask:(id)a3 downloadProgressedTo:(int64_t)a4 outOf:(int64_t)a5
{
  v19[4] = *MEMORY[0x277D85DE8];
  if (![(DADisableableObject *)self isDisabled])
  {
    v8 = [(DADClientDelegate *)self client];
    v9 = [v8 rawConnection];

    if (v9)
    {
      v10 = *MEMORY[0x277D03C88];
      v19[0] = *MEMORY[0x277D03B28];
      v11 = *MEMORY[0x277D03E58];
      v18[0] = v10;
      v18[1] = v11;
      v12 = [(DADClientDelegate *)self delegateID];
      v19[1] = v12;
      v18[2] = *MEMORY[0x277D03B30];
      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
      v19[2] = v13;
      v18[3] = *MEMORY[0x277D03E90];
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
      v19[3] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

      v16 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(v9, v16);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldTrustChallenge:(id)a3
{
  v4 = [a3 protectionSpace];
  v5 = [v4 serverTrust];

  v6 = [(DADClientSubscribedCalendarDownloadDelegate *)self evaluateTrust:v5];
  return (v6 < 6) & (0x12u >> v6);
}

- (unsigned)evaluateTrust:(__SecTrust *)a3
{
  if (!a3)
  {
    return 3;
  }

  v4 = 3;
  if (SecTrustGetCertificateCount(a3) >= 1)
  {
    v6 = 3;
    if (MEMORY[0x24C1D12A0](a3, &v6))
    {
      return 3;
    }

    else
    {
      return v6;
    }
  }

  return v4;
}

- (void)handleTrustChallenge:(id)a3 forTask:(id)a4 completionHandler:(id)a5
{
  v12 = a3;
  v7 = a5;
  if ([(DADClientSubscribedCalendarDownloadDelegate *)self shouldTrustChallenge:v12])
  {
    v8 = objc_alloc(MEMORY[0x277CCACF0]);
    v9 = [v12 protectionSpace];
    v10 = [v8 initWithTrust:{objc_msgSend(v9, "serverTrust")}];

    if (v7)
    {
      v7[2](v7, 0, v10);
    }

    else
    {
      v11 = [v12 sender];
      [v11 useCredential:v10 forAuthenticationChallenge:v12];
    }
  }

  else
  {
    if (v7)
    {
      v7[2](v7, 1, 0);
      goto LABEL_9;
    }

    v10 = [v12 sender];
    [v10 continueWithoutCredentialForAuthenticationChallenge:v12];
  }

LABEL_9:
}

- (void)subCalTask:(id)a3 needsUsernameAndPasswordForHost:(id)a4 continuation:(id)a5
{
  v19[3] = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [(DADClientDelegate *)self client];
  v8 = [v7 rawConnection];

  if (v8)
  {
    v9 = MEMORY[0x24C1D1770](v6);
    passwordContinuation = self->_passwordContinuation;
    self->_passwordContinuation = v9;

    v11 = *MEMORY[0x277D03C88];
    v19[0] = *MEMORY[0x277D03B20];
    v12 = *MEMORY[0x277D03E58];
    v18[0] = v11;
    v18[1] = v12;
    v13 = [(DADClientDelegate *)self delegateID];
    v18[2] = *MEMORY[0x277D03E68];
    subscribedCalendarURL = self->_subscribedCalendarURL;
    v19[1] = v13;
    v19[2] = subscribedCalendarURL;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

    v16 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_connection_send_message(v8, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)tryUsername:(id)a3 password:(id)a4
{
  passwordContinuation = self->_passwordContinuation;
  if (passwordContinuation)
  {
    passwordContinuation[2](passwordContinuation, a3, a4);
    v6 = self->_passwordContinuation;
    self->_passwordContinuation = 0;
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      *v9 = 0;
      _os_log_impl(&dword_248524000, v7, v8, "Received a password, but don't have a password continuation block.", v9, 2u);
    }
  }
}

- (void)finishWithError:(id)a3 summary:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(DADisableableObject *)self isDisabled])
  {
    v8 = MEMORY[0x277D03988];
    if (self->_passwordContinuation)
    {
      v9 = DALoggingwithCategory();
      v10 = *(v8 + 3);
      if (os_log_type_enabled(v9, v10))
      {
        *buf = 138412546;
        v35 = v6;
        v36 = 2112;
        v37 = v7;
        _os_log_impl(&dword_248524000, v9, v10, "[DADClientSubscribedCalendarDownloadDelegate finishWithError:summary:] called while we were waiting for a password. (error = %@, summary = %@)", buf, 0x16u);
      }

      passwordContinuation = self->_passwordContinuation;
      self->_passwordContinuation = 0;
    }

    if (![(DADClientDelegate *)self finished])
    {
      [(DADClientDelegate *)self setFinished:1];
      v12 = DALoggingwithCategory();
      v13 = *(v8 + 6);
      if (os_log_type_enabled(v12, v13))
      {
        *buf = 138412290;
        v35 = v6;
        _os_log_impl(&dword_248524000, v12, v13, "DADClientSubscribedCalendarDownloadDelegate finished with error %@", buf, 0xCu);
      }

      if (v7)
      {
        v31 = 0;
        v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v31];
        v15 = v31;
        if (!v14)
        {
          v16 = DALoggingwithCategory();
          v17 = *(v8 + 3);
          if (os_log_type_enabled(v16, v17))
          {
            *buf = 138412546;
            v35 = v7;
            v36 = 2112;
            v37 = v15;
            _os_log_impl(&dword_248524000, v16, v17, "Couldn't archive summary %@: %@", buf, 0x16u);
          }
        }
      }

      else
      {
        v14 = 0;
      }

      if (!(v6 | v14))
      {
        v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:10 userInfo:0];
      }

      v18 = [(DADClientDelegate *)self client];
      v19 = [v18 rawConnection];

      if (v19)
      {
        if (v14)
        {
          v20 = *MEMORY[0x277D03E60];
          v21 = v14;
        }

        else
        {
          v20 = *MEMORY[0x277D03B40];
          v22 = [v6 cal_serializableError];

          v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v22];
          v6 = v22;
        }

        v23 = *MEMORY[0x277D03C88];
        v33[0] = *MEMORY[0x277D03B18];
        v24 = *MEMORY[0x277D03E58];
        v32[0] = v23;
        v32[1] = v24;
        v25 = [(DADClientDelegate *)self delegateID];
        v32[2] = v20;
        v33[1] = v25;
        v33[2] = v21;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];

        v27 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_connection_send_message(v19, v27);
      }

      v28 = [(DADClientDelegate *)self client];
      v29 = [(DADClientDelegate *)self delegateID];
      [v28 delegateWithIDIsGoingAway:v29];

      [(DATaskManager *)self->_taskManager shutdown];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

@end