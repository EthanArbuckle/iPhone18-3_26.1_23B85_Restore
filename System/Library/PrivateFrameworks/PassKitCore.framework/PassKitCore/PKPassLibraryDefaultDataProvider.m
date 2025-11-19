@interface PKPassLibraryDefaultDataProvider
- (PKPassLibraryDefaultDataProvider)init;
- (PKPassLibraryDefaultDataProvider)initWithPassLibrary:(id)a3;
- (void)removePass:(id)a3;
@end

@implementation PKPassLibraryDefaultDataProvider

- (PKPassLibraryDefaultDataProvider)init
{
  v3 = +[PKPassLibrary sharedInstance];
  v4 = [(PKPassLibraryDefaultDataProvider *)self initWithPassLibrary:v3];

  return v4;
}

- (PKPassLibraryDefaultDataProvider)initWithPassLibrary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPassLibraryDefaultDataProvider;
  v6 = [(PKPassLibraryDefaultDataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_library, a3);
  }

  return v7;
}

- (void)removePass:(id)a3
{
  library = self->_library;
  v4 = [a3 uniqueID];
  [(PKPassLibrary *)library removePassWithUniqueID:v4 diagnosticReason:@"Removed via User Interface"];
}

@end