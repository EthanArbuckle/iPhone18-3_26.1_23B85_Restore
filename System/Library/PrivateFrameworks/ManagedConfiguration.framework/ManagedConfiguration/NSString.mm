@interface NSString
@end

@implementation NSString

uint64_t __55__NSString_MCUtilities__MCSHA256DigestWithPasscodeSalt__block_invoke()
{
  MCSHA256DigestWithPasscodeSalt_salt = [MEMORY[0x1E695DEF0] dataWithBytes:&_block_invoke_saltBytes length:8];

  return MEMORY[0x1EEE66BB8]();
}

@end