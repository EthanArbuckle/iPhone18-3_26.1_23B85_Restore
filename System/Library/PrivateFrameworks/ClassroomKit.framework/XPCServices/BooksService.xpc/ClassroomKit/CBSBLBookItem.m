@interface CBSBLBookItem
- (id)description;
@end

@implementation CBSBLBookItem

- (id)description
{
  v3 = [(CBSBLBookItem *)self title];
  v4 = [(CBSBLBookItem *)self author];
  v5 = [(CBSBLBookItem *)self path];
  v6 = [(CBSBLBookItem *)self storeIdentifier];
  v7 = [(CBSBLBookItem *)self identifier];
  v8 = [(CBSBLBookItem *)self legacyUniqueIdentifier];
  [(CBSBLBookItem *)self type];
  v9 = NSStringFromCRKBookType();
  v10 = [NSString stringWithFormat:@"Title: %@\nAuthor: %@\nPath: %@\nStore Identifier: %@\n Identifier: %@\nLegacy Identifier: %@\nType: %@", v3, v4, v5, v6, v7, v8, v9];

  return v10;
}

@end