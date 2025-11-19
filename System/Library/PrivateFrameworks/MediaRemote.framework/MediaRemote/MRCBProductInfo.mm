@interface MRCBProductInfo
+ (unsigned)cbProductIDFromModelID:(id)a3;
@end

@implementation MRCBProductInfo

+ (unsigned)cbProductIDFromModelID:(id)a3
{
  if (a3)
  {
    return MEMORY[0x1EEDB6450](a3, a2);
  }

  else
  {
    return 0;
  }
}

@end