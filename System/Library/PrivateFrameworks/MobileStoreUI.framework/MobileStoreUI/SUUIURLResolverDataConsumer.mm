@interface SUUIURLResolverDataConsumer
- (id)objectForData:(id)data response:(id)response error:(id *)error;
@end

@implementation SUUIURLResolverDataConsumer

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  dataCopy = data;
  responseCopy = response;
  v8 = SSVProtocolRedirectURLForResponse();
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [[SUUIURLResolverResponse alloc] initWithData:dataCopy URLResponse:responseCopy];
  }

  return v9;
}

@end