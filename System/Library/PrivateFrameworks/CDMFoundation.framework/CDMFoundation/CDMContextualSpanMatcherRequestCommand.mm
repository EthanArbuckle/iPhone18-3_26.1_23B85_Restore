@interface CDMContextualSpanMatcherRequestCommand
- (CDMContextualSpanMatcherRequestCommand)initWithContextualSpanMatcherRequest:(id)request;
@end

@implementation CDMContextualSpanMatcherRequestCommand

- (CDMContextualSpanMatcherRequestCommand)initWithContextualSpanMatcherRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = CDMContextualSpanMatcherRequestCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextualSpanMatcherRequest, request);
  }

  return v7;
}

@end