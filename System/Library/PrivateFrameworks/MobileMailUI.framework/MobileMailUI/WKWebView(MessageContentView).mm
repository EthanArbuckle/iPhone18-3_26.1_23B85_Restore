@interface WKWebView(MessageContentView)
- (id)_mcv_executeJavaScriptMethod:()MessageContentView arguments:;
- (id)mcv_dictionaryFromJavaScriptMethod:()MessageContentView arguments:;
- (id)mcv_executeJavaScriptExpression:()MessageContentView;
- (id)mcv_stringFromJavaScriptMethod:()MessageContentView arguments:;
@end

@implementation WKWebView(MessageContentView)

- (id)_mcv_executeJavaScriptMethod:()MessageContentView arguments:
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }

    v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v8 options:0 error:0];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
  }

  else
  {
    v10 = @"[]";
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"_try_catch_wrap(%@).apply(null, %@)", v6, v10];;
  v12 = [self mcv_executeJavaScriptExpression:v11];

  return v12;
}

- (id)mcv_executeJavaScriptExpression:()MessageContentView
{
  v4 = a3;
  promise = [MEMORY[0x277D071A8] promise];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__WKWebView_MessageContentView__mcv_executeJavaScriptExpression___block_invoke;
  v9[3] = &unk_278182608;
  v6 = promise;
  v10 = v6;
  [self evaluateJavaScript:v4 completionHandler:v9];
  future = [v6 future];

  return future;
}

- (id)mcv_stringFromJavaScriptMethod:()MessageContentView arguments:
{
  v1 = [self _mcv_executeJavaScriptMethod:? arguments:?];

  return v1;
}

- (id)mcv_dictionaryFromJavaScriptMethod:()MessageContentView arguments:
{
  v1 = [self _mcv_executeJavaScriptMethod:? arguments:?];
  v2 = [v1 then:&__block_literal_global_14];

  return v2;
}

@end