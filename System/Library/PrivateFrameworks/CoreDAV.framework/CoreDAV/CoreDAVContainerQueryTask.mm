@interface CoreDAVContainerQueryTask
+ (id)_copySearchTermsFromSearchString:(id)string;
- (CoreDAVContainerQueryTask)initWithSearchString:(id)string searchLimit:(unint64_t)limit atURL:(id)l appSpecificDataItemClass:(Class)class;
- (id)_initWithSearchTerms:(id)terms searchLimit:(unint64_t)limit atURL:(id)l appSpecificDataItemClass:(Class)class;
- (id)copyDefaultParserForContentType:(id)type;
- (id)requestBody;
- (void)addFiltersToXMLData:(id)data;
- (void)finishCoreDAVTaskWithError:(id)error;
@end

@implementation CoreDAVContainerQueryTask

+ (id)_copySearchTermsFromSearchString:(id)string
{
  stringCopy = string;
  v4 = [(__CFString *)stringCopy length];
  v5 = CFLocaleCopyCurrent();
  v29.location = 0;
  v29.length = v4;
  v6 = CFStringTokenizerCreate(*MEMORY[0x277CBECE8], stringCopy, v29, 0, v5);
  v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  while (CFStringTokenizerAdvanceToNextToken(v6))
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v6);
    v9 = [MEMORY[0x277CCAE60] valueWithRange:{CurrentTokenRange.location, CurrentTokenRange.length}];
    [v7 addObject:v9];
  }

  CFRelease(v6);
  CFRelease(v5);
  if (!_copySearchTermsFromSearchString____friendlyPunctuationCharacterSet)
  {
    v10 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-@._"];
    v11 = _copySearchTermsFromSearchString____friendlyPunctuationCharacterSet;
    _copySearchTermsFromSearchString____friendlyPunctuationCharacterSet = v10;
  }

  if ([v7 count])
  {
    v12 = 0;
    do
    {
      v13 = [v7 objectAtIndex:v12];
      rangeValue = [v13 rangeValue];
      v16 = v15;

      rangeValue2 = [(__CFString *)stringCopy length];
      if (v12 >= [v7 count] - 1)
      {
        v20 = 0;
        if (rangeValue)
        {
LABEL_11:
          v27 = rangeValue + v16;
          while (1)
          {
            v21 = rangeValue - 1;
            if (![_copySearchTermsFromSearchString____friendlyPunctuationCharacterSet characterIsMember:{-[__CFString characterAtIndex:](stringCopy, "characterAtIndex:", rangeValue - 1, v27)}])
            {
              break;
            }

            ++v16;
            --rangeValue;
            if (!v21)
            {
              v16 = v27;
              break;
            }
          }
        }
      }

      else
      {
        v18 = [v7 objectAtIndex:v12 + 1];
        rangeValue2 = [v18 rangeValue];
        v20 = v19;

        if (rangeValue)
        {
          goto LABEL_11;
        }
      }

      v22 = v16 + rangeValue;
      ++v12;
      while (v22 < rangeValue2 && [_copySearchTermsFromSearchString____friendlyPunctuationCharacterSet characterIsMember:{-[__CFString characterAtIndex:](stringCopy, "characterAtIndex:")}])
      {
        if (++v16 + rangeValue == rangeValue2 && v20)
        {
          v16 += v20;
          [v7 removeObjectAtIndex:v12];
          if (v12 < [v7 count])
          {
            v23 = [v7 objectAtIndex:v12];
            rangeValue2 = [v23 rangeValue];
            v20 = v24;
          }
        }

        v22 = v16 + rangeValue;
      }

      v25 = [(__CFString *)stringCopy substringWithRange:rangeValue, v16];
      [v28 addObject:v25];
    }

    while (v12 < [v7 count]);
  }

  return v28;
}

- (CoreDAVContainerQueryTask)initWithSearchString:(id)string searchLimit:(unint64_t)limit atURL:(id)l appSpecificDataItemClass:(Class)class
{
  lCopy = l;
  v11 = [CoreDAVContainerQueryTask _copySearchTermsFromSearchString:string];
  v12 = [(CoreDAVContainerQueryTask *)self initWithSearchTerms:v11 searchLimit:limit atURL:lCopy appSpecificDataItemClass:class];

  return v12;
}

