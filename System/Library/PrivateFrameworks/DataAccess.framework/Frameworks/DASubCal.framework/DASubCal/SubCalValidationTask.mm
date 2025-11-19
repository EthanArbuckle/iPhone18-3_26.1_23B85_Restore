@interface SubCalValidationTask
- (BOOL)_isInvalidVCalBeginningForData:(id)a3;
- (SubCalValidationTaskDelegate)delegate;
- (id)_searchForCalNameInConnectionData:(id)a3;
- (id)_stringBeforeNewline:(const char *)a3 length:(unint64_t)a4;
- (void)_tryQuickValidationCurrentData:(id)a3;
- (void)didFinish;
- (void)handleTrustChallenge:(id)a3 forSubCalURLRequest:(id)a4;
- (void)handleTrustChallenge:(id)a3 forSubCalURLRequest:(id)a4 completionHandler:(id)a5;
- (void)performDelegateCallbackWithError:(id)a3;
- (void)performTask;
- (void)subCalURLRequest:(id)a3 finishedWithData:(id)a4 error:(id)a5;
- (void)subCalURLRequest:(id)a3 updatedData:(id)a4;
- (void)subCalURLRequestNeedsUsernameAndPasswordForHost:(id)a3 continuation:(id)a4;
- (void)willFinish;
@end

@implementation SubCalValidationTask

- (void)willFinish
{
  v3 = [(SubCalValidationTask *)self request];
  [v3 cancel];

  [(SubCalValidationTask *)self setRequest:0];
}

- (void)performDelegateCallbackWithError:(id)a3
{
  v4 = a3;
  v8 = [(SubCalValidationTask *)self delegate];
  v5 = [(SubCalValidationTask *)self calendarName];
  v6 = [(SubCalValidationTask *)self icsDocument];
  v7 = [(SubCalValidationTask *)self icsData];
  [v8 subCalValidationTask:self finishedWithError:v4 calendarName:v5 document:v6 calendarData:v7];
}

- (void)didFinish
{
  [(SubCalValidationTask *)self setCalendarName:0];

  [(SubCalValidationTask *)self setIcsData:0];
}

- (void)performTask
{
  if (self->_subscriptionURL)
  {
    v3 = [(SubCalDATask *)self taskManager];
    v4 = [v3 account];
    v5 = [v4 wasUserInitiated];

    v6 = [SubCalURLRequest alloc];
    v7 = [(SubCalValidationTask *)self subscriptionURL];
    v8 = [(SubCalURLRequest *)v6 initWithURL:v7 wasUserRequested:v5];
    [(SubCalValidationTask *)self setRequest:v8];

    v9 = [(SubCalDATask *)self statusReport];
    v10 = [(SubCalValidationTask *)self request];
    [v10 setStatusReport:v9];

    v11 = [(SubCalValidationTask *)self request];
    [v11 setDelegate:self];

    v12 = [(SubCalValidationTask *)self username];
    v13 = [(SubCalValidationTask *)self request];
    [v13 setUsername:v12];

    v14 = [(SubCalValidationTask *)self password];
    v15 = [(SubCalValidationTask *)self request];
    [v15 setPassword:v14];

    if ([(SubCalValidationTask *)self performQuickValidation]|| [(SubCalValidationTask *)self useShortTimeout])
    {
      v16 = [(SubCalValidationTask *)self request];
      [v16 setUseShortTimeoutInterval:1];
    }

    v17 = [(SubCalValidationTask *)self request];
    [v17 startConnection];
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D03F98] code:1 userInfo:0];
    [(SubCalDATask *)self finishWithError:?];
  }
}

- (void)handleTrustChallenge:(id)a3 forSubCalURLRequest:(id)a4
{
  v5 = a3;
  v6 = [(SubCalValidationTask *)self delegate];
  [v6 handleTrustChallenge:v5 forTask:self];
}

- (void)handleTrustChallenge:(id)a3 forSubCalURLRequest:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(SubCalValidationTask *)self delegate];
  [v9 handleTrustChallenge:v8 forTask:self completionHandler:v7];
}

- (void)subCalURLRequestNeedsUsernameAndPasswordForHost:(id)a3 continuation:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SubCalValidationTask *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 subCalTask:self needsUsernameAndPasswordForHost:v8 continuation:v6];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)subCalURLRequest:(id)a3 updatedData:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(SubCalValidationTask *)self delegate];
  v8 = [v6 receivedDataSize];
  v9 = [v6 expectedDataSize];

  [v7 subCalValidationTask:self downloadProgressedTo:v8 outOf:v9];
  if ([(SubCalValidationTask *)self performQuickValidation])
  {
    [(SubCalValidationTask *)self _tryQuickValidationCurrentData:v10];
  }
}

