@interface RWIProtocolCSSSourceRange(IKJSInspector)
+ (id)ik_cssSourceRangeForRange:()IKJSInspector withNewLineIndexSet:;
+ (id)ik_newLineIndexSetForStyleMarkup:()IKJSInspector;
- (uint64_t)ik_rangeWithNewLineIndexSet:()IKJSInspector;
@end

@implementation RWIProtocolCSSSourceRange(IKJSInspector)

+ (id)ik_newLineIndexSetForStyleMarkup:()IKJSInspector
{
  v3 = a3;
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  date = [MEMORY[0x277CBEAA8] date];
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  if ([v3 length])
  {
    v7 = 0;
    do
    {
      if ([newlineCharacterSet characterIsMember:{objc_msgSend(v3, "characterAtIndex:", v7)}])
      {
        [indexSet addIndex:v7];
      }

      ++v7;
    }

    while ([v3 length] > v7);
  }

  v8 = ITMLKitGetLogObject(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [RWIProtocolCSSSourceRange(IKJSInspector) ik_newLineIndexSetForStyleMarkup:date];
  }

  return indexSet;
}

+ (id)ik_cssSourceRangeForRange:()IKJSInspector withNewLineIndexSet:
{
  v6 = 0;
  if (a5)
  {
    if (a3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = a3 + a4;
      v9 = a5;
      v10 = [v9 countOfIndexesInRange:{0, a3}];
      v11 = [v9 countOfIndexesInRange:{0, v8}];
      v12 = ~[v9 indexLessThanIndex:a3];
      v13 = [v9 indexLessThanIndex:v8];

      v6 = [MEMORY[0x277D7B6D8] safe_initWithStartLine:(v10 + 1) startColumn:a3 + v12 endLine:(v11 + 1) endColumn:(v8 + ~v13)];
    }

    v5 = vars8;
  }

  return v6;
}

- (uint64_t)ik_rangeWithNewLineIndexSet:()IKJSInspector
{
  v4 = a3;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  if ([self startLine] == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = -100;
  }

  v18 = v5;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  if ([self endLine] == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = -100;
  }

  v14 = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__RWIProtocolCSSSourceRange_IKJSInspector__ik_rangeWithNewLineIndexSet___block_invoke;
  v10[3] = &unk_279799728;
  v10[4] = self;
  v10[5] = v19;
  v10[6] = &v15;
  v10[7] = &v11;
  [v4 enumerateIndexesUsingBlock:v10];
  v7 = v16[3];
  if (v7 == -100)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v7 + [self startColumn];
  }

  if (v12[3] != -100)
  {
    [self endColumn];
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(v19, 8);

  return v8;
}

@end