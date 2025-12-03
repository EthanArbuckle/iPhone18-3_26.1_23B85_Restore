@interface CDMLVCRequestCommand
- (CDMLVCRequestCommand)initWithParserRequest:(id)request rewriteMsg:(id)msg overridesInputs:(id)inputs;
@end

@implementation CDMLVCRequestCommand

- (CDMLVCRequestCommand)initWithParserRequest:(id)request rewriteMsg:(id)msg overridesInputs:(id)inputs
{
  requestCopy = request;
  msgCopy = msg;
  inputsCopy = inputs;
  v15.receiver = self;
  v15.super_class = CDMLVCRequestCommand;
  v12 = [(CDMBaseCommand *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parserRequest, request);
    objc_storeStrong(&v13->_rewriteMsg, msg);
    objc_storeStrong(&v13->_overridesInputs, inputs);
  }

  return v13;
}

@end