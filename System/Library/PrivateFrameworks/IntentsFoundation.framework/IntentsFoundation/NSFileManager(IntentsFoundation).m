@interface NSFileManager(IntentsFoundation)
- (BOOL)if_removeExtendedAttributeName:()IntentsFoundation ofItemAtURL:;
- (BOOL)if_setAuditToken:()IntentsFoundation forExtendedAttributeNamed:ofItemAtURL:;
- (BOOL)if_setBool:()IntentsFoundation forExtendedAttributeNamed:ofItemAtURL:;
- (ssize_t)if_auditTokenForExtendedAttributeNamed:()IntentsFoundation ofItemAtURL:;
- (uint64_t)if_BOOLForExtendedAttributeName:()IntentsFoundation ofItemAtURL:;
@end

@implementation NSFileManager(IntentsFoundation)

- (BOOL)if_removeExtendedAttributeName:()IntentsFoundation ofItemAtURL:
{
  v6 = a4;
  v7 = a3;
  v8 = [a4 fileSystemRepresentation];
  v9 = [v7 UTF8String];

  return removexattr(v8, v9, 0) != -1;
}

- (uint64_t)if_BOOLForExtendedAttributeName:()IntentsFoundation ofItemAtURL:
{
  v6 = a4;
  v7 = a3;
  v8 = [a4 fileSystemRepresentation];
  v9 = [v7 UTF8String];

  value = 0;
  getxattr(v8, v9, &value, 1uLL, 0, 0);
  return value;
}

- (BOOL)if_setBool:()IntentsFoundation forExtendedAttributeNamed:ofItemAtURL:
{
  value = a3;
  v7 = a5;
  v8 = a4;
  v9 = [a5 fileSystemRepresentation];
  v10 = [v8 UTF8String];

  return setxattr(v9, v10, &value, 1uLL, 0, 0) != -1;
}

- (ssize_t)if_auditTokenForExtendedAttributeNamed:()IntentsFoundation ofItemAtURL:
{
  v6 = a1;
  v7 = a2;
  v8 = [a1 fileSystemRepresentation];
  v9 = [v7 UTF8String];

  *a3 = 0u;
  a3[1] = 0u;

  return getxattr(v8, v9, a3, 0x20uLL, 0, 0);
}

- (BOOL)if_setAuditToken:()IntentsFoundation forExtendedAttributeNamed:ofItemAtURL:
{
  v8 = a5;
  v9 = a4;
  v10 = [a5 fileSystemRepresentation];
  v11 = [v9 UTF8String];

  return setxattr(v10, v11, a3, 0x20uLL, 0, 0) != -1;
}

@end