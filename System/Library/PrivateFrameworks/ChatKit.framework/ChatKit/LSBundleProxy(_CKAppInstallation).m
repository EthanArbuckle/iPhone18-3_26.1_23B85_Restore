@interface LSBundleProxy(_CKAppInstallation)
- (id)__ck_icon;
@end

@implementation LSBundleProxy(_CKAppInstallation)

- (id)__ck_icon
{
  v2 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:a1 format:14];
  if (!v2)
  {
    v2 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:a1 format:2];
  }

  return v2;
}

@end