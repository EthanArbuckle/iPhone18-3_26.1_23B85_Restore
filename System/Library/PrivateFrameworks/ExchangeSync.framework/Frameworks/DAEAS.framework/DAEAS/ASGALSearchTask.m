@interface ASGALSearchTask
- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5;
- (BOOL)processContext:(id)a3;
- (id)requestBody;
- (void)finishWithError:(id)a3;
- (void)performTask;
@end

@implementation ASGALSearchTask

- (void)performTask
{
  v3 = [(ASSearchTask *)self query];
  [v3 setState:1];

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
  v4 = [(ASSearchTask *)self query];
  v5 = [v4 searchString];
  [v3 appendTag:9 withStringContent:v5];

  [v3 openTag:10];
  v6 = MEMORY[0x277CCACA8];
  v7 = [(ASSearchTask *)self query];
  v8 = [v6 stringWithFormat:@"0-%d", objc_msgSend(v7, "maxResults")];
  [v3 appendTag:11 withStringContent:v8];

  v9 = [(ASSearchTask *)self query];
  if ([v9 includePhotos])
  {
    v10 = [(ASTask *)self taskManager];
    v11 = [v10 protocol];
    v12 = [v11 supportsGALPhotos];

    if (v12)
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
  v13 = [v3 data];

  return v13;
}

- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5
{
  *a4 = 15;
  *a3 = 5;
  *a5 = 12;
  return 1;
}

- (BOOL)processContext:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTask *)self currentlyParsingItem];

  if (!v5)
  {
    if (!self->super.super._haveSwitchedCodePage)
    {
      if (![v4 hasNumberOfTokensRemaining:2])
      {
        goto LABEL_17;
      }

      if ([v4 currentByte])
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to search code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASGALSearchTask.m", 71, objc_msgSend(v4, "curOffset")];
        v13 = DALoggingwithCategory();
        v14 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v13, v14))
        {
          *buf = 134217984;
          v23 = [v4 curOffset];
          _os_log_impl(&dword_24A0AC000, v13, v14, "Failure at index %lld:", buf, 0xCu);
        }

        v15 = DALoggingwithCategory();
        if (!os_log_type_enabled(v15, v14))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        v23 = v11;
        goto LABEL_28;
      }

      [v4 advanceOffsetByAmount:1];
      if ([v4 currentByte] != 15)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to search code page"];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASGALSearchTask.m", 71, objc_msgSend(v4, "curOffset")];
        v18 = DALoggingwithCategory();
        v14 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v18, v14))
        {
          *buf = 134217984;
          v23 = [v4 curOffset];
          _os_log_impl(&dword_24A0AC000, v18, v14, "Failure at index %lld:", buf, 0xCu);
        }

        v15 = DALoggingwithCategory();
        if (!os_log_type_enabled(v15, v14))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        v23 = v11;
        goto LABEL_28;
      }

      [v4 advanceOffsetByAmount:1];
      [v4 setCodePage:15];
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

    if (![v4 hasNumberOfTokensRemaining:1])
    {
      goto LABEL_17;
    }

    if (([v4 currentByte] & 0x3F) == 5)
    {
      self->super.super._haveParsedCommand = 1;
      goto LABEL_7;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected search response"];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASGALSearchTask.m", 72, objc_msgSend(v4, "curOffset")];
    v17 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v17, v14))
    {
      *buf = 134217984;
      v23 = [v4 curOffset];
      _os_log_impl(&dword_24A0AC000, v17, v14, "Failure at index %lld:", buf, 0xCu);
    }

    v15 = DALoggingwithCategory();
    if (!os_log_type_enabled(v15, v14))
    {
LABEL_29:

      [v4 setParseErrorReason:v12];
LABEL_30:
      v19 = [v4 parseErrorReason];
      v16 = v19 == 0;

      goto LABEL_31;
    }

    *buf = 138412290;
    v23 = v11;
LABEL_28:
    _os_log_impl(&dword_24A0AC000, v15, v14, "failure reason was %@", buf, 0xCu);
    goto LABEL_29;
  }

LABEL_2:
  v6 = [(ASTask *)self currentlyParsingItem];
  v7 = [(ASTask *)self taskManager];
  v8 = [v7 account];
  [v6 parseASParseContext:v4 root:0 parent:0 callbackDict:0 streamCallbackDict:0 account:v8];

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

- (void)finishWithError:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277D03988];
  v8 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v6, v8))
  {
    *buf = 138412290;
    v45 = v5;
    _os_log_impl(&dword_24A0AC000, v6, v8, "Search task finished with error %@", buf, 0xCu);
  }

  v9 = [(ASTask *)self taskStatusForError:v5];
  v10 = objc_opt_new();
  v11 = [(ASTask *)self currentlyParsingItem];
  v12 = [(ASSearchTask *)self query];
  [v12 setState:2];

  if (v5 || !v11)
  {
    if (v9 != -1 && !v11)
    {
      v28 = DALoggingwithCategory();
      v29 = *(v7 + 3);
      if (os_log_type_enabled(v28, v29))
      {
        *buf = 138412546;
        v45 = self;
        v46 = 2112;
        v47 = v5;
        _os_log_impl(&dword_24A0AC000, v28, v29, "%@ failed: %@", buf, 0x16u);
      }

      if (!v5)
      {
        v9 = 1;
      }
    }
  }

  else if ([(ASGALSearchTask *)v11 parsingState]== 2)
  {
    v13 = DALoggingwithCategory();
    v14 = *(v7 + 6);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = objc_opt_class();
      *buf = 138412546;
      v45 = v15;
      v46 = 2112;
      v47 = v11;
      v16 = v15;
      _os_log_impl(&dword_24A0AC000, v13, v14, "%@ Parsed response of %@", buf, 0x16u);
    }

    v17 = [(ASGALSearchTask *)v11 status];
    v9 = -[ASSearchTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [v17 intValue]);

    v18 = [(ASGALSearchTask *)v11 stores];
    if ([v18 count])
    {
      v31 = a2;
      v33 = v18;
      v34 = v11;
      v19 = [v18 objectAtIndexedSubscript:0];
      v20 = [v19 status];
      v9 = -[ASSearchTask taskStatusForExchangeStatus:](self, "taskStatusForExchangeStatus:", [v20 intValue]);

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v32 = v19;
      v21 = [v19 results];
      v22 = [v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v39 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [(ASGALSearchTask *)v26 finishWithError:v31, self];
            }

            v27 = [v26 convertToDAContactSearchResultElement];
            if (v27)
            {
              [v10 addObject:v27];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v23);
      }

      v18 = v33;
      v11 = v34;
    }
  }

  if (!v5 && v9 != 2)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:v9 userInfo:0];
  }

  if (![(ASTask *)self attemptRetryWithStatus:v9 error:v5])
  {
    -[ASSearchTask setNumDownloadedElements:](self, "setNumDownloadedElements:", [v10 count]);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __35__ASGALSearchTask_finishWithError___block_invoke;
    v35[3] = &unk_278FC7D70;
    v38 = v9;
    v35[4] = self;
    v36 = v10;
    v37 = v5;
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