@interface NSData(BRAdditions)
- (id)br_md5;
@end

@implementation NSData(BRAdditions)

- (id)br_md5
{
  v5 = *MEMORY[0x1E69E9840];
  CC_MD5([a1 bytes], objc_msgSend(a1, "length"), md);
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:16];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

@end