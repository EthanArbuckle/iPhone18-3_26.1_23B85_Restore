@interface HSIncrementRequest
+ (id)requestWithDatabaseID:(unsigned int)a3 itemID:(unint64_t)a4;
- (HSIncrementRequest)initWithDatabaseID:(unsigned int)a3 itemID:(unint64_t)a4;
@end

@implementation HSIncrementRequest

- (HSIncrementRequest)initWithDatabaseID:(unsigned int)a3 itemID:(unint64_t)a4
{
  v5 = *&a3;
  v10.receiver = self;
  v10.super_class = HSIncrementRequest;
  v6 = [(HSRequest *)&v10 initWithAction:@"increment"];
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"'dmap.itemid:%u'", v5];
    [(HSRequest *)v6 setValue:v7 forArgument:@"database-spec"];

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"'dmap.itemid:%llu'", a4];
    [(HSRequest *)v6 setValue:v8 forArgument:@"item-spec"];
  }

  return v6;
}

+ (id)requestWithDatabaseID:(unsigned int)a3 itemID:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithDatabaseID:*&a3 itemID:a4];

  return v4;
}

@end