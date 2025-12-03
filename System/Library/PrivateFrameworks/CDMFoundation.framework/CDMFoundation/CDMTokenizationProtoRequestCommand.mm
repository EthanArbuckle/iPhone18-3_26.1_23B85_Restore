@interface CDMTokenizationProtoRequestCommand
- (CDMTokenizationProtoRequestCommand)initWithRequest:(id)request;
- (CDMTokenizationProtoRequestCommand)initWithRequests:(id)requests;
@end

@implementation CDMTokenizationProtoRequestCommand

- (CDMTokenizationProtoRequestCommand)initWithRequests:(id)requests
{
  requestsCopy = requests;
  v9.receiver = self;
  v9.super_class = CDMTokenizationProtoRequestCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requests, requests);
  }

  return v7;
}

- (CDMTokenizationProtoRequestCommand)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = CDMTokenizationProtoRequestCommand;
  v5 = [(CDMBaseCommand *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DEC8] arrayWithObject:requestCopy];
    requests = v5->_requests;
    v5->_requests = v6;
  }

  return v5;
}

@end