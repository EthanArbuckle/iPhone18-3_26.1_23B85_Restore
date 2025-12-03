@interface HSDatabasesRequest
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation HSDatabasesRequest

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(HSResponse *)HSDatabasesResponse responseWithResponse:response];
  responseData = [v3 responseData];
  v5 = [HSResponseDataParser parseResponseData:responseData];

  [v3 setDatabases:v5];

  return v3;
}

@end