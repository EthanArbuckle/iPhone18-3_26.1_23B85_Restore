@interface CADisplay
- (BOOL)css_isCurrentlyLandscape;
- (CGSize)css_sizeInCurrentOrientation;
- (int64_t)css_degreesFromRotationString:(id)string;
- (unint64_t)css_interfaceOrientation;
- (unint64_t)css_interfaceOrientationForRotation:(double)rotation;
@end

@implementation CADisplay

- (unint64_t)css_interfaceOrientation
{
  nativeOrientation = [(CADisplay *)self nativeOrientation];
  v4 = [(CADisplay *)self css_degreesFromRotationString:nativeOrientation];

  currentOrientation = [(CADisplay *)self currentOrientation];
  v6 = [(CADisplay *)self css_degreesFromRotationString:currentOrientation];

  return [(CADisplay *)self css_interfaceOrientationForRotation:((v6 + v4) % 360)];
}

- (CGSize)css_sizeInCurrentOrientation
{
  [(CADisplay *)self bounds];
  Width = CGRectGetWidth(v11);
  [(CADisplay *)self bounds];
  Height = CGRectGetHeight(v12);
  v5 = fmin(Width, Height);
  v6 = fmax(Width, Height);
  css_isCurrentlyLandscape = [(CADisplay *)self css_isCurrentlyLandscape];
  if (css_isCurrentlyLandscape)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if (css_isCurrentlyLandscape)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)css_isCurrentlyLandscape
{
  css_interfaceOrientation = [(CADisplay *)self css_interfaceOrientation];

  return [(CADisplay *)self css_isLandscapeOrientation:css_interfaceOrientation];
}

- (int64_t)css_degreesFromRotationString:(id)string
{
  v3 = [string crk_stringByRemovingPrefix:@"rot"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (unint64_t)css_interfaceOrientationForRotation:(double)rotation
{
  if (rotation == 0.0)
  {
    return 1;
  }

  if (rotation == 90.0)
  {
    return 3;
  }

  if (rotation == 180.0)
  {
    return 2;
  }

  return 4 * (rotation == 270.0);
}

@end