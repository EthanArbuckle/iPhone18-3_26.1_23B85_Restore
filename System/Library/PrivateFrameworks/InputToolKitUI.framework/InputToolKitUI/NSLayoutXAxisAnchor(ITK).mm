@interface NSLayoutXAxisAnchor(ITK)
- (id)itk_constraintEqualToSystemSpacingAfterAnchor:()ITK multiplier:priority:;
- (id)itk_constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:()ITK multiplier:priority:;
- (id)itk_constraintLessThanOrEqualToSystemSpacingAfterAnchor:()ITK multiplier:priority:;
@end

@implementation NSLayoutXAxisAnchor(ITK)

- (id)itk_constraintEqualToSystemSpacingAfterAnchor:()ITK multiplier:priority:
{
  v4 = [a1 constraintEqualToSystemSpacingAfterAnchor:? multiplier:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)itk_constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:()ITK multiplier:priority:
{
  v4 = [a1 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:? multiplier:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)itk_constraintLessThanOrEqualToSystemSpacingAfterAnchor:()ITK multiplier:priority:
{
  v4 = [a1 constraintLessThanOrEqualToSystemSpacingAfterAnchor:? multiplier:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

@end