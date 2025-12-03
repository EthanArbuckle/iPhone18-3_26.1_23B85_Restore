@interface CardDAVInitialActionsDataSource
+ (id)dataSourceWithAddressBook:(void *)book;
+ (id)dataSourceWithContactStore:(id)store;
- (id)actionsForGroups:(id)groups isPrimaryAppleAccount:(BOOL)account isU18Account:(BOOL)u18Account databaseHelper:(id)helper inFolderWithURL:(id)l blacklistedUUIDs:(id)ds blacklistedURLs:(id)ls maxImageSize:(int64_t)self0 maxResourceSize:(int64_t)self1 containerIsRestricted:(BOOL)self2 outTouchedDB:(BOOL *)self3;
- (void)generateActionsForContacts:(id)contacts databaseHelper:(id)helper inFolderWithURL:(id)l blacklistedUUIDs:(id)ds blacklistedURLs:(id)ls maxImageSize:(int64_t)size maxResourceSize:(int64_t)resourceSize outTouchedDB:(BOOL *)self0 reportingBlock:(id)self1;
- (void)prepareToGenerateInitialActionsWithContext:(id)context;
@end

@implementation CardDAVInitialActionsDataSource

+ (id)dataSourceWithAddressBook:(void *)book
{
  v3 = [[_CardDAVInitialActionsABLegacyDataSource alloc] initWithAddressBook:book];

  return v3;
}

+ (id)dataSourceWithContactStore:(id)store
{
  storeCopy = store;
  v4 = [[_CardDAVInitialActionsContactsDataSource alloc] initWithContactStore:storeCopy];

  return v4;
}

- (void)prepareToGenerateInitialActionsWithContext:(id)context
{
  contextCopy = context;
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"prepareToGenerateInitialActionsWithContext: is abstract" userInfo:0];
  objc_exception_throw(v4);
}

- (void)generateActionsForContacts:(id)contacts databaseHelper:(id)helper inFolderWithURL:(id)l blacklistedUUIDs:(id)ds blacklistedURLs:(id)ls maxImageSize:(int64_t)size maxResourceSize:(int64_t)resourceSize outTouchedDB:(BOOL *)self0 reportingBlock:(id)self1
{
  contactsCopy = contacts;
  helperCopy = helper;
  lCopy = l;
  dsCopy = ds;
  lsCopy = ls;
  blockCopy = block;
  v21 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"actionsForContacts: is abstract" userInfo:0];
  objc_exception_throw(v21);
}

- (id)actionsForGroups:(id)groups isPrimaryAppleAccount:(BOOL)account isU18Account:(BOOL)u18Account databaseHelper:(id)helper inFolderWithURL:(id)l blacklistedUUIDs:(id)ds blacklistedURLs:(id)ls maxImageSize:(int64_t)self0 maxResourceSize:(int64_t)self1 containerIsRestricted:(BOOL)self2 outTouchedDB:(BOOL *)self3
{
  groupsCopy = groups;
  helperCopy = helper;
  lCopy = l;
  dsCopy = ds;
  lsCopy = ls;
  v21 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"actionsForGroups: is abstract" userInfo:0];
  objc_exception_throw(v21);
}

@end