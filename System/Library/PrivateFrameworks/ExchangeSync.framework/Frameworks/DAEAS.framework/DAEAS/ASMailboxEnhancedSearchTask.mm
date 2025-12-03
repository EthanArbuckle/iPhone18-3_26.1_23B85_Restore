@interface ASMailboxEnhancedSearchTask
- (ASMailboxEnhancedSearchTask)initWithQuery:(id)query;
- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken;
- (BOOL)processContext:(id)context;
- (id)replacementObjectForEmailItem:(id)item;
- (id)requestBody;
- (void)_appendSearchOptions:(id)options;
- (void)_appendSearchQuery:(id)query;
- (void)finishWithError:(id)error;
- (void)performTask;
@end

@implementation ASMailboxEnhancedSearchTask

- (ASMailboxEnhancedSearchTask)initWithQuery:(id)query
{
  v7.receiver = self;
  v7.super_class = ASMailboxEnhancedSearchTask;
  v3 = [(ASSearchTask *)&v7 initWithQuery:query];
  if (v3)
  {
    da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
    searchId = v3->_searchId;
    v3->_searchId = da_newGUID;
  }

  return v3;
}

- (void)performTask
{
  v16 = *MEMORY[0x277D85DE8];
  taskManager = [(ASTask *)self taskManager];
  protocol = [taskManager protocol];
  supportsMailboxEnhancedSearch = [protocol supportsMailboxEnhancedSearch];

  if (supportsMailboxEnhancedSearch == 2)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v6, v7))
    {
      taskManager2 = [(ASTask *)self taskManager];
      easProtocolVersion = [taskManager2 easProtocolVersion];
      *buf = 138412290;
      v15 = easProtocolVersion;
      _os_log_impl(&dword_24A0AC000, v6, v7, "The server's EAS version is too low. Required: 16.1 or higher, given: %@", buf, 0xCu);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:30 userInfo:0];
    [(ASMailboxEnhancedSearchTask *)self finishWithError:v10];
  }

  else
  {
    query = [(ASSearchTask *)self query];
    [query setState:1];

    v13.receiver = self;
    v13.super_class = ASMailboxEnhancedSearchTask;
    [(ASTask *)&v13 performTask];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_appendSearchQuery:(id)query
{
  queryCopy = query;
  query = [(ASSearchTask *)self query];
  [queryCopy openTag:9];
  [queryCopy switchToCodePage:0];
  [queryCopy appendTag:16 withStringContent:@"Email"];
  collectionID = [query collectionID];
  if (collectionID)
  {
    [queryCopy appendTag:18 withStringContent:collectionID];
  }

  [queryCopy switchToCodePage:25];
  searchPredicate = [query searchPredicate];

  if (searchPredicate)
  {
    v7 = [ASMailboxSearchPredicate alloc];
    searchPredicate2 = [query searchPredicate];
    v9 = [(ASMailboxSearchPredicate *)v7 initWithPredicate:searchPredicate2];

    getString = [(ASMailboxSearchPredicate *)v9 getString];
    [queryCopy appendTag:11 withStringContent:getString];
  }

  [queryCopy closeTag:9];
}

- (void)_appendSearchOptions:(id)options
{
  optionsCopy = options;
  [optionsCopy openTag:12];
  query = [(ASSearchTask *)self query];
  [query range];
  v6 = v5;

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"0-%ld", v6 - 1];
  [optionsCopy appendTag:13 withStringContent:v7];
  query2 = [(ASSearchTask *)self query];
  collectionID = [query2 collectionID];

  if (collectionID)
  {
    query3 = [(ASSearchTask *)self query];
    deepTraversal = [query3 deepTraversal];

    if (deepTraversal)
    {
      [optionsCopy appendEmptyTag:14];
    }
  }

  [optionsCopy closeTag:12];
}

- (id)requestBody
{
  v3 = objc_opt_new();
  [v3 switchToCodePage:25];
  [v3 openTag:5];
  [v3 appendTag:6 withStringContent:self->_searchId];
  [v3 openTag:7];
  [v3 openTag:8];
  [(ASMailboxEnhancedSearchTask *)self _appendSearchQuery:v3];
  [(ASMailboxEnhancedSearchTask *)self _appendSearchOptions:v3];
  [v3 closeTag:8];
  [v3 closeTag:7];
  [v3 closeTag:5];
  data = [v3 data];

  return data;
}

- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken
{
  *page = 25;
  *token = 5;
  *statusToken = 10;
  return 1;
}

- (id)replacementObjectForEmailItem:(id)item
{
  v10[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = [[ASMailMessage alloc] initWithASEmailItem:itemCopy];

  WeakRetained = objc_loadWeakRetained(&self->super.super._delegate);
  v10[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [WeakRetained searchTask:self returnedResults:v7];

  [(ASSearchTask *)self setNumDownloadedElements:[(ASSearchTask *)self numDownloadedElements]+ 1];
  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)processContext:(id)context
{
  v32[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __46__ASMailboxEnhancedSearchTask_processContext___block_invoke;
  v28[3] = &unk_278FC7D20;
  v28[4] = self;
  v5 = MEMORY[0x24C2119B0](v28);
  v31 = @"ASEnhancedSearchResponse.ASEnhancedSearchStoreResponse.ASEnhancedMailboxSearchResult";
  v6 = MEMORY[0x24C2119B0]();
  v32[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];

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
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to Find code page"];
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASMailboxEnhancedSearchTask.m", 158, objc_msgSend(contextCopy, "curOffset")];
        v16 = DALoggingwithCategory();
        v17 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v16, v17))
        {
          curOffset = [contextCopy curOffset];
          *buf = 134217984;
          v30 = curOffset;
          _os_log_impl(&dword_24A0AC000, v16, v17, "Failure at index %lld:", buf, 0xCu);
        }

        v19 = DALoggingwithCategory();
        if (!os_log_type_enabled(v19, v17))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        v30 = v14;
        goto LABEL_28;
      }

      [contextCopy advanceOffsetByAmount:1];
      if ([contextCopy currentByte] != 25)
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to Find code page"];
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASMailboxEnhancedSearchTask.m", 158, objc_msgSend(contextCopy, "curOffset")];
        v23 = DALoggingwithCategory();
        v17 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v23, v17))
        {
          curOffset2 = [contextCopy curOffset];
          *buf = 134217984;
          v30 = curOffset2;
          _os_log_impl(&dword_24A0AC000, v23, v17, "Failure at index %lld:", buf, 0xCu);
        }

        v19 = DALoggingwithCategory();
        if (!os_log_type_enabled(v19, v17))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        v30 = v14;
        goto LABEL_28;
      }

      [contextCopy advanceOffsetByAmount:1];
      [contextCopy setCodePage:25];
      self->super.super._haveSwitchedCodePage = 1;
    }

    if (self->super.super._haveParsedCommand)
    {
LABEL_7:
      v13 = objc_opt_new();
      [(ASTask *)self setCurrentlyParsingItem:v13];

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

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected Find response"];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASMailboxEnhancedSearchTask.m", 159, objc_msgSend(contextCopy, "curOffset")];
    v21 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v21, v17))
    {
      curOffset3 = [contextCopy curOffset];
      *buf = 134217984;
      v30 = curOffset3;
      _os_log_impl(&dword_24A0AC000, v21, v17, "Failure at index %lld:", buf, 0xCu);
    }

    v19 = DALoggingwithCategory();
    if (!os_log_type_enabled(v19, v17))
    {
LABEL_29:

      [contextCopy setParseErrorReason:v15];
LABEL_30:
      parseErrorReason = [contextCopy parseErrorReason];
      v20 = parseErrorReason == 0;

      goto LABEL_31;
    }

    *buf = 138412290;
    v30 = v14;
LABEL_28:
    _os_log_impl(&dword_24A0AC000, v19, v17, "failure reason was %@", buf, 0xCu);
    goto LABEL_29;
  }

LABEL_2:
  currentlyParsingItem2 = [(ASTask *)self currentlyParsingItem];
  taskManager = [(ASTask *)self taskManager];
  account = [taskManager account];
  [currentlyParsingItem2 parseASParseContext:contextCopy root:0 parent:0 callbackDict:v7 streamCallbackDict:0 account:account];

  currentlyParsingItem = self->super.super._currentlyParsingItem;
  if (currentlyParsingItem && [(ASItem *)currentlyParsingItem parsingState]>= 2)
  {
    goto LABEL_30;
  }

LABEL_17:
  v20 = 0;
