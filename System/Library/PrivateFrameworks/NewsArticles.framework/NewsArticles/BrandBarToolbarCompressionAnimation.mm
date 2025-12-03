@interface BrandBarToolbarCompressionAnimation
- (double)maximumBarHeightForTraitCollection:(id)collection;
- (void)updateWithPercentage:(double)percentage;
@end

@implementation BrandBarToolbarCompressionAnimation

- (void)updateWithPercentage:(double)percentage
{
  v4 = *&self->brandBar[7];

  [v4 frame];
  Height = CGRectGetHeight(v7);
  CGAffineTransformMakeTranslation(&v6, 0.0, (Height + 44.0) * percentage);
  [v4 setTransform_];
}

- (double)maximumBarHeightForTraitCollection:(id)collection
{
  v3 = *&self->brandBar[7];

  [v3 frame];
  Height = CGRectGetHeight(v6);

  return Height;
}

@end