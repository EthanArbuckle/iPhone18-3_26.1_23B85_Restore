@interface MRCBProductInfo
+ (unsigned)cbProductIDFromModelID:(id)d;
@end

@implementation MRCBProductInfo

+ (unsigned)cbProductIDFromModelID:(id)d
{
  if (d)
  {
    return MEMORY[0x1EEDB6450](d, a2);
  }

  else
  {
    return 0;
  }
}

@end