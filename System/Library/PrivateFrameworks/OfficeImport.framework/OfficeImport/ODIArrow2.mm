@interface ODIArrow2
- (void)mapPoint:(id)point bounds:(CGRect)bounds;
@end

@implementation ODIArrow2

- (void)mapPoint:(id)point bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  pointCopy = point;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"bullet%d%c", -[ODIState pointCount](self->super.mState, "pointCount"), -[ODIState pointIndex](self->super.mState, "pointIndex") + 97];
  [(ODIState *)self->super.mState setPresentationName:v10 forPointType:2];
  v11.receiver = self;
  v11.super_class = ODIArrow2;
  [(ODILinear *)&v11 mapPoint:pointCopy bounds:x, y, width, height];
}

@end