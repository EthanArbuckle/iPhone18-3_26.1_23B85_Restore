@interface HSArtworkRequest
+ (id)requestWithDatabaseID:(unsigned int)a3 itemID:(unint64_t)a4 size:(CGSize)a5;
- (HSArtworkRequest)initWithDatabaseID:(unsigned int)a3 itemID:(unint64_t)a4 size:(CGSize)a5;
@end

@implementation HSArtworkRequest

- (HSArtworkRequest)initWithDatabaseID:(unsigned int)a3 itemID:(unint64_t)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"databases/%u/items/%llu/extra_data/artwork", *&a3, a4];
  v9 = [(HSRequest *)self initWithAction:v8];

  if (v9 && (width != 0.0 || height != 0.0))
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", width];
    [(HSRequest *)v9 setValue:v10 forArgument:@"mw"];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", height];
    [(HSRequest *)v9 setValue:v11 forArgument:@"mh"];
  }

  return v9;
}

+ (id)requestWithDatabaseID:(unsigned int)a3 itemID:(unint64_t)a4 size:(CGSize)a5
{
  v5 = [[HSArtworkRequest alloc] initWithDatabaseID:*&a3 itemID:a4 size:a5.width, a5.height];

  return v5;
}

@end