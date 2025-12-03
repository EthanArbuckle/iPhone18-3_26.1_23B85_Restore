@interface ODIAccentedImageLinear
- (void)mapPoint:(id)point bounds:(CGRect)bounds;
@end

@implementation ODIAccentedImageLinear

- (void)mapPoint:(id)point bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  pointCopy = point;
  v16.receiver = self;
  v16.super_class = ODIAccentedImageLinear;
  [(ODIImageLinear *)&v16 mapPoint:pointCopy bounds:x, y, width, height];
  if (![(ODIState *)self->super.super.mState pointIndex])
  {
    group = [(ODIState *)self->super.super.mState group];
    childCount = [group childCount];

    if (childCount >= 2)
    {
      group2 = [(ODIState *)self->super.super.mState group];
      group3 = [(ODIState *)self->super.super.mState group];
      v14 = [group2 childAtIndex:{objc_msgSend(group3, "childCount") - 2}];

      siblingTransition = [pointCopy siblingTransition];
      [ODIDrawable mapStyleFromPoint:siblingTransition shape:v14 state:self->super.super.mState];
    }
  }
}

@end