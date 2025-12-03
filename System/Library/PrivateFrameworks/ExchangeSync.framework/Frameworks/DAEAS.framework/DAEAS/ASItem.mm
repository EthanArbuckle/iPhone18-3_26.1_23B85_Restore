@interface ASItem
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
+ (id)parseRuleCache;
- (ASItem)init;
- (ASItem)parent;
- (ASItem)root;
- (BOOL)_haveEnoughDataToKeepParsingWithContext:(id)context curToken:(unsigned __int8)token;
- (BOOL)_itemPathMatches:(id)matches;
- (BOOL)_itemPathWithDCCPTMatches:(id)matches dccpt:(int)dccpt;
- (BOOL)_parseNextValueWithDataclass:(int64_t)dataclass context:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict parseRules:(id)rules account:(id)self0;
- (BOOL)_setupFirstParseWithContext:(id)context root:(id)root parent:(id)parent;
- (BOOL)_streamIfNecessaryFromContext:(id)context;
- (BOOL)nextParsedObjectWithContext:(id)context root:(id)root callbackDict:(id)dict streamCallbackDict:(id)callbackDict dataclass:(int64_t)dataclass outParsedObject:(id *)object outCPTNumber:(int *)number account:(id)self0;
- (id)_replacementObjectWithCallbackDict:(id)dict;
- (id)asParseRules;
- (id)currentStreamBlock;
- (int)_streamYourLittleHeartOutWithContext:(id)context;
- (int64_t)_dataclass;
- (void)_setCurrentlyParsingSubItem:(id)item;
- (void)ignoreThisContent:(id)content;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
- (void)setCurrentStreamBlock:(id)block;
@end

@implementation ASItem

+ (BOOL)acceptsTopLevelLeaves
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASItem.m" lineNumber:24 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

+ (BOOL)parsingLeafNode
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASItem.m" lineNumber:29 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

+ (BOOL)parsingWithSubItems
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASItem.m" lineNumber:34 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

+ (BOOL)frontingBasicTypes
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASItem.m" lineNumber:39 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

+ (BOOL)notifyOfUnknownTokens
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASItem.m" lineNumber:44 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

