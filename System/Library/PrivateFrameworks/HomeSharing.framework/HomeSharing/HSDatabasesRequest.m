@interface HSDatabasesRequest
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation HSDatabasesRequest

- (id)canonicalResponseForResponse:(id)a3
{
  v3 = [(HSResponse *)HSDatabasesResponse responseWithResponse:a3];
  v4 = [v3 responseData];
  v5 = [HSResponseDataParser parseResponseData:v4];

  [v3 setDatabases:v5];

  return v3;
}

@end