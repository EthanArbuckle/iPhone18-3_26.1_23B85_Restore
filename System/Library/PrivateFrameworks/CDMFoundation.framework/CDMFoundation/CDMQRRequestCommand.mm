@interface CDMQRRequestCommand
- (CDMQRRequestCommand)initWithQRRequest:(id)request;
@end

@implementation CDMQRRequestCommand

- (CDMQRRequestCommand)initWithQRRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = CDMQRRequestCommand;
  v6 = [(CDMBaseCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_qrRequest, request);
  }

  return v7;
}

@end