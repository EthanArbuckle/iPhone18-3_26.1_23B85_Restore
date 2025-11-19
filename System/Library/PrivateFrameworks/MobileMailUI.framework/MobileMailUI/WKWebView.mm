@interface WKWebView
@end

@implementation WKWebView

void __65__WKWebView_MessageContentView__mcv_executeJavaScriptExpression___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = (*(*MEMORY[0x277D07118] + 16))();
  v7 = v9;
  if (v6)
  {
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = [MEMORY[0x277CBEB68] null];
      v7 = v9;
    }

    v7 = v8;
  }

  v10 = v7;
  [*(a1 + 32) finishWithResult:? error:?];
}

id __78__WKWebView_MessageContentView__mcv_dictionaryFromJavaScriptMethod_arguments___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v3 = v2) != 0)
  {
    v4 = v3;
    v5 = [MEMORY[0x277D07150] futureWithResult:v3];
  }

  else
  {
    v6 = MEMORY[0x277D07150];
    v7 = [MEMORY[0x277CCA9B8] em_internalErrorWithReason:{@"An error occured trying to retrieve a dictionary from JS function, please check previous logging for issue!"}];
    v5 = [v6 futureWithError:v7];
    v4 = v7;
  }

  return v5;
}

@end