@interface HSContainersRequest
+ (id)requestWithDatabaseID:(unsigned int)d;
- (HSContainersRequest)initWithAction:(id)action;
- (HSContainersRequest)initWithDatabaseID:(unsigned int)d;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation HSContainersRequest

- (id)canonicalResponseForResponse:(id)response
{
  responseCopy = response;
  if (self->_shouldParseResponse)
  {
    v5 = [(HSResponse *)HSContainersResponse responseWithResponse:responseCopy];

    responseData = [v5 responseData];
    v7 = [HSResponseDataParser parseResponseData:responseData];

    [v5 setContainers:v7];
    responseCopy = v5;
  }

  return responseCopy;
}

- (HSContainersRequest)initWithDatabaseID:(unsigned int)d
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"databases/%u/containers", *&d];
  v5 = [(HSContainersRequest *)self initWithAction:v4];

  return v5;
}

- (HSContainersRequest)initWithAction:(id)action
{
  v4.receiver = self;
  v4.super_class = HSContainersRequest;
  result = [(HSRequest *)&v4 initWithAction:action];
  if (result)
  {
    result->_shouldParseResponse = 1;
  }

  return result;
}

+ (id)requestWithDatabaseID:(unsigned int)d
{
  v3 = [[self alloc] initWithDatabaseID:*&d];

  return v3;
}

@end