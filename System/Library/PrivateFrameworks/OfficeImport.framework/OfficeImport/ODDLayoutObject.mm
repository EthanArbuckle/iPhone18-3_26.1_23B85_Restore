@interface ODDLayoutObject
- (id)description;
@end

@implementation ODDLayoutObject

- (id)description
{
  v4.receiver = self;
  v4.super_class = ODDLayoutObject;
  v2 = [(ODDLayoutObject *)&v4 description];

  return v2;
}

@end