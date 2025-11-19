@interface ODITarget2
- (void)mapPoint:(id)a3 bounds:(CGRect)a4;
@end

@implementation ODITarget2

- (void)mapPoint:(id)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(ODIState *)self->super.mState pointIndex];
  if (v10 >= 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_2799C80C0[v10];
  }

  [(ODIState *)self->super.mState setPresentationName:v11 forPointType:2];
  v12.receiver = self;
  v12.super_class = ODITarget2;
  [(ODILinear *)&v12 mapPoint:v9 bounds:x, y, width, height];
}

@end