- (ASItem)init
{
  v7.receiver = self;
  v7.super_class = ASItem;
  v2 = [(ASItem *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_parsingState = 0;
    v4 = objc_opt_new();
    parseRuleUsageNumbers = v3->_parseRuleUsageNumbers;
    v3->_parseRuleUsageNumbers = v4;
  }

  return v3;
}

- (int)_streamYourLittleHeartOutWithContext:(id)context
{
  contextCopy = context;
  if (![contextCopy hasNumberOfTokensRemaining:1])
  {
    goto LABEL_25;
  }

  currentByte = [contextCopy currentByte];
  if (![contextCopy streamingState])
  {
    if (((*(self->_currentStreamBlock + 2))() & 1) == 0)
    {
      [(ASItem *)self setCurrentStreamBlock:0];
      v7 = 0;
      goto LABEL_26;
    }

    if (currentByte == 195 || (currentByte & 0x40) == 0)
    {
      (*(self->_currentStreamBlock + 2))();
      [(ASItem *)self setCurrentStreamBlock:0];
      v7 = 1;
      [contextCopy advanceOffsetByAmount:1];
      goto LABEL_26;
    }

    [contextCopy setStreamingState:1];
  }

  if ([contextCopy streamingState] != 1)
  {
LABEL_8:
    if ([contextCopy streamingState] == 2)
    {
      if ([contextCopy currentByte] != 1)
      {
        if ([contextCopy hasNumberOfTokensRemaining:1])
        {
          v16 = 0;
          v8 = [contextCopy numTokensStreamableForNextStringSizeOfTerminator:&v16];
          v9 = v8 - v16;
          if (v8 - v16 >= 1)
          {
            v10 = v8;
            if (v8 >= 1)
            {
              while (([contextCopy hasNumberOfTokensRemaining:v10] & 1) == 0)
              {
                v11 = __OFSUB__(v10, 1);
                v10 = (v10 - 1);
                if ((v10 < 0) ^ v11 | (v10 == 0))
                {
                  v10 = 0;
                  break;
                }
              }
            }

            if (v9 >= v10)
            {
              v12 = v10;
            }

            else
            {
              v12 = v9;
            }

            v15 = 0;
            v13 = [contextCopy bufferForLength:v12 shouldFree:&v15];
            (*(self->_currentStreamBlock + 2))();
            [contextCopy advanceOffsetByAmount:v10];
            if (v15 == 1)
            {
              free(v13);
            }
          }
        }
      }

      if ([contextCopy hasNumberOfTokensRemaining:1] && objc_msgSend(contextCopy, "currentByte") == 1)
      {
        (*(self->_currentStreamBlock + 2))();
        [(ASItem *)self setCurrentStreamBlock:0];
        v7 = 1;
        [contextCopy advanceOffsetByAmount:1];
        [contextCopy setStreamingState:0];
        goto LABEL_26;
      }
    }

LABEL_25:
    v7 = 2;
    goto LABEL_26;
  }

  v7 = 2;
  if ([contextCopy hasNumberOfTokensRemaining:2])
  {
    if ([contextCopy nextByte] != 3)
    {
      [(ASItem *)a2 _streamYourLittleHeartOutWithContext:?];
    }

    [contextCopy advanceOffsetByAmount:2];
    [contextCopy setStreamingState:2];
    goto LABEL_8;
  }

LABEL_26:

  return v7;
}

- (BOOL)nextParsedObjectWithContext:(id)context root:(id)root callbackDict:(id)dict streamCallbackDict:(id)callbackDict dataclass:(int64_t)dataclass outParsedObject:(id *)object outCPTNumber:(int *)number account:(id)self0
{
  dataclassCopy = dataclass;
  v80 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  rootCopy = root;
  dictCopy = dict;
  callbackDictCopy = callbackDict;
  accountCopy = account;
  asParseRules = [(ASItem *)self asParseRules];
  acceptsTopLevelLeaves = [objc_opt_class() acceptsTopLevelLeaves];
  currentByte = [contextCopy currentByte];
  if ([MEMORY[0x277D03910] isEASParsingLogEnabled])
  {
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      selfCopy = self;
      v23 = acceptsTopLevelLeaves;
      v24 = asParseRules;
      v25 = callbackDictCopy;
      curOffset = [contextCopy curOffset];
      expectedTotalBytesCount = [contextCopy expectedTotalBytesCount];
      *buf = 138413058;
      selfCopy4 = v22;
      v77 = 2048;
      *v78 = curOffset;
      callbackDictCopy = v25;
      asParseRules = v24;
      acceptsTopLevelLeaves = v23;
      self = selfCopy;
      *&v78[8] = 1024;
      LODWORD(v79) = currentByte;
      WORD2(v79) = 2048;
      *(&v79 + 6) = expectedTotalBytesCount - [contextCopy curOffset];
      _os_log_impl(&dword_24A0AC000, v19, v20, "%@ - nextParsedObjectWithContext: context pointing at index %lld (token %x).  Have %lld more tokens remaining", buf, 0x26u);
    }
  }

  codePage = [contextCopy codePage];
  v29 = currentByte & 0x3F;
  v30 = v29 | (codePage << 8);
  v31 = [asParseRules objectForInt:v30];
  v73 = callbackDictCopy;
  v32 = [(ASItem *)self _copyStreamingBlockForStreamingCallbackDict:callbackDictCopy dccpt:v30];
  v70 = asParseRules;
  if (v32)
  {
    [(ASItem *)self setCurrentStreamBlock:v32];
LABEL_7:
    v33 = 0;
    v34 = 1;
    goto LABEL_30;
  }

  if (!v31)
  {
    v35 = v29 | (dataclassCopy << 16) | (codePage << 8);
    v36 = [v70 objectForInt:v35];
    if (v36)
    {
      v31 = v36;
      v30 = v29 | (dataclassCopy << 16) | (codePage << 8);
      goto LABEL_11;
    }

    if (acceptsTopLevelLeaves)
    {
      if ((currentByte & 0x40) == 0 || currentByte == 195)
      {
        v33 = objc_opt_new();
        [v33 parseASParseContext:contextCopy root:rootCopy parent:self callbackDict:dictCopy streamCallbackDict:v73 account:accountCopy];
        v31 = 0;
        goto LABEL_23;
      }

      objectCopy2 = object;
      if (![contextCopy hasNumberOfTokensRemaining:2])
      {
        goto LABEL_56;
      }

      nextByte = [contextCopy nextByte];
      if (nextByte == 195)
      {
        numTokensForNextOpaqueData = [contextCopy numTokensForNextOpaqueData];
        if (numTokensForNextOpaqueData != -1)
        {
          v53 = numTokensForNextOpaqueData;
          v54 = MEMORY[0x277CBEA90];
          goto LABEL_55;
        }

LABEL_56:
        v31 = 0;
        goto LABEL_7;
      }

      if (nextByte == 3)
      {
        numTokensForNextString = [contextCopy numTokensForNextString];
        if (numTokensForNextString != -1)
        {
          v53 = numTokensForNextString;
          v54 = MEMORY[0x277CCACA8];
LABEL_55:
          v33 = [[v54 alloc] initWithASParseContext:contextCopy root:rootCopy parent:self callbackDict:dictCopy streamCallbackDict:v73 lengthUntilEndOfTerminator:v53];
          v31 = 0;
          goto LABEL_24;
        }

        goto LABEL_56;
      }

      v59 = DALoggingwithCategory();
      v64 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v59, v64))
      {
        codePage2 = [contextCopy codePage];
        allKeys = [v70 allKeys];
        *buf = 138413058;
        selfCopy4 = self;
        v77 = 1024;
        *v78 = codePage2;
        *&v78[4] = 1024;
        *&v78[6] = currentByte & 0x3F;
        LOWORD(v79) = 2112;
        *(&v79 + 2) = allKeys;
        _os_log_impl(&dword_24A0AC000, v59, v64, "We have an int in our WBXML, but Exchange never gives us this.  Parse error.\nObject is %@, codePage 0x%x token 0x%x, parseRules have keys %@", buf, 0x22u);
      }
    }

    else
    {
      if ([objc_opt_class() notifyOfUnknownTokens])
      {
        -[ASItem unknownToken:receivedForCodePage:](self, "unknownToken:receivedForCodePage:", currentByte & 0x3F, [contextCopy codePage]);
LABEL_51:
        v31 = 0;
        goto LABEL_52;
      }

      v59 = DALoggingwithCategory();
      v60 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v59, v60))
      {
        codePage3 = [contextCopy codePage];
        allKeys2 = [v70 allKeys];
        *buf = 138413314;
        selfCopy4 = self;
        v77 = 1024;
        *v78 = codePage3;
        *&v78[4] = 1024;
        *&v78[6] = v29;
        LOWORD(v79) = 1024;
        *(&v79 + 2) = v35;
        WORD3(v79) = 2112;
        *(&v79 + 1) = allKeys2;
        _os_log_impl(&dword_24A0AC000, v59, v60, "No parse rule from object %@ for codePage 0x%x token 0x%x (CPT = %d), parseRules have keys %@", buf, 0x28u);
      }
    }

    goto LABEL_51;
  }

