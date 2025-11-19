@interface CDMUaaPNLProtoRequestCommand
- (CDMUaaPNLProtoRequestCommand)initWithParserRequest:(id)a3 requestId:(id)a4;
@end

@implementation CDMUaaPNLProtoRequestCommand

- (CDMUaaPNLProtoRequestCommand)initWithParserRequest:(id)a3 requestId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDMUaaPNLProtoRequestCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parserRequest, a3);
    objc_storeStrong(&v10->_requestId, a4);
  }

  return v10;
}

@end