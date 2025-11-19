@interface CDMContextualSpanMatcherServiceUtils
+ (id)buildContextualSpanMatcherRequestWithNLContext:(id)a3 requestId:(id)a4 tokenChain:(id)a5;
@end

@implementation CDMContextualSpanMatcherServiceUtils

+ (id)buildContextualSpanMatcherRequestWithNLContext:(id)a3 requestId:(id)a4 tokenChain:(id)a5
{
  v7 = MEMORY[0x1E69D1288];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v7);
  [v11 setNlContext:v10];

  [v11 setRequestId:v9];
  [v11 setTokenChain:v8];

  return v11;
}

@end