@interface CDMCATIProtoResponseCommand
- (CDMCATIProtoResponseCommand)initWithResponse:(id)response;
@end

@implementation CDMCATIProtoResponseCommand

- (CDMCATIProtoResponseCommand)initWithResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = CDMCATIProtoResponseCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_response, response);
  }

  return v7;
}

@end