LABEL_11:
  objectClass = [v31 objectClass];
  if ([(objc_class *)objectClass parsingLeafNode])
  {
    if ((currentByte & 0x40) != 0 && currentByte != 195)
    {
      if (![contextCopy hasNumberOfTokensRemaining:2])
      {
        goto LABEL_7;
      }

      nextByte2 = [contextCopy nextByte];
      if (nextByte2 == 195)
      {
        numTokensForNextOpaqueData2 = [contextCopy numTokensForNextOpaqueData];
        goto LABEL_42;
      }

      if (nextByte2 == 3)
      {
        numTokensForNextOpaqueData2 = [contextCopy numTokensForNextString];
LABEL_42:
        if (numTokensForNextOpaqueData2 == -1)
        {
          goto LABEL_7;
        }

        v33 = [[objectClass alloc] initWithASParseContext:contextCopy root:rootCopy parent:self callbackDict:dictCopy streamCallbackDict:v73 lengthUntilEndOfTerminator:numTokensForNextOpaqueData2];
        goto LABEL_23;
      }

      v55 = DALoggingwithCategory();
      v56 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v55, v56))
      {
        codePage4 = [contextCopy codePage];
        allKeys3 = [v70 allKeys];
        *buf = 138413058;
        selfCopy4 = self;
        v77 = 1024;
        *v78 = codePage4;
        *&v78[4] = 1024;
        *&v78[6] = currentByte & 0x3F;
        LOWORD(v79) = 2112;
        *(&v79 + 2) = allKeys3;
        _os_log_impl(&dword_24A0AC000, v55, v56, "We have an int in our WBXML, but Exchange never gives us this.  Parse error.\nObject is %@, codePage 0x%x token 0x%x, parseRules have keys %@", buf, 0x22u);
      }

