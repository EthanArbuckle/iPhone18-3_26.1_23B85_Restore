@interface CDMNLv4ProtoResponseCommand
- (CDMNLv4ProtoResponseCommand)initWithParserResponse:(id)response nluResponse:(id)nluResponse;
@end

@implementation CDMNLv4ProtoResponseCommand

- (CDMNLv4ProtoResponseCommand)initWithParserResponse:(id)response nluResponse:(id)nluResponse
{
  responseCopy = response;
  nluResponseCopy = nluResponse;
  v12.receiver = self;
  v12.super_class = CDMNLv4ProtoResponseCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parserResponse, response);
    objc_storeStrong(&v10->_nluResponse, nluResponse);
  }

  return v10;
}

@end