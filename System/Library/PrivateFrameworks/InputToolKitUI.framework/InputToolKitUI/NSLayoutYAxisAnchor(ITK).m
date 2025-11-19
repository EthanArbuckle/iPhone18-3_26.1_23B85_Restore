@interface NSLayoutYAxisAnchor(ITK)
- (id)itk_constraintEqualToSystemSpacingBelowAnchor:()ITK multiplier:priority:;
- (id)itk_constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:()ITK multiplier:priority:;
- (id)itk_constraintLessThanOrEqualToSystemSpacingBelowAnchor:()ITK multiplier:priority:;
@end

@implementation NSLayoutYAxisAnchor(ITK)

- (id)itk_constraintEqualToSystemSpacingBelowAnchor:()ITK multiplier:priority:
{
  v4 = [a1 constraintEqualToSystemSpacingBelowAnchor:? multiplier:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)itk_constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:()ITK multiplier:priority:
{
  v4 = [a1 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:? multiplier:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)itk_constraintLessThanOrEqualToSystemSpacingBelowAnchor:()ITK multiplier:priority:
{
  v4 = [a1 constraintLessThanOrEqualToSystemSpacingBelowAnchor:? multiplier:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

@end