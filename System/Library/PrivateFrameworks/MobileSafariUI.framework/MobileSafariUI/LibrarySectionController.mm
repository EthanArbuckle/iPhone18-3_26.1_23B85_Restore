@interface LibrarySectionController
- (LibrarySectionController)initWithConfiguration:(id)configuration;
@end

@implementation LibrarySectionController

- (LibrarySectionController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = LibrarySectionController;
  v6 = [(LibrarySectionController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = v7;
  }

  return v7;
}

@end