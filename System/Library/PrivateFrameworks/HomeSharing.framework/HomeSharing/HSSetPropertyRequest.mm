@interface HSSetPropertyRequest
+ (id)requestWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD;
- (HSSetPropertyRequest)initWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD;
@end

@implementation HSSetPropertyRequest

- (HSSetPropertyRequest)initWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD
{
  v5 = *&d;
  v11.receiver = self;
  v11.super_class = HSSetPropertyRequest;
  v6 = [(HSRequest *)&v11 initWithAction:@"setproperty"];
  v7 = v6;
  if (v6)
  {
    [(HSRequest *)v6 setMethod:1];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"'dmap.itemid:%u'", v5];
    [(HSRequest *)v7 setValue:v8 forArgument:@"database-spec"];

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"'dmap.itemid:%llu'", iD];
    [(HSRequest *)v7 setValue:v9 forArgument:@"item-spec"];
  }

  return v7;
}

+ (id)requestWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD
{
  v4 = [[self alloc] initWithDatabaseID:*&d itemID:iD];

  return v4;
}

@end