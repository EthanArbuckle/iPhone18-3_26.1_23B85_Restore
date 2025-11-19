@interface SUUIURLResolverDataConsumer
- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5;
@end

@implementation SUUIURLResolverDataConsumer

- (id)objectForData:(id)a3 response:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = SSVProtocolRedirectURLForResponse();
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [[SUUIURLResolverResponse alloc] initWithData:v6 URLResponse:v7];
  }

  return v9;
}

@end