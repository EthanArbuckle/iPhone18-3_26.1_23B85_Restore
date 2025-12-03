@interface CDMPSCRequestCommand
- (CDMPSCRequestCommand)initWithParserRequest:(id)request rewriteMsg:(id)msg;
@end

@implementation CDMPSCRequestCommand

- (CDMPSCRequestCommand)initWithParserRequest:(id)request rewriteMsg:(id)msg
{
  requestCopy = request;
  msgCopy = msg;
  v12.receiver = self;
  v12.super_class = CDMPSCRequestCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parserRequest, request);
    objc_storeStrong(&v10->_rewriteMsg, msg);
  }

  return v10;
}

@end