@interface DDSContentItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContentItem:(id)item;
- (DDSContentItem)initWithParentAsset:(id)asset contents:(id)contents;
- (NSDictionary)region;
- (NSString)fileName;
- (NSString)locale;
- (NSString)type;
- (NSURL)path;
- (id)description;
@end

@implementation DDSContentItem

- (DDSContentItem)initWithParentAsset:(id)asset contents:(id)contents
{
  assetCopy = asset;
  contentsCopy = contents;
  v12.receiver = self;
  v12.super_class = DDSContentItem;
  v9 = [(DDSContentItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parentAsset, asset);
    objc_storeStrong(&v10->_contents, contents);
  }

  return v10;
}

- (NSURL)path
{
  contents = [(DDSContentItem *)self contents];
  v4 = [contents objectForKeyedSubscript:kContentPath];

  parentAsset = [(DDSContentItem *)self parentAsset];
  localURL = [parentAsset localURL];
  v7 = [localURL URLByAppendingPathComponent:v4];

  return v7;
}

- (NSString)fileName
{
  contents = [(DDSContentItem *)self contents];
  v3 = [contents objectForKeyedSubscript:kContentPath];

  return v3;
}

- (NSString)type
{
  contents = [(DDSContentItem *)self contents];
  v3 = [contents objectForKeyedSubscript:kContentType];

  return v3;
}

- (NSString)locale
{
  contents = [(DDSContentItem *)self contents];
  v3 = [contents objectForKeyedSubscript:kLocale];

  return v3;
}

- (NSDictionary)region
{
  contents = [(DDSContentItem *)self contents];
  v3 = [contents objectForKeyedSubscript:kRegion];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  contents = [(DDSContentItem *)self contents];
  v6 = [contents objectForKeyedSubscript:kContentType];
  contents2 = [(DDSContentItem *)self contents];
  v8 = [contents2 objectForKeyedSubscript:kContentPath];
  v9 = [v3 stringWithFormat:@"<%@: %p, type: %@, path: %@>", v4, self, v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DDSContentItem *)self isEqualToContentItem:equalCopy];

  return v5;
}

- (BOOL)isEqualToContentItem:(id)item
{
  itemCopy = item;
  parentAsset = [(DDSContentItem *)self parentAsset];
  parentAsset2 = [itemCopy parentAsset];
  if (DDSObjectsAreEqualOrNil(parentAsset, parentAsset2))
  {
    contents = [(DDSContentItem *)self contents];
    contents2 = [itemCopy contents];
    v9 = DDSObjectsAreEqualOrNil(contents, contents2);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end