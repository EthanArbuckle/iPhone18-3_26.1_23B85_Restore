@interface CDMUaaPNLProtoRequestCommand
- (CDMUaaPNLProtoRequestCommand)initWithParserRequest:(id)request requestId:(id)id;
@end

@implementation CDMUaaPNLProtoRequestCommand

- (CDMUaaPNLProtoRequestCommand)initWithParserRequest:(id)request requestId:(id)id
{
  requestCopy = request;
  idCopy = id;
  v12.receiver = self;
  v12.super_class = CDMUaaPNLProtoRequestCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parserRequest, request);
    objc_storeStrong(&v10->_requestId, id);
  }

  return v10;
}

@end