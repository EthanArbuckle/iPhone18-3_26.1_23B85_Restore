@interface NUPagingBlueprintItem
- (BOOL)isEqual:(id)a3;
- (NUPagingBlueprintItem)initWithPage:(id)a3;
- (NUPagingBlueprintItem)initWithPageID:(id)a3;
- (unint64_t)hash;
@end

@implementation NUPagingBlueprintItem

- (NUPagingBlueprintItem)initWithPage:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = NUPagingBlueprintItem;
  v6 = [(NUPagingBlueprintItem *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_page, a3);
    v8 = [v5 identifier];
    v9 = [v8 copy];
    identifier = v7->_identifier;
    v7->_identifier = v9;
  }

  return v7;
}

- (NUPagingBlueprintItem)initWithPageID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NUPagingBlueprintItem;
  v5 = [(NUPagingBlueprintItem *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NUPagingBlueprintItem *)v4 identifier];
      v6 = [(NUPagingBlueprintItem *)self identifier];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(NUPagingBlueprintItem *)self identifier];
  v3 = [v2 hash];

  return v3;
}

@end