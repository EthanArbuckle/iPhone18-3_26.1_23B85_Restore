@interface HSItemsRequest
+ (id)requestWithDatabaseID:(unsigned int)a3;
+ (id)requestWithDatabaseID:(unsigned int)a3 containerID:(unsigned int)a4;
- (HSItemsRequest)initWithAction:(id)a3;
- (HSItemsRequest)initWithDatabaseID:(unsigned int)a3;
- (HSItemsRequest)initWithDatabaseID:(unsigned int)a3 containerID:(unsigned int)a4;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation HSItemsRequest

- (id)canonicalResponseForResponse:(id)a3
{
  v4 = a3;
  if (self->_shouldParseResponse)
  {
    v5 = [(HSResponse *)HSItemsResponse responseWithResponse:v4];

    v6 = [v5 responseData];
    v7 = [HSResponseDataParser parseResponseData:v6];

    [v5 setItems:v7];
    v4 = v5;
  }

  return v4;
}

- (HSItemsRequest)initWithDatabaseID:(unsigned int)a3 containerID:(unsigned int)a4
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"databases/%u/containers/%u/items", *&a3, *&a4];
  v6 = [(HSItemsRequest *)self initWithAction:v5];

  return v6;
}

- (HSItemsRequest)initWithDatabaseID:(unsigned int)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"databases/%u/items", *&a3];
  v5 = [(HSItemsRequest *)self initWithAction:v4];

  return v5;
}

- (HSItemsRequest)initWithAction:(id)a3
{
  v4.receiver = self;
  v4.super_class = HSItemsRequest;
  result = [(HSRequest *)&v4 initWithAction:a3];
  if (result)
  {
    result->_shouldParseResponse = 1;
    result->_includeHiddenItems = 0;
  }

  return result;
}

+ (id)requestWithDatabaseID:(unsigned int)a3 containerID:(unsigned int)a4
{
  v4 = [[a1 alloc] initWithDatabaseID:*&a3 containerID:*&a4];

  return v4;
}

+ (id)requestWithDatabaseID:(unsigned int)a3
{
  v3 = [[a1 alloc] initWithDatabaseID:*&a3];

  return v3;
}

@end