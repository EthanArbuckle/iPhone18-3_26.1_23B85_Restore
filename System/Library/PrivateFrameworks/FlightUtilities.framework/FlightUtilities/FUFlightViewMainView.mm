@interface FUFlightViewMainView
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
@end

@implementation FUFlightViewMainView

- (CGSize)intrinsicContentSize
{
  v2 = [(FUFlightViewMainView *)self subviews];
  v3 = [v2 firstObject];

  [v3 intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  if (a3.height <= 1500.0)
  {
    height = a3.height;
  }

  else
  {
    height = 1500.0;
  }

  if (a3.width <= 500.0)
  {
    width = a3.width;
  }

  else
  {
    width = 500.0;
  }

  v9 = [(FUFlightViewMainView *)self subviews];
  v10 = [v9 firstObject];

  *&v11 = a4;
  *&v12 = a5;
  [v10 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v11, v12}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

@end