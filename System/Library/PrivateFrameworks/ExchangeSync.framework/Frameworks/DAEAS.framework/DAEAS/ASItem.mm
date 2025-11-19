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
- (BOOL)_haveEnoughDataToKeepParsingWithContext:(id)a3 curToken:(unsigned __int8)a4;
- (BOOL)_itemPathMatches:(id)a3;
- (BOOL)_itemPathWithDCCPTMatches:(id)a3 dccpt:(int)a4;
- (BOOL)_parseNextValueWithDataclass:(int64_t)a3 context:(id)a4 root:(id)a5 parent:(id)a6 callbackDict:(id)a7 streamCallbackDict:(id)a8 parseRules:(id)a9 account:(id)a10;
- (BOOL)_setupFirstParseWithContext:(id)a3 root:(id)a4 parent:(id)a5;
- (BOOL)_streamIfNecessaryFromContext:(id)a3;
- (BOOL)nextParsedObjectWithContext:(id)a3 root:(id)a4 callbackDict:(id)a5 streamCallbackDict:(id)a6 dataclass:(int64_t)a7 outParsedObject:(id *)a8 outCPTNumber:(int *)a9 account:(id)a10;
- (id)_replacementObjectWithCallbackDict:(id)a3;
- (id)asParseRules;
- (id)currentStreamBlock;
- (int)_streamYourLittleHeartOutWithContext:(id)a3;
- (int64_t)_dataclass;
- (void)_setCurrentlyParsingSubItem:(id)a3;
- (void)ignoreThisContent:(id)a3;
- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8;
- (void)setCurrentStreamBlock:(id)a3;
@end

@implementation ASItem

+ (BOOL)acceptsTopLevelLeaves
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ASItem.m" lineNumber:24 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

+ (BOOL)parsingLeafNode
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ASItem.m" lineNumber:29 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

+ (BOOL)parsingWithSubItems
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ASItem.m" lineNumber:34 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

+ (BOOL)frontingBasicTypes
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ASItem.m" lineNumber:39 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

  return 0;
}

+ (BOOL)notifyOfUnknownTokens
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ASItem.m" lineNumber:44 description:{@"Must be called on subclass: %s", sel_getName(a2)}];

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

