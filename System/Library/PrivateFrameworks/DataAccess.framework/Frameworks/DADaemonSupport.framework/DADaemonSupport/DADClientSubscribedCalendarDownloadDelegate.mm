@interface DADClientSubscribedCalendarDownloadDelegate
- (BOOL)shouldTrustChallenge:(id)challenge;
- (DADClientSubscribedCalendarDownloadDelegate)initWithURL:(id)l client:(id)client;
- (unsigned)evaluateTrust:(__SecTrust *)trust;
- (void)beginDownload;
- (void)createAndSubmitValidationTask;
- (void)dealloc;
- (void)finishWithError:(id)error summary:(id)summary;
- (void)handleTrustChallenge:(id)challenge forTask:(id)task completionHandler:(id)handler;
- (void)subCalTask:(id)task needsUsernameAndPasswordForHost:(id)host continuation:(id)continuation;
- (void)subCalValidationTask:(id)task downloadProgressedTo:(int64_t)to outOf:(int64_t)of;
- (void)subCalValidationTask:(id)task finishedWithError:(id)error calendarName:(id)name document:(id)document calendarData:(id)data;
- (void)tryUsername:(id)username password:(id)password;
@end

@implementation DADClientSubscribedCalendarDownloadDelegate

- (DADClientSubscribedCalendarDownloadDelegate)initWithURL:(id)l client:(id)client
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = DADClientSubscribedCalendarDownloadDelegate;
  v8 = [(DADClientDelegate *)&v11 initWithAccountID:0 client:client];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_subscribedCalendarURL, l);
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

  mEMORY[0x277D03738] = [MEMORY[0x277D03738] sharedInstance];
  [mEMORY[0x277D03738] loadDaemonBundleForACAccountType:v4];

  v6 = NSClassFromString(&cfstr_Subcalvalidati.isa);
  v7 = objc_alloc_init(v6);
  [v7 setDelegate:self];
  [v7 setSubscriptionURL:self->_subscribedCalendarURL];
  [v7 setPerformQuickValidation:0];
  [v7 setUseShortTimeout:1];
  [(DATaskManager *)self->_taskManager submitQueuedTask:v7];
}

- (void)subCalValidationTask:(id)task finishedWithError:(id)error calendarName:(id)name document:(id)document calendarData:(id)data
{
  taskCopy = task;
  errorCopy = error;
  nameCopy = name;
  documentCopy = document;
  dataCopy = data;
  if (![(DADisableableObject *)self isDisabled]&& ![(DADClientDelegate *)self finished])
  {
    if (errorCopy)
    {
      v17 = 0;
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x277D03950]);
      [v17 setTitle:nameCopy];
      subscriptionURL = [taskCopy subscriptionURL];
      [v17 setSubscriptionURL:subscriptionURL];

      calendar = [documentCopy calendar];
      v20 = calendar;
      if (calendar)
      {
        x_wr_caldesc = [calendar x_wr_caldesc];
        [v17 setNotes:x_wr_caldesc];

        x_apple_calendar_color = [v20 x_apple_calendar_color];
        v23 = x_apple_calendar_color;
        if (x_apple_calendar_color)
        {
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"#%02X%02X%02X", objc_msgSend(x_apple_calendar_color, "red"), objc_msgSend(x_apple_calendar_color, "green"), objc_msgSend(x_apple_calendar_color, "blue")];
          [v17 setColor:v24];
        }

        v30 = v23;
        x_apple_auto_refresh = [v20 x_apple_auto_refresh];
        v26 = x_apple_auto_refresh;
        if (x_apple_auto_refresh)
        {
          [x_apple_auto_refresh timeInterval];
          [v17 setRefreshInterval:?];
        }

        x_wr_relcalid = [v20 x_wr_relcalid];
        [v17 setSubscriptionID:x_wr_relcalid];

        [v17 setData:dataCopy];
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

    [(DADClientSubscribedCalendarDownloadDelegate *)self finishWithError:errorCopy summary:v17];
  }
}

