@interface WFJavaScriptDetection
+ (BOOL)htmlStringContainsJavaScript:(id)script;
@end

@implementation WFJavaScriptDetection

+ (BOOL)htmlStringContainsJavaScript:(id)script
{
  scriptCopy = script;
  if ([scriptCopy length])
  {
    lowercaseString = [scriptCopy lowercaseString];
    v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_282F7BED8];
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__WFJavaScriptDetection_htmlStringContainsJavaScript___block_invoke;
    v9[3] = &unk_27834A4F8;
    v6 = lowercaseString;
    v10 = v6;
    v11 = &v12;
    [v5 enumerateObjectsUsingBlock:v9];
    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t __54__WFJavaScriptDetection_htmlStringContainsJavaScript___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsString:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

@end