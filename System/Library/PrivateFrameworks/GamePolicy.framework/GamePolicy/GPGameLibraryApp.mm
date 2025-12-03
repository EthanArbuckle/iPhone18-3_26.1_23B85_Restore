@interface GPGameLibraryApp
- (GPGameLibraryApp)initWithPersistentIdentifier:(id)identifier bundleID:(id)d adamID:(id)iD isGame:(BOOL)game;
@end

@implementation GPGameLibraryApp

- (GPGameLibraryApp)initWithPersistentIdentifier:(id)identifier bundleID:(id)d adamID:(id)iD isGame:(BOOL)game
{
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  v17.receiver = self;
  v17.super_class = GPGameLibraryApp;
  v14 = [(GPGameLibraryApp *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_persistentIdentifier, identifier);
    objc_storeStrong(&v15->_bundleID, d);
    objc_storeStrong(&v15->_adamID, iD);
    v15->_isGame = game;
  }

  return v15;
}

@end