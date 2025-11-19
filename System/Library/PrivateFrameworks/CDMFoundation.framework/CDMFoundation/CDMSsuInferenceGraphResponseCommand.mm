@interface CDMSsuInferenceGraphResponseCommand
- (CDMSsuInferenceGraphResponseCommand)initWithSsuResponse:(id)a3;
@end

@implementation CDMSsuInferenceGraphResponseCommand

- (CDMSsuInferenceGraphResponseCommand)initWithSsuResponse:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDMSsuInferenceGraphResponseCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ssuResponse, a3);
  }

  return v7;
}

@end