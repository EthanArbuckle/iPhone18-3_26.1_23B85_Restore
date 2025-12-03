@interface CDMCATIProtoRequestCommand
- (CDMCATIProtoRequestCommand)initWithRequest:(id)request;
@end

@implementation CDMCATIProtoRequestCommand

- (CDMCATIProtoRequestCommand)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = CDMCATIProtoRequestCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
  }

  return v7;
}

@end