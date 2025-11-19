@interface ASMailboxSearchTask
- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5;
- (BOOL)processContext:(id)a3;
- (id)replacementObjectForEmailItem:(id)a3;
- (id)requestBody;
- (void)_appendSearchOptions:(id)a3;
- (void)_appendSearchQuery:(id)a3;
- (void)finishWithError:(id)a3;
- (void)performTask;
@end

@implementation ASMailboxSearchTask

- (void)performTask
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(ASTask *)self taskManager];
  v4 = [v3 account];
  v5 = [v4 supportsMailboxSearch];

  if (v5 == 2)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = [(ASTask *)self taskManager];
      v9 = [v8 easProtocolVersion];
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_24A0AC000, v6, v7, "The server's EAS version is too low. Required: 12.1 or higher, given: %@", buf, 0xCu);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:30 userInfo:0];
    [(ASMailboxSearchTask *)self finishWithError:v10];
  }

  else
  {
    v11 = [(ASSearchTask *)self query];
    [v11 setState:1];

    v13.receiver = self;
    v13.super_class = ASMailboxSearchTask;
    [(ASTask *)&v13 performTask];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_appendSearchQuery:(id)a3
{
  v11 = a3;
  v4 = [(ASSearchTask *)self query];
  [v11 openTag:9];
  [v11 openTag:19];
  [v11 switchToCodePage:0];
  [v11 appendTag:16 withStringContent:@"Email"];
  v5 = [v4 collectionID];
  if (v5)
  {
    [v11 appendTag:18 withStringContent:v5];
  }

  [v11 switchToCodePage:15];
  v6 = [(ASSearchTask *)self query];
  v7 = [v6 searchString];
  [v11 appendTag:21 withStringContent:v7];

  v8 = [v4 priorToDate];

  if (v8)
  {
    [v11 openTag:26];
    [v11 switchToCodePage:2];
    [v11 appendEmptyTag:15];
    [v11 switchToCodePage:15];
    v9 = [v4 priorToDate];
    v10 = [v9 activeSyncString];
    [v11 appendTag:18 withStringContent:v10];

    [v11 closeTag:26];
  }

  [v11 closeTag:19];

  [v11 closeTag:9];
}

- (void)_appendSearchOptions:(id)a3
{
  v18 = a3;
  [v18 openTag:10];
  v4 = [(ASSearchTask *)self query];
  v5 = [v4 range];
  v7 = v6;

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld-%ld", v5, v7 + v5 - 1];
  [v18 appendTag:11 withStringContent:v8];
  [v18 switchToCodePage:17];
  [v18 openTag:5];
  v9 = [(ASSearchTask *)self query];
  [v18 appendTag:6 withIntContent:{objc_msgSend(v9, "bodyType")}];

  v10 = MEMORY[0x277CCACA8];
  v11 = [(ASSearchTask *)self query];
  v12 = [v10 stringWithFormat:@"%lld", objc_msgSend(v11, "truncationSize")];
  [v18 appendTag:7 withStringContent:v12];

  v13 = [(ASSearchTask *)self query];
  [v18 appendTag:8 withIntContent:{objc_msgSend(v13, "allOrNone")}];

  [v18 closeTag:5];
  [v18 switchToCodePage:15];
  [v18 switchToCodePage:0];
  v14 = [(ASSearchTask *)self query];
  [v18 appendTag:34 withIntContent:{objc_msgSend(v14, "MIMESupport")}];

  [v18 switchToCodePage:15];
  v15 = [(ASSearchTask *)self query];
  LODWORD(v11) = [v15 deepTraversal];

  if (v11)
  {
    [v18 appendEmptyTag:23];
  }

  v16 = [(ASSearchTask *)self query];
  v17 = [v16 rebuildResults];

  if (v17 && !v5)
  {
    [v18 appendEmptyTag:25];
  }

  [v18 closeTag:10];
}

- (id)requestBody
{
  v3 = objc_opt_new();
  [v3 switchToCodePage:15];
  [v3 openTag:5];
  [v3 openTag:7];
  [v3 appendTag:8 withStringContent:@"Mailbox"];
  [(ASMailboxSearchTask *)self _appendSearchQuery:v3];
  [(ASMailboxSearchTask *)self _appendSearchOptions:v3];
  [v3 closeTag:7];
  [v3 closeTag:5];
  v4 = [v3 data];

  return v4;
}

- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5
{
  *a4 = 15;
  *a3 = 5;
  *a5 = 12;
  return 1;
}

- (id)replacementObjectForEmailItem:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[ASMailMessage alloc] initWithASEmailItem:v4];

  WeakRetained = objc_loadWeakRetained(&self->super.super._delegate);
  v10[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [WeakRetained searchTask:self returnedResults:v7];

  [(ASSearchTask *)self setNumDownloadedElements:[(ASSearchTask *)self numDownloadedElements]+ 1];
  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)processContext:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __38__ASMailboxSearchTask_processContext___block_invoke;
  v28[3] = &unk_278FC7D20;
  v28[4] = self;
  v5 = MEMORY[0x24C2119B0](v28);
  v31 = @"ASSearchResponse.ASArray.ASSearchStore.ASMailboxSearchResult";
  v6 = MEMORY[0x24C2119B0]();
  v32[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];

  v8 = [(ASTask *)self currentlyParsingItem];

  if (!v8)
  {
    if (!self->super.super._haveSwitchedCodePage)
    {
      if (![v4 hasNumberOfTokensRemaining:2])
      {
        goto LABEL_17;
      }

      if ([v4 currentByte])
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to search code page"];
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASMailboxSearchTask.m", 166, objc_msgSend(v4, "curOffset")];
        v16 = DALoggingwithCategory();
        v17 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v16, v17))
        {
          v18 = [v4 curOffset];
          *buf = 134217984;
          v30 = v18;
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

      [v4 advanceOffsetByAmount:1];
      if ([v4 currentByte] != 15)
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to search code page"];
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASMailboxSearchTask.m", 166, objc_msgSend(v4, "curOffset")];
        v23 = DALoggingwithCategory();
        v17 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v23, v17))
        {
          v24 = [v4 curOffset];
          *buf = 134217984;
          v30 = v24;
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

      [v4 advanceOffsetByAmount:1];
      [v4 setCodePage:15];
      self->super.super._haveSwitchedCodePage = 1;
    }

    if (self->super.super._haveParsedCommand)
    {
LABEL_7:
      v13 = objc_opt_new();
      [v13 setExpectedResultType:1];
      [(ASTask *)self setCurrentlyParsingItem:v13];

      goto LABEL_2;
    }

    if (![v4 hasNumberOfTokensRemaining:1])
    {
      goto LABEL_17;
    }

    if (([v4 currentByte] & 0x3F) == 5)
    {
      self->super.super._haveParsedCommand = 1;
      goto LABEL_7;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected search response"];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASMailboxSearchTask.m", 167, objc_msgSend(v4, "curOffset")];
    v21 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v21, v17))
    {
      v22 = [v4 curOffset];
      *buf = 134217984;
      v30 = v22;
      _os_log_impl(&dword_24A0AC000, v21, v17, "Failure at index %lld:", buf, 0xCu);
    }

    v19 = DALoggingwithCategory();
    if (!os_log_type_enabled(v19, v17))
    {
LABEL_29:

      [v4 setParseErrorReason:v15];
LABEL_30:
      v25 = [v4 parseErrorReason];
      v20 = v25 == 0;

      goto LABEL_31;
    }

    *buf = 138412290;
    v30 = v14;
