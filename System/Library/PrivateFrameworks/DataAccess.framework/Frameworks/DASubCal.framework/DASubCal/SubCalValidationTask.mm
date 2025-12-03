@interface SubCalValidationTask
- (BOOL)_isInvalidVCalBeginningForData:(id)data;
- (SubCalValidationTaskDelegate)delegate;
- (id)_searchForCalNameInConnectionData:(id)data;
- (id)_stringBeforeNewline:(const char *)newline length:(unint64_t)length;
- (void)_tryQuickValidationCurrentData:(id)data;
- (void)didFinish;
- (void)handleTrustChallenge:(id)challenge forSubCalURLRequest:(id)request;
- (void)handleTrustChallenge:(id)challenge forSubCalURLRequest:(id)request completionHandler:(id)handler;
- (void)performDelegateCallbackWithError:(id)error;
- (void)performTask;
- (void)subCalURLRequest:(id)request finishedWithData:(id)data error:(id)error;
- (void)subCalURLRequest:(id)request updatedData:(id)data;
- (void)subCalURLRequestNeedsUsernameAndPasswordForHost:(id)host continuation:(id)continuation;
- (void)willFinish;
@end

@implementation SubCalValidationTask

- (void)willFinish
{
  request = [(SubCalValidationTask *)self request];
  [request cancel];

  [(SubCalValidationTask *)self setRequest:0];
}

- (void)performDelegateCallbackWithError:(id)error
{
  errorCopy = error;
  delegate = [(SubCalValidationTask *)self delegate];
  calendarName = [(SubCalValidationTask *)self calendarName];
  icsDocument = [(SubCalValidationTask *)self icsDocument];
  icsData = [(SubCalValidationTask *)self icsData];
  [delegate subCalValidationTask:self finishedWithError:errorCopy calendarName:calendarName document:icsDocument calendarData:icsData];
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
    taskManager = [(SubCalDATask *)self taskManager];
    account = [taskManager account];
    wasUserInitiated = [account wasUserInitiated];

    v6 = [SubCalURLRequest alloc];
    subscriptionURL = [(SubCalValidationTask *)self subscriptionURL];
    v8 = [(SubCalURLRequest *)v6 initWithURL:subscriptionURL wasUserRequested:wasUserInitiated];
    [(SubCalValidationTask *)self setRequest:v8];

    statusReport = [(SubCalDATask *)self statusReport];
    request = [(SubCalValidationTask *)self request];
    [request setStatusReport:statusReport];

    request2 = [(SubCalValidationTask *)self request];
    [request2 setDelegate:self];

    username = [(SubCalValidationTask *)self username];
    request3 = [(SubCalValidationTask *)self request];
    [request3 setUsername:username];

    password = [(SubCalValidationTask *)self password];
    request4 = [(SubCalValidationTask *)self request];
    [request4 setPassword:password];

    if ([(SubCalValidationTask *)self performQuickValidation]|| [(SubCalValidationTask *)self useShortTimeout])
    {
      request5 = [(SubCalValidationTask *)self request];
      [request5 setUseShortTimeoutInterval:1];
    }

    request6 = [(SubCalValidationTask *)self request];
    [request6 startConnection];
  }

  else
  {
    request6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D03F98] code:1 userInfo:0];
    [(SubCalDATask *)self finishWithError:?];
  }
}

- (void)handleTrustChallenge:(id)challenge forSubCalURLRequest:(id)request
{
  challengeCopy = challenge;
  delegate = [(SubCalValidationTask *)self delegate];
  [delegate handleTrustChallenge:challengeCopy forTask:self];
}

- (void)handleTrustChallenge:(id)challenge forSubCalURLRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  challengeCopy = challenge;
  delegate = [(SubCalValidationTask *)self delegate];
  [delegate handleTrustChallenge:challengeCopy forTask:self completionHandler:handlerCopy];
}

