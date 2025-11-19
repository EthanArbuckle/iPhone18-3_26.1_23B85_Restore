@interface NSLayoutAnchor(ITK)
- (id)itk_constraintEqualToAnchor:()ITK constant:priority:;
- (id)itk_constraintEqualToAnchor:()ITK priority:;
- (id)itk_constraintGreaterThanOrEqualToAnchor:()ITK constant:priority:;
- (id)itk_constraintGreaterThanOrEqualToAnchor:()ITK priority:;
- (id)itk_constraintLessThanOrEqualToAnchor:()ITK constant:priority:;
- (id)itk_constraintLessThanOrEqualToAnchor:()ITK priority:;
@end

@implementation NSLayoutAnchor(ITK)

- (id)itk_constraintEqualToAnchor:()ITK priority:
{
  v3 = [a1 constraintEqualToAnchor:?];
  *&v4 = a2;
  [v3 setPriority:v4];

  return v3;
}

- (id)itk_constraintGreaterThanOrEqualToAnchor:()ITK priority:
{
  v3 = [a1 constraintGreaterThanOrEqualToAnchor:?];
  *&v4 = a2;
  [v3 setPriority:v4];

  return v3;
}

- (id)itk_constraintLessThanOrEqualToAnchor:()ITK priority:
{
  v3 = [a1 constraintLessThanOrEqualToAnchor:?];
  *&v4 = a2;
  [v3 setPriority:v4];

  return v3;
}

- (id)itk_constraintEqualToAnchor:()ITK constant:priority:
{
  v4 = [a1 constraintEqualToAnchor:? constant:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)itk_constraintGreaterThanOrEqualToAnchor:()ITK constant:priority:
{
  v4 = [a1 constraintGreaterThanOrEqualToAnchor:? constant:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)itk_constraintLessThanOrEqualToAnchor:()ITK constant:priority:
{
  v4 = [a1 constraintLessThanOrEqualToAnchor:? constant:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

@end