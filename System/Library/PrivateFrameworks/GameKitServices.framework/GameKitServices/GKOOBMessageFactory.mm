@interface GKOOBMessageFactory
+ (id)newMessageFromData:(id)a3;
@end

@implementation GKOOBMessageFactory

+ (id)newMessageFromData:(id)a3
{
  if (!a3 || [a3 length] < 2)
  {
    return 0;
  }

  if (*[a3 bytes] == 16390)
  {
    v5 = &off_2796828B0;
  }

  else
  {
    v5 = off_279682890;
  }

  v6 = objc_alloc(*v5);
  v7 = [a3 bytes];
  v8 = [a3 length];

  return [v6 initWithBytes:v7 length:v8];
}

@end