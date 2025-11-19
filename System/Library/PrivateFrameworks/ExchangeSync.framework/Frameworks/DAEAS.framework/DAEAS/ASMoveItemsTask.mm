@interface ASMoveItemsTask
- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5;
- (BOOL)processContext:(id)a3;
- (id)requestBody;
- (int64_t)taskStatusForExchangeStatus:(int)a3;
- (void)addSourceID:(id)a3 sourceFolder:(id)a4 destinatonFolder:(id)a5;
- (void)finishWithError:(id)a3;
@end

@implementation ASMoveItemsTask

- (void)addSourceID:(id)a3 sourceFolder:(id)a4 destinatonFolder:(id)a5
{
  v18[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v9 && v10)
  {
    v17[0] = @"MoveItemsSourceIDKey";
    v17[1] = @"MoveItemsSourceFolder";
    v18[0] = v8;
    v18[1] = v9;
    v17[2] = @"MoveItemsDestFolderKey";
    v18[2] = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
    v13 = [(ASMoveItemsTask *)self moveItems];

    if (!v13)
    {
      v14 = objc_opt_new();
      [(ASMoveItemsTask *)self setMoveItems:v14];
    }

    v15 = [(ASMoveItemsTask *)self moveItems];
    [v15 addObject:v12];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)getTopLevelToken:(char *)a3 outStatusCodePage:(char *)a4 outStatusToken:(char *)a5
{
  *a4 = 5;
  *a3 = 5;
  *a5 = 11;
  return 1;
}

- (BOOL)processContext:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTask *)self currentlyParsingItem];

  if (!v5)
  {
    if (!self->super._haveSwitchedCodePage)
    {
      if (![v4 hasNumberOfTokensRemaining:2])
      {
        goto LABEL_17;
      }

      if ([v4 currentByte])
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to move code page"];
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASMoveItemsTask.m", 57, objc_msgSend(v4, "curOffset")];
        v18 = DALoggingwithCategory();
        v19 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v18, v19))
        {
          *buf = 134217984;
          v28 = [v4 curOffset];
          _os_log_impl(&dword_24A0AC000, v18, v19, "Failure at index %lld:", buf, 0xCu);
        }

        v20 = DALoggingwithCategory();
        if (!os_log_type_enabled(v20, v19))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        v28 = v16;
        goto LABEL_28;
      }

      [v4 advanceOffsetByAmount:1];
      if ([v4 currentByte] != 5)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to move code page"];
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASMoveItemsTask.m", 57, objc_msgSend(v4, "curOffset")];
        v23 = DALoggingwithCategory();
        v19 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v23, v19))
        {
          *buf = 134217984;
          v28 = [v4 curOffset];
          _os_log_impl(&dword_24A0AC000, v23, v19, "Failure at index %lld:", buf, 0xCu);
        }

        v20 = DALoggingwithCategory();
        if (!os_log_type_enabled(v20, v19))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        v28 = v16;
        goto LABEL_28;
      }

      [v4 advanceOffsetByAmount:1];
      [v4 setCodePage:5];
      self->super._haveSwitchedCodePage = 1;
    }

    if (self->super._haveParsedCommand)
    {
LABEL_7:
      v10 = [ASArray alloc];
      v11 = MEMORY[0x277CBEAC0];
      v12 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:5 token:10 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
      v13 = [MEMORY[0x277CCABB0] numberWithInt:1290];
      v14 = [v11 dictionaryWithObjectsAndKeys:{v12, v13, 0}];
      v15 = [(ASArray *)v10 initWithSubclassRuleSet:v14];

      [(ASTask *)self setCurrentlyParsingItem:v15];
      goto LABEL_2;
    }

    if (![v4 hasNumberOfTokensRemaining:1])
    {
      goto LABEL_17;
    }

    if (([v4 currentByte] & 0x3F) == 5)
    {
      self->super._haveParsedCommand = 1;
      goto LABEL_7;
    }

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected move items response"];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASMoveItemsTask.m", 58, objc_msgSend(v4, "curOffset")];
    v22 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v22, v19))
    {
      *buf = 134217984;
      v28 = [v4 curOffset];
      _os_log_impl(&dword_24A0AC000, v22, v19, "Failure at index %lld:", buf, 0xCu);
    }

    v20 = DALoggingwithCategory();
    if (!os_log_type_enabled(v20, v19))
    {
LABEL_29:

      [v4 setParseErrorReason:v17];
LABEL_30:
      v24 = [v4 parseErrorReason];
      v21 = v24 == 0;

      goto LABEL_31;
    }

    *buf = 138412290;
    v28 = v16;