LABEL_28:
    _os_log_impl(&dword_24A0AC000, v19, v17, "failure reason was %@", buf, 0xCu);
    goto LABEL_29;
  }

LABEL_2:
  v9 = [(ASTask *)self currentlyParsingItem];
  v10 = [(ASTask *)self taskManager];
  v11 = [v10 account];
  [v9 parseASParseContext:v4 root:0 parent:0 callbackDict:v7 streamCallbackDict:0 account:v11];

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

- (void)finishWithError:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(ASTask *)self currentlyParsingItem];
  v7 = DALoggingwithCategory();
  v8 = MEMORY[0x277D03988];
  v9 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v7, v9))
  {
    *buf = 138412546;
    v46 = v6;
    v47 = 2112;
    v48 = v5;
    _os_log_impl(&dword_24A0AC000, v7, v9, "Search task finished with response %@ error %@", buf, 0x16u);
  }

  v10 = objc_opt_new();
  v11 = [(ASSearchTask *)self query];
  [v11 setState:2];

  if (!v5 && v6)
  {
    if ([(ASMailboxSearchTask *)v6 parsingState]== 2)
    {
      v12 = DALoggingwithCategory();
      v13 = *(v8 + 6);
      if (os_log_type_enabled(v12, v13))
      {
        v14 = objc_opt_class();
        *buf = 138412546;
        v46 = v14;
        v47 = 2112;
        v48 = v6;
        v15 = v14;
        _os_log_impl(&dword_24A0AC000, v12, v13, "%@ Parsed response of %@", buf, 0x16u);
      }

      v16 = [(ASMailboxSearchTask *)v6 status];
      v17 = -[ASSearchTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [v16 intValue]);

      v18 = [(ASMailboxSearchTask *)v6 stores];
      if ([v18 count])
      {
        v33 = a2;
        v35 = v6;
        v34 = v18;
        v19 = [v18 objectAtIndexedSubscript:0];
        WeakRetained = objc_loadWeakRetained(&self->super.super._delegate);
        v21 = [v19 total];
        [WeakRetained searchTask:self returnedTotalCount:v21];

        v22 = [v19 status];
        v17 = -[ASSearchTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [v22 intValue]);

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v23 = [v19 results];
        v24 = [v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v40 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                [(ASMailboxSearchTask *)v28 finishWithError:v33, self];
              }

              v29 = [[ASMailMessage alloc] initWithASEmailItem:v28];
              [v10 addObject:v29];
              [(ASSearchTask *)self setNumDownloadedElements:[(ASSearchTask *)self numDownloadedElements]+ 1];
            }

            v25 = [v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
          }

          while (v25);
        }

        v5 = 0;
        v6 = v35;
        v18 = v34;
      }

