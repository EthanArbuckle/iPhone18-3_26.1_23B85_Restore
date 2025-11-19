@interface SUUICircleRepellor
- (CGPoint)center;
- (id)description;
@end

@implementation SUUICircleRepellor

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = SUUICircleRepellor;
  v4 = [(SUUICircleRepellor *)&v9 description];
  physicsBody = self->_physicsBody;
  v6 = NSStringFromCGPoint(self->_center);
  v7 = [v3 stringWithFormat:@"%@: Body: %@, Center: %@, Radius: %.2f", v4, physicsBody, v6, *&self->_radius];

  return v7;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

@end