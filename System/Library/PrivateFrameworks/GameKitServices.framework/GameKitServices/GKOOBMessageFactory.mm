@interface GKOOBMessageFactory
+ (id)newMessageFromData:(id)data;
@end

@implementation GKOOBMessageFactory

+ (id)newMessageFromData:(id)data
{
  if (!data || [data length] < 2)
  {
    return 0;
  }

  if (*[data bytes] == 16390)
  {
    v5 = &off_2796828B0;
  }

  else
  {
    v5 = off_279682890;
  }

  v6 = objc_alloc(*v5);
  bytes = [data bytes];
  v8 = [data length];

  return [v6 initWithBytes:bytes length:v8];
}

@end