@interface CNUICoreWhitelistedContactsControllerOptions
+ (CNUICoreWhitelistedContactsControllerOptions)iosOptions;
+ (CNUICoreWhitelistedContactsControllerOptions)macOptions;
+ (CNUICoreWhitelistedContactsControllerOptions)macOptionsLocal;
- (CNUICoreWhitelistedContactsControllerOptions)init;
- (CNUICoreWhitelistedContactsControllerOptions)initWithShouldPrepopulateEmptyWhitelist:(BOOL)whitelist shouldRequireConfirmationOfChanges:(BOOL)changes;
@end

@implementation CNUICoreWhitelistedContactsControllerOptions

+ (CNUICoreWhitelistedContactsControllerOptions)macOptions
{
  v2 = [[self alloc] initWithShouldPrepopulateEmptyWhitelist:1 shouldRequireConfirmationOfChanges:1];

  return v2;
}

+ (CNUICoreWhitelistedContactsControllerOptions)macOptionsLocal
{
  v2 = [[self alloc] initWithShouldPrepopulateEmptyWhitelist:0 shouldRequireConfirmationOfChanges:1];

  return v2;
}

+ (CNUICoreWhitelistedContactsControllerOptions)iosOptions
{
  v2 = [[self alloc] initWithShouldPrepopulateEmptyWhitelist:0 shouldRequireConfirmationOfChanges:0];

  return v2;
}

- (CNUICoreWhitelistedContactsControllerOptions)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNUICoreWhitelistedContactsControllerOptions)initWithShouldPrepopulateEmptyWhitelist:(BOOL)whitelist shouldRequireConfirmationOfChanges:(BOOL)changes
{
  v10.receiver = self;
  v10.super_class = CNUICoreWhitelistedContactsControllerOptions;
  v6 = [(CNUICoreWhitelistedContactsControllerOptions *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_shouldPrepopulateEmptyWhitelist = whitelist;
    v6->_shouldRequireConfirmationOfChanges = changes;
    v8 = v6;
  }

  return v7;
}

@end