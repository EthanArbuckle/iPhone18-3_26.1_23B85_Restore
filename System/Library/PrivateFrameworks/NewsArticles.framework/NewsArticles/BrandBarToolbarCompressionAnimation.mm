@interface BrandBarToolbarCompressionAnimation
- (double)maximumBarHeightForTraitCollection:(id)a3;
- (void)updateWithPercentage:(double)a3;
@end

@implementation BrandBarToolbarCompressionAnimation

- (void)updateWithPercentage:(double)a3
{
  v4 = *&self->brandBar[7];

  [v4 frame];
  Height = CGRectGetHeight(v7);
  CGAffineTransformMakeTranslation(&v6, 0.0, (Height + 44.0) * a3);
  [v4 setTransform_];
}

- (double)maximumBarHeightForTraitCollection:(id)a3
{
  v3 = *&self->brandBar[7];

  [v3 frame];
  Height = CGRectGetHeight(v6);

  return Height;
}

@end