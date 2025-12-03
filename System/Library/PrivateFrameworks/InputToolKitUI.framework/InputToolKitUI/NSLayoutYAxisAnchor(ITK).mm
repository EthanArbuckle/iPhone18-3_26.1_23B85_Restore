@interface NSLayoutYAxisAnchor(ITK)
- (id)itk_constraintEqualToSystemSpacingBelowAnchor:()ITK multiplier:priority:;
- (id)itk_constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:()ITK multiplier:priority:;
- (id)itk_constraintLessThanOrEqualToSystemSpacingBelowAnchor:()ITK multiplier:priority:;
@end

@implementation NSLayoutYAxisAnchor(ITK)

- (id)itk_constraintEqualToSystemSpacingBelowAnchor:()ITK multiplier:priority:
{
  v4 = [self constraintEqualToSystemSpacingBelowAnchor:? multiplier:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)itk_constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:()ITK multiplier:priority:
{
  v4 = [self constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:? multiplier:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)itk_constraintLessThanOrEqualToSystemSpacingBelowAnchor:()ITK multiplier:priority:
{
  v4 = [self constraintLessThanOrEqualToSystemSpacingBelowAnchor:? multiplier:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

@end