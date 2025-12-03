@interface CADExcludeDelegatesAccountAccessHandler
- (BOOL)isActionAllowed:(unint64_t)allowed forStore:(void *)store inDatabase:(CalDatabase *)database;
@end

@implementation CADExcludeDelegatesAccountAccessHandler

- (BOOL)isActionAllowed:(unint64_t)allowed forStore:(void *)store inDatabase:(CalDatabase *)database
{
  dataProvider = [(CADAccountAccessHandler *)self dataProvider];
  LOBYTE(database) = [dataProvider isStoreDelegate:store inDatabase:database];

  return database ^ 1;
}

@end