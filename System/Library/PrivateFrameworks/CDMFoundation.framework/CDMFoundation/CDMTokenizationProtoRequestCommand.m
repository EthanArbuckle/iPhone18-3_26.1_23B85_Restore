@interface CDMTokenizationProtoRequestCommand
- (CDMTokenizationProtoRequestCommand)initWithRequest:(id)a3;
- (CDMTokenizationProtoRequestCommand)initWithRequests:(id)a3;
@end

@implementation CDMTokenizationProtoRequestCommand

- (CDMTokenizationProtoRequestCommand)initWithRequests:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDMTokenizationProtoRequestCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requests, a3);
  }

  return v7;
}

- (CDMTokenizationProtoRequestCommand)initWithRequest:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CDMTokenizationProtoRequestCommand;
  v5 = [(CDMBaseCommand *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DEC8] arrayWithObject:v4];
    requests = v5->_requests;
    v5->_requests = v6;
  }

  return v5;
}

@end