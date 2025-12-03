@interface CDMSsuInferenceGraphRequestCommand
- (CDMSsuInferenceGraphRequestCommand)initWithSsuRequest:(id)request;
@end

@implementation CDMSsuInferenceGraphRequestCommand

- (CDMSsuInferenceGraphRequestCommand)initWithSsuRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = CDMSsuInferenceGraphRequestCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ssuRequest, request);
  }

  return v7;
}

@end