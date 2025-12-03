@interface NSData(Checksum)
- (id)SHA224Checksum;
@end

@implementation NSData(Checksum)

- (id)SHA224Checksum
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = v5 - (([MEMORY[0x1E695DEF0] SHA224ChecksumSize] + 15) & 0xFFFFFFFFFFFFFFF0);
  CC_SHA224([self bytes], objc_msgSend(self, "length"), v2);
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:v2 length:{objc_msgSend(MEMORY[0x1E695DEF0], "SHA224ChecksumSize")}];

  return v3;
}

@end