- (int)_streamYourLittleHeartOutWithContext:(id)a3
{
  v5 = a3;
  if (![v5 hasNumberOfTokensRemaining:1])
  {
    goto LABEL_25;
  }

  v6 = [v5 currentByte];
  if (![v5 streamingState])
  {
    if (((*(self->_currentStreamBlock + 2))() & 1) == 0)
    {
      [(ASItem *)self setCurrentStreamBlock:0];
      v7 = 0;
      goto LABEL_26;
    }

    if (v6 == 195 || (v6 & 0x40) == 0)
    {
      (*(self->_currentStreamBlock + 2))();
      [(ASItem *)self setCurrentStreamBlock:0];
      v7 = 1;
      [v5 advanceOffsetByAmount:1];
      goto LABEL_26;
    }

    [v5 setStreamingState:1];
  }

  if ([v5 streamingState] != 1)
  {
LABEL_8:
    if ([v5 streamingState] == 2)
    {
      if ([v5 currentByte] != 1)
      {
        if ([v5 hasNumberOfTokensRemaining:1])
        {
          v16 = 0;
          v8 = [v5 numTokensStreamableForNextStringSizeOfTerminator:&v16];
          v9 = v8 - v16;
          if (v8 - v16 >= 1)
          {
            v10 = v8;
            if (v8 >= 1)
            {
              while (([v5 hasNumberOfTokensRemaining:v10] & 1) == 0)
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
            v13 = [v5 bufferForLength:v12 shouldFree:&v15];
            (*(self->_currentStreamBlock + 2))();
            [v5 advanceOffsetByAmount:v10];
            if (v15 == 1)
            {
              free(v13);
            }
          }
        }
      }

      if ([v5 hasNumberOfTokensRemaining:1] && objc_msgSend(v5, "currentByte") == 1)
      {
        (*(self->_currentStreamBlock + 2))();
        [(ASItem *)self setCurrentStreamBlock:0];
        v7 = 1;
        [v5 advanceOffsetByAmount:1];
        [v5 setStreamingState:0];
        goto LABEL_26;
      }
    }

LABEL_25:
    v7 = 2;
    goto LABEL_26;
  }

  v7 = 2;
  if ([v5 hasNumberOfTokensRemaining:2])
  {
    if ([v5 nextByte] != 3)
    {
      [(ASItem *)a2 _streamYourLittleHeartOutWithContext:?];
    }

    [v5 advanceOffsetByAmount:2];
    [v5 setStreamingState:2];
    goto LABEL_8;
  }

LABEL_26:

  return v7;
}

- (BOOL)nextParsedObjectWithContext:(id)a3 root:(id)a4 callbackDict:(id)a5 streamCallbackDict:(id)a6 dataclass:(int64_t)a7 outParsedObject:(id *)a8 outCPTNumber:(int *)a9 account:(id)a10
{
  v67 = a7;
  v80 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v69 = a4;
  v74 = a5;
  v15 = a6;
  v71 = a10;
  v16 = [(ASItem *)self asParseRules];
  v17 = [objc_opt_class() acceptsTopLevelLeaves];
  v18 = [v14 currentByte];
  if ([MEMORY[0x277D03910] isEASParsingLogEnabled])
  {
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v72 = self;
      v23 = v17;
      v24 = v16;
      v25 = v15;
      v26 = [v14 curOffset];
      v27 = [v14 expectedTotalBytesCount];
      *buf = 138413058;
      v76 = v22;
      v77 = 2048;
      *v78 = v26;
      v15 = v25;
      v16 = v24;
      v17 = v23;
      self = v72;
      *&v78[8] = 1024;
      LODWORD(v79) = v18;
      WORD2(v79) = 2048;
      *(&v79 + 6) = v27 - [v14 curOffset];
      _os_log_impl(&dword_24A0AC000, v19, v20, "%@ - nextParsedObjectWithContext: context pointing at index %lld (token %x).  Have %lld more tokens remaining", buf, 0x26u);
    }
  }

  v28 = [v14 codePage];
  v29 = v18 & 0x3F;
  v30 = v29 | (v28 << 8);
  v31 = [v16 objectForInt:v30];
  v73 = v15;
  v32 = [(ASItem *)self _copyStreamingBlockForStreamingCallbackDict:v15 dccpt:v30];
  v70 = v16;
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
    v35 = v29 | (v67 << 16) | (v28 << 8);
    v36 = [v70 objectForInt:v35];
    if (v36)
    {
      v31 = v36;
      v30 = v29 | (v67 << 16) | (v28 << 8);
      goto LABEL_11;
    }

    if (v17)
    {
      if ((v18 & 0x40) == 0 || v18 == 195)
      {
        v33 = objc_opt_new();
        [v33 parseASParseContext:v14 root:v69 parent:self callbackDict:v74 streamCallbackDict:v73 account:v71];
        v31 = 0;
        goto LABEL_23;
      }

      v43 = a8;
      if (![v14 hasNumberOfTokensRemaining:2])
      {
        goto LABEL_56;
      }

      v51 = [v14 nextByte];
      if (v51 == 195)
      {
        v63 = [v14 numTokensForNextOpaqueData];
        if (v63 != -1)
        {
          v53 = v63;
          v54 = MEMORY[0x277CBEA90];
          goto LABEL_55;
        }

LABEL_56:
        v31 = 0;
        goto LABEL_7;
      }

      if (v51 == 3)
      {
        v52 = [v14 numTokensForNextString];
        if (v52 != -1)
        {
          v53 = v52;
          v54 = MEMORY[0x277CCACA8];
LABEL_55:
          v33 = [[v54 alloc] initWithASParseContext:v14 root:v69 parent:self callbackDict:v74 streamCallbackDict:v73 lengthUntilEndOfTerminator:v53];
          v31 = 0;
          goto LABEL_24;
        }

        goto LABEL_56;
      }

      v59 = DALoggingwithCategory();
      v64 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v59, v64))
      {
        v65 = [v14 codePage];
        v66 = [v70 allKeys];
        *buf = 138413058;
        v76 = self;
        v77 = 1024;
        *v78 = v65;
        *&v78[4] = 1024;
        *&v78[6] = v18 & 0x3F;
        LOWORD(v79) = 2112;
        *(&v79 + 2) = v66;
        _os_log_impl(&dword_24A0AC000, v59, v64, "We have an int in our WBXML, but Exchange never gives us this.  Parse error.\nObject is %@, codePage 0x%x token 0x%x, parseRules have keys %@", buf, 0x22u);
      }
    }

    else
    {
      if ([objc_opt_class() notifyOfUnknownTokens])
      {
        -[ASItem unknownToken:receivedForCodePage:](self, "unknownToken:receivedForCodePage:", v18 & 0x3F, [v14 codePage]);
LABEL_51:
        v31 = 0;
        goto LABEL_52;
      }

      v59 = DALoggingwithCategory();
      v60 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v59, v60))
      {
        v61 = [v14 codePage];
        v62 = [v70 allKeys];
        *buf = 138413314;
        v76 = self;
        v77 = 1024;
        *v78 = v61;
        *&v78[4] = 1024;
        *&v78[6] = v29;
        LOWORD(v79) = 1024;
        *(&v79 + 2) = v35;
        WORD3(v79) = 2112;
        *(&v79 + 1) = v62;
        _os_log_impl(&dword_24A0AC000, v59, v60, "No parse rule from object %@ for codePage 0x%x token 0x%x (CPT = %d), parseRules have keys %@", buf, 0x28u);
      }
    }

    goto LABEL_51;
  }

