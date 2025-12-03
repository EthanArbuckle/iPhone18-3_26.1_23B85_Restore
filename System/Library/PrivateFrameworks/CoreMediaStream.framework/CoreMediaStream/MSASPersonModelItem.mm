@interface MSASPersonModelItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MSASPersonModelItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MSASPersonModelItem);
  [(MSASPersonModelItem *)v4 setErrorCount:[(MSASPersonModelItem *)self errorCount]];
  object = [(MSASPersonModelItem *)self object];
  [(MSASPersonModelItem *)v4 setObject:object];

  album = [(MSASPersonModelItem *)self album];
  [(MSASPersonModelItem *)v4 setAlbum:album];

  albumGUID = [(MSASPersonModelItem *)self albumGUID];
  [(MSASPersonModelItem *)v4 setAlbumGUID:albumGUID];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object = self->_object;
    object = [equalCopy object];

    v7 = [object isEqual:object];
    return v7;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MSASPersonModelItem;
    v9 = [(MSASPersonModelItem *)&v10 isEqual:equalCopy];

    return v9;
  }
}

@end