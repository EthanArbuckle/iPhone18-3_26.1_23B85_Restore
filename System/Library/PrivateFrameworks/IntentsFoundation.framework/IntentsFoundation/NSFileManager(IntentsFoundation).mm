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
  fileSystemRepresentation = [a4 fileSystemRepresentation];
  uTF8String = [v7 UTF8String];

  return removexattr(fileSystemRepresentation, uTF8String, 0) != -1;
}

- (uint64_t)if_BOOLForExtendedAttributeName:()IntentsFoundation ofItemAtURL:
{
  v6 = a4;
  v7 = a3;
  fileSystemRepresentation = [a4 fileSystemRepresentation];
  uTF8String = [v7 UTF8String];

  value = 0;
  getxattr(fileSystemRepresentation, uTF8String, &value, 1uLL, 0, 0);
  return value;
}

- (BOOL)if_setBool:()IntentsFoundation forExtendedAttributeNamed:ofItemAtURL:
{
  value = a3;
  v7 = a5;
  v8 = a4;
  fileSystemRepresentation = [a5 fileSystemRepresentation];
  uTF8String = [v8 UTF8String];

  return setxattr(fileSystemRepresentation, uTF8String, &value, 1uLL, 0, 0) != -1;
}

- (ssize_t)if_auditTokenForExtendedAttributeNamed:()IntentsFoundation ofItemAtURL:
{
  selfCopy = self;
  v7 = a2;
  fileSystemRepresentation = [self fileSystemRepresentation];
  uTF8String = [v7 UTF8String];

  *a3 = 0u;
  a3[1] = 0u;

  return getxattr(fileSystemRepresentation, uTF8String, a3, 0x20uLL, 0, 0);
}

- (BOOL)if_setAuditToken:()IntentsFoundation forExtendedAttributeNamed:ofItemAtURL:
{
  v8 = a5;
  v9 = a4;
  fileSystemRepresentation = [a5 fileSystemRepresentation];
  uTF8String = [v9 UTF8String];

  return setxattr(fileSystemRepresentation, uTF8String, a3, 0x20uLL, 0, 0) != -1;
}

@end