LABEL_11:
  v37 = [v31 objectClass];
  if ([(objc_class *)v37 parsingLeafNode])
  {
    if ((v18 & 0x40) != 0 && v18 != 195)
    {
      if (![v14 hasNumberOfTokensRemaining:2])
      {
        goto LABEL_7;
      }

      v38 = [v14 nextByte];
      if (v38 == 195)
      {
        v39 = [v14 numTokensForNextOpaqueData];
        goto LABEL_42;
      }

      if (v38 == 3)
      {
        v39 = [v14 numTokensForNextString];
LABEL_42:
        if (v39 == -1)
        {
          goto LABEL_7;
        }

        v33 = [[v37 alloc] initWithASParseContext:v14 root:v69 parent:self callbackDict:v74 streamCallbackDict:v73 lengthUntilEndOfTerminator:v39];
        goto LABEL_23;
      }

      v55 = DALoggingwithCategory();
      v56 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v55, v56))
      {
        v57 = [v14 codePage];
        v58 = [v70 allKeys];
        *buf = 138413058;
        v76 = self;
        v77 = 1024;
        *v78 = v57;
        *&v78[4] = 1024;
        *&v78[6] = v18 & 0x3F;
        LOWORD(v79) = 2112;
        *(&v79 + 2) = v58;
        _os_log_impl(&dword_24A0AC000, v55, v56, "We have an int in our WBXML, but Exchange never gives us this.  Parse error.\nObject is %@, codePage 0x%x token 0x%x, parseRules have keys %@", buf, 0x22u);
      }

LABEL_52:
      v33 = 0;
      v34 = 0;
      goto LABEL_30;
    }

    [(objc_class *)v37 expectsContent];
    v33 = objc_opt_new();
    [v33 parseASParseContext:v14 root:v69 parent:self callbackDict:v74 streamCallbackDict:v73 account:v71];
  }

  else
  {
    if ([(objc_class *)v37 parsingWithSubItems])
    {
      v40 = [v37 alloc];
      v41 = [v31 subclassRuleSet];
      v33 = [v40 initWithSubclassRuleSet:v41];
    }

    else
    {
      v33 = objc_opt_new();
    }

    WeakRetained = objc_loadWeakRetained(&self->_root);
    [v33 parseASParseContext:v14 root:WeakRetained parent:self callbackDict:v74 streamCallbackDict:v73 account:v71];
  }

LABEL_23:
  v43 = a8;
