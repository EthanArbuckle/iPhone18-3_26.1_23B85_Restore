@interface EDAnchor
- (id)description;
@end

@implementation EDAnchor

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDAnchor;
  v2 = [(EDAnchor *)&v4 description];

  return v2;
}

@end