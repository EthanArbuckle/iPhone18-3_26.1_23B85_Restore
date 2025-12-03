@interface CADAllowSpecifiedAccountsAccessHandler
- (BOOL)isActionAllowed:(unint64_t)allowed forStore:(void *)store inDatabase:(CalDatabase *)database;
- (CADAllowSpecifiedAccountsAccessHandler)initWithAllowedSourceIdentifiers:(id)identifiers databaseDataProvider:(id)provider;
@end

@implementation CADAllowSpecifiedAccountsAccessHandler

- (CADAllowSpecifiedAccountsAccessHandler)initWithAllowedSourceIdentifiers:(id)identifiers databaseDataProvider:(id)provider
{
  identifiersCopy = identifiers;
  v11.receiver = self;
  v11.super_class = CADAllowSpecifiedAccountsAccessHandler;
  v7 = [(CADAccountAccessHandler *)&v11 initWithDatabaseDataProvider:provider];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];
    allowedSourceIdentifiers = v7->_allowedSourceIdentifiers;
    v7->_allowedSourceIdentifiers = v8;
  }

  return v7;
}

- (BOOL)isActionAllowed:(unint64_t)allowed forStore:(void *)store inDatabase:(CalDatabase *)database
{
  selfCopy = self;
  dataProvider = [(CADAccountAccessHandler *)self dataProvider];
  v9 = [dataProvider storeIDForStore:store inDatabase:database];

  allowedSourceIdentifiers = [(CADAllowSpecifiedAccountsAccessHandler *)selfCopy allowedSourceIdentifiers];
  LOBYTE(selfCopy) = [allowedSourceIdentifiers containsObject:v9];

  return selfCopy;
}

@end