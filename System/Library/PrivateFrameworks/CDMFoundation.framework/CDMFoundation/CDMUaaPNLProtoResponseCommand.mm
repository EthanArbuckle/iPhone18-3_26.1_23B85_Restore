@interface CDMUaaPNLProtoResponseCommand
- (CDMUaaPNLProtoResponseCommand)initWithParserResponse:(id)response nluResponse:(id)nluResponse;
@end

@implementation CDMUaaPNLProtoResponseCommand

- (CDMUaaPNLProtoResponseCommand)initWithParserResponse:(id)response nluResponse:(id)nluResponse
{
  responseCopy = response;
  nluResponseCopy = nluResponse;
  v12.receiver = self;
  v12.super_class = CDMUaaPNLProtoResponseCommand;
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