@interface NSString
@end

@implementation NSString

uint64_t __37__NSString_HMUAdditions__hmu_isEmail__block_invoke()
{
  hmu_isEmail_emailPredicate = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES %@", @".+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*"];

  return MEMORY[0x2821F96F8]();
}

@end