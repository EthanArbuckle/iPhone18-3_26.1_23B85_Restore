@interface NSAttributedString(CSVisualizerMethods)
- (id)cs_rangesMatchingPredicate:()CSVisualizerMethods;
- (uint64_t)cs_writeToFileHandle:()CSVisualizerMethods;
- (void)cs_writeToFileHandle:()CSVisualizerMethods supportingANSIEscapeCodes:;
@end

@implementation NSAttributedString(CSVisualizerMethods)

- (id)cs_rangesMatchingPredicate:()CSVisualizerMethods
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E695DF70] array];
  __p = 0;
  v13 = 0;
  v14 = 0;
  [_CSVisualizerPredicate getRanges:&__p matchingPredicate:v4 inDescription:a1];
  v7 = __p;
  v8 = v13;
  if (__p != v13)
  {
    do
    {
      v9 = [MEMORY[0x1E696B098] valueWithRange:{*v7, v7[1]}];
      [v6 addObject:v9];

      v7 += 2;
    }

    while (v7 != v8);
  }

  v10 = [v6 copy];
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  objc_autoreleasePoolPop(v5);

  return v10;
}

- (void)cs_writeToFileHandle:()CSVisualizerMethods supportingANSIEscapeCodes:
{
  if (a4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __90__NSAttributedString_CSVisualizerMethods__cs_writeToFileHandle_supportingANSIEscapeCodes___block_invoke;
    v10[3] = &unk_1E7ED3B60;
    v10[4] = a1;
    v10[5] = a3;
    v6 = MEMORY[0x1BFAE6310](v10);
    v7 = objc_autoreleasePoolPush();
    [a1 enumerateAttributesInRange:0 options:objc_msgSend(a1 usingBlock:{"length"), 0, v6}];
    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [a1 string];
    fputs([v9 UTF8String], a3);

    objc_autoreleasePoolPop(v8);
  }
}

- (uint64_t)cs_writeToFileHandle:()CSVisualizerMethods
{
  v5 = fileno(a3);
  if (v5 < 0 || !isatty(v5))
  {
    v6 = 0;
  }

  else
  {
    if ([NSAttributedString(CSVisualizerMethods) cs_writeToFileHandle:]::once != -1)
    {
      dispatch_once(&[NSAttributedString(CSVisualizerMethods) cs_writeToFileHandle:]::once, &__block_literal_global_777);
    }

    v6 = [NSAttributedString(CSVisualizerMethods) cs_writeToFileHandle:]::TERM;
  }

  return [a1 cs_writeToFileHandle:a3 supportingANSIEscapeCodes:v6 & 1];
}

@end