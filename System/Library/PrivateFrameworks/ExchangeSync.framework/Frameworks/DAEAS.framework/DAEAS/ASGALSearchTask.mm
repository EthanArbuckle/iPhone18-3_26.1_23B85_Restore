@interface ASGALSearchTask
- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken;
- (BOOL)processContext:(id)context;
- (id)requestBody;
- (void)finishWithError:(id)error;
- (void)performTask;
@end

@implementation ASGALSearchTask

- (void)performTask
{
  query = [(ASSearchTask *)self query];
  [query setState:1];

  v4.receiver = self;
  v4.super_class = ASGALSearchTask;
  [(ASTask *)&v4 performTask];
}

- (id)requestBody
{
  v3 = objc_opt_new();
  [v3 switchToCodePage:15];
  [v3 openTag:5];
  [v3 openTag:7];
  [v3 appendTag:8 withStringContent:@"GAL"];
  query = [(ASSearchTask *)self query];
  searchString = [query searchString];
  [v3 appendTag:9 withStringContent:searchString];

  [v3 openTag:10];
  v6 = MEMORY[0x277CCACA8];
  query2 = [(ASSearchTask *)self query];
  v8 = [v6 stringWithFormat:@"0-%d", objc_msgSend(query2, "maxResults")];
  [v3 appendTag:11 withStringContent:v8];

  query3 = [(ASSearchTask *)self query];
  if ([query3 includePhotos])
  {
    taskManager = [(ASTask *)self taskManager];
    protocol = [taskManager protocol];
    supportsGALPhotos = [protocol supportsGALPhotos];

    if (supportsGALPhotos)
    {
      [v3 appendEmptyTag:33];
    }
  }

  else
  {
  }

  [v3 closeTag:10];
  [v3 closeTag:7];
  [v3 closeTag:5];
  data = [v3 data];

  return data;
}

- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken
{
  *page = 15;
  *token = 5;
  *statusToken = 12;
  return 1;
}

- (BOOL)processContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  currentlyParsingItem = [(ASTask *)self currentlyParsingItem];

  if (!currentlyParsingItem)
  {
    if (!self->super.super._haveSwitchedCodePage)
    {
      if (![contextCopy hasNumberOfTokensRemaining:2])
      {
        goto LABEL_17;
      }

      if ([contextCopy currentByte])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to search code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASGALSearchTask.m", 71, objc_msgSend(contextCopy, "curOffset")];
        v13 = DALoggingwithCategory();
        v14 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v13, v14))
        {
          *buf = 134217984;
          curOffset = [contextCopy curOffset];
          _os_log_impl(&dword_24A0AC000, v13, v14, "Failure at index %lld:", buf, 0xCu);
        }

        v15 = DALoggingwithCategory();
        if (!os_log_type_enabled(v15, v14))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        curOffset = v11;
        goto LABEL_28;
      }

      [contextCopy advanceOffsetByAmount:1];
      if ([contextCopy currentByte] != 15)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to search code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASGALSearchTask.m", 71, objc_msgSend(contextCopy, "curOffset")];
        v18 = DALoggingwithCategory();
        v14 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v18, v14))
        {
          *buf = 134217984;
          curOffset = [contextCopy curOffset];
          _os_log_impl(&dword_24A0AC000, v18, v14, "Failure at index %lld:", buf, 0xCu);
        }

        v15 = DALoggingwithCategory();
        if (!os_log_type_enabled(v15, v14))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        curOffset = v11;
        goto LABEL_28;
      }

      [contextCopy advanceOffsetByAmount:1];
      [contextCopy setCodePage:15];
      self->super.super._haveSwitchedCodePage = 1;
    }

    if (self->super.super._haveParsedCommand)
    {
LABEL_7:
      v10 = objc_opt_new();
      [v10 setExpectedResultType:0];
      [(ASTask *)self setCurrentlyParsingItem:v10];

      goto LABEL_2;
    }

    if (![contextCopy hasNumberOfTokensRemaining:1])
    {
      goto LABEL_17;
    }

    if (([contextCopy currentByte] & 0x3F) == 5)
    {
      self->super.super._haveParsedCommand = 1;
      goto LABEL_7;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected search response"];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASGALSearchTask.m", 72, objc_msgSend(contextCopy, "curOffset")];
    v17 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v17, v14))
    {
      *buf = 134217984;
      curOffset = [contextCopy curOffset];
      _os_log_impl(&dword_24A0AC000, v17, v14, "Failure at index %lld:", buf, 0xCu);
    }

    v15 = DALoggingwithCategory();
    if (!os_log_type_enabled(v15, v14))
    {
LABEL_29:

      [contextCopy setParseErrorReason:v12];
LABEL_30:
      parseErrorReason = [contextCopy parseErrorReason];
      v16 = parseErrorReason == 0;

      goto LABEL_31;
    }

    *buf = 138412290;
    curOffset = v11;
