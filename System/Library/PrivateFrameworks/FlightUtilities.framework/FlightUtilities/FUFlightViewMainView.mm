@interface FUFlightViewMainView
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
@end

@implementation FUFlightViewMainView

- (CGSize)intrinsicContentSize
{
  subviews = [(FUFlightViewMainView *)self subviews];
  firstObject = [subviews firstObject];

  [firstObject intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  if (size.height <= 1500.0)
  {
    height = size.height;
  }

  else
  {
    height = 1500.0;
  }

  if (size.width <= 500.0)
  {
    width = size.width;
  }

  else
  {
    width = 500.0;
  }

  subviews = [(FUFlightViewMainView *)self subviews];
  firstObject = [subviews firstObject];

  *&v11 = priority;
  *&v12 = fittingPriority;
  [firstObject systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v11, v12}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

@end