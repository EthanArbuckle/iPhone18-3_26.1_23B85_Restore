@interface DAAccount(AuthenticationExtensions)
+ (id)_leafAccountTypes;
@end

@implementation DAAccount(AuthenticationExtensions)

+ (id)_leafAccountTypes
{
  if (_leafAccountTypes_onceToken != -1)
  {
    +[DAAccount(AuthenticationExtensions) _leafAccountTypes];
  }

  v3 = _leafAccountTypes__sLeafAccountTypes;

  return v3;
}

@end