@interface CardDAVActionsDataSource
+ (id)dataSourceWithAddressBook:(void *)a3;
+ (id)dataSourceWithContactStore:(id)a3;
- (BOOL)changeHistoryIsValid;
- (id)copyWithoutImageAction:(id)a3 withFolderURL:(id)a4 maxResourceSize:(int64_t)a5;
- (void)prepareChangeHistoryForClientWithIdentifier:(id)a3 forContainer:(id)a4 withChangeContext:(id)a5;
@end

@implementation CardDAVActionsDataSource

+ (id)dataSourceWithAddressBook:(void *)a3
{
  v3 = [[_CardDAVActionsABLegacyDataSource alloc] initWithAddressBook:a3];

  return v3;
}

+ (id)dataSourceWithContactStore:(id)a3
{
  v3 = a3;
  v4 = [[_CardDAVActionsContactsDataSource alloc] initWithContactStore:v3];

  return v4;
}

- (void)prepareChangeHistoryForClientWithIdentifier:(id)a3 forContainer:(id)a4 withChangeContext:(id)a5
{
  v7 = [NSAssertionHandler currentHandler:a3];
  [v7 handleFailureInMethod:a2 object:self file:@"CardDAVActionsDataSource.m" lineNumber:24 description:@"Subclasses implement"];
}

- (BOOL)changeHistoryIsValid
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CardDAVActionsDataSource.m" lineNumber:29 description:@"Subclasses implement"];

  return 0;
}

- (id)copyWithoutImageAction:(id)a3 withFolderURL:(id)a4 maxResourceSize:(int64_t)a5
{
  v7 = [NSAssertionHandler currentHandler:a3];
  [v7 handleFailureInMethod:a2 object:self file:@"CardDAVActionsDataSource.m" lineNumber:51 description:@"Subclasses implement"];

  return 0;
}

@end