LABEL_27:
      if (v17 != 2)
      {
        v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:v17 userInfo:0];
      }

      goto LABEL_31;
    }

    v5 = 0;
LABEL_30:
    v17 = 2;
    goto LABEL_31;
  }

  if (v6)
  {
    goto LABEL_30;
  }

  v30 = DALoggingwithCategory();
  v31 = *(v8 + 3);
  if (os_log_type_enabled(v30, v31))
  {
    *buf = 138412546;
    v46 = self;
    v47 = 2112;
    v48 = v5;
    _os_log_impl(&dword_24A0AC000, v30, v31, "%@ failed: %@", buf, 0x16u);
  }

  if (v5)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  if (!v5)
  {
    goto LABEL_27;
  }

LABEL_31:
  if (![(ASTask *)self attemptRetryWithStatus:v17 error:v5])
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __39__ASMailboxSearchTask_finishWithError___block_invoke;
    v36[3] = &unk_278FC7D48;
    v37 = v10;
    v38 = self;
    v39 = v5;
    [(ASTask *)self finishWithError:v39 afterDelegateCallout:v36];
  }

  [(ASTask *)self setCurrentlyParsingItem:0];

  v32 = *MEMORY[0x277D85DE8];
}

void __39__ASMailboxSearchTask_finishWithError___block_invoke(void *a1)
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
  [v5 handleFailureInMethod:a2 object:a3 file:@"ASMailboxSearchTask.m" lineNumber:206 description:{@"Expected an ASMailboxSearchResult, but instead found a %@", objc_opt_class()}];
}

@end