@interface NSFileManager(WFFileRepresentation)
- (BOOL)wf_removeExtendedAttributeName:()WFFileRepresentation ofItemAtURL:;
@end

@implementation NSFileManager(WFFileRepresentation)

- (BOOL)wf_removeExtendedAttributeName:()WFFileRepresentation ofItemAtURL:
{
  v6 = a4;
  v7 = a3;
  v8 = [a4 fileSystemRepresentation];
  v9 = [v7 UTF8String];

  return removexattr(v8, v9, 0) != -1;
}

@end