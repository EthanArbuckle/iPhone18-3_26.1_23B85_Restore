@interface HSArtworkRequest
+ (id)requestWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD size:(CGSize)size;
- (HSArtworkRequest)initWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD size:(CGSize)size;
@end

@implementation HSArtworkRequest

- (HSArtworkRequest)initWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"databases/%u/items/%llu/extra_data/artwork", *&d, iD];
  v9 = [(HSRequest *)self initWithAction:v8];

  if (v9 && (width != 0.0 || height != 0.0))
  {
    width = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", width];
    [(HSRequest *)v9 setValue:width forArgument:@"mw"];

    height = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", height];
    [(HSRequest *)v9 setValue:height forArgument:@"mh"];
  }

  return v9;
}

+ (id)requestWithDatabaseID:(unsigned int)d itemID:(unint64_t)iD size:(CGSize)size
{
  v5 = [[HSArtworkRequest alloc] initWithDatabaseID:*&d itemID:iD size:size.width, size.height];

  return v5;
}

@end