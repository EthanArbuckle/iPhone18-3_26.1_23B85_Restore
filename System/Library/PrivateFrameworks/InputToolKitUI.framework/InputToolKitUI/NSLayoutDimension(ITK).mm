@interface NSLayoutDimension(ITK)
- (id)itk_constraintEqualToAnchor:()ITK multiplier:constant:priority:;
- (id)itk_constraintEqualToAnchor:()ITK multiplier:priority:;
- (id)itk_constraintEqualToConstant:()ITK priority:;
- (id)itk_constraintGreaterThanOrEqualToAnchor:()ITK multiplier:constant:priority:;
- (id)itk_constraintGreaterThanOrEqualToAnchor:()ITK multiplier:priority:;
- (id)itk_constraintGreaterThanOrEqualToConstant:()ITK priority:;
- (id)itk_constraintLessThanOrEqualToAnchor:()ITK multiplier:constant:priority:;
- (id)itk_constraintLessThanOrEqualToAnchor:()ITK multiplier:priority:;
- (id)itk_constraintLessThanOrEqualToConstant:()ITK priority:;
@end

@implementation NSLayoutDimension(ITK)

- (id)itk_constraintEqualToConstant:()ITK priority:
{
  v4 = [a1 constraintEqualToConstant:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)itk_constraintGreaterThanOrEqualToConstant:()ITK priority:
{
  v4 = [a1 constraintGreaterThanOrEqualToConstant:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)itk_constraintLessThanOrEqualToConstant:()ITK priority:
{
  v4 = [a1 constraintLessThanOrEqualToConstant:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)itk_constraintEqualToAnchor:()ITK multiplier:priority:
{
  v4 = [a1 constraintEqualToAnchor:? multiplier:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)itk_constraintGreaterThanOrEqualToAnchor:()ITK multiplier:priority:
{
  v4 = [a1 constraintGreaterThanOrEqualToAnchor:? multiplier:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)itk_constraintLessThanOrEqualToAnchor:()ITK multiplier:priority:
{
  v4 = [a1 constraintLessThanOrEqualToAnchor:? multiplier:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)itk_constraintEqualToAnchor:()ITK multiplier:constant:priority:
{
  v5 = [a1 constraintEqualToAnchor:? multiplier:? constant:?];
  *&v6 = a4;
  [v5 setPriority:v6];

  return v5;
}

- (id)itk_constraintGreaterThanOrEqualToAnchor:()ITK multiplier:constant:priority:
{
  v5 = [a1 constraintGreaterThanOrEqualToAnchor:? multiplier:? constant:?];
  *&v6 = a4;
  [v5 setPriority:v6];

  return v5;
}

- (id)itk_constraintLessThanOrEqualToAnchor:()ITK multiplier:constant:priority:
{
  v5 = [a1 constraintLessThanOrEqualToAnchor:? multiplier:? constant:?];
  *&v6 = a4;
  [v5 setPriority:v6];

  return v5;
}

@end