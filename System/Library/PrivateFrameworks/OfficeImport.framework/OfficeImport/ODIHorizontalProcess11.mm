@interface ODIHorizontalProcess11
- (void)mapPoint:(id)point bounds:(CGRect)bounds;
@end

@implementation ODIHorizontalProcess11

- (void)mapPoint:(id)point bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  pointCopy = point;
  pointIndex = [(ODIState *)self->super.mState pointIndex];
  v11 = 65;
  if (pointIndex)
  {
    v11 = 66;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"circle%c", v11];
  [(ODIState *)self->super.mState setPresentationName:v12 forPointType:2];
  v13.receiver = self;
  v13.super_class = ODIHorizontalProcess11;
  [(ODILinear *)&v13 mapPoint:pointCopy bounds:x, y, width, height];
}

@end