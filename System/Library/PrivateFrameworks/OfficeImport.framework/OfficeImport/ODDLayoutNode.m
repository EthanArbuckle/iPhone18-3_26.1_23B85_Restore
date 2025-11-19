@interface ODDLayoutNode
- (id)description;
@end

@implementation ODDLayoutNode

- (id)description
{
  v4.receiver = self;
  v4.super_class = ODDLayoutNode;
  v2 = [(ODDLayoutObject *)&v4 description];

  return v2;
}

@end