@interface NSAttributedString
@end

@implementation NSAttributedString

void __90__NSAttributedString_CSVisualizerMethods__cs_writeToFileHandle_supportingANSIEscapeCodes___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v7 = [v24 objectForKeyedSubscript:@"_CSVOutputType"];
  v8 = v7;
  if (v7 && [v7 isEqual:&unk_1F37D8000])
  {
    fputs("\x1B[1m", *(a1 + 40));
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v24 objectForKeyedSubscript:@"_CSVFGColor"];
  v12 = v10;
  if (v10)
  {
    v13 = CSStore2::ansiColorCodeFromNSNumber(v10, v11);
    fprintf(*(a1 + 40), "\x1B[38;5;%um", v13);
    v9 = 1;
  }

  v14 = [v24 objectForKeyedSubscript:@"_CSVBGColor"];
  v16 = v14;
  if (v14)
  {
    v17 = CSStore2::ansiColorCodeFromNSNumber(v14, v15);
    fprintf(*(a1 + 40), "\x1B[48;5;%um", v17);
    v9 = 1;
  }

  v18 = [v24 objectForKeyedSubscript:@"_CSVLink"];
  if (v18)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![_CSVisualizer getUnit:0 inTable:0 fromURL:v18])
    {
      fputs("\x1B[4;38;5;27m", *(a1 + 40));
      v9 = 1;
    }
  }

  v19 = [v24 objectForKeyedSubscript:@"_CSVFWeight"];
  if (v19)
  {
    if (_NSIsNSNumber())
    {
      [v19 doubleValue];
      if (v20 > 0.0)
      {
        fputs("\x1B[1m", *(a1 + 40));
        v9 = 1;
      }
    }
  }

  v21 = objc_autoreleasePoolPush();
  v22 = [*(a1 + 32) string];
  v23 = [v22 substringWithRange:{a3, a4}];
  fputs([v23 UTF8String], *(a1 + 40));

  objc_autoreleasePoolPop(v21);
  if (v9)
  {
    fputs("\x1B[0m", *(a1 + 40));
  }
}

char *__64__NSAttributedString_CSVisualizerMethods__cs_writeToFileHandle___block_invoke()
{
  result = getenv("TERM");
  [NSAttributedString(CSVisualizerMethods) cs_writeToFileHandle:]::TERM = result != 0;
  return result;
}

@end