LABEL_52:
      v33 = 0;
      v34 = 0;
      goto LABEL_30;
    }

    [(objc_class *)objectClass expectsContent];
    v33 = objc_opt_new();
    [v33 parseASParseContext:contextCopy root:rootCopy parent:self callbackDict:dictCopy streamCallbackDict:v73 account:accountCopy];
  }

  else
  {
    if ([(objc_class *)objectClass parsingWithSubItems])
    {
      v40 = [objectClass alloc];
      subclassRuleSet = [v31 subclassRuleSet];
      v33 = [v40 initWithSubclassRuleSet:subclassRuleSet];
    }

    else
    {
      v33 = objc_opt_new();
    }

    WeakRetained = objc_loadWeakRetained(&self->_root);
    [v33 parseASParseContext:contextCopy root:WeakRetained parent:self callbackDict:dictCopy streamCallbackDict:v73 account:accountCopy];
  }

LABEL_23:
  objectCopy2 = object;
LABEL_24:
  if (objectCopy2)
  {
    v44 = v33;
    *objectCopy2 = v33;
  }

  v34 = v33 != 0;
  if (v33)
  {
    v45 = [(NSMutableDictionary *)self->_parseRuleUsageNumbers objectForInt:v30];
    intValue = [v45 intValue];

    parseRuleUsageNumbers = self->_parseRuleUsageNumbers;
    v48 = [MEMORY[0x277CCABB0] numberWithInt:(intValue + 1)];
    [(NSMutableDictionary *)parseRuleUsageNumbers setObject:v48 forInt:v30];
  }

  if (number)
  {
    *number = v30;
  }

LABEL_30:

  v49 = *MEMORY[0x277D85DE8];
  return v34;
}

- (void)_setCurrentlyParsingSubItem:(id)item
{
  itemCopy = item;
  currentlyParsingSubItem = self->_currentlyParsingSubItem;
  p_currentlyParsingSubItem = &self->_currentlyParsingSubItem;
  if (currentlyParsingSubItem != itemCopy)
  {
    v8 = itemCopy;
    objc_storeStrong(p_currentlyParsingSubItem, item);
    itemCopy = v8;
  }
}

- (BOOL)_setupFirstParseWithContext:(id)context root:(id)root parent:(id)parent
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  rootCopy = root;
  parentCopy = parent;
  v11 = [contextCopy hasNumberOfTokensRemaining:1];
  if (v11)
  {
    currentByte = [contextCopy currentByte];
    self->_token = currentByte & 0x3F;
    [contextCopy advanceOffsetByAmount:1];
    self->_codePage = [contextCopy codePage];
    v13 = rootCopy ? rootCopy : self;
    objc_storeWeak(&self->_root, v13);
    objc_storeWeak(&self->_parent, parentCopy);
    self->_parsingState = 1;
    if ((currentByte & 0x40) == 0 || currentByte == 195)
    {
      if (([objc_opt_class() parsingWithSubItems] & 1) == 0)
      {
        v14 = DALoggingwithCategory();
        v15 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v14, v15))
        {
          v18 = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_24A0AC000, v14, v15, "Item %@ expected content, but has content-less opening byte.  Returning bare-initted object.  Good luck", &v18, 0xCu);
        }
      }

      self->_parsingState = 2;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int64_t)_dataclass
{
  selfCopy = self;
  while (1)
  {
    v3 = selfCopy;
    selfCopy = [(ASItem *)selfCopy parent];

    if (!selfCopy)
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dataclass = [(ASItem *)selfCopy dataclass];
      goto LABEL_6;
    }
  }

  dataclass = 0;
LABEL_6:

  return dataclass;
}

- (BOOL)_streamIfNecessaryFromContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (self->_currentStreamBlock)
  {
    v5 = [(ASItem *)self _streamYourLittleHeartOutWithContext:contextCopy];
    if (v5 == 2)
    {
      v10 = 0;
      goto LABEL_9;
    }

    if (!v5)
    {
      v6 = DALoggingwithCategory();
      v7 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v6, v7))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v13 = 138412290;
        v14 = v9;
        _os_log_impl(&dword_24A0AC000, v6, v7, "%@: Parse Rule Constraint Violation.  Consumer no longer cares about our stream", &v13, 0xCu);
      }

      self->_parsingState = 4;
    }
  }

  v10 = 1;
