@interface NSData(BRAdditions)
- (id)br_md5;
@end

@implementation NSData(BRAdditions)

- (id)br_md5
{
  v5 = *MEMORY[0x1E69E9840];
  CC_MD5([self bytes], objc_msgSend(self, "length"), md);
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:16];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

@end