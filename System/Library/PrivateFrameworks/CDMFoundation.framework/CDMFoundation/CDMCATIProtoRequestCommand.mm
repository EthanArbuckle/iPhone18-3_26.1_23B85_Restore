@interface CDMCATIProtoRequestCommand
- (CDMCATIProtoRequestCommand)initWithRequest:(id)a3;
@end

@implementation CDMCATIProtoRequestCommand

- (CDMCATIProtoRequestCommand)initWithRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDMCATIProtoRequestCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
  }

  return v7;
}

@end