LABEL_9:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_haveEnoughDataToKeepParsingWithContext:(id)context curToken:(unsigned __int8)token
{
  tokenCopy = token;
  contextCopy = context;
  v7 = contextCopy;
  if (tokenCopy == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parent);
    if (WeakRetained && (v9 = WeakRetained, v10 = [v7 hasNumberOfTokensRemaining:1], v9, !v10))
    {
      v11 = 0;
    }

    else
    {
      v11 = 1;
      [v7 advanceOffsetByAmount:1];
      self->_parsingState = 2;
    }
  }

  else
  {
    v11 = [contextCopy hasNumberOfTokensRemaining:1];
  }

  return v11;
}

- (BOOL)_parseNextValueWithDataclass:(int64_t)dataclass context:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict parseRules:(id)rules account:(id)self0
{
  v55 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  rootCopy = root;
  dictCopy = dict;
  callbackDictCopy = callbackDict;
  rulesCopy = rules;
  accountCopy = account;
  if (![(ASItem *)self _streamIfNecessaryFromContext:contextCopy])
  {
    goto LABEL_50;
  }

  if (self->_parsingState != 1)
  {
    goto LABEL_46;
  }

  currentByte = [contextCopy currentByte];
  v50 = currentByte;
  currentlyParsingCPTNumber = self->_currentlyParsingCPTNumber;
  currentlyParsingSubItem = self->_currentlyParsingSubItem;
  if (!currentlyParsingSubItem)
  {
    if (!handleCodePageSwitch(contextCopy, currentByte, &v50))
    {
      goto LABEL_50;
    }

    if (self->_parsingState == 1)
    {
      if ([MEMORY[0x277D03910] isEASParsingLogEnabled])
      {
        v27 = DALoggingwithCategory();
        type = *(MEMORY[0x277D03988] + 7);
        if (os_log_type_enabled(v27, type))
        {
          v28 = objc_opt_class();
          v45 = NSStringFromClass(v28);
          *buf = 138412546;
          v52 = v45;
          v53 = 1024;
          v54 = v50;
          _os_log_impl(&dword_24A0AC000, v27, type, "%@ - curToken is %x", buf, 0x12u);
        }
      }

      if (![(ASItem *)self _haveEnoughDataToKeepParsingWithContext:contextCopy curToken:v50])
      {
        goto LABEL_50;
      }

      if (self->_parsingState == 1)
      {
        *buf = 0;
        v49 = 0;
        v29 = [(ASItem *)self nextParsedObjectWithContext:contextCopy root:rootCopy callbackDict:dictCopy streamCallbackDict:callbackDictCopy dataclass:dataclass outParsedObject:&v49 outCPTNumber:buf account:accountCopy];
        v30 = v49;
        v31 = v30;
        if (!v29)
        {
          self->_parsingState = 4;
          goto LABEL_43;
        }

        if (!self->_currentStreamBlock)
        {
          goto LABEL_24;
        }

        v32 = v30;
        v33 = [(ASItem *)self _streamYourLittleHeartOutWithContext:contextCopy];
        if (v33 == 1)
        {
          [(ASItem *)self _setCurrentlyParsingSubItem:0];
          v35 = v32;
        }

        else
        {
          if (v33)
          {

            goto LABEL_50;
          }

          typea = v32;
          v48 = v32;
          v34 = [(ASItem *)self nextParsedObjectWithContext:contextCopy root:rootCopy callbackDict:dictCopy streamCallbackDict:0 dataclass:dataclass outParsedObject:&v48 outCPTNumber:buf account:accountCopy];
          v35 = v48;

          if (v34)
          {
            v31 = v35;
LABEL_24:
            if (v31)
            {
              currentlyParsingCPTNumber = *buf;
              v36 = v31;
              [(ASItem *)self _setCurrentlyParsingSubItem:v31];
              v31 = v36;
LABEL_43:

              goto LABEL_5;
            }

            [(ASItem *)self _setCurrentlyParsingSubItem:0];
LABEL_50:
            v26 = 0;
            goto LABEL_51;
          }

          self->_parsingState = 4;
        }

        goto LABEL_5;
      }
    }

LABEL_46:
    v26 = 1;
    goto LABEL_51;
  }

  [(ASParsing *)currentlyParsingSubItem parseASParseContext:contextCopy root:rootCopy parent:self callbackDict:dictCopy streamCallbackDict:callbackDictCopy account:accountCopy];
LABEL_5:
  if (self->_parsingState != 1)
  {
    goto LABEL_46;
  }

  v24 = self->_currentlyParsingSubItem;
  if (!v24)
  {
    goto LABEL_46;
  }

  parsingState = [(ASParsing *)v24 parsingState];
  if (parsingState > 2)
  {
    if (parsingState == 3)
    {
      [(ASItem *)self _setCurrentlyParsingSubItem:0];
    }

    else if (parsingState == 4)
    {
      [(ASItem *)self _setCurrentlyParsingSubItem:0];
      self->_parsingState = 4;
      goto LABEL_46;
    }

LABEL_32:
    if (self->_parsingState == 1 && self->_currentlyParsingSubItem)
    {
      if (objc_opt_respondsToSelector())
      {
        v37 = [(ASParsing *)self->_currentlyParsingSubItem _replacementObjectWithCallbackDict:dictCopy];
        [(ASItem *)self _setCurrentlyParsingSubItem:v37];
      }

      if (self->_parsingState == 1)
      {
        v38 = self->_currentlyParsingSubItem;
        if (v38)
        {
          v39 = v38;
          v40 = self->_currentlyParsingSubItem;
          if ([objc_opt_class() frontingBasicTypes])
          {
            commonValue = [(ASParsing *)self->_currentlyParsingSubItem commonValue];

            v39 = commonValue;
          }

          v42 = [rulesCopy objectForInt:currentlyParsingCPTNumber];
          if ([objc_opt_class() acceptsTopLevelLeaves])
          {
            [(ASItem *)self setObject:v39 forDCCPT:currentlyParsingCPTNumber];
          }

          else
          {
            -[ASItem da_performSelectorThatDoesntAffectRetainCount:withObject:](self, "da_performSelectorThatDoesntAffectRetainCount:withObject:", [v42 setterMethod], v39);
          }

          [(ASItem *)self _setCurrentlyParsingSubItem:0];
        }
      }
    }

    goto LABEL_46;
  }

  if (parsingState >= 2)
  {
    if (parsingState == 2)
    {
      self->_currentlyParsingCPTNumber = 0;
    }

    goto LABEL_32;
  }

  v26 = 0;
  self->_currentlyParsingCPTNumber = currentlyParsingCPTNumber;
LABEL_51:

  v43 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v78 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  rootCopy = root;
  parentCopy = parent;
  dictCopy = dict;
  callbackDictCopy = callbackDict;
  accountCopy = account;
  v20 = 0x277D03000uLL;
  v66 = accountCopy;
  if ([MEMORY[0x277D03910] isEASParsingLogEnabled])
  {
    v21 = DALoggingwithCategory();
    v22 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138412290;
      selfCopy = v24;
      _os_log_impl(&dword_24A0AC000, v21, v22, "%@ - begin parsing", buf, 0xCu);
    }

    accountCopy = v66;
    v20 = 0x277D03000uLL;
  }

  if ([MEMORY[0x277D03910] isEASParsingLogEnabled])
  {
    v25 = DALoggingwithCategory();
    v26 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      currentlyParsingSubItem = self->_currentlyParsingSubItem;
      *buf = 138412546;
      selfCopy = v28;
      v70 = 2112;
      *v71 = currentlyParsingSubItem;
      _os_log_impl(&dword_24A0AC000, v25, v26, "%@ - currently parsing sub item is %@", buf, 0x16u);
    }

    accountCopy = v66;
    v20 = 0x277D03000uLL;
  }

  acceptsTopLevelLeaves = [objc_opt_class() acceptsTopLevelLeaves];
  parsingState = self->_parsingState;
  if (!parsingState)
  {
    [(ASItem *)self _setupFirstParseWithContext:contextCopy root:rootCopy parent:parentCopy];
    parsingState = self->_parsingState;
  }

  if (parsingState == 1)
  {
    asParseRules = [(ASItem *)self asParseRules];
    if (!((asParseRules != 0) | acceptsTopLevelLeaves & 1))
    {
      v50 = DALoggingwithCategory();
      v51 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v50, v51))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_24A0AC000, v50, v51, "object %@ must have parse rules", buf, 0xCu);
      }

      v32 = 0;
      self->_parsingState = 4;
      accountCopy = v66;
      v20 = 0x277D03000uLL;
      goto LABEL_38;
    }

    v32 = asParseRules;
    parsingState = self->_parsingState;
    if (parsingState == 1)
    {
      _dataclass = [(ASItem *)self _dataclass];
      while (1)
      {
        parsingState = self->_parsingState;
        if (parsingState != 1)
        {
          break;
        }

        if (![(ASItem *)self _parseNextValueWithDataclass:_dataclass context:contextCopy root:rootCopy parent:parentCopy callbackDict:dictCopy streamCallbackDict:callbackDictCopy parseRules:v32 account:accountCopy])
        {
          parsingState = self->_parsingState;
          break;
        }
      }

      v20 = 0x277D03000uLL;
    }
  }

  else
  {
    v32 = 0;
  }

  if ((parsingState - 3) >= 2)
  {
    if (parsingState == 2)
    {
      v63 = callbackDictCopy;
      keyEnumerator = [v32 keyEnumerator];
      nextObject = [keyEnumerator nextObject];
      if (nextObject)
      {
        v35 = nextObject;
        v59 = dictCopy;
        v60 = parentCopy;
        v61 = rootCopy;
        v62 = contextCopy;
        v36 = 0;
        type = *(MEMORY[0x277D03988] + 3);
        v37 = keyEnumerator;
        do
        {
          v38 = v36;
          v36 = [v32 objectForKeyedSubscript:v35];

          v39 = [(NSMutableDictionary *)self->_parseRuleUsageNumbers objectForKeyedSubscript:v35];
          intValue = [v39 intValue];

          minimumNumber = [v36 minimumNumber];
          maximumNumber = [v36 maximumNumber];
          v43 = maximumNumber;
          if (intValue < minimumNumber || maximumNumber != 1209 && intValue > maximumNumber)
          {
            v44 = v32;
            intValue2 = [v35 intValue];
            v46 = DALoggingwithCategory();
            if (os_log_type_enabled(v46, type))
            {
              v47 = objc_opt_class();
              v48 = NSStringFromClass(v47);
              *buf = 138413570;
              selfCopy = v48;
              v70 = 1024;
              *v71 = intValue;
              *&v71[4] = 1024;
              *&v71[6] = HIBYTE(intValue2);
              v72 = 1024;
              v73 = intValue2;
              v74 = 1024;
              v75 = minimumNumber;
              v76 = 1024;
              v77 = v43;
              _os_log_impl(&dword_24A0AC000, v46, type, "%@: Parse Rule Constraint Violation.  Received %d counts of code page %d / token 0x%x, but the parse rule says we have a range of %d - %d", buf, 0x2Au);

              v37 = keyEnumerator;
            }

            v32 = v44;
          }

          nextObject2 = [v37 nextObject];

          v35 = nextObject2;
        }

        while (nextObject2);

        rootCopy = v61;
        contextCopy = v62;
        dictCopy = v59;
        parentCopy = v60;
        accountCopy = v66;
        v20 = 0x277D03000;
      }

      callbackDictCopy = v63;
      if (acceptsTopLevelLeaves)
      {
        [(ASItem *)self applyPlaceHolder];
        [(ASItem *)self clearPlaceHolder];
      }
    }

    goto LABEL_40;
  }

