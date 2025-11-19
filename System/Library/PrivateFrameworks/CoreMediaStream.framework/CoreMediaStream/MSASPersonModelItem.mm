@interface MSASPersonModelItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MSASPersonModelItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MSASPersonModelItem);
  [(MSASPersonModelItem *)v4 setErrorCount:[(MSASPersonModelItem *)self errorCount]];
  v5 = [(MSASPersonModelItem *)self object];
  [(MSASPersonModelItem *)v4 setObject:v5];

  v6 = [(MSASPersonModelItem *)self album];
  [(MSASPersonModelItem *)v4 setAlbum:v6];

  v7 = [(MSASPersonModelItem *)self albumGUID];
  [(MSASPersonModelItem *)v4 setAlbumGUID:v7];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object = self->_object;
    v6 = [v4 object];

    v7 = [object isEqual:v6];
    return v7;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MSASPersonModelItem;
    v9 = [(MSASPersonModelItem *)&v10 isEqual:v4];

    return v9;
  }
}

@end