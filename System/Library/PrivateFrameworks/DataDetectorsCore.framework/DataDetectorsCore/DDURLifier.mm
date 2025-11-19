@interface DDURLifier
+ (BOOL)urlIfyNode:(id)a3 phoneNumberTypes:(unint64_t)a4;
+ (BOOL)urlIfyTextNode:(id)a3 inNode:(id)a4 forMatches:(id)a5;
+ (id)urlIfyNode:(id)a3 usingScanner:(__DDScanner *)a4 phoneNumberTypes:(unint64_t)a5 withReferenceDate:(id)a6 andTimeZone:(id)a7;
+ (id)urlMatchesForString:(id)a3 includingTel:(BOOL)a4;
+ (id)urlMatchesForString:(id)a3 phoneNumberTypes:(unint64_t)a4;
+ (id)urlMatchesForString:(id)a3 usingScanner:(__DDScanner *)a4 withPhoneNumberTypes:(unint64_t)a5 referenceDate:(id)a6 timeZone:(id)a7 storingResultsIn:(id)a8;
@end

@implementation DDURLifier

+ (id)urlIfyNode:(id)a3 usingScanner:(__DDScanner *)a4 phoneNumberTypes:(unint64_t)a5 withReferenceDate:(id)a6 andTimeZone:(id)a7
{
  if (!a4)
  {
    if (urlIfyNode_usingScanner_phoneNumberTypes_withReferenceDate_andTimeZone__sOnce == -1)
    {
      return 0;
    }

    dispatch_once(&urlIfyNode_usingScanner_phoneNumberTypes_withReferenceDate_andTimeZone__sOnce, &__block_literal_global_42);
    return 0;
  }

  if (!shouldURLifyNode(a3))
  {
    return 0;
  }

  if (a6)
  {
    if (a7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    a6 = [MEMORY[0x1E695DF00] date];
    if (a7)
    {
      goto LABEL_5;
    }
  }

  a7 = [MEMORY[0x1E695DFE8] defaultTimeZone];
LABEL_5:
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = [a3 firstChild];
  if (v14)
  {
    v15 = v14;
    do
    {
      v16 = [v15 nextSibling];
      [v13 addObjectsFromArray:{objc_msgSend(a1, "urlIfyNode:usingScanner:phoneNumberTypes:withReferenceDate:andTimeZone:", v15, a4, a5, a6, a7)}];
      if ([v15 nodeType] == 3)
      {
        [a1 urlIfyTextNode:v15 inNode:a3 forMatches:{objc_msgSend(a1, "urlMatchesForString:usingScanner:withPhoneNumberTypes:referenceDate:timeZone:storingResultsIn:", objc_msgSend(v15, "nodeValue"), a4, a5, a6, a7, v13)}];
      }

      v15 = v16;
    }

    while (v16);
  }

  return v13;
}

+ (BOOL)urlIfyNode:(id)a3 phoneNumberTypes:(unint64_t)a4
{
  if (shouldURLifyNode(a3) && (v7 = [a3 firstChild]) != 0)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      v10 = [v8 nextSibling];
      v9 |= [a1 urlIfyNode:v8 phoneNumberTypes:a4];
      if ([v8 nodeType] == 3)
      {
        v9 |= [a1 urlIfyTextNode:v8 inNode:a3 forMatches:{+[DDURLifier urlMatchesForString:phoneNumberTypes:](DDURLifier, "urlMatchesForString:phoneNumberTypes:", objc_msgSend(v8, "nodeValue"), a4)}];
      }

      v8 = v10;
    }

    while (v10);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

+ (BOOL)urlIfyTextNode:(id)a3 inNode:(id)a4 forMatches:(id)a5
{
  v8 = [a5 count];
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    v12 = a3;
    do
    {
      v13 = [a5 objectAtIndex:v9];
      v14 = [v13 range];
      if (v14 >= v10)
      {
        v16 = v14;
        v17 = v15;
        if (v14 < [objc_msgSend(v12 "data")] + v10)
        {
          if (v16 != v10)
          {
            a3 = [v12 splitText:(v16 - v10)];
          }

          if (v17 < [objc_msgSend(a3 "data")])
          {
            v12 = [a3 splitText:v17];
          }

          v10 = v16 + v17;
          v18 = [objc_msgSend(a3 "ownerDocument")];
          [v18 setAttribute:@"href" value:{objc_msgSend(v13, "url")}];
          [a4 insertBefore:v18 refChild:a3];
          [v18 appendChild:a3];
          a3 = v12;
        }
      }

      v9 = v11;
    }

    while (v8 > v11++);
  }

  return v8 != 0;
}

