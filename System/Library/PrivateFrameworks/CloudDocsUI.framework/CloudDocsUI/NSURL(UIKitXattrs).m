@interface NSURL(UIKitXattrs)
- (id)_ui_extendedAttributeForKey:()UIKitXattrs;
- (uint64_t)_ui_setExtendedAttribute:()UIKitXattrs forKey:;
@end

@implementation NSURL(UIKitXattrs)

- (id)_ui_extendedAttributeForKey:()UIKitXattrs
{
  v5 = a3;
  v6 = [a3 fileSystemRepresentation];
  v7 = [a1 path];
  v8 = [v7 fileSystemRepresentation];

  v9 = getxattr(v8, v6, 0, 0, 0, 1);
  if (v9 >= 1)
  {
    v10 = v9;
    v11 = [MEMORY[0x277CBEB28] dataWithLength:v9];
    if (getxattr(v8, v6, [v11 mutableBytes], v10, 0, 1) == v10)
    {
      goto LABEL_5;
    }
  }

  v11 = 0;
LABEL_5:

  return v11;
}

- (uint64_t)_ui_setExtendedAttribute:()UIKitXattrs forKey:
{
  v7 = a4;
  v8 = a3;
  v9 = [a4 fileSystemRepresentation];
  v10 = [a1 path];
  v11 = [v10 fileSystemRepresentation];

  v12 = [v8 bytes];
  v13 = [v8 length];

  return setxattr(v11, v9, v12, v13, 0, 1);
}

@end