LABEL_28:
    _os_log_impl(&dword_24A0AC000, v15, v14, "failure reason was %@", buf, 0xCu);
    goto LABEL_29;
  }

LABEL_2:
  currentlyParsingItem2 = [(ASTask *)self currentlyParsingItem];
  taskManager = [(ASTask *)self taskManager];
  account = [taskManager account];
  [currentlyParsingItem2 parseASParseContext:contextCopy root:0 parent:0 callbackDict:0 streamCallbackDict:0 account:account];

  currentlyParsingItem = self->super.super._currentlyParsingItem;
  if (currentlyParsingItem && [(ASItem *)currentlyParsingItem parsingState]>= 2)
  {
    goto LABEL_30;
  }

LABEL_17:
  v16 = 0;
LABEL_31:

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)finishWithError:(id)error
{
  v48 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277D03988];
  v8 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v6, v8))
  {
    *buf = 138412290;
    selfCopy = errorCopy;
    _os_log_impl(&dword_24A0AC000, v6, v8, "Search task finished with error %@", buf, 0xCu);
  }

  v9 = [(ASTask *)self taskStatusForError:errorCopy];
  v10 = objc_opt_new();
  currentlyParsingItem = [(ASTask *)self currentlyParsingItem];
  query = [(ASSearchTask *)self query];
  [query setState:2];

  if (errorCopy || !currentlyParsingItem)
  {
    if (v9 != -1 && !currentlyParsingItem)
    {
      v28 = DALoggingwithCategory();
      v29 = *(v7 + 3);
      if (os_log_type_enabled(v28, v29))
      {
        *buf = 138412546;
        selfCopy = self;
        v46 = 2112;
        v47 = errorCopy;
        _os_log_impl(&dword_24A0AC000, v28, v29, "%@ failed: %@", buf, 0x16u);
      }

      if (!errorCopy)
      {
        v9 = 1;
      }
    }
  }

  else if ([(ASGALSearchTask *)currentlyParsingItem parsingState]== 2)
  {
    v13 = DALoggingwithCategory();
    v14 = *(v7 + 6);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = objc_opt_class();
      *buf = 138412546;
      selfCopy = v15;
      v46 = 2112;
      v47 = currentlyParsingItem;
      v16 = v15;
      _os_log_impl(&dword_24A0AC000, v13, v14, "%@ Parsed response of %@", buf, 0x16u);
    }

    status = [(ASGALSearchTask *)currentlyParsingItem status];
    v9 = -[ASSearchTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [status intValue]);

    stores = [(ASGALSearchTask *)currentlyParsingItem stores];
    if ([stores count])
    {
      v31 = a2;
      v33 = stores;
      v34 = currentlyParsingItem;
      v19 = [stores objectAtIndexedSubscript:0];
      status2 = [v19 status];
      v9 = -[ASSearchTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [status2 intValue]);

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v32 = v19;
      results = [v19 results];
      v22 = [results countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v40;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v40 != v24)
            {
              objc_enumerationMutation(results);
            }

            v26 = *(*(&v39 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [(ASGALSearchTask *)v26 finishWithError:v31, self];
            }

            convertToDAContactSearchResultElement = [v26 convertToDAContactSearchResultElement];
            if (convertToDAContactSearchResultElement)
            {
              [v10 addObject:convertToDAContactSearchResultElement];
            }
          }

          v23 = [results countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v23);
      }

      stores = v33;
      currentlyParsingItem = v34;
    }
  }

  if (!errorCopy && v9 != 2)
  {
    errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:v9 userInfo:0];
  }

  if (![(ASTask *)self attemptRetryWithStatus:v9 error:errorCopy])
  {
    -[ASSearchTask setNumDownloadedElements:](self, "setNumDownloadedElements:", [v10 count]);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __35__ASGALSearchTask_finishWithError___block_invoke;
    v35[3] = &unk_278FC7D70;
    v38 = v9;
    v35[4] = self;
    v36 = v10;
    v37 = errorCopy;
    [(ASTask *)self finishWithError:v37 afterDelegateCallout:v35];
  }

  [(ASTask *)self setCurrentlyParsingItem:0];

  v30 = *MEMORY[0x277D85DE8];
}

void __35__ASGALSearchTask_finishWithError___block_invoke(void *a1)
{
  if (a1[7] != -1)
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 24));
    [WeakRetained searchTask:a1[4] returnedResults:a1[5]];
  }

  v3 = objc_loadWeakRetained((a1[4] + 24));
  [v3 searchTask:a1[4] finishedWithError:a1[6]];
}

- (void)finishWithError:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:a3 file:@"ASGALSearchTask.m" lineNumber:112 description:{@"Expected an ASGALSearchResult, but instead found a %@", objc_opt_class()}];
}

@end