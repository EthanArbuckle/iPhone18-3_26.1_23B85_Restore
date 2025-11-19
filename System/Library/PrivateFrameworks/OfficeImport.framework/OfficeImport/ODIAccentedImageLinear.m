@interface ODIAccentedImageLinear
- (void)mapPoint:(id)a3 bounds:(CGRect)a4;
@end

@implementation ODIAccentedImageLinear

- (void)mapPoint:(id)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v16.receiver = self;
  v16.super_class = ODIAccentedImageLinear;
  [(ODIImageLinear *)&v16 mapPoint:v9 bounds:x, y, width, height];
  if (![(ODIState *)self->super.super.mState pointIndex])
  {
    v10 = [(ODIState *)self->super.super.mState group];
    v11 = [v10 childCount];

    if (v11 >= 2)
    {
      v12 = [(ODIState *)self->super.super.mState group];
      v13 = [(ODIState *)self->super.super.mState group];
      v14 = [v12 childAtIndex:{objc_msgSend(v13, "childCount") - 2}];

      v15 = [v9 siblingTransition];
      [ODIDrawable mapStyleFromPoint:v15 shape:v14 state:self->super.super.mState];
    }
  }
}

@end