LABEL_31:

  v26 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)finishWithError:(id)error
{
  v49 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  currentlyParsingItem = [(ASTask *)self currentlyParsingItem];
  v7 = DALoggingwithCategory();
  v8 = MEMORY[0x277D03988];
  v9 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v7, v9))
  {
    *buf = 138412546;
    selfCopy = currentlyParsingItem;
    v47 = 2112;
    v48 = errorCopy;
    _os_log_impl(&dword_24A0AC000, v7, v9, "Search task finished with response %@ error %@", buf, 0x16u);
  }

  v10 = objc_opt_new();
  query = [(ASSearchTask *)self query];
  [query setState:2];

  if (!errorCopy && currentlyParsingItem)
  {
    if ([(ASMailboxEnhancedSearchTask *)currentlyParsingItem parsingState]== 2)
    {
      v12 = DALoggingwithCategory();
      v13 = *(v8 + 6);
      if (os_log_type_enabled(v12, v13))
      {
        v14 = objc_opt_class();
        *buf = 138412546;
        selfCopy = v14;
        v47 = 2112;
        v48 = currentlyParsingItem;
        v15 = v14;
        _os_log_impl(&dword_24A0AC000, v12, v13, "%@ Parsed response of %@", buf, 0x16u);
      }

      status = [(ASMailboxEnhancedSearchTask *)currentlyParsingItem status];
      v17 = -[ASSearchTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [status intValue]);

      stores = [(ASMailboxEnhancedSearchTask *)currentlyParsingItem stores];
      if ([stores count])
      {
        v33 = a2;
        v35 = currentlyParsingItem;
        v34 = stores;
        v19 = [stores objectAtIndexedSubscript:0];
        WeakRetained = objc_loadWeakRetained(&self->super.super._delegate);
        total = [v19 total];
        [WeakRetained searchTask:self returnedTotalCount:total];

        status2 = [v19 status];
        v17 = -[ASSearchTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [status2 intValue]);

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        results = [v19 results];
        v24 = [results countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v41;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v41 != v26)
              {
                objc_enumerationMutation(results);
              }

              v28 = *(*(&v40 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                [(ASMailboxEnhancedSearchTask *)v28 finishWithError:v33, self];
              }

              v29 = [[ASMailMessage alloc] initWithASEmailItem:v28];
              [v10 addObject:v29];
              [(ASSearchTask *)self setNumDownloadedElements:[(ASSearchTask *)self numDownloadedElements]+ 1];
            }

            v25 = [results countByEnumeratingWithState:&v40 objects:v44 count:16];
          }

          while (v25);
        }

        errorCopy = 0;
        currentlyParsingItem = v35;
        stores = v34;
      }

LABEL_27:
      if (v17 != 2)
      {
        errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:v17 userInfo:0];
      }

      goto LABEL_31;
    }

    errorCopy = 0;
LABEL_30:
    v17 = 2;
    goto LABEL_31;
  }

  if (currentlyParsingItem)
  {
    goto LABEL_30;
  }

  v30 = DALoggingwithCategory();
  v31 = *(v8 + 3);
  if (os_log_type_enabled(v30, v31))
  {
    *buf = 138412546;
    selfCopy = self;
    v47 = 2112;
    v48 = errorCopy;
    _os_log_impl(&dword_24A0AC000, v30, v31, "%@ failed: %@", buf, 0x16u);
  }

  if (errorCopy)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  if (!errorCopy)
  {
    goto LABEL_27;
  }

LABEL_31:
  if (![(ASTask *)self attemptRetryWithStatus:v17 error:errorCopy])
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __47__ASMailboxEnhancedSearchTask_finishWithError___block_invoke;
    v36[3] = &unk_278FC7D48;
    v37 = v10;
    selfCopy2 = self;
    v39 = errorCopy;
    [(ASTask *)self finishWithError:v39 afterDelegateCallout:v36];
  }

  [(ASTask *)self setCurrentlyParsingItem:0];

  v32 = *MEMORY[0x277D85DE8];
}

void __47__ASMailboxEnhancedSearchTask_finishWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2 && [v2 count])
  {
    WeakRetained = objc_loadWeakRetained((a1[5] + 24));
    [WeakRetained searchTask:a1[5] returnedResults:a1[4]];
  }

  v4 = objc_loadWeakRetained((a1[5] + 24));
  [v4 searchTask:a1[5] finishedWithError:a1[6]];
}

- (void)finishWithError:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:a3 file:@"ASMailboxEnhancedSearchTask.m" lineNumber:198 description:{@"Expected an ASEnhancedMailboxSearchResult, but instead found a %@", objc_opt_class()}];
}

@end