@interface BMScreenSharing_v1
- (int)type;
@end

@implementation BMScreenSharing_v1

- (int)type
{
  v4.receiver = self;
  v4.super_class = BMScreenSharing_v1;
  type = [(BMScreenSharing *)&v4 type];
  if (type)
  {
    return 2 * (type == 1);
  }

  else
  {
    return 1;
  }
}

@end