LABEL_28:
    _os_log_impl(&dword_24A0AC000, v20, v19, "failure reason was %@", buf, 0xCu);
    goto LABEL_29;
  }

LABEL_2:
  v6 = [(ASTask *)self currentlyParsingItem];
  v7 = [(ASTask *)self taskManager];
  v8 = [v7 account];
  [v6 parseASParseContext:v4 root:0 parent:0 callbackDict:0 streamCallbackDict:0 account:v8];

  currentlyParsingItem = self->super._currentlyParsingItem;
  if (currentlyParsingItem && [(ASItem *)currentlyParsingItem parsingState]>= 2)
  {
    goto LABEL_30;
  }

LABEL_17:
  v21 = 0;
LABEL_31:

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)finishWithError:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTask *)self taskStatusForError:v4];
  if (v4)
  {
    v6 = v5;
    v7 = DALoggingwithCategory();
    v8 = v7;
    if (v6 == -1)
    {
      v18 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v7, v18))
      {
        *buf = 138412290;
        v26 = objc_opt_class();
        v19 = v26;
        _os_log_impl(&dword_24A0AC000, v8, v18, "%@ cancelled", buf, 0xCu);
      }

      v11 = 0;
      v6 = -1;
    }

    else
    {
      v9 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v7, v9))
      {
        *buf = 138412546;
        v26 = objc_opt_class();
        v27 = 2112;
        v28 = v4;
        v10 = v26;
        _os_log_impl(&dword_24A0AC000, v8, v9, "%@ failed: %@", buf, 0x16u);
      }

      v11 = 0;
    }
  }

  else
  {
    v12 = [(ASTask *)self currentlyParsingItem];
    v8 = v12;
    if (v12 && [v12 parsingState]== 2)
    {
      v6 = [(ASTask *)self taskStatusForError:0];
      v13 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v13, v14))
      {
        *buf = 138412546;
        v26 = objc_opt_class();
        v27 = 2112;
        v28 = v8;
        v15 = v26;
        _os_log_impl(&dword_24A0AC000, v13, v14, "%@ Parsed response of %@", buf, 0x16u);
      }

      v11 = [v8 commonValue];
    }

    else
    {
      v16 = DALoggingwithCategory();
      v17 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v16, v17))
      {
        *buf = 138412290;
        v26 = self;
        _os_log_impl(&dword_24A0AC000, v16, v17, "%@ failed to parse server response.", buf, 0xCu);
      }

      v11 = 0;
      v6 = 1;
    }
  }

  if ([(ASTask *)self attemptRetryWithStatus:v6 error:v4])
  {
    [(ASTask *)self setCurrentlyParsingItem:0];
  }

  else
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __35__ASMoveItemsTask_finishWithError___block_invoke;
    v21[3] = &unk_278FC7D70;
    v21[4] = self;
    v24 = v6;
    v22 = v4;
    v23 = v11;
    [(ASTask *)self finishWithError:v22 afterDelegateCallout:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __35__ASMoveItemsTask_finishWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 moveItemsTask:*(a1 + 32) completedWithStatus:*(a1 + 56) error:*(a1 + 40) movedItems:*(a1 + 48)];
}

- (id)requestBody
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 switchToCodePage:5];
  [v3 openTag:5];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(ASMoveItemsTask *)self moveItems];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        [v3 openTag:6];
        v10 = [v9 objectForKeyedSubscript:@"MoveItemsSourceIDKey"];
        [v3 appendTag:7 withStringContent:v10];

        v11 = [v9 objectForKeyedSubscript:@"MoveItemsSourceFolder"];
        [v3 appendTag:8 withStringContent:v11];

        v12 = [v9 objectForKeyedSubscript:@"MoveItemsDestFolderKey"];
        [v3 appendTag:9 withStringContent:v12];

        [v3 closeTag:6];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  [v3 closeTag:5];
  v13 = [v3 data];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (int64_t)taskStatusForExchangeStatus:(int)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 >= 8)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v10 = 138412546;
      v11 = v8;
      v12 = 1024;
      v13 = a3;
      _os_log_impl(&dword_24A0AC000, v5, v6, "%@: Unknown status code (%d)", &v10, 0x12u);
    }

    result = 10;
  }

  else
  {
    result = qword_24A14E000[a3];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

@end