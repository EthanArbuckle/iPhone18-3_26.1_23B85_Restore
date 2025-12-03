@interface CDMSsuInferenceGraphResponseCommand
- (CDMSsuInferenceGraphResponseCommand)initWithSsuResponse:(id)response;
@end

@implementation CDMSsuInferenceGraphResponseCommand

- (CDMSsuInferenceGraphResponseCommand)initWithSsuResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = CDMSsuInferenceGraphResponseCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ssuResponse, response);
  }

  return v7;
}

@end