- (void)subCalURLRequest:(id)a3 finishedWithData:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v7)
  {
    v15 = v8;
    v9 = [objc_alloc(MEMORY[0x277D7F108]) initWithData:v7 options:0 error:&v15];
    v10 = v15;

    if (!v10)
    {
      v11 = [v9 calendar];
      if (v11)
      {
        [(SubCalValidationTask *)self setIcsData:v7];
        [(SubCalValidationTask *)self setIcsDocument:v9];
        v12 = [v11 x_wr_calname];
        [(SubCalValidationTask *)self setCalendarName:v12];

        v13 = [(SubCalValidationTask *)self calendarName];

        if (!v13)
        {
          v14 = [v11 x_wr_caldesc];
          [(SubCalValidationTask *)self setCalendarName:v14];
        }

        v10 = 0;
      }

      else
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D03F98] code:4 userInfo:0];
      }
    }

    v8 = v10;
  }

  [(SubCalDATask *)self finishWithError:v8];
}

- (BOOL)_isInvalidVCalBeginningForData:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  result = 0;
  if (v7 && v8 >= 0xF)
  {
    if (!strncmp(v7, "BEGIN:VCALENDAR", 0xFuLL))
    {
      [(SubCalValidationTask *)self setFoundBeginVCal:1];
      [(SubCalValidationTask *)self setSearchIndex:15];
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (id)_stringBeforeNewline:(const char *)a3 length:(unint64_t)a4
{
  v4 = a3;
  if (a3)
  {
    v5 = strnstr(a3, "\n", a4);
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v4 length:v5 - v4 encoding:4];
      v7 = [MEMORY[0x277CCA900] newlineCharacterSet];
      v4 = [v6 stringByTrimmingCharactersInSet:v7];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)_searchForCalNameInConnectionData:(id)a3
{
  v4 = a3;
  v5 = [v4 bytes];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 length];
    v8 = [(SubCalValidationTask *)self foundCalName];
    v9 = [(SubCalValidationTask *)self searchIndex];
    v10 = v9;
    if (v8)
    {
LABEL_12:
      v15 = [(SubCalValidationTask *)self _stringBeforeNewline:v6 + v10 length:v7 - [(SubCalValidationTask *)self searchIndex]];
      goto LABEL_15;
    }

    if (v9 < 0xE)
    {
      v11 = 0;
    }

    else
    {
      v11 = [(SubCalValidationTask *)self searchIndex]- 13;
    }

    if (v7 >= v11)
    {
      v12 = v7 - v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = strnstr((v6 + v11), "X-WR-CALNAME:", v12);
    if (v13 || (v13 = strnstr((v6 + v11), "X-WR-CALDESC:", v12)) != 0)
    {
      v14 = v13;
      [(SubCalValidationTask *)self setFoundCalName:1];
      [(SubCalValidationTask *)self setSearchIndex:&v14[-v6 + 13]];
      v10 = [(SubCalValidationTask *)self searchIndex];
      goto LABEL_12;
    }

    [(SubCalValidationTask *)self setSearchIndex:v7];
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (void)_tryQuickValidationCurrentData:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SubCalValidationTask *)self foundBeginVCal]|| ![(SubCalValidationTask *)self _isInvalidVCalBeginningForData:v4])
  {
    v8 = 0;
    if (![(SubCalValidationTask *)self foundBeginVCal])
    {
      goto LABEL_15;
    }

    v9 = 0;
  }

  else
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v6))
    {
      *v15 = 138412290;
      *&v15[4] = objc_opt_class();
      v7 = *&v15[4];
      _os_log_impl(&dword_248587000, v5, v6, "%@ found invalid cal beginning. Cancelling due to invalid ics", v15, 0xCu);
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D03F98] code:4 userInfo:0];
    if (![(SubCalValidationTask *)self foundBeginVCal])
    {
      goto LABEL_14;
    }

    v9 = 1;
  }

  v10 = [(SubCalValidationTask *)self _searchForCalNameInConnectionData:v4, *v15];
  if (v10)
  {
    v11 = v10;
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v12, v13))
    {
      *v15 = 138412546;
      *&v15[4] = self;
      *&v15[12] = 2112;
      *&v15[14] = v11;
      _os_log_impl(&dword_248587000, v12, v13, "%@ found calendar name %@", v15, 0x16u);
    }

    [(SubCalValidationTask *)self setCalendarName:v11];
    goto LABEL_14;
  }

  if (v9)
  {
LABEL_14:
    [(SubCalDATask *)self finishWithError:v8, *v15, *&v15[8]];
  }

LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
}

- (SubCalValidationTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end