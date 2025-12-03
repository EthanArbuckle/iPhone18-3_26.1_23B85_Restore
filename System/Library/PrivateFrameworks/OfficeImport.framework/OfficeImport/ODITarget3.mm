@interface ODITarget3
- (void)mapPoint:(id)point bounds:(CGRect)bounds;
@end

@implementation ODITarget3

- (void)mapPoint:(id)point bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  pointCopy = point;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"rect%d", -[ODIState pointIndex](self->super.mState, "pointIndex") + 1];
  [(ODIState *)self->super.mState setPresentationName:v10 forPointType:2];
  v11.receiver = self;
  v11.super_class = ODITarget3;
  [(ODILinear *)&v11 mapPoint:pointCopy bounds:x, y, width, height];
}

@end