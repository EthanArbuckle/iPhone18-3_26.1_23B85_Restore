@interface CDMPSCRequestCommand
- (CDMPSCRequestCommand)initWithParserRequest:(id)a3 rewriteMsg:(id)a4;
@end

@implementation CDMPSCRequestCommand

- (CDMPSCRequestCommand)initWithParserRequest:(id)a3 rewriteMsg:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDMPSCRequestCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parserRequest, a3);
    objc_storeStrong(&v10->_rewriteMsg, a4);
  }

  return v10;
}

@end