LABEL_24:
  if (v43)
  {
    v44 = v33;
    *v43 = v33;
  }

  v34 = v33 != 0;
  if (v33)
  {
    v45 = [(NSMutableDictionary *)self->_parseRuleUsageNumbers objectForInt:v30];
    v46 = [v45 intValue];

    parseRuleUsageNumbers = self->_parseRuleUsageNumbers;
    v48 = [MEMORY[0x277CCABB0] numberWithInt:(v46 + 1)];
    [(NSMutableDictionary *)parseRuleUsageNumbers setObject:v48 forInt:v30];
  }

  if (a9)
  {
    *a9 = v30;
  }

LABEL_30:

  v49 = *MEMORY[0x277D85DE8];
  return v34;
}

- (void)_setCurrentlyParsingSubItem:(id)a3
{
  v5 = a3;
  currentlyParsingSubItem = self->_currentlyParsingSubItem;
  p_currentlyParsingSubItem = &self->_currentlyParsingSubItem;
  if (currentlyParsingSubItem != v5)
  {
    v8 = v5;
    objc_storeStrong(p_currentlyParsingSubItem, a3);
    v5 = v8;
  }
}

- (BOOL)_setupFirstParseWithContext:(id)a3 root:(id)a4 parent:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 hasNumberOfTokensRemaining:1];
  if (v11)
  {
    v12 = [v8 currentByte];
    self->_token = v12 & 0x3F;
    [v8 advanceOffsetByAmount:1];
    self->_codePage = [v8 codePage];
    v13 = v9 ? v9 : self;
    objc_storeWeak(&self->_root, v13);
    objc_storeWeak(&self->_parent, v10);
    self->_parsingState = 1;
    if ((v12 & 0x40) == 0 || v12 == 195)
    {
      if (([objc_opt_class() parsingWithSubItems] & 1) == 0)
      {
        v14 = DALoggingwithCategory();
        v15 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v14, v15))
        {
          v18 = 138412290;
          v19 = self;
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
  v2 = self;
  while (1)
  {
    v3 = v2;
    v2 = [(ASItem *)v2 parent];

    if (!v2)
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [(ASItem *)v2 dataclass];
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (BOOL)_streamIfNecessaryFromContext:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_currentStreamBlock)
  {
    v5 = [(ASItem *)self _streamYourLittleHeartOutWithContext:v4];
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

- (BOOL)_haveEnoughDataToKeepParsingWithContext:(id)a3 curToken:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4 == 1)
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
    v11 = [v6 hasNumberOfTokensRemaining:1];
  }

  return v11;
}

