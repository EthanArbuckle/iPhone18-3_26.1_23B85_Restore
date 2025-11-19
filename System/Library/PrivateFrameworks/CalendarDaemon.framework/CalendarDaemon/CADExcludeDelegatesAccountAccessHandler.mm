@interface CADExcludeDelegatesAccountAccessHandler
- (BOOL)isActionAllowed:(unint64_t)a3 forStore:(void *)a4 inDatabase:(CalDatabase *)a5;
@end

@implementation CADExcludeDelegatesAccountAccessHandler

- (BOOL)isActionAllowed:(unint64_t)a3 forStore:(void *)a4 inDatabase:(CalDatabase *)a5
{
  v7 = [(CADAccountAccessHandler *)self dataProvider];
  LOBYTE(a5) = [v7 isStoreDelegate:a4 inDatabase:a5];

  return a5 ^ 1;
}

@end