@interface DKDrawingStrokePoint
- (CGPoint)location;
- (DKDrawingStrokePoint)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation DKDrawingStrokePoint

- (DKDrawingStrokePoint)init
{
  v3.receiver = self;
  v3.super_class = DKDrawingStrokePoint;
  result = [(DKDrawingStrokePoint *)&v3 init];
  if (result)
  {
    result->_location = *MEMORY[0x277CBF348];
    result->_force = 0.0;
    result->_velocity = 0.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(DKDrawingStrokePoint);
  if (result)
  {
    *(result + 24) = self->_location;
    *(result + 1) = *&self->_force;
    *(result + 2) = *&self->_velocity;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(DKDrawingStrokePoint *)self location];
  v6 = NSStringFromCGPoint(v13);
  [(DKDrawingStrokePoint *)self force];
  v8 = v7;
  [(DKDrawingStrokePoint *)self velocity];
  v10 = [v3 stringWithFormat:@"%@: location: %@  force: %f velocity: %f", v5, v6, v8, v9];

  return v10;
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

@end