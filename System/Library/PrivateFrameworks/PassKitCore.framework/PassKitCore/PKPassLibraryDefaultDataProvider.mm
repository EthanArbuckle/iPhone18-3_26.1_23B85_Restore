@interface PKPassLibraryDefaultDataProvider
- (PKPassLibraryDefaultDataProvider)init;
- (PKPassLibraryDefaultDataProvider)initWithPassLibrary:(id)library;
- (void)removePass:(id)pass;
@end

@implementation PKPassLibraryDefaultDataProvider

- (PKPassLibraryDefaultDataProvider)init
{
  v3 = +[PKPassLibrary sharedInstance];
  v4 = [(PKPassLibraryDefaultDataProvider *)self initWithPassLibrary:v3];

  return v4;
}

- (PKPassLibraryDefaultDataProvider)initWithPassLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = PKPassLibraryDefaultDataProvider;
  v6 = [(PKPassLibraryDefaultDataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_library, library);
  }

  return v7;
}

- (void)removePass:(id)pass
{
  library = self->_library;
  uniqueID = [pass uniqueID];
  [(PKPassLibrary *)library removePassWithUniqueID:uniqueID diagnosticReason:@"Removed via User Interface"];
}

@end