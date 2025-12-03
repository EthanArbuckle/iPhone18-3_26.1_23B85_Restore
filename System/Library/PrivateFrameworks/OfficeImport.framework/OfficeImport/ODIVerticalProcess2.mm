@interface ODIVerticalProcess2
- (void)mapPoint:(id)point bounds:(CGRect)bounds;
- (void)mapStyleFromTransition:(id)transition shape:(id)shape;
@end

@implementation ODIVerticalProcess2

- (void)mapPoint:(id)point bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  pointCopy = point;
  pointIndex = [(ODIState *)self->super.mState pointIndex];
  if (pointIndex >= [(ODIState *)self->super.mState pointCount]- 1)
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
  [(ODILinear *)&v13 mapPoint:pointCopy bounds:x, y, width, height];
}

- (void)mapStyleFromTransition:(id)transition shape:(id)shape
{
  shapeCopy = shape;
  diagram = [(ODIState *)self->super.mState diagram];
  documentPoint = [diagram documentPoint];
  children = [documentPoint children];
  v8 = [children objectAtIndex:{-[ODIState pointIndex](self->super.mState, "pointIndex")}];

  [ODIDrawable mapStyleFromPoint:v8 shape:shapeCopy state:self->super.mState];
}

@end