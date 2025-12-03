@interface NSFileManager(WFFileRepresentation)
- (BOOL)wf_removeExtendedAttributeName:()WFFileRepresentation ofItemAtURL:;
@end

@implementation NSFileManager(WFFileRepresentation)

- (BOOL)wf_removeExtendedAttributeName:()WFFileRepresentation ofItemAtURL:
{
  v6 = a4;
  v7 = a3;
  fileSystemRepresentation = [a4 fileSystemRepresentation];
  uTF8String = [v7 UTF8String];

  return removexattr(fileSystemRepresentation, uTF8String, 0) != -1;
}

@end