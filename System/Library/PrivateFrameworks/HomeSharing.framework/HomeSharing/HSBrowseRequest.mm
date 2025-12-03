@interface HSBrowseRequest
+ (id)requestWithDatabaseID:(unsigned int)d browseGroupType:(int64_t)type;
- (HSBrowseRequest)initWithDatabaseID:(unsigned int)d browseGroupType:(int64_t)type;
- (id)_stringForBrowseGroupType:(int64_t)type;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation HSBrowseRequest

+ (id)requestWithDatabaseID:(unsigned int)d browseGroupType:(int64_t)type
{
  v4 = [[self alloc] initWithDatabaseID:*&d browseGroupType:type];

  return v4;
}

- (id)_stringForBrowseGroupType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    return @"albums";
  }

  else
  {
    return off_279779BB0[type - 1];
  }
}

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(HSResponse *)HSBrowseResponse responseWithResponse:response];
  responseData = [v3 responseData];
  v5 = [HSResponseDataParser parseResponseData:responseData];

  [v3 setCollections:v5];

  return v3;
}

- (HSBrowseRequest)initWithDatabaseID:(unsigned int)d browseGroupType:(int64_t)type
{
  v4 = *&d;
  v6 = MEMORY[0x277CCACA8];
  v7 = [(HSBrowseRequest *)self _stringForBrowseGroupType:type];
  v8 = [v6 stringWithFormat:@"databases/%u/browse/%@", v4, v7];
  v9 = [(HSRequest *)self initWithAction:v8];

  return v9;
}

@end