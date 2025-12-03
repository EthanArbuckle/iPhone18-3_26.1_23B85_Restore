@interface CDMOverridesProtoRequestCommand
- (CDMOverridesProtoRequestCommand)initWithRequest:(id)request;
@end

@implementation CDMOverridesProtoRequestCommand

- (CDMOverridesProtoRequestCommand)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = CDMOverridesProtoRequestCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
  }

  return v7;
}

@end