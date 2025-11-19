@interface NSMutableData(SecRandom)
+ (id)dataWithRandomBytes:()SecRandom;
@end

@implementation NSMutableData(SecRandom)

+ (id)dataWithRandomBytes:()SecRandom
{
  v3 = [MEMORY[0x277CBEB28] dataWithLength:a3];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], [v3 length], objc_msgSend(v3, "mutableBytes")))
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

@end