@interface DDSContentItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContentItem:(id)a3;
- (DDSContentItem)initWithParentAsset:(id)a3 contents:(id)a4;
- (NSDictionary)region;
- (NSString)fileName;
- (NSString)locale;
- (NSString)type;
- (NSURL)path;
- (id)description;
@end

@implementation DDSContentItem

- (DDSContentItem)initWithParentAsset:(id)a3 contents:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DDSContentItem;
  v9 = [(DDSContentItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parentAsset, a3);
    objc_storeStrong(&v10->_contents, a4);
  }

  return v10;
}

- (NSURL)path
{
  v3 = [(DDSContentItem *)self contents];
  v4 = [v3 objectForKeyedSubscript:kContentPath];

  v5 = [(DDSContentItem *)self parentAsset];
  v6 = [v5 localURL];
  v7 = [v6 URLByAppendingPathComponent:v4];

  return v7;
}

- (NSString)fileName
{
  v2 = [(DDSContentItem *)self contents];
  v3 = [v2 objectForKeyedSubscript:kContentPath];

  return v3;
}

- (NSString)type
{
  v2 = [(DDSContentItem *)self contents];
  v3 = [v2 objectForKeyedSubscript:kContentType];

  return v3;
}

- (NSString)locale
{
  v2 = [(DDSContentItem *)self contents];
  v3 = [v2 objectForKeyedSubscript:kLocale];

  return v3;
}

- (NSDictionary)region
{
  v2 = [(DDSContentItem *)self contents];
  v3 = [v2 objectForKeyedSubscript:kRegion];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(DDSContentItem *)self contents];
  v6 = [v5 objectForKeyedSubscript:kContentType];
  v7 = [(DDSContentItem *)self contents];
  v8 = [v7 objectForKeyedSubscript:kContentPath];
  v9 = [v3 stringWithFormat:@"<%@: %p, type: %@, path: %@>", v4, self, v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DDSContentItem *)self isEqualToContentItem:v4];

  return v5;
}

- (BOOL)isEqualToContentItem:(id)a3
{
  v4 = a3;
  v5 = [(DDSContentItem *)self parentAsset];
  v6 = [v4 parentAsset];
  if (DDSObjectsAreEqualOrNil(v5, v6))
  {
    v7 = [(DDSContentItem *)self contents];
    v8 = [v4 contents];
    v9 = DDSObjectsAreEqualOrNil(v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end