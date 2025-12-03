@interface NSLayoutYAxisAnchor(MediaControls)
- (id)mru_constraintEqualToAnchor:()MediaControls constant:priority:;
- (id)mru_constraintEqualToAnchor:()MediaControls priority:;
- (id)mru_constraintGreaterThanOrEqualToAnchor:()MediaControls constant:priority:;
- (id)mru_constraintGreaterThanOrEqualToAnchor:()MediaControls priority:;
- (id)mru_constraintLessThanOrEqualToAnchor:()MediaControls constant:priority:;
- (id)mru_constraintLessThanOrEqualToAnchor:()MediaControls priority:;
@end

@implementation NSLayoutYAxisAnchor(MediaControls)

- (id)mru_constraintEqualToAnchor:()MediaControls priority:
{
  v3 = [self constraintEqualToAnchor:?];
  *&v4 = a2;
  [v3 setPriority:v4];

  return v3;
}

- (id)mru_constraintGreaterThanOrEqualToAnchor:()MediaControls priority:
{
  v3 = [self constraintGreaterThanOrEqualToAnchor:?];
  *&v4 = a2;
  [v3 setPriority:v4];

  return v3;
}

- (id)mru_constraintLessThanOrEqualToAnchor:()MediaControls priority:
{
  v3 = [self constraintLessThanOrEqualToAnchor:?];
  *&v4 = a2;
  [v3 setPriority:v4];

  return v3;
}

- (id)mru_constraintEqualToAnchor:()MediaControls constant:priority:
{
  v4 = [self constraintEqualToAnchor:? constant:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)mru_constraintGreaterThanOrEqualToAnchor:()MediaControls constant:priority:
{
  v4 = [self constraintGreaterThanOrEqualToAnchor:? constant:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

- (id)mru_constraintLessThanOrEqualToAnchor:()MediaControls constant:priority:
{
  v4 = [self constraintLessThanOrEqualToAnchor:? constant:?];
  *&v5 = a3;
  [v4 setPriority:v5];

  return v4;
}

@end