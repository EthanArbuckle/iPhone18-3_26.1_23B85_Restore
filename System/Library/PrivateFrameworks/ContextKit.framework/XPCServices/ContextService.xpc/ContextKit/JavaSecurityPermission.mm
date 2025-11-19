@interface JavaSecurityPermission
- (id)newPermissionCollection;
@end

@implementation JavaSecurityPermission

- (id)newPermissionCollection
{
  v2 = new_JavaSecurityAllPermissionCollection_init();

  return v2;
}

@end