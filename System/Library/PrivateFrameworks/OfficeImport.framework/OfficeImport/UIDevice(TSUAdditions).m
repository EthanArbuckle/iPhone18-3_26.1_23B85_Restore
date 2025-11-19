@interface UIDevice(TSUAdditions)
+ (uint64_t)platformString;
@end

@implementation UIDevice(TSUAdditions)

+ (uint64_t)platformString
{
  if (platformString_s_platformStringToken != -1)
  {
    +[UIDevice(TSUAdditions) platformString];
  }

  return platformString_s_platformString;
}

@end