@interface CADAllowSpecifiedAccountsAccessHandler
- (BOOL)isActionAllowed:(unint64_t)a3 forStore:(void *)a4 inDatabase:(CalDatabase *)a5;
- (CADAllowSpecifiedAccountsAccessHandler)initWithAllowedSourceIdentifiers:(id)a3 databaseDataProvider:(id)a4;
@end

@implementation CADAllowSpecifiedAccountsAccessHandler

- (CADAllowSpecifiedAccountsAccessHandler)initWithAllowedSourceIdentifiers:(id)a3 databaseDataProvider:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CADAllowSpecifiedAccountsAccessHandler;
  v7 = [(CADAccountAccessHandler *)&v11 initWithDatabaseDataProvider:a4];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB98] setWithArray:v6];
    allowedSourceIdentifiers = v7->_allowedSourceIdentifiers;
    v7->_allowedSourceIdentifiers = v8;
  }

  return v7;
}

- (BOOL)isActionAllowed:(unint64_t)a3 forStore:(void *)a4 inDatabase:(CalDatabase *)a5
{
  v7 = self;
  v8 = [(CADAccountAccessHandler *)self dataProvider];
  v9 = [v8 storeIDForStore:a4 inDatabase:a5];

  v10 = [(CADAllowSpecifiedAccountsAccessHandler *)v7 allowedSourceIdentifiers];
  LOBYTE(v7) = [v10 containsObject:v9];

  return v7;
}

@end