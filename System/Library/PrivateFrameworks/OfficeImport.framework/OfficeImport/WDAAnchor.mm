@interface WDAAnchor
+ (id)stringForTextWrappingModeType:(int)type;
- (CGRect)bounds;
- (WDAAnchor)init;
- (id)description;
@end

@implementation WDAAnchor

- (WDAAnchor)init
{
  v6.receiver = self;
  v6.super_class = WDAAnchor;
  v2 = [(WDAAnchor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->mTextWrappingMode = 3;
    mTextWrapPoints = v2->mTextWrapPoints;
    v2->mTextWrapPoints = 0;

    *&v3->mHorizontalPosition = xmmword_25D70E350;
    *&v3->mWrapDistanceLeft = xmmword_25D70E360;
    *&v3->mWrapDistanceRight = xmmword_25D70E360;
    v3->mAllowOverlap = 1;
    v3->mZIndex = 0;
  }

  return v3;
}

- (CGRect)bounds
{
  x = self->mBounds.origin.x;
  y = self->mBounds.origin.y;
  width = self->mBounds.size.width;
  height = self->mBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (id)stringForTextWrappingModeType:(int)type
{
  if (type > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2799CD950[type];
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDAAnchor;
  v2 = [(WDAAnchor *)&v4 description];

  return v2;
}

@end