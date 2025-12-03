@interface NUPagingBlueprintItem
- (BOOL)isEqual:(id)equal;
- (NUPagingBlueprintItem)initWithPage:(id)page;
- (NUPagingBlueprintItem)initWithPageID:(id)d;
- (unint64_t)hash;
@end

@implementation NUPagingBlueprintItem

- (NUPagingBlueprintItem)initWithPage:(id)page
{
  pageCopy = page;
  v12.receiver = self;
  v12.super_class = NUPagingBlueprintItem;
  v6 = [(NUPagingBlueprintItem *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_page, page);
    identifier = [pageCopy identifier];
    v9 = [identifier copy];
    identifier = v7->_identifier;
    v7->_identifier = v9;
  }

  return v7;
}

- (NUPagingBlueprintItem)initWithPageID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = NUPagingBlueprintItem;
  v5 = [(NUPagingBlueprintItem *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(NUPagingBlueprintItem *)equalCopy identifier];
      identifier2 = [(NUPagingBlueprintItem *)self identifier];
      v7 = [identifier isEqualToString:identifier2];
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
  identifier = [(NUPagingBlueprintItem *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end