@interface CDMLVCRequestCommand
- (CDMLVCRequestCommand)initWithParserRequest:(id)a3 rewriteMsg:(id)a4 overridesInputs:(id)a5;
@end

@implementation CDMLVCRequestCommand

- (CDMLVCRequestCommand)initWithParserRequest:(id)a3 rewriteMsg:(id)a4 overridesInputs:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CDMLVCRequestCommand;
  v12 = [(CDMBaseCommand *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parserRequest, a3);
    objc_storeStrong(&v13->_rewriteMsg, a4);
    objc_storeStrong(&v13->_overridesInputs, a5);
  }

  return v13;
}

@end