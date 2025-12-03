@interface HSItemsRequest
+ (id)requestWithDatabaseID:(unsigned int)d;
+ (id)requestWithDatabaseID:(unsigned int)d containerID:(unsigned int)iD;
- (HSItemsRequest)initWithAction:(id)action;
- (HSItemsRequest)initWithDatabaseID:(unsigned int)d;
- (HSItemsRequest)initWithDatabaseID:(unsigned int)d containerID:(unsigned int)iD;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation HSItemsRequest

- (id)canonicalResponseForResponse:(id)response
{
  responseCopy = response;
  if (self->_shouldParseResponse)
  {
    v5 = [(HSResponse *)HSItemsResponse responseWithResponse:responseCopy];

    responseData = [v5 responseData];
    v7 = [HSResponseDataParser parseResponseData:responseData];

    [v5 setItems:v7];
    responseCopy = v5;
  }

  return responseCopy;
}

- (HSItemsRequest)initWithDatabaseID:(unsigned int)d containerID:(unsigned int)iD
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"databases/%u/containers/%u/items", *&d, *&iD];
  v6 = [(HSItemsRequest *)self initWithAction:v5];

  return v6;
}

- (HSItemsRequest)initWithDatabaseID:(unsigned int)d
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"databases/%u/items", *&d];
  v5 = [(HSItemsRequest *)self initWithAction:v4];

  return v5;
}

- (HSItemsRequest)initWithAction:(id)action
{
  v4.receiver = self;
  v4.super_class = HSItemsRequest;
  result = [(HSRequest *)&v4 initWithAction:action];
  if (result)
  {
    result->_shouldParseResponse = 1;
    result->_includeHiddenItems = 0;
  }

  return result;
}

+ (id)requestWithDatabaseID:(unsigned int)d containerID:(unsigned int)iD
{
  v4 = [[self alloc] initWithDatabaseID:*&d containerID:*&iD];

  return v4;
}

+ (id)requestWithDatabaseID:(unsigned int)d
{
  v3 = [[self alloc] initWithDatabaseID:*&d];

  return v3;
}

@end