- (id)_initWithSearchTerms:(id)terms searchLimit:(unint64_t)limit atURL:(id)l appSpecificDataItemClass:(Class)class
{
  termsCopy = terms;
  v15.receiver = self;
  v15.super_class = CoreDAVContainerQueryTask;
  v12 = [(CoreDAVTask *)&v15 initWithURL:l];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_searchTerms, terms);
    v13->_searchLimit = limit;
    if (!class)
    {
      class = objc_opt_class();
    }

    v13->_appSpecificDataItemClass = class;
    v13->super._depth = 3;
  }

  return v13;
}

- (void)addFiltersToXMLData:(id)data
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v8 = v11;
      _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_ERROR, "addFiltersToXMLData: to be implemented by subclass %{public}@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)requestBody
{
  v3 = objc_alloc_init(CoreDAVXMLData);
  [(CoreDAVXMLData *)v3 startElement:self->_appSpecificQueryCommand inNamespace:self->_appSpecificNamespace withAttributeNamesAndValues:0];
  [(CoreDAVXMLData *)v3 startElement:@"prop" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
  [(CoreDAVXMLData *)v3 appendElement:@"getetag" inNamespace:@"DAV:" withStringContent:0 withAttributeNamesAndValues:0];
  [(CoreDAVXMLData *)v3 appendElement:self->_appSpecificDataProp inNamespace:self->_appSpecificNamespace withStringContent:0 withAttributeNamesAndValues:0];
  [(CoreDAVXMLData *)v3 endElement:@"prop" inNamespace:@"DAV:"];
  [(CoreDAVContainerQueryTask *)self addFiltersToXMLData:v3];
  [(CoreDAVXMLData *)v3 endElement:self->_appSpecificQueryCommand inNamespace:self->_appSpecificNamespace];
  data = [(CoreDAVXMLData *)v3 data];

  return data;
}

- (id)copyDefaultParserForContentType:(id)type
{
  v4 = [CoreDAVXMLParser alloc];
  v5 = objc_opt_class();
  v6 = [(CoreDAVTask *)self url];
  v7 = [(CoreDAVXMLParser *)v4 initWithRootElementNameSpace:@"DAV:" name:@"multistatus" parseClass:v5 baseURL:v6];

  v8 = [[CoreDAVItemParserMapping alloc] initWithNameSpace:@"DAV:" name:@"getetag" parseClass:objc_opt_class()];
  v9 = [[CoreDAVItemParserMapping alloc] initWithNameSpace:self->_appSpecificNamespace name:self->_appSpecificDataProp parseClass:objc_opt_class()];
  v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
  [v10 addObject:v8];
  [v10 addObject:v9];
  [(CoreDAVXMLParser *)v7 setParseHints:v10];

  return v7;
}

- (void)finishCoreDAVTaskWithError:(id)error
{
  v66 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    code = [(__CFString *)errorCopy code];
    v7 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v9 = [v7 logHandleForAccountInfoProvider:WeakRetained];

    if (code == 1)
    {
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v63 = objc_opt_class();
          v11 = v63;
          v12 = "%{public}@ cancelled";
          v13 = v10;
          v14 = OS_LOG_TYPE_INFO;
          v15 = 12;
LABEL_29:
          _os_log_impl(&dword_2452FB000, v13, v14, v12, buf, v15);

          goto LABEL_30;
        }

        goto LABEL_30;
      }
    }

    else if (v9)
    {
      v42 = v9;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v63 = objc_opt_class();
        v64 = 2112;
        v65 = v5;
        v11 = v63;
        v12 = "%{public}@ failed: %@";
        v13 = v42;
        v14 = OS_LOG_TYPE_DEFAULT;
        v15 = 22;
        goto LABEL_29;
      }

