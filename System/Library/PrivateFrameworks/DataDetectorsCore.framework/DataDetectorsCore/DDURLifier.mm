@interface DDURLifier
+ (BOOL)urlIfyNode:(id)node phoneNumberTypes:(unint64_t)types;
+ (BOOL)urlIfyTextNode:(id)node inNode:(id)inNode forMatches:(id)matches;
+ (id)urlIfyNode:(id)node usingScanner:(__DDScanner *)scanner phoneNumberTypes:(unint64_t)types withReferenceDate:(id)date andTimeZone:(id)zone;
+ (id)urlMatchesForString:(id)string includingTel:(BOOL)tel;
+ (id)urlMatchesForString:(id)string phoneNumberTypes:(unint64_t)types;
+ (id)urlMatchesForString:(id)string usingScanner:(__DDScanner *)scanner withPhoneNumberTypes:(unint64_t)types referenceDate:(id)date timeZone:(id)zone storingResultsIn:(id)in;
@end

@implementation DDURLifier

+ (id)urlIfyNode:(id)node usingScanner:(__DDScanner *)scanner phoneNumberTypes:(unint64_t)types withReferenceDate:(id)date andTimeZone:(id)zone
{
  if (!scanner)
  {
    if (urlIfyNode_usingScanner_phoneNumberTypes_withReferenceDate_andTimeZone__sOnce == -1)
    {
      return 0;
    }

    dispatch_once(&urlIfyNode_usingScanner_phoneNumberTypes_withReferenceDate_andTimeZone__sOnce, &__block_literal_global_42);
    return 0;
  }

  if (!shouldURLifyNode(node))
  {
    return 0;
  }

  if (date)
  {
    if (zone)
    {
      goto LABEL_5;
    }
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    if (zone)
    {
      goto LABEL_5;
    }
  }

  zone = [MEMORY[0x1E695DFE8] defaultTimeZone];
LABEL_5:
  array = [MEMORY[0x1E695DF70] array];
  firstChild = [node firstChild];
  if (firstChild)
  {
    v15 = firstChild;
    do
    {
      nextSibling = [v15 nextSibling];
      [array addObjectsFromArray:{objc_msgSend(self, "urlIfyNode:usingScanner:phoneNumberTypes:withReferenceDate:andTimeZone:", v15, scanner, types, date, zone)}];
      if ([v15 nodeType] == 3)
      {
        [self urlIfyTextNode:v15 inNode:node forMatches:{objc_msgSend(self, "urlMatchesForString:usingScanner:withPhoneNumberTypes:referenceDate:timeZone:storingResultsIn:", objc_msgSend(v15, "nodeValue"), scanner, types, date, zone, array)}];
      }

      v15 = nextSibling;
    }

    while (nextSibling);
  }

  return array;
}

+ (BOOL)urlIfyNode:(id)node phoneNumberTypes:(unint64_t)types
{
  if (shouldURLifyNode(node) && (v7 = [node firstChild]) != 0)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      nextSibling = [v8 nextSibling];
      v9 |= [self urlIfyNode:v8 phoneNumberTypes:types];
      if ([v8 nodeType] == 3)
      {
        v9 |= [self urlIfyTextNode:v8 inNode:node forMatches:{+[DDURLifier urlMatchesForString:phoneNumberTypes:](DDURLifier, "urlMatchesForString:phoneNumberTypes:", objc_msgSend(v8, "nodeValue"), types)}];
      }

      v8 = nextSibling;
    }

    while (nextSibling);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

+ (BOOL)urlIfyTextNode:(id)node inNode:(id)inNode forMatches:(id)matches
{
  v8 = [matches count];
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    nodeCopy = node;
    do
    {
      v13 = [matches objectAtIndex:v9];
      range = [v13 range];
      if (range >= v10)
      {
        v16 = range;
        v17 = v15;
        if (range < [objc_msgSend(nodeCopy "data")] + v10)
        {
          if (v16 != v10)
          {
            node = [nodeCopy splitText:(v16 - v10)];
          }

          if (v17 < [objc_msgSend(node "data")])
          {
            nodeCopy = [node splitText:v17];
          }

          v10 = v16 + v17;
          v18 = [objc_msgSend(node "ownerDocument")];
          [v18 setAttribute:@"href" value:{objc_msgSend(v13, "url")}];
          [inNode insertBefore:v18 refChild:node];
          [v18 appendChild:node];
          node = nodeCopy;
        }
      }

      v9 = v11;
    }

    while (v8 > v11++);
  }

  return v8 != 0;
}

+ (id)urlMatchesForString:(id)string usingScanner:(__DDScanner *)scanner withPhoneNumberTypes:(unint64_t)types referenceDate:(id)date timeZone:(id)zone storingResultsIn:(id)in
{
  typesCopy = types;
  DDScannerScanString(scanner, string);
  v11 = DDScannerCopyResultsWithOptions(scanner, 0x7C5u);
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
    v16 = [in count];
    if (v14 >= 1)
    {
      v17 = v16;
      for (i = 0; i != v14; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
        v20 = DDURLStringForResult(ValueAtIndex, [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v17], typesCopy, date, zone);
        if (v20)
        {
          v21 = v20;
          ++v17;
          [in addObject:ValueAtIndex];
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

+ (id)urlMatchesForString:(id)string phoneNumberTypes:(unint64_t)types
{
  typesCopy = types;
  array = [MEMORY[0x1E695DF70] array];
  if ([string length])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __51__DDURLifier_urlMatchesForString_phoneNumberTypes___block_invoke;
    v19[3] = &unk_1E80026C0;
    v19[4] = self;
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
    block[4] = string;
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
            v13 = DDURLStringForResult(ValueAtIndex, v12, typesCopy, 0, 0);
            if (v13)
            {
              RangeForURLification = DDResultGetRangeForURLification(ValueAtIndex);
              v16 = [[DDURLMatch alloc] initWithRange:RangeForURLification url:v15, v13];
              [array addObject:v16];
            }
          }
        }
      }

      CFRelease(v21[3]);
    }

    _Block_object_dispose(&v20, 8);
  }

  return array;
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

+ (id)urlMatchesForString:(id)string includingTel:(BOOL)tel
{
  if (tel)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return [self urlMatchesForString:string phoneNumberTypes:v4];
}

@end