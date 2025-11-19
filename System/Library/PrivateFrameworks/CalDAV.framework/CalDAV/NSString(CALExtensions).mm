@interface NSString(CALExtensions)
+ (id)ellipsisString;
@end

@implementation NSString(CALExtensions)

+ (id)ellipsisString
{
  v2 = 8230;
  v0 = [MEMORY[0x277CCACA8] stringWithCharacters:&v2 length:1];

  return v0;
}

@end