- (BOOL)_parseNextValueWithDataclass:(int64_t)a3 context:(id)a4 root:(id)a5 parent:(id)a6 callbackDict:(id)a7 streamCallbackDict:(id)a8 parseRules:(id)a9 account:(id)a10
{
  v55 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  if (![(ASItem *)self _streamIfNecessaryFromContext:v15])
  {
    goto LABEL_50;
  }

  if (self->_parsingState != 1)
  {
    goto LABEL_46;
  }

  v21 = [v15 currentByte];
  v50 = v21;
  currentlyParsingCPTNumber = self->_currentlyParsingCPTNumber;
  currentlyParsingSubItem = self->_currentlyParsingSubItem;
  if (!currentlyParsingSubItem)
  {
    if (!handleCodePageSwitch(v15, v21, &v50))
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

      if (![(ASItem *)self _haveEnoughDataToKeepParsingWithContext:v15 curToken:v50])
      {
        goto LABEL_50;
      }

      if (self->_parsingState == 1)
      {
        *buf = 0;
        v49 = 0;
        v29 = [(ASItem *)self nextParsedObjectWithContext:v15 root:v16 callbackDict:v17 streamCallbackDict:v18 dataclass:a3 outParsedObject:&v49 outCPTNumber:buf account:v20];
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
        v33 = [(ASItem *)self _streamYourLittleHeartOutWithContext:v15];
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
          v34 = [(ASItem *)self nextParsedObjectWithContext:v15 root:v16 callbackDict:v17 streamCallbackDict:0 dataclass:a3 outParsedObject:&v48 outCPTNumber:buf account:v20];
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

  [(ASParsing *)currentlyParsingSubItem parseASParseContext:v15 root:v16 parent:self callbackDict:v17 streamCallbackDict:v18 account:v20];
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

  v25 = [(ASParsing *)v24 parsingState];
  if (v25 > 2)
  {
    if (v25 == 3)
    {
      [(ASItem *)self _setCurrentlyParsingSubItem:0];
    }

    else if (v25 == 4)
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
        v37 = [(ASParsing *)self->_currentlyParsingSubItem _replacementObjectWithCallbackDict:v17];
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
            v41 = [(ASParsing *)self->_currentlyParsingSubItem commonValue];

            v39 = v41;
          }

          v42 = [v19 objectForInt:currentlyParsingCPTNumber];
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

  if (v25 >= 2)
  {
    if (v25 == 2)
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

- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8
{
  v78 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = 0x277D03000uLL;
  v66 = v19;
  if ([MEMORY[0x277D03910] isEASParsingLogEnabled])
  {
    v21 = DALoggingwithCategory();
    v22 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138412290;
      v69 = v24;
      _os_log_impl(&dword_24A0AC000, v21, v22, "%@ - begin parsing", buf, 0xCu);
    }

    v19 = v66;
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
      v69 = v28;
      v70 = 2112;
      *v71 = currentlyParsingSubItem;
      _os_log_impl(&dword_24A0AC000, v25, v26, "%@ - currently parsing sub item is %@", buf, 0x16u);
    }

    v19 = v66;
    v20 = 0x277D03000uLL;
  }

  v65 = [objc_opt_class() acceptsTopLevelLeaves];
  parsingState = self->_parsingState;
  if (!parsingState)
  {
    [(ASItem *)self _setupFirstParseWithContext:v14 root:v15 parent:v16];
    parsingState = self->_parsingState;
  }

  if (parsingState == 1)
  {
    v31 = [(ASItem *)self asParseRules];
    if (!((v31 != 0) | v65 & 1))
    {
      v50 = DALoggingwithCategory();
      v51 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v50, v51))
      {
        *buf = 138412290;
        v69 = self;
        _os_log_impl(&dword_24A0AC000, v50, v51, "object %@ must have parse rules", buf, 0xCu);
      }

      v32 = 0;
      self->_parsingState = 4;
      v19 = v66;
      v20 = 0x277D03000uLL;
      goto LABEL_38;
    }

    v32 = v31;
    parsingState = self->_parsingState;
    if (parsingState == 1)
    {
      v33 = [(ASItem *)self _dataclass];
      while (1)
      {
        parsingState = self->_parsingState;
        if (parsingState != 1)
        {
          break;
        }

        if (![(ASItem *)self _parseNextValueWithDataclass:v33 context:v14 root:v15 parent:v16 callbackDict:v17 streamCallbackDict:v18 parseRules:v32 account:v19])
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
      v63 = v18;
      v64 = [v32 keyEnumerator];
      v34 = [v64 nextObject];
      if (v34)
      {
        v35 = v34;
        v59 = v17;
        v60 = v16;
        v61 = v15;
        v62 = v14;
        v36 = 0;
        type = *(MEMORY[0x277D03988] + 3);
        v37 = v64;
        do
        {
          v38 = v36;
          v36 = [v32 objectForKeyedSubscript:v35];

          v39 = [(NSMutableDictionary *)self->_parseRuleUsageNumbers objectForKeyedSubscript:v35];
          v40 = [v39 intValue];

          v41 = [v36 minimumNumber];
          v42 = [v36 maximumNumber];
          v43 = v42;
          if (v40 < v41 || v42 != 1209 && v40 > v42)
          {
            v44 = v32;
            v45 = [v35 intValue];
            v46 = DALoggingwithCategory();
            if (os_log_type_enabled(v46, type))
            {
              v47 = objc_opt_class();
              v48 = NSStringFromClass(v47);
              *buf = 138413570;
              v69 = v48;
              v70 = 1024;
              *v71 = v40;
              *&v71[4] = 1024;
              *&v71[6] = HIBYTE(v45);
              v72 = 1024;
              v73 = v45;
              v74 = 1024;
              v75 = v41;
              v76 = 1024;
              v77 = v43;
              _os_log_impl(&dword_24A0AC000, v46, type, "%@: Parse Rule Constraint Violation.  Received %d counts of code page %d / token 0x%x, but the parse rule says we have a range of %d - %d", buf, 0x2Au);

              v37 = v64;
            }

            v32 = v44;
          }

          v49 = [v37 nextObject];

          v35 = v49;
        }

        while (v49);

        v15 = v61;
        v14 = v62;
        v17 = v59;
        v16 = v60;
        v19 = v66;
        v20 = 0x277D03000;
      }

      v18 = v63;
      if (v65)
      {
        [(ASItem *)self applyPlaceHolder];
        [(ASItem *)self clearPlaceHolder];
      }
    }

    goto LABEL_40;
  }

LABEL_38:
  if (v65)
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
      v69 = v56;
      v70 = 1024;
      *v71 = v57;
      _os_log_impl(&dword_24A0AC000, v53, v54, "%@ - done parsing with state %d", buf, 0x12u);
    }

    v19 = v66;
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (ASItem)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (BOOL)_itemPathMatches:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@"."];
  v5 = [v4 reverseObjectEnumerator];

  v6 = self;
  v7 = [v5 nextObject];
  if (v7)
  {
    v8 = v7;
    while (v6)
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v8 isEqualToString:v10];

      if (!v11)
      {
        break;
      }

      v12 = [(ASItem *)v6 parent];

      v13 = [v5 nextObject];

      v8 = v13;
      v6 = v12;
      if (!v13)
      {
        goto LABEL_9;
      }
    }

    v14 = 0;
    v12 = v6;
  }

  else
  {
    v12 = v6;
LABEL_9:
    v14 = v12 == 0;
  }

  return v14;
}

