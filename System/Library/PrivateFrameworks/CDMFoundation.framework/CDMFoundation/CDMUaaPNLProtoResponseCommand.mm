@interface CDMUaaPNLProtoResponseCommand
- (CDMUaaPNLProtoResponseCommand)initWithParserResponse:(id)a3 nluResponse:(id)a4;
@end

@implementation CDMUaaPNLProtoResponseCommand

- (CDMUaaPNLProtoResponseCommand)initWithParserResponse:(id)a3 nluResponse:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDMUaaPNLProtoResponseCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parserResponse, a3);
    objc_storeStrong(&v10->_nluResponse, a4);
  }

  return v10;
}

@end