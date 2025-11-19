@interface BMScreenSharing_v1
- (int)type;
@end

@implementation BMScreenSharing_v1

- (int)type
{
  v4.receiver = self;
  v4.super_class = BMScreenSharing_v1;
  v2 = [(BMScreenSharing *)&v4 type];
  if (v2)
  {
    return 2 * (v2 == 1);
  }

  else
  {
    return 1;
  }
}

@end