- (void)subCalURLRequestNeedsUsernameAndPasswordForHost:(id)host continuation:(id)continuation
{
  hostCopy = host;
  continuationCopy = continuation;
  delegate = [(SubCalValidationTask *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate subCalTask:self needsUsernameAndPasswordForHost:hostCopy continuation:continuationCopy];
  }

  else
  {
    (*(continuationCopy + 2))(continuationCopy, 0, 0);
  }
}

- (void)subCalURLRequest:(id)request updatedData:(id)data
{
  dataCopy = data;
  requestCopy = request;
  delegate = [(SubCalValidationTask *)self delegate];
  receivedDataSize = [requestCopy receivedDataSize];
  expectedDataSize = [requestCopy expectedDataSize];

  [delegate subCalValidationTask:self downloadProgressedTo:receivedDataSize outOf:expectedDataSize];
  if ([(SubCalValidationTask *)self performQuickValidation])
  {
    [(SubCalValidationTask *)self _tryQuickValidationCurrentData:dataCopy];
  }
}

- (void)subCalURLRequest:(id)request finishedWithData:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  if (dataCopy)
  {
    v15 = errorCopy;
    v9 = [objc_alloc(MEMORY[0x277D7F108]) initWithData:dataCopy options:0 error:&v15];
    v10 = v15;

    if (!v10)
    {
      calendar = [v9 calendar];
      if (calendar)
      {
        [(SubCalValidationTask *)self setIcsData:dataCopy];
        [(SubCalValidationTask *)self setIcsDocument:v9];
        x_wr_calname = [calendar x_wr_calname];
        [(SubCalValidationTask *)self setCalendarName:x_wr_calname];

        calendarName = [(SubCalValidationTask *)self calendarName];

        if (!calendarName)
        {
          x_wr_caldesc = [calendar x_wr_caldesc];
          [(SubCalValidationTask *)self setCalendarName:x_wr_caldesc];
        }

        v10 = 0;
      }

      else
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D03F98] code:4 userInfo:0];
      }
    }

    errorCopy = v10;
  }

  [(SubCalDATask *)self finishWithError:errorCopy];
}

- (BOOL)_isInvalidVCalBeginningForData:(id)data
{
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v8 = [dataCopy2 length];

  result = 0;
  if (bytes && v8 >= 0xF)
  {
    if (!strncmp(bytes, "BEGIN:VCALENDAR", 0xFuLL))
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

- (id)_stringBeforeNewline:(const char *)newline length:(unint64_t)length
{
  newlineCopy = newline;
  if (newline)
  {
    v5 = strnstr(newline, "\n", length);
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:newlineCopy length:v5 - newlineCopy encoding:4];
      newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
      newlineCopy = [v6 stringByTrimmingCharactersInSet:newlineCharacterSet];
    }

    else
    {
      newlineCopy = 0;
    }
  }

  return newlineCopy;
}

- (id)_searchForCalNameInConnectionData:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  if (bytes)
  {
    v6 = bytes;
    v7 = [dataCopy length];
    foundCalName = [(SubCalValidationTask *)self foundCalName];
    searchIndex = [(SubCalValidationTask *)self searchIndex];
    searchIndex2 = searchIndex;
    if (foundCalName)
    {
LABEL_12:
      v15 = [(SubCalValidationTask *)self _stringBeforeNewline:v6 + searchIndex2 length:v7 - [(SubCalValidationTask *)self searchIndex]];
      goto LABEL_15;
    }

    if (searchIndex < 0xE)
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
      searchIndex2 = [(SubCalValidationTask *)self searchIndex];
      goto LABEL_12;
    }

    [(SubCalValidationTask *)self setSearchIndex:v7];
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (void)_tryQuickValidationCurrentData:(id)data
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([(SubCalValidationTask *)self foundBeginVCal]|| ![(SubCalValidationTask *)self _isInvalidVCalBeginningForData:dataCopy])
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

  v10 = [(SubCalValidationTask *)self _searchForCalNameInConnectionData:dataCopy, *v15];
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