LABEL_38:
  if (acceptsTopLevelLeaves)
  {
    [(ASItem *)self clearPlaceHolder];
  }

LABEL_40:
  if (self->_parsingState != 1)
  {
    parseRuleUsageNumbers = self->_parseRuleUsageNumbers;
    self->_parseRuleUsageNumbers = 0;
  }

  if ([*(v20 + 2320) isEASParsingLogEnabled])
  {
    v53 = DALoggingwithCategory();
    v54 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v53, v54))
    {
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      v57 = self->_parsingState;
      *buf = 138412546;
      selfCopy = v56;
      v70 = 1024;
      *v71 = v57;
      _os_log_impl(&dword_24A0AC000, v53, v54, "%@ - done parsing with state %d", buf, 0x12u);
    }

    accountCopy = v66;
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (ASItem)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (BOOL)_itemPathMatches:(id)matches
{
  v4 = [matches componentsSeparatedByString:@"."];
  reverseObjectEnumerator = [v4 reverseObjectEnumerator];

  selfCopy = self;
  nextObject = [reverseObjectEnumerator nextObject];
  if (nextObject)
  {
    v8 = nextObject;
    while (selfCopy)
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v8 isEqualToString:v10];

      if (!v11)
      {
        break;
      }

      parent = [(ASItem *)selfCopy parent];

      nextObject2 = [reverseObjectEnumerator nextObject];

      v8 = nextObject2;
      selfCopy = parent;
      if (!nextObject2)
      {
        goto LABEL_9;
      }
    }

    v14 = 0;
    parent = selfCopy;
  }

  else
  {
    parent = selfCopy;
LABEL_9:
    v14 = parent == 0;
  }

  return v14;
}

