@interface ODIHorizontalProcess11
- (void)mapPoint:(id)a3 bounds:(CGRect)a4;
@end

@implementation ODIHorizontalProcess11

- (void)mapPoint:(id)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(ODIState *)self->super.mState pointIndex];
  v11 = 65;
  if (v10)
  {
    v11 = 66;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"circle%c", v11];
  [(ODIState *)self->super.mState setPresentationName:v12 forPointType:2];
  v13.receiver = self;
  v13.super_class = ODIHorizontalProcess11;
  [(ODILinear *)&v13 mapPoint:v9 bounds:x, y, width, height];
}

@end