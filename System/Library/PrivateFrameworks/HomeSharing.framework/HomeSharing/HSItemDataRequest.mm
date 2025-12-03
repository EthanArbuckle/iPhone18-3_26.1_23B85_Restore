@interface HSItemDataRequest
+ (id)requestWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD format:(id)format;
- (HSItemDataRequest)initWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD format:(id)format;
@end

@implementation HSItemDataRequest

+ (id)requestWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD format:(id)format
{
  v6 = *&d;
  formatCopy = format;
  v9 = [[self alloc] initWithDatabaseID:v6 itemID:iD format:formatCopy];

  return v9;
}

- (HSItemDataRequest)initWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD format:(id)format
{
  format = [MEMORY[0x277CCACA8] stringWithFormat:@"databases/%u/items/%llu.%@", *&d, iD, format];
  v7 = [(HSRequest *)self initWithAction:format];

  return v7;
}

@end