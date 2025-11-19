@interface CardDAVInitialActionsDataSource
+ (id)dataSourceWithAddressBook:(void *)a3;
+ (id)dataSourceWithContactStore:(id)a3;
- (id)actionsForGroups:(id)a3 isPrimaryAppleAccount:(BOOL)a4 isU18Account:(BOOL)a5 databaseHelper:(id)a6 inFolderWithURL:(id)a7 blacklistedUUIDs:(id)a8 blacklistedURLs:(id)a9 maxImageSize:(int64_t)a10 maxResourceSize:(int64_t)a11 containerIsRestricted:(BOOL)a12 outTouchedDB:(BOOL *)a13;
- (void)generateActionsForContacts:(id)a3 databaseHelper:(id)a4 inFolderWithURL:(id)a5 blacklistedUUIDs:(id)a6 blacklistedURLs:(id)a7 maxImageSize:(int64_t)a8 maxResourceSize:(int64_t)a9 outTouchedDB:(BOOL *)a10 reportingBlock:(id)a11;
- (void)prepareToGenerateInitialActionsWithContext:(id)a3;
@end

@implementation CardDAVInitialActionsDataSource

+ (id)dataSourceWithAddressBook:(void *)a3
{
  v3 = [[_CardDAVInitialActionsABLegacyDataSource alloc] initWithAddressBook:a3];

  return v3;
}

+ (id)dataSourceWithContactStore:(id)a3
{
  v3 = a3;
  v4 = [[_CardDAVInitialActionsContactsDataSource alloc] initWithContactStore:v3];

  return v4;
}

- (void)prepareToGenerateInitialActionsWithContext:(id)a3
{
  v3 = a3;
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"prepareToGenerateInitialActionsWithContext: is abstract" userInfo:0];
  objc_exception_throw(v4);
}

- (void)generateActionsForContacts:(id)a3 databaseHelper:(id)a4 inFolderWithURL:(id)a5 blacklistedUUIDs:(id)a6 blacklistedURLs:(id)a7 maxImageSize:(int64_t)a8 maxResourceSize:(int64_t)a9 outTouchedDB:(BOOL *)a10 reportingBlock:(id)a11
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a11;
  v21 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"actionsForContacts: is abstract" userInfo:0];
  objc_exception_throw(v21);
}

- (id)actionsForGroups:(id)a3 isPrimaryAppleAccount:(BOOL)a4 isU18Account:(BOOL)a5 databaseHelper:(id)a6 inFolderWithURL:(id)a7 blacklistedUUIDs:(id)a8 blacklistedURLs:(id)a9 maxImageSize:(int64_t)a10 maxResourceSize:(int64_t)a11 containerIsRestricted:(BOOL)a12 outTouchedDB:(BOOL *)a13
{
  v16 = a3;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"actionsForGroups: is abstract" userInfo:0];
  objc_exception_throw(v21);
}

@end