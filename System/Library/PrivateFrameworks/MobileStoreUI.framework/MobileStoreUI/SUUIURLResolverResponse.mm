@interface SUUIURLResolverResponse
- (SUUIURLResolverResponse)initWithData:(id)data URLResponse:(id)response;
@end

@implementation SUUIURLResolverResponse

- (SUUIURLResolverResponse)initWithData:(id)data URLResponse:(id)response
{
  dataCopy = data;
  responseCopy = response;
  v12.receiver = self;
  v12.super_class = SUUIURLResolverResponse;
  v9 = [(SUUIURLResolverResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, data);
    objc_storeStrong(&v10->_response, response);
  }

  return v10;
}

@end