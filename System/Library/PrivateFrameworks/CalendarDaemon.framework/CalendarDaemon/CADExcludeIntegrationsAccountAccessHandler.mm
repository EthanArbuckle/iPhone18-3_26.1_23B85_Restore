@interface CADExcludeIntegrationsAccountAccessHandler
- (BOOL)isActionAllowed:(unint64_t)allowed forStore:(void *)store inDatabase:(CalDatabase *)database;
@end

@implementation CADExcludeIntegrationsAccountAccessHandler

- (BOOL)isActionAllowed:(unint64_t)allowed forStore:(void *)store inDatabase:(CalDatabase *)database
{
  dataProvider = [(CADAccountAccessHandler *)self dataProvider];
  LOBYTE(database) = [dataProvider isIntegrationStore:store inDatabase:database];

  return database ^ 1;
}

@end