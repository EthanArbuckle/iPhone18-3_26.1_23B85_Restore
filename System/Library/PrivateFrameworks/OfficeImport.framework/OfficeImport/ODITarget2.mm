@interface ODITarget2
- (void)mapPoint:(id)point bounds:(CGRect)bounds;
@end

@implementation ODITarget2

- (void)mapPoint:(id)point bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  pointCopy = point;
  pointIndex = [(ODIState *)self->super.mState pointIndex];
  if (pointIndex >= 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_2799C80C0[pointIndex];
  }

  [(ODIState *)self->super.mState setPresentationName:v11 forPointType:2];
  v12.receiver = self;
  v12.super_class = ODITarget2;
  [(ODILinear *)&v12 mapPoint:pointCopy bounds:x, y, width, height];
}

@end