LABEL_30:
    }

    v41 = v5;
    LOBYTE(v18) = 0;
    v16 = 0;
    goto LABEL_32;
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  responseBodyParser = [(CoreDAVTask *)self responseBodyParser];
  [responseBodyParser rootElement];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v49 = v60 = 0u;
  responses = [v49 responses];
  v55 = [responses countByEnumeratingWithState:&v57 objects:v61 count:16];
  v18 = 0;
  if (v55)
  {
    v19 = *v58;
    v52 = *v58;
    v51 = responses;
    do
    {
      v20 = 0;
      do
      {
        if (*v58 != v19)
        {
          objc_enumerationMutation(responses);
        }

        v21 = *(*(&v57 + 1) + 8 * v20);
        errorItem = [(__CFString *)v21 errorItem];
        numberOfMatchesWithinLimits = [errorItem numberOfMatchesWithinLimits];

        if (numberOfMatchesWithinLimits)
        {
          v24 = +[CoreDAVLogging sharedLogging];
          v25 = objc_loadWeakRetained(&self->super._accountInfoProvider);
          payloadAsString = [v24 logHandleForAccountInfoProvider:v25];

          if (payloadAsString && os_log_type_enabled(payloadAsString, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v63 = @"number-of-matches-within-limits";
            v64 = 2112;
            v65 = v21;
            _os_log_impl(&dword_2452FB000, payloadAsString, OS_LOG_TYPE_DEBUG, "Received %@ response %@", buf, 0x16u);
          }

          v18 = 1;
        }

        else
        {
          successfulPropertiesToValues = [(__CFString *)v21 successfulPropertiesToValues];
          v24 = successfulPropertiesToValues;
          if (successfulPropertiesToValues)
          {
            v28 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"getetag"];
            payloadAsString = [v28 payloadAsString];

            v29 = [v24 CDVObjectForKeyWithNameSpace:self->_appSpecificNamespace andName:self->_appSpecificDataProp];
            payload = [v29 payload];

            firstHref = [(__CFString *)v21 firstHref];
            payloadAsFullURL = [firstHref payloadAsFullURL];

            v31 = objc_alloc(self->_appSpecificDataItemClass);
            [(CoreDAVTask *)self url];
            v33 = v32 = v16;
            [(CoreDAVTask *)self accountInfoProvider];
            v34 = v18;
            v36 = v35 = self;
            v37 = payload;
            v38 = [v31 initWithURL:payloadAsFullURL eTag:payloadAsString dataPayload:payload inContainerWithURL:v33 withAccountInfoProvider:v36];

            self = v35;
            v18 = v34;

            v16 = v32;
            responses = v51;
            [v16 addObject:v38];
          }

          else
          {
            payloadAsString = +[CoreDAVLogging sharedLogging];
            v39 = objc_loadWeakRetained(&self->super._accountInfoProvider);
            v37 = [payloadAsString logHandleForAccountInfoProvider:v39];

            if (v37 && os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v63 = v21;
              _os_log_impl(&dword_2452FB000, v37, OS_LOG_TYPE_DEFAULT, "Unexpected status response %@", buf, 0xCu);
            }
          }

          v19 = v52;
        }

        ++v20;
      }

      while (v55 != v20);
      v40 = [responses countByEnumeratingWithState:&v57 objects:v61 count:16];
      v55 = v40;
    }

    while (v40);
  }

  v41 = 0;
  v5 = 0;
LABEL_32:
  self->super._numDownloadedElements = [v16 count];
  delegate = [(CoreDAVTask *)self delegate];
  v44 = objc_opt_respondsToSelector();

  delegate2 = [(CoreDAVTask *)self delegate];
  delegate3 = delegate2;
  if (v44)
  {
    [delegate2 containerQueryTask:self completedWithFoundItems:v16 limitReached:v18 & 1 error:v41];
LABEL_36:

    [(CoreDAVTask *)self setDelegate:0];
    goto LABEL_37;
  }

  v47 = objc_opt_respondsToSelector();

  if (v47)
  {
    delegate3 = [(CoreDAVTask *)self delegate];
    [delegate3 containerQueryTask:self completedWithFoundItems:v16 error:v41];
    goto LABEL_36;
  }

LABEL_37:
  v56.receiver = self;
  v56.super_class = CoreDAVContainerQueryTask;
  [(CoreDAVTask *)&v56 finishCoreDAVTaskWithError:v5];

  v48 = *MEMORY[0x277D85DE8];
}

@end