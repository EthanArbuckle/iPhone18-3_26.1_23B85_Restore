@interface HSIncrementRequest
+ (id)requestWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD;
- (HSIncrementRequest)initWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD;
@end

@implementation HSIncrementRequest

- (HSIncrementRequest)initWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD
{
  v5 = *&d;
  v10.receiver = self;
  v10.super_class = HSIncrementRequest;
  v6 = [(HSRequest *)&v10 initWithAction:@"increment"];
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"'dmap.itemid:%u'", v5];
    [(HSRequest *)v6 setValue:v7 forArgument:@"database-spec"];

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"'dmap.itemid:%llu'", iD];
    [(HSRequest *)v6 setValue:v8 forArgument:@"item-spec"];
  }

  return v6;
}

+ (id)requestWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD
{
  v4 = [[self alloc] initWithDatabaseID:*&d itemID:iD];

  return v4;
}

@end