@interface CADExcludeIntegrationsAccountAccessHandler
- (BOOL)isActionAllowed:(unint64_t)a3 forStore:(void *)a4 inDatabase:(CalDatabase *)a5;
@end

@implementation CADExcludeIntegrationsAccountAccessHandler

- (BOOL)isActionAllowed:(unint64_t)a3 forStore:(void *)a4 inDatabase:(CalDatabase *)a5
{
  v7 = [(CADAccountAccessHandler *)self dataProvider];
  LOBYTE(a5) = [v7 isIntegrationStore:a4 inDatabase:a5];

  return a5 ^ 1;
}

@end