+ (id)urlMatchesForString:(id)a3 usingScanner:(__DDScanner *)a4 withPhoneNumberTypes:(unint64_t)a5 referenceDate:(id)a6 timeZone:(id)a7 storingResultsIn:(id)a8
{
  v9 = a5;
  DDScannerScanString(a4, a3);
  v11 = DDScannerCopyResultsWithOptions(a4, 0x7C5u);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  Count = CFArrayGetCount(v11);
  if (Count)
  {
    v14 = Count;
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:Count];
    v16 = [a8 count];
    if (v14 >= 1)
    {
      v17 = v16;
      for (i = 0; i != v14; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
        v20 = DDURLStringForResult(ValueAtIndex, [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v17], v9, a6, a7);
        if (v20)
        {
          v21 = v20;
          ++v17;
          [a8 addObject:ValueAtIndex];
          v22 = [[DDURLMatch alloc] initWithRange:ValueAtIndex[4] url:ValueAtIndex[5], v21];
          [v15 addObject:v22];
        }
      }
    }
  }

  else
  {
    v15 = 0;
  }

  CFRelease(v12);
  return v15;
}

+ (id)urlMatchesForString:(id)a3 phoneNumberTypes:(unint64_t)a4
{
  v4 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  if ([a3 length])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __51__DDURLifier_urlMatchesForString_phoneNumberTypes___block_invoke;
    v19[3] = &unk_1E80026C0;
    v19[4] = a1;
    if (urlMatchesForString_phoneNumberTypes__sOnce != -1)
    {
      dispatch_once(&urlMatchesForString_phoneNumberTypes__sOnce, v19);
    }

    if (urlMatchesForString_phoneNumberTypes__sOnce_26 != -1)
    {
      dispatch_once(&urlMatchesForString_phoneNumberTypes__sOnce_26, &__block_literal_global_1226);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__DDURLifier_urlMatchesForString_phoneNumberTypes___block_invoke_3;
    block[3] = &unk_1E8002338;
    block[4] = a3;
    block[5] = &v20;
    dispatch_sync(urlMatchesForString_phoneNumberTypes__sQueue, block);
    v8 = v21[3];
    if (v8)
    {
      Count = CFArrayGetCount(v8);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v21[3], i);
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", i];
          if (DDResultGetCategory(ValueAtIndex) - 1 <= 1)
          {
            v13 = DDURLStringForResult(ValueAtIndex, v12, v4, 0, 0);
            if (v13)
            {
              RangeForURLification = DDResultGetRangeForURLification(ValueAtIndex);
              v16 = [[DDURLMatch alloc] initWithRange:RangeForURLification url:v15, v13];
              [v7 addObject:v16];
            }
          }
        }
      }

      CFRelease(v21[3]);
    }

    _Block_object_dispose(&v20, 8);
  }

  return v7;
}

uint64_t __51__DDURLifier_urlMatchesForString_phoneNumberTypes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = objc_opt_class();
  if (v1 == result)
  {
    result = DDScannerCreateWithTypeAndLocale(1, 0, 0);
    _sharedURLifier = result;
  }

  return result;
}

CFArrayRef __51__DDURLifier_urlMatchesForString_phoneNumberTypes___block_invoke_3(uint64_t a1)
{
  result = _sharedURLifier;
  if (_sharedURLifier)
  {
    result = DDScannerScanString(_sharedURLifier, *(a1 + 32));
    if (result)
    {
      result = DDScannerCopyResultsWithOptions(_sharedURLifier, 0x7C5u);
      *(*(*(a1 + 40) + 8) + 24) = result;
    }
  }

  return result;
}

dispatch_queue_t __51__DDURLifier_urlMatchesForString_phoneNumberTypes___block_invoke_2()
{
  result = dispatch_queue_create("com.apple.datadetectors.urlifier", 0);
  urlMatchesForString_phoneNumberTypes__sQueue = result;
  return result;
}

+ (id)urlMatchesForString:(id)a3 includingTel:(BOOL)a4
{
  if (a4)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return [a1 urlMatchesForString:a3 phoneNumberTypes:v4];
}

@end