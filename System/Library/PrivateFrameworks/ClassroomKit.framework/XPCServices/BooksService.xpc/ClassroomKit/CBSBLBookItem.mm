@interface CBSBLBookItem
- (id)description;
@end

@implementation CBSBLBookItem

- (id)description
{
  title = [(CBSBLBookItem *)self title];
  author = [(CBSBLBookItem *)self author];
  path = [(CBSBLBookItem *)self path];
  storeIdentifier = [(CBSBLBookItem *)self storeIdentifier];
  identifier = [(CBSBLBookItem *)self identifier];
  legacyUniqueIdentifier = [(CBSBLBookItem *)self legacyUniqueIdentifier];
  [(CBSBLBookItem *)self type];
  v9 = NSStringFromCRKBookType();
  v10 = [NSString stringWithFormat:@"Title: %@\nAuthor: %@\nPath: %@\nStore Identifier: %@\n Identifier: %@\nLegacy Identifier: %@\nType: %@", title, author, path, storeIdentifier, identifier, legacyUniqueIdentifier, v9];

  return v10;
}

@end