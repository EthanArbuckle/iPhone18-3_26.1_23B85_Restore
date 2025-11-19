@interface NSString(FSFileHandle)
- (FSFileHandle)fsFileHandle;
@end

@implementation NSString(FSFileHandle)

- (FSFileHandle)fsFileHandle
{
  v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:a1 options:0];
  v2 = v1;
  if (v1)
  {
    [v1 bytes];
    [v2 length];
    __memcpy_chk();
  }

  v3 = [[FSFileHandle alloc] initWithValue:0];

  return v3;
}

@end