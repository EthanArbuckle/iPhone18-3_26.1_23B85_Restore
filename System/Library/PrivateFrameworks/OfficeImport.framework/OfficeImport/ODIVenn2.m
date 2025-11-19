@interface ODIVenn2
- (void)mapPoint:(id)a3 bounds:(CGRect)a4;
@end

@implementation ODIVenn2

- (void)mapPoint:(id)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"circle%d", -[ODIState pointIndex](self->super.mState, "pointIndex") + 1];
  [(ODIState *)self->super.mState setPresentationName:v10 forPointType:2];
  v11.receiver = self;
  v11.super_class = ODIVenn2;
  [(ODILinear *)&v11 mapPoint:v9 bounds:x, y, width, height];
}

@end