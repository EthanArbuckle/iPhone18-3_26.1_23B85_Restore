@interface SGTokenizer
+ (id)ftsPrefix:(id)prefix;
+ (id)ftsTokenize:(id)tokenize;
+ (id)tokenize:(id)tokenize;
+ (void)enumerateTokensInString:(id)string block:(id)block;
+ (void)enumerateTokensInString:(id)string withRange:(_NSRange)range block:(id)block;
@end

@implementation SGTokenizer

+ (id)ftsTokenize:(id)tokenize
{
  tokenizeCopy = tokenize;
  ITSListForFTSQuery = _createITSListForFTSQuery(tokenizeCopy);
  if (ITSListForFTSQuery)
  {
    v5 = ITSListForFTSQuery;
    v6 = CFCharacterSetCreateWithCharactersInString(0, @"()");
    Count = ITSTokenListGetCount();
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = ITSTokenListCopyEscapedTokenAtIndex();
        if (v11)
        {
          v12 = v11;
          v13 = _PASRemoveCharacterSet();

          if (([@"##&" isEqualToString:v13] & 1) == 0)
          {
            [v8 addObject:v13];
          }
        }

        else
        {
          v13 = 0;
        }

        objc_autoreleasePoolPop(v10);
      }
    }

    CFRelease(v5);
    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  v15 = v14;

  return v14;
}

+ (id)ftsPrefix:(id)prefix
{
  ITSListForFTSQuery = _createITSListForFTSQuery(prefix);
  if (ITSListForFTSQuery)
  {
    v6 = ITSListForFTSQuery;
    Count = ITSTokenListGetCount();
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v10 = ITSTokenListCopyEscapedTokenAtIndex();
        if (!v10)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"SGTokenizer.m" lineNumber:141 description:{@"ITSTokenListCopyEscapedTokenAtIndex failed to get token at index %ld", i}];
        }

        [v8 addObject:v10];
      }
    }

    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = [v8 _pas_componentsJoinedByString:@" "];
  v13 = [v11 initWithFormat:@"%@*", v12];

  return v13;
}

+ (id)tokenize:(id)tokenize
{
  tokenizeCopy = tokenize;
  v5 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __24__SGTokenizer_tokenize___block_invoke;
  v8[3] = &unk_27894FBC8;
  v6 = v5;
  v9 = v6;
  [self enumerateTokensInString:tokenizeCopy block:v8];

  return v6;
}

+ (void)enumerateTokensInString:(id)string withRange:(_NSRange)range block:(id)block
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  blockCopy = block;
  v12 = blockCopy;
  if (stringCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGTokenizer.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"str"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGTokenizer.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"block"}];

LABEL_3:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SGTokenizer_enumerateTokensInString_withRange_block___block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = a2;
  block[5] = self;
  if (enumerateTokensInString_withRange_block___pasOnceToken2 != -1)
  {
    dispatch_once(&enumerateTokensInString_withRange_block___pasOnceToken2, block);
  }

  v13 = enumerateTokensInString_withRange_block___pasExprOnceResult;
  result = [v13 result];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __55__SGTokenizer_enumerateTokensInString_withRange_block___block_invoke_3;
  v19[3] = &unk_27894FBA0;
  v22 = location;
  v23 = length;
  v20 = stringCopy;
  v21 = v12;
  v15 = v12;
  v16 = stringCopy;
  [result runWithLockAcquired:v19];
}

void __55__SGTokenizer_enumerateTokensInString_withRange_block___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(MEMORY[0x277D425E8]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SGTokenizer_enumerateTokensInString_withRange_block___block_invoke_2;
  v6[3] = &__block_descriptor_48_e20____PASQueueLock_8__0l;
  v7 = *(a1 + 32);
  v4 = [v3 initWithBlock:v6 idleTimeout:1.0];
  v5 = enumerateTokensInString_withRange_block___pasExprOnceResult;
  enumerateTokensInString_withRange_block___pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v2);
}

void __55__SGTokenizer_enumerateTokensInString_withRange_block___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  CFStringTokenizerSetString(v3, *(a1 + 32), *(a1 + 48));
  while (CFStringTokenizerAdvanceToNextToken(v3))
  {
    v4 = objc_autoreleasePoolPush();
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v3);
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v8 = [v6 rangeOfCharacterFromSet:v7 options:0 range:{CurrentTokenRange.location, CurrentTokenRange.length}];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [*(a1 + 32) substringWithRange:{CurrentTokenRange.location, CurrentTokenRange.length}];
      (*(*(a1 + 40) + 16))();
    }

    objc_autoreleasePoolPop(v4);
  }

  v10.location = 0;
  v10.length = 1;
  CFStringTokenizerSetString(v3, @"⌘", v10);
  CFRelease(v3);
}

id __55__SGTokenizer_enumerateTokensInString_withRange_block___block_invoke_2(uint64_t a1)
{
  v2 = CFLocaleCopyPreferredLanguages();
  if (v2)
  {
    v3 = v2;
    if (CFArrayGetCount(v2))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
      v5 = CFLocaleCreate(0, ValueAtIndex);
      CFRelease(v3);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    else
    {
      CFRelease(v3);
    }
  }

  v5 = CFLocaleCopyCurrent();
  if (!v5)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SGTokenizer.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"locale"}];
  }

LABEL_8:
  v15.location = 0;
  v15.length = 0;
  v6 = CFStringTokenizerCreate(0, 0, v15, 0x810004uLL, v5);
  CFRelease(v5);
  if (!v6)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"SGTokenizer.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"guardedTokenizer"}];
  }

  v7 = objc_alloc(MEMORY[0x277D42610]);
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("SGTokenizer", v8);
  v10 = [v7 initWithGuardedData:v6 serialQueue:v9];

  return v10;
}

+ (void)enumerateTokensInString:(id)string block:(id)block
{
  blockCopy = block;
  stringCopy = string;
  [objc_opt_class() enumerateTokensInString:stringCopy withRange:0 block:{objc_msgSend(stringCopy, "length"), blockCopy}];
}

@end