@interface CDMSSURequestCommand
- (CDMSSURequestCommand)initWithParserRequest:(id)request;
@end

@implementation CDMSSURequestCommand

- (CDMSSURequestCommand)initWithParserRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = CDMSSURequestCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parserRequest, request);
  }

  return v7;
}

@end