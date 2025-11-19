@interface CDMOverridesProtoRequestCommand
- (CDMOverridesProtoRequestCommand)initWithRequest:(id)a3;
@end

@implementation CDMOverridesProtoRequestCommand

- (CDMOverridesProtoRequestCommand)initWithRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDMOverridesProtoRequestCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
  }

  return v7;
}

@end