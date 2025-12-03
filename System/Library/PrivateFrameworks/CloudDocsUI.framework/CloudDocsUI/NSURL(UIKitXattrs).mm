@interface NSURL(UIKitXattrs)
- (id)_ui_extendedAttributeForKey:()UIKitXattrs;
- (uint64_t)_ui_setExtendedAttribute:()UIKitXattrs forKey:;
@end

@implementation NSURL(UIKitXattrs)

- (id)_ui_extendedAttributeForKey:()UIKitXattrs
{
  v5 = a3;
  fileSystemRepresentation = [a3 fileSystemRepresentation];
  path = [self path];
  fileSystemRepresentation2 = [path fileSystemRepresentation];

  v9 = getxattr(fileSystemRepresentation2, fileSystemRepresentation, 0, 0, 0, 1);
  if (v9 >= 1)
  {
    v10 = v9;
    v11 = [MEMORY[0x277CBEB28] dataWithLength:v9];
    if (getxattr(fileSystemRepresentation2, fileSystemRepresentation, [v11 mutableBytes], v10, 0, 1) == v10)
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
  fileSystemRepresentation = [a4 fileSystemRepresentation];
  path = [self path];
  fileSystemRepresentation2 = [path fileSystemRepresentation];

  bytes = [v8 bytes];
  v13 = [v8 length];

  return setxattr(fileSystemRepresentation2, fileSystemRepresentation, bytes, v13, 0, 1);
}

@end