@interface CDMNLUPreprocessRequestCommand
- (CDMNLUPreprocessRequestCommand)initWithNLURequest:(id)request;
@end

@implementation CDMNLUPreprocessRequestCommand

- (CDMNLUPreprocessRequestCommand)initWithNLURequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = CDMNLUPreprocessRequestCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_siriNLUTypeObj, request);
  }

  return v7;
}

@end