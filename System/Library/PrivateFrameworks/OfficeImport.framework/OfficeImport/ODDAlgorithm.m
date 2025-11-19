@interface ODDAlgorithm
- (id)description;
@end

@implementation ODDAlgorithm

- (id)description
{
  v4.receiver = self;
  v4.super_class = ODDAlgorithm;
  v2 = [(ODDLayoutObject *)&v4 description];

  return v2;
}

@end