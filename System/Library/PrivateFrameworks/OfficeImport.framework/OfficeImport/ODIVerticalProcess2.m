@interface ODIVerticalProcess2
- (void)mapPoint:(id)a3 bounds:(CGRect)a4;
- (void)mapStyleFromTransition:(id)a3 shape:(id)a4;
@end

@implementation ODIVerticalProcess2

- (void)mapPoint:(id)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(ODIState *)self->super.mState pointIndex];
  if (v10 >= [(ODIState *)self->super.mState pointCount]- 1)
  {
    v11 = @"parentTextBox";
  }

  else
  {
    v11 = @"parentTextArrow";
  }

  v12 = v11;
  [(ODIState *)self->super.mState setPresentationName:v12 forPointType:2];
  v13.receiver = self;
  v13.super_class = ODIVerticalProcess2;
  [(ODILinear *)&v13 mapPoint:v9 bounds:x, y, width, height];
}

- (void)mapStyleFromTransition:(id)a3 shape:(id)a4
{
  v9 = a4;
  v5 = [(ODIState *)self->super.mState diagram];
  v6 = [v5 documentPoint];
  v7 = [v6 children];
  v8 = [v7 objectAtIndex:{-[ODIState pointIndex](self->super.mState, "pointIndex")}];

  [ODIDrawable mapStyleFromPoint:v8 shape:v9 state:self->super.mState];
}

@end