- (id)_replacementObjectWithCallbackDict:(id)a3
{
  v4 = a3;
  v5 = [v4 keyEnumerator];
  v6 = 0;
  while (1)
  {
    v7 = v6;
    v6 = [v5 nextObject];

    if (!v6)
    {
      break;
    }

    if ([(ASItem *)self _itemPathMatches:v6])
    {
      v8 = [v4 objectForKeyedSubscript:v6];
      v9 = (v8)[2](v8, self);

      goto LABEL_6;
    }
  }

  v9 = self;
LABEL_6:

  return v9;
}

- (BOOL)_itemPathWithDCCPTMatches:(id)a3 dccpt:(int)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  v8 = [v6 length];
  v9 = (v8 - 1);
  v10 = v8 - 1;
  if (v8 >= 2)
  {
    while ([v6 characterAtIndex:v9] != 46)
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
  if ([v6 characterAtIndex:v10] == 46)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v10;
  }

  v13 = [v6 substringWithRange:{v12, v8 - v12}];
  v14 = [v13 intValue];

  if (v14 != v4)
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
          if ([v6 characterAtIndex:v17] == 46)
          {
            break;
          }

          --v17;
        }

        while (v17);
      }

      [v6 characterAtIndex:v17];
      v18 = [v6 substringWithRange:?];

      if (!v7)
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

      v22 = [(ASItem *)v7 parent];

      v16 = v18;
      v7 = v22;
      v10 = v17;
      if (v17 <= 0)
      {

        v7 = v22;
        goto LABEL_22;
      }
    }

LABEL_11:
    v15 = 0;
    goto LABEL_23;
  }

  v22 = v7;
LABEL_22:
  v15 = v22 == 0;
LABEL_23:

  return v15;
}

- (void)ignoreThisContent:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([MEMORY[0x277D03910] isEASParsingLogEnabled])
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v4, v5))
    {
      v7 = 138412290;
      v8 = v3;
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

- (void)setCurrentStreamBlock:(id)a3
{
  if (self->_currentStreamBlock != a3)
  {
    v5 = MEMORY[0x24C2119B0](a3, a2);
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