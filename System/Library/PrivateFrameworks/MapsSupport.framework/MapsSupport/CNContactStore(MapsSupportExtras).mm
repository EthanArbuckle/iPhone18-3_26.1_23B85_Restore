@interface CNContactStore(MapsSupportExtras)
+ (BOOL)_maps_isAuthorized;
@end

@implementation CNContactStore(MapsSupportExtras)

+ (BOOL)_maps_isAuthorized
{
  v0 = tcc_identity_create();
  if (v0)
  {
    v1 = ([MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0] - 3) < 2;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

@end