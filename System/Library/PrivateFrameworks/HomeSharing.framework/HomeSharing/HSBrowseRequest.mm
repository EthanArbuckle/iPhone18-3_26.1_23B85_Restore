@interface HSBrowseRequest
+ (id)requestWithDatabaseID:(unsigned int)a3 browseGroupType:(int64_t)a4;
- (HSBrowseRequest)initWithDatabaseID:(unsigned int)a3 browseGroupType:(int64_t)a4;
- (id)_stringForBrowseGroupType:(int64_t)a3;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation HSBrowseRequest

+ (id)requestWithDatabaseID:(unsigned int)a3 browseGroupType:(int64_t)a4
{
  v4 = [[a1 alloc] initWithDatabaseID:*&a3 browseGroupType:a4];

  return v4;
}

- (id)_stringForBrowseGroupType:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"albums";
  }

  else
  {
    return off_279779BB0[a3 - 1];
  }
}

- (id)canonicalResponseForResponse:(id)a3
{
  v3 = [(HSResponse *)HSBrowseResponse responseWithResponse:a3];
  v4 = [v3 responseData];
  v5 = [HSResponseDataParser parseResponseData:v4];

  [v3 setCollections:v5];

  return v3;
}

- (HSBrowseRequest)initWithDatabaseID:(unsigned int)a3 browseGroupType:(int64_t)a4
{
  v4 = *&a3;
  v6 = MEMORY[0x277CCACA8];
  v7 = [(HSBrowseRequest *)self _stringForBrowseGroupType:a4];
  v8 = [v6 stringWithFormat:@"databases/%u/browse/%@", v4, v7];
  v9 = [(HSRequest *)self initWithAction:v8];

  return v9;
}

@end