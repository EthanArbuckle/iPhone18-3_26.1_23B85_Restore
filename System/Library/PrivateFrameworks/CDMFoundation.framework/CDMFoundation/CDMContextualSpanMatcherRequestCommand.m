@interface CDMContextualSpanMatcherRequestCommand
- (CDMContextualSpanMatcherRequestCommand)initWithContextualSpanMatcherRequest:(id)a3;
@end

@implementation CDMContextualSpanMatcherRequestCommand

- (CDMContextualSpanMatcherRequestCommand)initWithContextualSpanMatcherRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDMContextualSpanMatcherRequestCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextualSpanMatcherRequest, a3);
  }

  return v7;
}

@end