- (id)_replacementObjectWithCallbackDict:(id)dict
{
  dictCopy = dict;
  keyEnumerator = [dictCopy keyEnumerator];
  nextObject = 0;
  while (1)
  {
    v7 = nextObject;
    nextObject = [keyEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    if ([(ASItem *)self _itemPathMatches:nextObject])
    {
      v8 = [dictCopy objectForKeyedSubscript:nextObject];
      selfCopy = (v8)[2](v8, self);

      goto LABEL_6;
    }
  }

  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (BOOL)_itemPathWithDCCPTMatches:(id)matches dccpt:(int)dccpt
{
  dccptCopy = dccpt;
  matchesCopy = matches;
  selfCopy = self;
  v8 = [matchesCopy length];
  v9 = (v8 - 1);
  v10 = v8 - 1;
  if (v8 >= 2)
  {
    while ([matchesCopy characterAtIndex:v9] != 46)
    {
      if (v9-- <= 1)
      {
        v10 = 0;
        goto LABEL_7;
      }
    }

    v10 = v9;
  }

LABEL_7:
  if ([matchesCopy characterAtIndex:v10] == 46)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v10;
  }

  v13 = [matchesCopy substringWithRange:{v12, v8 - v12}];
  intValue = [v13 intValue];

  if (intValue != dccptCopy)
  {
    goto LABEL_11;
  }

  if (v10 >= 1)
  {
    v16 = 0;
    while (1)
    {
      v17 = (v10 - 1);
      if (v10 != 1)
      {
        do
        {
          if ([matchesCopy characterAtIndex:v17] == 46)
          {
            break;
          }

          --v17;
        }

        while (v17);
      }

      [matchesCopy characterAtIndex:v17];
      v18 = [matchesCopy substringWithRange:?];

      if (!selfCopy)
      {
        break;
      }

      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v18 isEqualToString:v20];

      if (!v21)
      {
        break;
      }

      parent = [(ASItem *)selfCopy parent];

      v16 = v18;
      selfCopy = parent;
      v10 = v17;
      if (v17 <= 0)
      {

        selfCopy = parent;
        goto LABEL_22;
      }
    }

LABEL_11:
    v15 = 0;
    goto LABEL_23;
  }

  parent = selfCopy;
LABEL_22:
  v15 = parent == 0;
LABEL_23:

  return v15;
}

