@interface GPGameLibraryApp
- (GPGameLibraryApp)initWithPersistentIdentifier:(id)a3 bundleID:(id)a4 adamID:(id)a5 isGame:(BOOL)a6;
@end

@implementation GPGameLibraryApp

- (GPGameLibraryApp)initWithPersistentIdentifier:(id)a3 bundleID:(id)a4 adamID:(id)a5 isGame:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = GPGameLibraryApp;
  v14 = [(GPGameLibraryApp *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_persistentIdentifier, a3);
    objc_storeStrong(&v15->_bundleID, a4);
    objc_storeStrong(&v15->_adamID, a5);
    v15->_isGame = a6;
  }

  return v15;
}

@end