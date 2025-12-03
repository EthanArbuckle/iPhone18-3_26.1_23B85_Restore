@interface ASMoveItemsTask
- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken;
- (BOOL)processContext:(id)context;
- (id)requestBody;
- (int64_t)taskStatusForExchangeStatus:(int)status;
- (void)addSourceID:(id)d sourceFolder:(id)folder destinatonFolder:(id)destinatonFolder;
- (void)finishWithError:(id)error;
@end

@implementation ASMoveItemsTask

- (void)addSourceID:(id)d sourceFolder:(id)folder destinatonFolder:(id)destinatonFolder
{
  v18[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  folderCopy = folder;
  destinatonFolderCopy = destinatonFolder;
  v11 = destinatonFolderCopy;
  if (dCopy && folderCopy && destinatonFolderCopy)
  {
    v17[0] = @"MoveItemsSourceIDKey";
    v17[1] = @"MoveItemsSourceFolder";
    v18[0] = dCopy;
    v18[1] = folderCopy;
    v17[2] = @"MoveItemsDestFolderKey";
    v18[2] = destinatonFolderCopy;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
    moveItems = [(ASMoveItemsTask *)self moveItems];

    if (!moveItems)
    {
      v14 = objc_opt_new();
      [(ASMoveItemsTask *)self setMoveItems:v14];
    }

    moveItems2 = [(ASMoveItemsTask *)self moveItems];
    [moveItems2 addObject:v12];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)getTopLevelToken:(char *)token outStatusCodePage:(char *)page outStatusToken:(char *)statusToken
{
  *page = 5;
  *token = 5;
  *statusToken = 11;
  return 1;
}

- (BOOL)processContext:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  currentlyParsingItem = [(ASTask *)self currentlyParsingItem];

  if (!currentlyParsingItem)
  {
    if (!self->super._haveSwitchedCodePage)
    {
      if (![contextCopy hasNumberOfTokensRemaining:2])
      {
        goto LABEL_17;
      }

      if ([contextCopy currentByte])
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to move code page"];
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASMoveItemsTask.m", 57, objc_msgSend(contextCopy, "curOffset")];
        v18 = DALoggingwithCategory();
        v19 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v18, v19))
        {
          *buf = 134217984;
          curOffset = [contextCopy curOffset];
          _os_log_impl(&dword_24A0AC000, v18, v19, "Failure at index %lld:", buf, 0xCu);
        }

        v20 = DALoggingwithCategory();
        if (!os_log_type_enabled(v20, v19))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        curOffset = v16;
        goto LABEL_28;
      }

      [contextCopy advanceOffsetByAmount:1];
      if ([contextCopy currentByte] != 5)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected switch to move code page"];
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASMoveItemsTask.m", 57, objc_msgSend(contextCopy, "curOffset")];
        v23 = DALoggingwithCategory();
        v19 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v23, v19))
        {
          *buf = 134217984;
          curOffset = [contextCopy curOffset];
          _os_log_impl(&dword_24A0AC000, v23, v19, "Failure at index %lld:", buf, 0xCu);
        }

        v20 = DALoggingwithCategory();
        if (!os_log_type_enabled(v20, v19))
        {
          goto LABEL_29;
        }

        *buf = 138412290;
        curOffset = v16;
        goto LABEL_28;
      }

      [contextCopy advanceOffsetByAmount:1];
      [contextCopy setCodePage:5];
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

    if (![contextCopy hasNumberOfTokensRemaining:1])
    {
      goto LABEL_17;
    }

    if (([contextCopy currentByte] & 0x3F) == 5)
    {
      self->super._haveParsedCommand = 1;
      goto LABEL_7;
    }

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected move items response"];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d - Failure at index %lld:", "/Library/Caches/com.apple.xbs/Sources/ExchangeSync/ActiveSync/ASTasks/ASMoveItemsTask.m", 58, objc_msgSend(contextCopy, "curOffset")];
    v22 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v22, v19))
    {
      *buf = 134217984;
      curOffset = [contextCopy curOffset];
      _os_log_impl(&dword_24A0AC000, v22, v19, "Failure at index %lld:", buf, 0xCu);
    }

    v20 = DALoggingwithCategory();
    if (!os_log_type_enabled(v20, v19))
    {
LABEL_29:

      [contextCopy setParseErrorReason:v17];
LABEL_30:
      parseErrorReason = [contextCopy parseErrorReason];
      v21 = parseErrorReason == 0;

      goto LABEL_31;
    }

    *buf = 138412290;
    curOffset = v16;
LABEL_28:
    _os_log_impl(&dword_24A0AC000, v20, v19, "failure reason was %@", buf, 0xCu);
    goto LABEL_29;
  }

LABEL_2:
  currentlyParsingItem2 = [(ASTask *)self currentlyParsingItem];
  taskManager = [(ASTask *)self taskManager];
  account = [taskManager account];
  [currentlyParsingItem2 parseASParseContext:contextCopy root:0 parent:0 callbackDict:0 streamCallbackDict:0 account:account];

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

- (void)finishWithError:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = [(ASTask *)self taskStatusForError:errorCopy];
  if (errorCopy)
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
        selfCopy = objc_opt_class();
        v19 = selfCopy;
        _os_log_impl(&dword_24A0AC000, v8, v18, "%@ cancelled", buf, 0xCu);
      }

      commonValue = 0;
      v6 = -1;
    }

    else
    {
      v9 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v7, v9))
      {
        *buf = 138412546;
        selfCopy = objc_opt_class();
        v27 = 2112;
        v28 = errorCopy;
        v10 = selfCopy;
        _os_log_impl(&dword_24A0AC000, v8, v9, "%@ failed: %@", buf, 0x16u);
      }

      commonValue = 0;
    }
  }

  else
  {
    currentlyParsingItem = [(ASTask *)self currentlyParsingItem];
    v8 = currentlyParsingItem;
    if (currentlyParsingItem && [currentlyParsingItem parsingState]== 2)
    {
      v6 = [(ASTask *)self taskStatusForError:0];
      v13 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v13, v14))
      {
        *buf = 138412546;
        selfCopy = objc_opt_class();
        v27 = 2112;
        v28 = v8;
        v15 = selfCopy;
        _os_log_impl(&dword_24A0AC000, v13, v14, "%@ Parsed response of %@", buf, 0x16u);
      }

      commonValue = [v8 commonValue];
    }

    else
    {
      v16 = DALoggingwithCategory();
      v17 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v16, v17))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_24A0AC000, v16, v17, "%@ failed to parse server response.", buf, 0xCu);
      }

      commonValue = 0;
      v6 = 1;
    }
  }

  if ([(ASTask *)self attemptRetryWithStatus:v6 error:errorCopy])
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
    v22 = errorCopy;
    v23 = commonValue;
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
  moveItems = [(ASMoveItemsTask *)self moveItems];
  v5 = [moveItems countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(moveItems);
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

      v6 = [moveItems countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  [v3 closeTag:5];
  data = [v3 data];

  v14 = *MEMORY[0x277D85DE8];

  return data;
}

- (int64_t)taskStatusForExchangeStatus:(int)status
{
  v14 = *MEMORY[0x277D85DE8];
  if (status >= 8)
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
      statusCopy = status;
      _os_log_impl(&dword_24A0AC000, v5, v6, "%@: Unknown status code (%d)", &v10, 0x12u);
    }

    result = 10;
  }

  else
  {
    result = qword_24A14E000[status];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

@end