- (void)ignoreThisContent:(id)content
{
  v9 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  if ([MEMORY[0x277D03910] isEASParsingLogEnabled])
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v4, v5))
    {
      v7 = 138412290;
      v8 = contentCopy;
      _os_log_impl(&dword_24A0AC000, v4, v5, "ignoring content %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)asParseRules
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A0AC000, v3, v4, "%s to be implemented by subclass", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)asParseRules
{
  v2 = objc_opt_class();

  return [v2 asParseRules];
}

+ (id)parseRuleCache
{
  if (parseRuleCache_onceToken != -1)
  {
    +[ASItem parseRuleCache];
  }

  v3 = parseRuleCache_retVal;

  return v3;
}

uint64_t __24__ASItem_parseRuleCache__block_invoke()
{
  parseRuleCache_retVal = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)currentStreamBlock
{
  v2 = MEMORY[0x24C2119B0](self->_currentStreamBlock, a2);

  return v2;
}

- (void)setCurrentStreamBlock:(id)block
{
  if (self->_currentStreamBlock != block)
  {
    v5 = MEMORY[0x24C2119B0](block, a2);
    currentStreamBlock = self->_currentStreamBlock;
    self->_currentStreamBlock = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (ASItem)root
{
  WeakRetained = objc_loadWeakRetained(&self->_root);

  return WeakRetained;
}

- (void)_streamYourLittleHeartOutWithContext:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASItem.m" lineNumber:115 description:@"we only support streaming leaf nodes."];
}

@end