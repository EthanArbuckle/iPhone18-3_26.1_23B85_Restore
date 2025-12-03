@interface CKPopoverViewLayoutConfiguration
- (CGSize)optimalSizeForPreferredContentSize:(CGSize)result state:(unint64_t)state;
- (CGSize)optimalSizeForPresentingAppInCompactStyle:(BOOL)style;
- (CGSize)optimalSizeForPresentingSendMenuWithPreferredContentSize:(CGSize)size;
@end

@implementation CKPopoverViewLayoutConfiguration

- (CGSize)optimalSizeForPresentingSendMenuWithPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(CKPopoverViewLayoutConfiguration *)self minimumSendMenuDimension];
  if (width < v6)
  {
    width = v6;
  }

  if (height < v6)
  {
    height = v6;
  }

  [(CKPopoverViewLayoutConfiguration *)self maximumHeight];
  if (height >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = height;
  }

  v9 = width;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGSize)optimalSizeForPresentingAppInCompactStyle:(BOOL)style
{
  styleCopy = style;
  [(CKPopoverViewLayoutConfiguration *)self preferredAppWidth];
  v6 = v5;
  if (styleCopy)
  {
    [(CKPopoverViewLayoutConfiguration *)self defaultAppCompactHeight];
  }

  else
  {
    [(CKPopoverViewLayoutConfiguration *)self maximumHeight];
  }

  v8 = v7;
  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGSize)optimalSizeForPreferredContentSize:(CGSize)result state:(unint64_t)state
{
  if (state - 1 < 2)
  {
    [(CKPopoverViewLayoutConfiguration *)self optimalSizeForPresentingAppInCompactStyle:state == 1, result.width, result.height];
LABEL_5:
    v4 = v5;
    goto LABEL_6;
  }

  if (!state)
  {
    [(CKPopoverViewLayoutConfiguration *)self optimalSizeForPresentingSendMenuWithPreferredContentSize:result.width, result.height];
    goto LABEL_5;
  }

LABEL_6:
  v6 = v4;
  result.height = v6;
  return result;
}

@end