- (void)subCalValidationTask:(id)task downloadProgressedTo:(int64_t)to outOf:(int64_t)of
{
  v19[4] = *MEMORY[0x277D85DE8];
  if (![(DADisableableObject *)self isDisabled])
  {
    client = [(DADClientDelegate *)self client];
    rawConnection = [client rawConnection];

    if (rawConnection)
    {
      v10 = *MEMORY[0x277D03C88];
      v19[0] = *MEMORY[0x277D03B28];
      v11 = *MEMORY[0x277D03E58];
      v18[0] = v10;
      v18[1] = v11;
      delegateID = [(DADClientDelegate *)self delegateID];
      v19[1] = delegateID;
      v18[2] = *MEMORY[0x277D03B30];
      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:to];
      v19[2] = v13;
      v18[3] = *MEMORY[0x277D03E90];
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:of];
      v19[3] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

      v16 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(rawConnection, v16);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldTrustChallenge:(id)challenge
{
  protectionSpace = [challenge protectionSpace];
  serverTrust = [protectionSpace serverTrust];

  v6 = [(DADClientSubscribedCalendarDownloadDelegate *)self evaluateTrust:serverTrust];
  return (v6 < 6) & (0x12u >> v6);
}

- (unsigned)evaluateTrust:(__SecTrust *)trust
{
  if (!trust)
  {
    return 3;
  }

  v4 = 3;
  if (SecTrustGetCertificateCount(trust) >= 1)
  {
    v6 = 3;
    if (MEMORY[0x24C1D12A0](trust, &v6))
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

- (void)handleTrustChallenge:(id)challenge forTask:(id)task completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  if ([(DADClientSubscribedCalendarDownloadDelegate *)self shouldTrustChallenge:challengeCopy])
  {
    v8 = objc_alloc(MEMORY[0x277CCACF0]);
    protectionSpace = [challengeCopy protectionSpace];
    sender2 = [v8 initWithTrust:{objc_msgSend(protectionSpace, "serverTrust")}];

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, sender2);
    }

    else
    {
      sender = [challengeCopy sender];
      [sender useCredential:sender2 forAuthenticationChallenge:challengeCopy];
    }
  }

  else
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1, 0);
      goto LABEL_9;
    }

    sender2 = [challengeCopy sender];
    [sender2 continueWithoutCredentialForAuthenticationChallenge:challengeCopy];
  }

LABEL_9:
}

- (void)subCalTask:(id)task needsUsernameAndPasswordForHost:(id)host continuation:(id)continuation
{
  v19[3] = *MEMORY[0x277D85DE8];
  continuationCopy = continuation;
  client = [(DADClientDelegate *)self client];
  rawConnection = [client rawConnection];

  if (rawConnection)
  {
    v9 = MEMORY[0x24C1D1770](continuationCopy);
    passwordContinuation = self->_passwordContinuation;
    self->_passwordContinuation = v9;

    v11 = *MEMORY[0x277D03C88];
    v19[0] = *MEMORY[0x277D03B20];
    v12 = *MEMORY[0x277D03E58];
    v18[0] = v11;
    v18[1] = v12;
    delegateID = [(DADClientDelegate *)self delegateID];
    v18[2] = *MEMORY[0x277D03E68];
    subscribedCalendarURL = self->_subscribedCalendarURL;
    v19[1] = delegateID;
    v19[2] = subscribedCalendarURL;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

    v16 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_connection_send_message(rawConnection, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)tryUsername:(id)username password:(id)password
{
  passwordContinuation = self->_passwordContinuation;
  if (passwordContinuation)
  {
    passwordContinuation[2](passwordContinuation, username, password);
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

- (void)finishWithError:(id)error summary:(id)summary
{
  v38 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  summaryCopy = summary;
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
        v35 = errorCopy;
        v36 = 2112;
        v37 = summaryCopy;
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
        v35 = errorCopy;
        _os_log_impl(&dword_248524000, v12, v13, "DADClientSubscribedCalendarDownloadDelegate finished with error %@", buf, 0xCu);
      }

      if (summaryCopy)
      {
        v31 = 0;
        v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:summaryCopy requiringSecureCoding:1 error:&v31];
        v15 = v31;
        if (!v14)
        {
          v16 = DALoggingwithCategory();
          v17 = *(v8 + 3);
          if (os_log_type_enabled(v16, v17))
          {
            *buf = 138412546;
            v35 = summaryCopy;
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

      if (!(errorCopy | v14))
      {
        errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:10 userInfo:0];
      }

      client = [(DADClientDelegate *)self client];
      rawConnection = [client rawConnection];

      if (rawConnection)
      {
        if (v14)
        {
          v20 = *MEMORY[0x277D03E60];
          v21 = v14;
        }

        else
        {
          v20 = *MEMORY[0x277D03B40];
          cal_serializableError = [errorCopy cal_serializableError];

          v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:cal_serializableError];
          errorCopy = cal_serializableError;
        }

        v23 = *MEMORY[0x277D03C88];
        v33[0] = *MEMORY[0x277D03B18];
        v24 = *MEMORY[0x277D03E58];
        v32[0] = v23;
        v32[1] = v24;
        delegateID = [(DADClientDelegate *)self delegateID];
        v32[2] = v20;
        v33[1] = delegateID;
        v33[2] = v21;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];

        v27 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_connection_send_message(rawConnection, v27);
      }

      client2 = [(DADClientDelegate *)self client];
      delegateID2 = [(DADClientDelegate *)self delegateID];
      [client2 delegateWithIDIsGoingAway:delegateID2];

      [(DATaskManager *)self->_taskManager shutdown];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

@end