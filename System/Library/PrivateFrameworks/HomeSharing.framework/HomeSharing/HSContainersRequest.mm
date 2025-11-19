@interface HSContainersRequest
+ (id)requestWithDatabaseID:(unsigned int)a3;
- (HSContainersRequest)initWithAction:(id)a3;
- (HSContainersRequest)initWithDatabaseID:(unsigned int)a3;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation HSContainersRequest

- (id)canonicalResponseForResponse:(id)a3
{
  v4 = a3;
  if (self->_shouldParseResponse)
  {
    v5 = [(HSResponse *)HSContainersResponse responseWithResponse:v4];

    v6 = [v5 responseData];
    v7 = [HSResponseDataParser parseResponseData:v6];

    [v5 setContainers:v7];
    v4 = v5;
  }

  return v4;
}

- (HSContainersRequest)initWithDatabaseID:(unsigned int)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"databases/%u/containers", *&a3];
  v5 = [(HSContainersRequest *)self initWithAction:v4];

  return v5;
}

- (HSContainersRequest)initWithAction:(id)a3
{
  v4.receiver = self;
  v4.super_class = HSContainersRequest;
  result = [(HSRequest *)&v4 initWithAction:a3];
  if (result)
  {
    result->_shouldParseResponse = 1;
  }

  return result;
}

+ (id)requestWithDatabaseID:(unsigned int)a3
{
  v3 = [[a1 alloc] initWithDatabaseID:*&a3];

  return v3;
}

@end