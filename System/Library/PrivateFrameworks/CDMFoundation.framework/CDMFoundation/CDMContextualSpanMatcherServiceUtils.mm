@interface CDMContextualSpanMatcherServiceUtils
+ (id)buildContextualSpanMatcherRequestWithNLContext:(id)context requestId:(id)id tokenChain:(id)chain;
@end

@implementation CDMContextualSpanMatcherServiceUtils

+ (id)buildContextualSpanMatcherRequestWithNLContext:(id)context requestId:(id)id tokenChain:(id)chain
{
  v7 = MEMORY[0x1E69D1288];
  chainCopy = chain;
  idCopy = id;
  contextCopy = context;
  v11 = objc_alloc_init(v7);
  [v11 setNlContext:contextCopy];

  [v11 setRequestId:idCopy];
  [v11 setTokenChain:chainCopy];

  return v11;
}

@end