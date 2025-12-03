@interface ARCResponse
- (ARCResponse)initWithResponseData:(id)data;
@end

@implementation ARCResponse

- (ARCResponse)initWithResponseData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = ARCResponse;
  v6 = [(ARCResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_responseData, data);
  }

  return v7;
}

@end