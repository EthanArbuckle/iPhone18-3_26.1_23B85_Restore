@interface HSItemDataRequest
+ (id)requestWithDatabaseID:(unsigned int)a3 itemID:(unint64_t)a4 format:(id)a5;
- (HSItemDataRequest)initWithDatabaseID:(unsigned int)a3 itemID:(unint64_t)a4 format:(id)a5;
@end

@implementation HSItemDataRequest

+ (id)requestWithDatabaseID:(unsigned int)a3 itemID:(unint64_t)a4 format:(id)a5
{
  v6 = *&a3;
  v8 = a5;
  v9 = [[a1 alloc] initWithDatabaseID:v6 itemID:a4 format:v8];

  return v9;
}

- (HSItemDataRequest)initWithDatabaseID:(unsigned int)a3 itemID:(unint64_t)a4 format:(id)a5
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"databases/%u/items/%llu.%@", *&a3, a4, a5];
  v7 = [(HSRequest *)self initWithAction:v6];

  return v7;
}

@end